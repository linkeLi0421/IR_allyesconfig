; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/ov7670.c_pt.bc'
source_filename = "../drivers/media/i2c/ov7670.c"
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
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ov7670_devtype = type { ptr, i32, ptr, ptr }
%struct.ov7670_format_struct = type { i32, i32, ptr, [6 x i32] }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regval_list = type { i8, i8 }
%struct.ov7670_win_size = type { i32, i32, i8, i32, i32, i32, i32, ptr }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.103, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.103 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.v4l2_fract = type { i32, i32 }
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
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.ov7670_info = type { %struct.v4l2_subdev, %struct.media_pad, %struct.v4l2_ctrl_handler, %struct.anon.100, %struct.anon.101, %struct.anon.102, %struct.v4l2_mbus_framefmt, ptr, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.100 = type { ptr, ptr }
%struct.anon.101 = type { ptr, ptr }
%struct.anon.102 = type { ptr, ptr }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.ov7670_config = type { i32, i32, i32, i8, i8, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.94 }
%union.anon.94 = type { i32, [28 x i8] }
%struct.v4l2_subdev_frame_interval = type { i32, %struct.v4l2_fract, [9 x i32] }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_frame_interval_enum = type { i32, i32, i32, i32, i32, %struct.v4l2_fract, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_author292 = internal constant [47 x i8] c"ov7670.author=Jonathan Corbet <corbet@lwn.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [68 x i8] c"ov7670.description=A low-level driver for OmniVision ov7670 sensors\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [37 x i8] c"ov7670.file=drivers/media/i2c/ov7670\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [19 x i8] c"ov7670.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [13 x i8] c"ov7670.debug\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype296 = internal constant [27 x i8] c"ov7670.parmtype=debug:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_debug297 = internal constant [36 x i8] c"ov7670.parm=debug:Debug level (0-1)\00", section ".modinfo", align 1
@__initcall__kmod_ov7670__298_2049_ov7670_driver_init6 = internal global ptr @ov7670_driver_init, section ".initcall6.init", align 4
@ov7670_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ov7670_probe, ptr @ov7670_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ov7670_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ov7670_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ov7670_driver_exit = internal global ptr @ov7670_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ov7670\00", [25 x i8] zeroinitializer }, align 32
@ov7670_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ovti,ov7670\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ov7670_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ov7670\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ov7675\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@ov7670_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @ov7670_core_ops, ptr null, ptr null, ptr @ov7670_video_ops, ptr null, ptr null, ptr null, ptr @ov7670_pad_ops }, [32 x i8] zeroinitializer }, align 32
@ov7670_subdev_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @ov7670_open, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xclk\00", [27 x i8] zeroinitializer }, align 32
@ov7670_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1926, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\017%s %d-%04x: chip found @ 0x%x (%s) is not an ov7670 chip.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ov7670_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/ov7670.c\00", [37 x i8] zeroinitializer }, align 32
@ov7670_probe._entry_ptr = internal global ptr @ov7670_probe._entry, section ".printk_index", align 4
@ov7670_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 1930, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s %d-%04x: chip found @ 0x%02x (%s)\0A\00", [56 x i8] zeroinitializer }, align 32
@ov7670_probe._entry_ptr.7 = internal global ptr @ov7670_probe._entry.5, section ".printk_index", align 4
@ov7670_devdata = internal constant { [2 x %struct.ov7670_devtype], [32 x i8] } { [2 x %struct.ov7670_devtype] [%struct.ov7670_devtype { ptr @ov7670_win_sizes, i32 4, ptr @ov7670_set_framerate_legacy, ptr @ov7670_get_framerate_legacy }, %struct.ov7670_devtype { ptr @ov7675_win_sizes, i32 1, ptr @ov7675_set_framerate, ptr @ov7675_get_framerate }], [32 x i8] zeroinitializer }, align 32
@ov7670_formats = internal global { [4 x %struct.ov7670_format_struct], [48 x i8] } { [4 x %struct.ov7670_format_struct] [%struct.ov7670_format_struct { i32 8200, i32 8, ptr @ov7670_fmt_yuv422, [6 x i32] [i32 128, i32 -128, i32 0, i32 -34, i32 -94, i32 128] }, %struct.ov7670_format_struct { i32 4098, i32 8, ptr @ov7670_fmt_rgb444, [6 x i32] [i32 179, i32 -179, i32 0, i32 -61, i32 -176, i32 228] }, %struct.ov7670_format_struct { i32 4104, i32 8, ptr @ov7670_fmt_rgb565, [6 x i32] [i32 179, i32 -179, i32 0, i32 -61, i32 -176, i32 228] }, %struct.ov7670_format_struct { i32 12289, i32 8, ptr @ov7670_fmt_raw, [6 x i32] zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@ov7670_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ov7670:1945:(&info->hdl)->_lock\00", [32 x i8] zeroinitializer }, align 32
@ov7670_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr @ov7670_g_volatile_ctrl, ptr null, ptr @ov7670_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@ov7670_test_pattern_menu = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], [16 x i8] zeroinitializer }, align 32
@ov7670_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @v4l2_ctrl_subdev_log_status, ptr null, ptr @ov7670_init, ptr null, ptr @ov7670_reset, ptr null, ptr null, ptr null, ptr @ov7670_g_register, ptr @ov7670_s_register, ptr @ov7670_s_power, ptr null, ptr @v4l2_ctrl_subdev_subscribe_event, ptr @v4l2_event_subdev_unsubscribe }, [40 x i8] zeroinitializer }, align 32
@ov7670_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov7670_g_frame_interval, ptr @ov7670_s_frame_interval, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ov7670_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @ov7670_enum_mbus_code, ptr @ov7670_enum_frame_size, ptr @ov7670_enum_frame_interval, ptr @ov7670_get_fmt, ptr @ov7670_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ov7670_default_regs = internal constant { [158 x %struct.regval_list], [68 x i8] } { [158 x %struct.regval_list] [%struct.regval_list { i8 18, i8 -128 }, %struct.regval_list { i8 17, i8 1 }, %struct.regval_list { i8 58, i8 4 }, %struct.regval_list { i8 18, i8 0 }, %struct.regval_list { i8 23, i8 19 }, %struct.regval_list { i8 24, i8 1 }, %struct.regval_list { i8 50, i8 -74 }, %struct.regval_list { i8 25, i8 2 }, %struct.regval_list { i8 26, i8 122 }, %struct.regval_list { i8 3, i8 10 }, %struct.regval_list { i8 12, i8 0 }, %struct.regval_list { i8 62, i8 0 }, %struct.regval_list { i8 112, i8 58 }, %struct.regval_list { i8 113, i8 53 }, %struct.regval_list { i8 114, i8 17 }, %struct.regval_list { i8 115, i8 -16 }, %struct.regval_list { i8 -94, i8 2 }, %struct.regval_list { i8 21, i8 0 }, %struct.regval_list { i8 122, i8 32 }, %struct.regval_list { i8 123, i8 16 }, %struct.regval_list { i8 124, i8 30 }, %struct.regval_list { i8 125, i8 53 }, %struct.regval_list { i8 126, i8 90 }, %struct.regval_list { i8 127, i8 105 }, %struct.regval_list { i8 -128, i8 118 }, %struct.regval_list { i8 -127, i8 -128 }, %struct.regval_list { i8 -126, i8 -120 }, %struct.regval_list { i8 -125, i8 -113 }, %struct.regval_list { i8 -124, i8 -106 }, %struct.regval_list { i8 -123, i8 -93 }, %struct.regval_list { i8 -122, i8 -81 }, %struct.regval_list { i8 -121, i8 -60 }, %struct.regval_list { i8 -120, i8 -41 }, %struct.regval_list { i8 -119, i8 -24 }, %struct.regval_list { i8 19, i8 -32 }, %struct.regval_list zeroinitializer, %struct.regval_list { i8 16, i8 0 }, %struct.regval_list { i8 13, i8 64 }, %struct.regval_list { i8 20, i8 24 }, %struct.regval_list { i8 -91, i8 5 }, %struct.regval_list { i8 -85, i8 7 }, %struct.regval_list { i8 36, i8 -107 }, %struct.regval_list { i8 37, i8 51 }, %struct.regval_list { i8 38, i8 -29 }, %struct.regval_list { i8 -97, i8 120 }, %struct.regval_list { i8 -96, i8 104 }, %struct.regval_list { i8 -95, i8 3 }, %struct.regval_list { i8 -90, i8 -40 }, %struct.regval_list { i8 -89, i8 -40 }, %struct.regval_list { i8 -88, i8 -16 }, %struct.regval_list { i8 -87, i8 -112 }, %struct.regval_list { i8 -86, i8 -108 }, %struct.regval_list { i8 19, i8 -27 }, %struct.regval_list { i8 14, i8 97 }, %struct.regval_list { i8 15, i8 75 }, %struct.regval_list { i8 22, i8 2 }, %struct.regval_list { i8 30, i8 7 }, %struct.regval_list { i8 33, i8 2 }, %struct.regval_list { i8 34, i8 -111 }, %struct.regval_list { i8 41, i8 7 }, %struct.regval_list { i8 51, i8 11 }, %struct.regval_list { i8 53, i8 11 }, %struct.regval_list { i8 55, i8 29 }, %struct.regval_list { i8 56, i8 113 }, %struct.regval_list { i8 57, i8 42 }, %struct.regval_list { i8 60, i8 120 }, %struct.regval_list { i8 77, i8 64 }, %struct.regval_list { i8 78, i8 32 }, %struct.regval_list { i8 105, i8 0 }, %struct.regval_list { i8 107, i8 74 }, %struct.regval_list { i8 116, i8 16 }, %struct.regval_list { i8 -115, i8 79 }, %struct.regval_list { i8 -114, i8 0 }, %struct.regval_list { i8 -113, i8 0 }, %struct.regval_list { i8 -112, i8 0 }, %struct.regval_list { i8 -111, i8 0 }, %struct.regval_list { i8 -106, i8 0 }, %struct.regval_list { i8 -102, i8 0 }, %struct.regval_list { i8 -80, i8 -124 }, %struct.regval_list { i8 -79, i8 12 }, %struct.regval_list { i8 -78, i8 14 }, %struct.regval_list { i8 -77, i8 -126 }, %struct.regval_list { i8 -72, i8 10 }, %struct.regval_list { i8 67, i8 10 }, %struct.regval_list { i8 68, i8 -16 }, %struct.regval_list { i8 69, i8 52 }, %struct.regval_list { i8 70, i8 88 }, %struct.regval_list { i8 71, i8 40 }, %struct.regval_list { i8 72, i8 58 }, %struct.regval_list { i8 89, i8 -120 }, %struct.regval_list { i8 90, i8 -120 }, %struct.regval_list { i8 91, i8 68 }, %struct.regval_list { i8 92, i8 103 }, %struct.regval_list { i8 93, i8 73 }, %struct.regval_list { i8 94, i8 14 }, %struct.regval_list { i8 108, i8 10 }, %struct.regval_list { i8 109, i8 85 }, %struct.regval_list { i8 110, i8 17 }, %struct.regval_list { i8 111, i8 -97 }, %struct.regval_list { i8 106, i8 64 }, %struct.regval_list { i8 1, i8 64 }, %struct.regval_list { i8 2, i8 96 }, %struct.regval_list { i8 19, i8 -25 }, %struct.regval_list { i8 79, i8 -128 }, %struct.regval_list { i8 80, i8 -128 }, %struct.regval_list { i8 81, i8 0 }, %struct.regval_list { i8 82, i8 34 }, %struct.regval_list { i8 83, i8 94 }, %struct.regval_list { i8 84, i8 -128 }, %struct.regval_list { i8 88, i8 -98 }, %struct.regval_list { i8 65, i8 8 }, %struct.regval_list { i8 63, i8 0 }, %struct.regval_list { i8 117, i8 5 }, %struct.regval_list { i8 118, i8 -31 }, %struct.regval_list { i8 76, i8 0 }, %struct.regval_list { i8 119, i8 1 }, %struct.regval_list { i8 61, i8 -61 }, %struct.regval_list { i8 75, i8 9 }, %struct.regval_list { i8 -55, i8 96 }, %struct.regval_list { i8 65, i8 56 }, %struct.regval_list { i8 86, i8 64 }, %struct.regval_list { i8 52, i8 17 }, %struct.regval_list { i8 59, i8 18 }, %struct.regval_list { i8 -92, i8 -120 }, %struct.regval_list { i8 -106, i8 0 }, %struct.regval_list { i8 -105, i8 48 }, %struct.regval_list { i8 -104, i8 32 }, %struct.regval_list { i8 -103, i8 48 }, %struct.regval_list { i8 -102, i8 -124 }, %struct.regval_list { i8 -101, i8 41 }, %struct.regval_list { i8 -100, i8 3 }, %struct.regval_list { i8 -99, i8 76 }, %struct.regval_list { i8 -98, i8 63 }, %struct.regval_list { i8 120, i8 4 }, %struct.regval_list { i8 121, i8 1 }, %struct.regval_list { i8 -56, i8 -16 }, %struct.regval_list { i8 121, i8 15 }, %struct.regval_list { i8 -56, i8 0 }, %struct.regval_list { i8 121, i8 16 }, %struct.regval_list { i8 -56, i8 126 }, %struct.regval_list { i8 121, i8 10 }, %struct.regval_list { i8 -56, i8 -128 }, %struct.regval_list { i8 121, i8 11 }, %struct.regval_list { i8 -56, i8 1 }, %struct.regval_list { i8 121, i8 12 }, %struct.regval_list { i8 -56, i8 15 }, %struct.regval_list { i8 121, i8 13 }, %struct.regval_list { i8 -56, i8 32 }, %struct.regval_list { i8 121, i8 9 }, %struct.regval_list { i8 -56, i8 -128 }, %struct.regval_list { i8 121, i8 2 }, %struct.regval_list { i8 -56, i8 -64 }, %struct.regval_list { i8 121, i8 3 }, %struct.regval_list { i8 -56, i8 64 }, %struct.regval_list { i8 121, i8 5 }, %struct.regval_list { i8 -56, i8 48 }, %struct.regval_list { i8 121, i8 38 }, %struct.regval_list { i8 -1, i8 -1 }], [68 x i8] zeroinitializer }, align 32
@ov7670_read_i2c._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013Error %d on register write\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ov7670_read_i2c\00", [16 x i8] zeroinitializer }, align 32
@ov7670_read_i2c._entry_ptr = internal global ptr @ov7670_read_i2c._entry, section ".printk_index", align 4
@ov7670_frame_rates = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 30, i32 15, i32 10, i32 5, i32 1], [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ov7670,pclk-hb-disable\00", [41 x i8] zeroinitializer }, align 32
@ov7670_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 1843, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported media bus type\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ov7670_parse_dt\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ov7670_parse_dt._entry_ptr = internal global ptr @ov7670_parse_dt._entry, section ".printk_index", align 4
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"powerdown\00", [22 x i8] zeroinitializer }, align 32
@ov7670_init_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 1798, ptr @.str.20, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"can't get %s GPIO\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ov7670_init_gpio\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ov7670_init_gpio._entry_ptr = internal global ptr @ov7670_init_gpio._entry, section ".printk_index", align 4
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@ov7670_init_gpio._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 1805, ptr @.str.20, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@ov7670_init_gpio._entry_ptr.23 = internal global ptr @ov7670_init_gpio._entry.22, section ".printk_index", align 4
@ov7670_win_sizes = internal global { [4 x %struct.ov7670_win_size], [32 x i8] } { [4 x %struct.ov7670_win_size] [%struct.ov7670_win_size { i32 640, i32 480, i8 0, i32 158, i32 14, i32 10, i32 490, ptr null }, %struct.ov7670_win_size { i32 352, i32 288, i8 32, i32 170, i32 90, i32 14, i32 494, ptr null }, %struct.ov7670_win_size { i32 320, i32 240, i8 16, i32 168, i32 24, i32 12, i32 492, ptr null }, %struct.ov7670_win_size { i32 176, i32 144, i8 0, i32 456, i32 24, i32 14, i32 494, ptr @ov7670_qcif_regs }], [32 x i8] zeroinitializer }, align 32
@ov7675_win_sizes = internal global { [1 x %struct.ov7670_win_size], [32 x i8] } { [1 x %struct.ov7670_win_size] [%struct.ov7670_win_size { i32 640, i32 480, i8 0, i32 158, i32 14, i32 14, i32 494, ptr null }], [32 x i8] zeroinitializer }, align 32
@ov7670_qcif_regs = internal global { [16 x %struct.regval_list], [32 x i8] } { [16 x %struct.regval_list] [%struct.regval_list { i8 12, i8 12 }, %struct.regval_list { i8 12, i8 4 }, %struct.regval_list { i8 62, i8 17 }, %struct.regval_list { i8 115, i8 -15 }, %struct.regval_list { i8 -94, i8 82 }, %struct.regval_list { i8 123, i8 28 }, %struct.regval_list { i8 124, i8 40 }, %struct.regval_list { i8 125, i8 60 }, %struct.regval_list { i8 127, i8 105 }, %struct.regval_list { i8 20, i8 56 }, %struct.regval_list { i8 -95, i8 11 }, %struct.regval_list { i8 116, i8 25 }, %struct.regval_list { i8 -102, i8 -128 }, %struct.regval_list { i8 67, i8 20 }, %struct.regval_list { i8 61, i8 -64 }, %struct.regval_list { i8 -1, i8 -1 }], [32 x i8] zeroinitializer }, align 32
@ov7670_fmt_yuv422 = internal global { [13 x %struct.regval_list], [38 x i8] } { [13 x %struct.regval_list] [%struct.regval_list { i8 18, i8 0 }, %struct.regval_list { i8 -116, i8 0 }, %struct.regval_list { i8 4, i8 0 }, %struct.regval_list { i8 64, i8 -64 }, %struct.regval_list { i8 20, i8 72 }, %struct.regval_list { i8 79, i8 -128 }, %struct.regval_list { i8 80, i8 -128 }, %struct.regval_list { i8 81, i8 0 }, %struct.regval_list { i8 82, i8 34 }, %struct.regval_list { i8 83, i8 94 }, %struct.regval_list { i8 84, i8 -128 }, %struct.regval_list { i8 61, i8 -64 }, %struct.regval_list { i8 -1, i8 -1 }], [38 x i8] zeroinitializer }, align 32
@ov7670_fmt_rgb444 = internal global { [13 x %struct.regval_list], [38 x i8] } { [13 x %struct.regval_list] [%struct.regval_list { i8 18, i8 4 }, %struct.regval_list { i8 -116, i8 2 }, %struct.regval_list { i8 4, i8 0 }, %struct.regval_list { i8 64, i8 -112 }, %struct.regval_list { i8 20, i8 56 }, %struct.regval_list { i8 79, i8 -77 }, %struct.regval_list { i8 80, i8 -77 }, %struct.regval_list { i8 81, i8 0 }, %struct.regval_list { i8 82, i8 61 }, %struct.regval_list { i8 83, i8 -89 }, %struct.regval_list { i8 84, i8 -28 }, %struct.regval_list { i8 61, i8 -62 }, %struct.regval_list { i8 -1, i8 -1 }], [38 x i8] zeroinitializer }, align 32
@ov7670_fmt_rgb565 = internal global { [13 x %struct.regval_list], [38 x i8] } { [13 x %struct.regval_list] [%struct.regval_list { i8 18, i8 4 }, %struct.regval_list { i8 -116, i8 0 }, %struct.regval_list { i8 4, i8 0 }, %struct.regval_list { i8 64, i8 16 }, %struct.regval_list { i8 20, i8 56 }, %struct.regval_list { i8 79, i8 -77 }, %struct.regval_list { i8 80, i8 -77 }, %struct.regval_list { i8 81, i8 0 }, %struct.regval_list { i8 82, i8 61 }, %struct.regval_list { i8 83, i8 -89 }, %struct.regval_list { i8 84, i8 -28 }, %struct.regval_list { i8 61, i8 -64 }, %struct.regval_list { i8 -1, i8 -1 }], [38 x i8] zeroinitializer }, align 32
@ov7670_fmt_raw = internal global { [5 x %struct.regval_list], [22 x i8] } { [5 x %struct.regval_list] [%struct.regval_list { i8 18, i8 1 }, %struct.regval_list { i8 61, i8 8 }, %struct.regval_list { i8 65, i8 61 }, %struct.regval_list { i8 118, i8 -31 }, %struct.regval_list { i8 -1, i8 -1 }], [22 x i8] zeroinitializer }, align 32
@ov7670_sin_table = internal constant { [19 x i32], [52 x i8] } { [19 x i32] [i32 0, i32 87, i32 173, i32 258, i32 342, i32 422, i32 499, i32 573, i32 642, i32 707, i32 766, i32 819, i32 866, i32 906, i32 939, i32 965, i32 984, i32 996, i32 1000], [52 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"No test output\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Shifting \221\22\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"8-bar color bar\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Fade to gray color bar\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963794, i64 9963796, i64 9963797, i64 10094849, i64 10422531]
@___asan_gen_.28 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 32, i32 13 }
@___asan_gen_.31 = private unnamed_addr constant [14 x i8] c"ov7670_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 2039, i32 26 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 2041, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [16 x i8] c"ov7670_of_match\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 2032, i32 34 }
@___asan_gen_.40 = private unnamed_addr constant [10 x i8] c"ov7670_id\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 2024, i32 35 }
@___asan_gen_.43 = private unnamed_addr constant [11 x i8] c"ov7670_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1764, i32 37 }
@___asan_gen_.46 = private unnamed_addr constant [27 x i8] c"ov7670_subdev_internal_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1771, i32 46 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1898, i32 41 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1924, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1929, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [15 x i8] c"ov7670_devdata\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1778, i32 36 }
@___asan_gen_.73 = private unnamed_addr constant [15 x i8] c"ov7670_formats\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 672, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1945, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [16 x i8] c"ov7670_ctrl_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1631, i32 35 }
@___asan_gen_.85 = private unnamed_addr constant [25 x i8] c"ov7670_test_pattern_menu\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1560, i32 27 }
@___asan_gen_.88 = private unnamed_addr constant [16 x i8] c"ov7670_core_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1738, i32 42 }
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"ov7670_video_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1751, i32 43 }
@___asan_gen_.94 = private unnamed_addr constant [15 x i8] c"ov7670_pad_ops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1756, i32 41 }
@___asan_gen_.97 = private unnamed_addr constant [20 x i8] c"ov7670_default_regs\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 283, i32 27 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 524, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [19 x i8] c"ov7670_frame_rates\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1203, i32 12 }
@___asan_gen_.113 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 998, i32 6 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1830, i32 38 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1843, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1795, i32 58 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1798, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1802, i32 60 }
@___asan_gen_.151 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1805, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"ov7670_win_sizes\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 730, i32 31 }
@___asan_gen_.157 = private unnamed_addr constant [17 x i8] c"ov7675_win_sizes\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 777, i32 31 }
@___asan_gen_.160 = private unnamed_addr constant [17 x i8] c"ov7670_qcif_regs\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 711, i32 27 }
@___asan_gen_.163 = private unnamed_addr constant [18 x i8] c"ov7670_fmt_yuv422\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 412, i32 27 }
@___asan_gen_.166 = private unnamed_addr constant [18 x i8] c"ov7670_fmt_rgb444\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 444, i32 27 }
@___asan_gen_.169 = private unnamed_addr constant [18 x i8] c"ov7670_fmt_rgb565\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 428, i32 27 }
@___asan_gen_.172 = private unnamed_addr constant [15 x i8] c"ov7670_fmt_raw\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 460, i32 27 }
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"ov7670_sin_table\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1328, i32 18 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1561, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1562, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1563, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.188 = private constant [30 x i8] c"../drivers/media/i2c/ov7670.c\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1564, i32 2 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_debug297, ptr @__UNIQUE_ID_debugtype296, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_ov7670_driver_exit, ptr @__initcall__kmod_ov7670__298_2049_ov7670_driver_init6, ptr @__param_debug, ptr @ov7670_driver_exit, ptr @ov7670_init_gpio._entry, ptr @ov7670_init_gpio._entry.22, ptr @ov7670_init_gpio._entry_ptr, ptr @ov7670_init_gpio._entry_ptr.23, ptr @ov7670_parse_dt._entry, ptr @ov7670_parse_dt._entry_ptr, ptr @ov7670_probe._entry, ptr @ov7670_probe._entry.5, ptr @ov7670_probe._entry_ptr, ptr @ov7670_probe._entry_ptr.7, ptr @ov7670_read_i2c._entry, ptr @ov7670_read_i2c._entry_ptr, ptr @debug, ptr @ov7670_driver, ptr @.str, ptr @ov7670_of_match, ptr @ov7670_id, ptr @ov7670_ops, ptr @ov7670_subdev_internal_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @ov7670_devdata, ptr @ov7670_formats, ptr @ov7670_probe._key, ptr @.str.8, ptr @ov7670_ctrl_ops, ptr @ov7670_test_pattern_menu, ptr @ov7670_core_ops, ptr @ov7670_video_ops, ptr @ov7670_pad_ops, ptr @ov7670_default_regs, ptr @.str.9, ptr @.str.10, ptr @ov7670_frame_rates, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @ov7670_win_sizes, ptr @ov7675_win_sizes, ptr @ov7670_qcif_regs, ptr @ov7670_fmt_yuv422, ptr @ov7670_fmt_rgb444, ptr @ov7670_fmt_rgb565, ptr @ov7670_fmt_raw, ptr @ov7670_sin_table, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7670_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7670_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7670_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7670_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7670_subdev_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7670_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7670_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7670_devdata to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7670_formats to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7670_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7670_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7670_test_pattern_menu to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7670_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7670_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7670_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7670_default_regs to i32), i32 316, i32 384, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7670_read_i2c._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7670_frame_rates to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7670_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7670_init_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7670_init_gpio._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7670_win_sizes to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7675_win_sizes to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7670_qcif_regs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7670_fmt_yuv422 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7670_fmt_rgb444 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7670_fmt_rgb565 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7670_fmt_raw to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7670_sin_table to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7670_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ov7670_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ov7670_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @i2c_del_driver(ptr noundef nonnull @ov7670_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7670_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %v.i = alloca i8, align 1
  %bus_cfg.i = alloca %struct.v4l2_fwnode_endpoint, align 4
  %tpf = alloca %struct.v4l2_fract, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tpf) #10
  %0 = ptrtoint ptr %tpf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tpf, align 4, !annotation !125
  %1 = getelementptr inbounds %struct.v4l2_fract, ptr %tpf, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !125
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 532, i32 noundef 3520) #10
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @ov7670_ops) #10
  %internal_ops = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 7
  %3 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ov7670_subdev_internal_ops, ptr %internal_ops, align 4
  %flags = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %or = or i32 %5, 12
  store i32 %or, ptr %flags, align 4
  %clock_speed = getelementptr inbounds %struct.ov7670_info, ptr %call.i, i32 0, i32 16
  %6 = ptrtoint ptr %clock_speed to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 30, ptr %clock_speed, align 4
  %call3 = tail call ptr @dev_fwnode(ptr noundef %dev) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %call.i267 = tail call ptr @dev_fwnode(ptr noundef %dev) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %bus_cfg.i) #10
  %7 = call ptr @memset(ptr %bus_cfg.i, i32 0, i32 64)
  %tobool.not.i = icmp eq ptr %call.i267, null
  br i1 %tobool.not.i, label %if.then4.ov7670_parse_dt.exit.thread_crit_edge, label %if.end.i

if.then4.ov7670_parse_dt.exit.thread_crit_edge:   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %ov7670_parse_dt.exit.thread

if.end.i:                                         ; preds = %if.then4
  %pclk_hb_disable.i = getelementptr inbounds %struct.ov7670_info, ptr %call.i, i32 0, i32 20
  %8 = ptrtoint ptr %pclk_hb_disable.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %pclk_hb_disable.i, align 1
  %call1.i = tail call zeroext i1 @fwnode_property_present(ptr noundef nonnull %call.i267, ptr noundef nonnull @.str.12) #10
  br i1 %call1.i, label %if.then2.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %pclk_hb_disable.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %pclk_hb_disable.i, align 1
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %call5.i = tail call ptr @fwnode_graph_get_next_endpoint(ptr noundef nonnull %call.i267, ptr noundef null) #10
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.end4.i.ov7670_parse_dt.exit.thread_crit_edge, label %if.end8.i

if.end4.i.ov7670_parse_dt.exit.thread_crit_edge:  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ov7670_parse_dt.exit.thread

if.end8.i:                                        ; preds = %if.end4.i
  %call9.i = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef nonnull %call5.i, ptr noundef nonnull %bus_cfg.i) #10
  call void @fwnode_handle_put(ptr noundef nonnull %call5.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end8.i.ov7670_parse_dt.exit.thread_crit_edge

if.end8.i.ov7670_parse_dt.exit.thread_crit_edge:  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ov7670_parse_dt.exit.thread

if.end12.i:                                       ; preds = %if.end8.i
  %bus_type.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg.i, i32 0, i32 1
  %10 = ptrtoint ptr %bus_type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bus_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 1
  br i1 %cmp.not.i, label %if.end14.i, label %do.end.i

do.end.i:                                         ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #13
  br label %ov7670_parse_dt.exit

if.end14.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %bus.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg.i, i32 0, i32 2
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bus.i, align 4
  %mbus_config.i = getelementptr inbounds %struct.ov7670_info, ptr %call.i, i32 0, i32 13
  %14 = ptrtoint ptr %mbus_config.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %mbus_config.i, align 4
  br label %ov7670_parse_dt.exit

ov7670_parse_dt.exit.thread:                      ; preds = %if.end8.i.ov7670_parse_dt.exit.thread_crit_edge, %if.end4.i.ov7670_parse_dt.exit.thread_crit_edge, %if.then4.ov7670_parse_dt.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call9.i, %if.end8.i.ov7670_parse_dt.exit.thread_crit_edge ], [ -22, %if.end4.i.ov7670_parse_dt.exit.thread_crit_edge ], [ -22, %if.then4.ov7670_parse_dt.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #10
  br label %cleanup

ov7670_parse_dt.exit:                             ; preds = %if.end14.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #10
  br label %if.end34

if.else:                                          ; preds = %if.end
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %15 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %platform_data, align 8
  %tobool11.not = icmp eq ptr %16, null
  br i1 %tobool11.not, label %if.else.if.end34_crit_edge, label %if.then12

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then12:                                        ; preds = %if.else
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %min_width15 = getelementptr inbounds %struct.ov7670_info, ptr %call.i, i32 0, i32 14
  %19 = ptrtoint ptr %min_width15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %min_width15, align 4
  %min_height = getelementptr inbounds %struct.ov7670_config, ptr %16, i32 0, i32 1
  %20 = ptrtoint ptr %min_height to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %min_height, align 4
  %min_height16 = getelementptr inbounds %struct.ov7670_info, ptr %call.i, i32 0, i32 15
  %22 = ptrtoint ptr %min_height16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %min_height16, align 4
  %use_smbus = getelementptr inbounds %struct.ov7670_config, ptr %16, i32 0, i32 3
  %23 = ptrtoint ptr %use_smbus to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %use_smbus, align 4, !range !126
  %use_smbus18 = getelementptr inbounds %struct.ov7670_info, ptr %call.i, i32 0, i32 18
  %25 = ptrtoint ptr %use_smbus18 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %use_smbus18, align 1
  %clock_speed19 = getelementptr inbounds %struct.ov7670_config, ptr %16, i32 0, i32 2
  %26 = ptrtoint ptr %clock_speed19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %clock_speed19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool20.not = icmp eq i32 %27, 0
  br i1 %tobool20.not, label %if.then12.if.end24_crit_edge, label %if.then21

if.then12.if.end24_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then21:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %clock_speed to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %clock_speed, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.then12.if.end24_crit_edge
  %pll_bypass = getelementptr inbounds %struct.ov7670_config, ptr %16, i32 0, i32 4
  %29 = ptrtoint ptr %pll_bypass to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %pll_bypass, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool25.not = icmp eq i8 %30, 0
  br i1 %tobool25.not, label %if.end24.if.end28_crit_edge, label %if.then26

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %pll_bypass27 = getelementptr inbounds %struct.ov7670_info, ptr %call.i, i32 0, i32 19
  %31 = ptrtoint ptr %pll_bypass27 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %pll_bypass27, align 2
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end24.if.end28_crit_edge
  %pclk_hb_disable = getelementptr inbounds %struct.ov7670_config, ptr %16, i32 0, i32 5
  %32 = ptrtoint ptr %pclk_hb_disable to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %pclk_hb_disable, align 2, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool29.not = icmp eq i8 %33, 0
  br i1 %tobool29.not, label %if.end28.if.end34_crit_edge, label %if.then30

if.end28.if.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %pclk_hb_disable31 = getelementptr inbounds %struct.ov7670_info, ptr %call.i, i32 0, i32 20
  %34 = ptrtoint ptr %pclk_hb_disable31 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %pclk_hb_disable31, align 1
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.end28.if.end34_crit_edge, %if.else.if.end34_crit_edge, %ov7670_parse_dt.exit
  %call36 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  %clk = getelementptr inbounds %struct.ov7670_info, ptr %call.i, i32 0, i32 9
  %35 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call36, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then39, label %if.end34.if.end47_crit_edge

if.end34.if.end47_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then39:                                        ; preds = %if.end34
  %36 = ptrtoint ptr %call36 to i32
  %cmp42 = icmp eq ptr %call36, inttoptr (i32 -2 to ptr)
  br i1 %cmp42, label %if.then43, label %if.then39.cleanup_crit_edge

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then43:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %clk, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %if.end34.if.end47_crit_edge
  %call.i268 = call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef 3) #10
  %pwdn_gpio.i = getelementptr inbounds %struct.ov7670_info, ptr %call.i, i32 0, i32 12
  %38 = ptrtoint ptr %pwdn_gpio.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i268, ptr %pwdn_gpio.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i268, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end47.ov7670_init_gpio.exit_crit_edge, label %if.end.i270

if.end47.ov7670_init_gpio.exit_crit_edge:         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %ov7670_init_gpio.exit

if.end.i270:                                      ; preds = %if.end47
  %call7.i = call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef 3) #10
  %resetb_gpio.i = getelementptr inbounds %struct.ov7670_info, ptr %call.i, i32 0, i32 11
  %39 = ptrtoint ptr %resetb_gpio.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i, ptr %resetb_gpio.i, align 4
  %cmp.i25.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i25.i, label %if.end.i270.ov7670_init_gpio.exit_crit_edge, label %ov7670_init_gpio.exit.thread

if.end.i270.ov7670_init_gpio.exit_crit_edge:      ; preds = %if.end.i270
  call void @__sanitizer_cov_trace_pc() #12
  br label %ov7670_init_gpio.exit

ov7670_init_gpio.exit.thread:                     ; preds = %if.end.i270
  call void @__sanitizer_cov_trace_pc() #12
  call void @usleep_range_state(i32 noundef 3000, i32 noundef 5000, i32 noundef 2) #10
  br label %if.end51

ov7670_init_gpio.exit:                            ; preds = %if.end.i270.ov7670_init_gpio.exit_crit_edge, %if.end47.ov7670_init_gpio.exit_crit_edge
  %.str.17.sink = phi ptr [ @.str.17, %if.end47.ov7670_init_gpio.exit_crit_edge ], [ @.str.21, %if.end.i270.ov7670_init_gpio.exit_crit_edge ]
  %retval.0.i271.in.in = phi ptr [ %pwdn_gpio.i, %if.end47.ov7670_init_gpio.exit_crit_edge ], [ %resetb_gpio.i, %if.end.i270.ov7670_init_gpio.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull %.str.17.sink) #13
  %40 = ptrtoint ptr %retval.0.i271.in.in to i32
  call void @__asan_load4_noabort(i32 %40)
  %retval.0.i271.in = load ptr, ptr %retval.0.i271.in.in, align 4
  %retval.0.i271 = ptrtoint ptr %retval.0.i271.in to i32
  %tobool49.not = icmp eq ptr %retval.0.i271.in, null
  br i1 %tobool49.not, label %ov7670_init_gpio.exit.if.end51_crit_edge, label %ov7670_init_gpio.exit.cleanup_crit_edge

ov7670_init_gpio.exit.cleanup_crit_edge:          ; preds = %ov7670_init_gpio.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

ov7670_init_gpio.exit.if.end51_crit_edge:         ; preds = %ov7670_init_gpio.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.end51:                                         ; preds = %ov7670_init_gpio.exit.if.end51_crit_edge, %ov7670_init_gpio.exit.thread
  call fastcc void @ov7670_power_on(ptr noundef nonnull %call.i)
  %41 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %clk, align 4
  %tobool53.not = icmp eq ptr %42, null
  br i1 %tobool53.not, label %if.end51.if.end64_crit_edge, label %if.then54

if.end51.if.end64_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then54:                                        ; preds = %if.end51
  %call56 = call i32 @clk_get_rate(ptr noundef nonnull %42) #10
  %div = udiv i32 %call56, 1000000
  %43 = ptrtoint ptr %clock_speed to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %div, ptr %clock_speed, align 4
  %44 = add i32 %call56, -49000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -39000000, i32 %44)
  %45 = icmp ult i32 %44, -39000000
  br i1 %45, label %if.then54.power_off_crit_edge, label %if.then54.if.end64_crit_edge

if.then54.if.end64_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then54.power_off_crit_edge:                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %power_off

if.end64:                                         ; preds = %if.then54.if.end64_crit_edge, %if.end51.if.end64_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %v.i) #10
  %46 = ptrtoint ptr %v.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -1, ptr %v.i, align 1, !annotation !125
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i.i.i.while.cond.i.i.i_crit_edge, %if.end64
  %vals.addr.0.i.i.i = phi ptr [ @ov7670_default_regs, %if.end64 ], [ %incdec.ptr.i.i.i, %while.body.i.i.i.while.cond.i.i.i_crit_edge ]
  %47 = ptrtoint ptr %vals.addr.0.i.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %vals.addr.0.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %48)
  %cmp.not.i.i.i = icmp eq i8 %48, -1
  br i1 %cmp.not.i.i.i, label %lor.rhs.i.i.i, label %while.cond.i.i.i.while.body.i.i.i_crit_edge

while.cond.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i.i

lor.rhs.i.i.i:                                    ; preds = %while.cond.i.i.i
  %value.i.i.i = getelementptr inbounds %struct.regval_list, ptr %vals.addr.0.i.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %value.i.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %value.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %50)
  %cmp3.not.i.i.i = icmp eq i8 %50, -1
  br i1 %cmp3.not.i.i.i, label %if.end.i273, label %lor.rhs.i.i.i.while.body.i.i.i_crit_edge

lor.rhs.i.i.i.while.body.i.i.i_crit_edge:         ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %lor.rhs.i.i.i.while.body.i.i.i_crit_edge, %while.cond.i.i.i.while.body.i.i.i_crit_edge
  %value6.i.i.i = getelementptr inbounds %struct.regval_list, ptr %vals.addr.0.i.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %value6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %value6.i.i.i, align 1
  %call.i.i.i = call fastcc i32 @ov7670_write(ptr noundef %call.i, i8 noundef zeroext %48, i8 noundef zeroext %52) #10
  %cmp7.i.i.i = icmp sgt i32 %call.i.i.i, -1
  %incdec.ptr.i.i.i = getelementptr %struct.regval_list, ptr %vals.addr.0.i.i.i, i32 1
  br i1 %cmp7.i.i.i, label %while.body.i.i.i.while.cond.i.i.i_crit_edge, label %while.body.i.i.i.do.body_crit_edge

while.body.i.i.i.do.body_crit_edge:               ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

while.body.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.i.i

if.end.i273:                                      ; preds = %lor.rhs.i.i.i
  %call1.i272 = call fastcc i32 @ov7670_read(ptr noundef %call.i, i8 noundef zeroext 28, ptr noundef nonnull %v.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i272)
  %cmp2.i = icmp slt i32 %call1.i272, 0
  br i1 %cmp2.i, label %if.end.i273.do.body_crit_edge, label %if.end4.i274

if.end.i273.do.body_crit_edge:                    ; preds = %if.end.i273
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end4.i274:                                     ; preds = %if.end.i273
  %53 = ptrtoint ptr %v.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %v.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %54)
  %cmp5.not.i = icmp eq i8 %54, 127
  br i1 %cmp5.not.i, label %if.end8.i276, label %if.end4.i274.do.body_crit_edge

if.end4.i274.do.body_crit_edge:                   ; preds = %if.end4.i274
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end8.i276:                                     ; preds = %if.end4.i274
  %call9.i275 = call fastcc i32 @ov7670_read(ptr noundef %call.i, i8 noundef zeroext 29, ptr noundef nonnull %v.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i275)
  %cmp10.i = icmp slt i32 %call9.i275, 0
  br i1 %cmp10.i, label %if.end8.i276.do.body_crit_edge, label %if.end13.i

if.end8.i276.do.body_crit_edge:                   ; preds = %if.end8.i276
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end13.i:                                       ; preds = %if.end8.i276
  %55 = ptrtoint ptr %v.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %v.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -94, i8 %56)
  %cmp15.not.i = icmp eq i8 %56, -94
  br i1 %cmp15.not.i, label %if.end18.i, label %if.end13.i.do.body_crit_edge

if.end13.i.do.body_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end18.i:                                       ; preds = %if.end13.i
  %call19.i = call fastcc i32 @ov7670_read(ptr noundef %call.i, i8 noundef zeroext 10, ptr noundef nonnull %v.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp20.i = icmp slt i32 %call19.i, 0
  br i1 %cmp20.i, label %if.end18.i.do.body_crit_edge, label %if.end23.i

if.end18.i.do.body_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end23.i:                                       ; preds = %if.end18.i
  %57 = ptrtoint ptr %v.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %v.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 118, i8 %58)
  %cmp25.not.i = icmp eq i8 %58, 118
  br i1 %cmp25.not.i, label %if.end28.i, label %if.end23.i.do.body_crit_edge

if.end23.i.do.body_crit_edge:                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end28.i:                                       ; preds = %if.end23.i
  %call29.i = call fastcc i32 @ov7670_read(ptr noundef %call.i, i8 noundef zeroext 11, ptr noundef nonnull %v.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp30.i = icmp slt i32 %call29.i, 0
  br i1 %cmp30.i, label %if.end28.i.do.body_crit_edge, label %if.end33.i

if.end28.i.do.body_crit_edge:                     ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end33.i:                                       ; preds = %if.end28.i
  %59 = ptrtoint ptr %v.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %v.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 115, i8 %60)
  %cmp35.not.i = icmp eq i8 %60, 115
  br i1 %cmp35.not.i, label %do.end87, label %if.end33.i.do.body_crit_edge

if.end33.i.do.body_crit_edge:                     ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %if.end33.i.do.body_crit_edge, %if.end28.i.do.body_crit_edge, %if.end23.i.do.body_crit_edge, %if.end18.i.do.body_crit_edge, %if.end13.i.do.body_crit_edge, %if.end8.i276.do.body_crit_edge, %if.end4.i274.do.body_crit_edge, %if.end.i273.do.body_crit_edge, %while.body.i.i.i.do.body_crit_edge
  %retval.0.i277.ph = phi i32 [ -19, %if.end33.i.do.body_crit_edge ], [ %call29.i, %if.end28.i.do.body_crit_edge ], [ -19, %if.end23.i.do.body_crit_edge ], [ %call19.i, %if.end18.i.do.body_crit_edge ], [ -19, %if.end13.i.do.body_crit_edge ], [ %call9.i275, %if.end8.i276.do.body_crit_edge ], [ -19, %if.end4.i274.do.body_crit_edge ], [ %call1.i272, %if.end.i273.do.body_crit_edge ], [ %call.i.i.i, %while.body.i.i.i.do.body_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %v.i) #10
  %61 = load i8, ptr @debug, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool68.not = icmp eq i8 %61, 0
  br i1 %tobool68.not, label %do.body.power_off_crit_edge, label %do.end

do.body.power_off_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %power_off

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %driver = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %62 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %driver, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %66 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %67, i32 0, i32 11
  %68 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %70 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %addr, align 2
  %conv75 = zext i16 %71 to i32
  %shl = shl nuw nsw i32 %conv75, 1
  %name79 = getelementptr inbounds %struct.i2c_adapter, ptr %67, i32 0, i32 12
  %call80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %65, i32 noundef %69, i32 noundef %conv75, i32 noundef %shl, ptr noundef %name79) #13
  br label %power_off

do.end87:                                         ; preds = %if.end33.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %v.i) #10
  %driver90 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %72 = ptrtoint ptr %driver90 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %driver90, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %adapter92 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %76 = ptrtoint ptr %adapter92 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %adapter92, align 8
  %nr.i278 = getelementptr inbounds %struct.i2c_adapter, ptr %77, i32 0, i32 11
  %78 = ptrtoint ptr %nr.i278 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %nr.i278, align 4
  %addr94 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %80 = ptrtoint ptr %addr94 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %addr94, align 2
  %conv95 = zext i16 %81 to i32
  %shl98 = shl nuw nsw i32 %conv95, 1
  %name100 = getelementptr inbounds %struct.i2c_adapter, ptr %77, i32 0, i32 12
  %call102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %75, i32 noundef %79, i32 noundef %conv95, i32 noundef %shl98, ptr noundef %name100) #13
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %82 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [2 x %struct.ov7670_devtype], ptr @ov7670_devdata, i32 0, i32 %83
  %devtype = getelementptr inbounds %struct.ov7670_info, ptr %call.i, i32 0, i32 21
  %84 = ptrtoint ptr %devtype to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %arrayidx, ptr %devtype, align 4
  %fmt = getelementptr inbounds %struct.ov7670_info, ptr %call.i, i32 0, i32 7
  %85 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @ov7670_formats, ptr %fmt, align 4
  %86 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx, align 4
  %wsize = getelementptr inbounds %struct.ov7670_info, ptr %call.i, i32 0, i32 8
  %88 = ptrtoint ptr %wsize to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %87, ptr %wsize, align 4
  %format = getelementptr inbounds %struct.ov7670_info, ptr %call.i, i32 0, i32 6
  %89 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %87, align 4
  %91 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %format, align 4
  %height.i = getelementptr inbounds %struct.ov7670_win_size, ptr %87, i32 0, i32 1
  %92 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %height.i, align 4
  %height5.i = getelementptr inbounds %struct.ov7670_info, ptr %call.i, i32 0, i32 6, i32 1
  %94 = ptrtoint ptr %height5.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %height5.i, align 4
  %95 = load i32, ptr getelementptr inbounds ([4 x %struct.ov7670_format_struct], ptr @ov7670_formats, i32 0, i32 0, i32 1), align 4
  %colorspace6.i = getelementptr inbounds %struct.ov7670_info, ptr %call.i, i32 0, i32 6, i32 4
  %96 = ptrtoint ptr %colorspace6.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %colorspace6.i, align 4
  %97 = load i32, ptr @ov7670_formats, align 4
  %code.i = getelementptr inbounds %struct.ov7670_info, ptr %call.i, i32 0, i32 6, i32 2
  %98 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %code.i, align 4
  %field.i = getelementptr inbounds %struct.ov7670_info, ptr %call.i, i32 0, i32 6, i32 3
  %99 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 1, ptr %field.i, align 4
  %clkrc = getelementptr inbounds %struct.ov7670_info, ptr %call.i, i32 0, i32 17
  %100 = ptrtoint ptr %clkrc to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %clkrc, align 4
  %101 = ptrtoint ptr %tpf to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 1, ptr %tpf, align 4
  %102 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 30, ptr %1, align 4
  %set_framerate = getelementptr [2 x %struct.ov7670_devtype], ptr @ov7670_devdata, i32 0, i32 %83, i32 2
  %103 = ptrtoint ptr %set_framerate to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %set_framerate, align 4
  %call106 = call i32 %104(ptr noundef nonnull %call.i, ptr noundef nonnull %tpf) #10
  %hdl = getelementptr inbounds %struct.ov7670_info, ptr %call.i, i32 0, i32 2
  %call108 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 10, ptr noundef nonnull @ov7670_probe._key, ptr noundef nonnull @.str.8) #10
  %call110 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @ov7670_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #10
  %call112 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @ov7670_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 127, i64 noundef 1, i64 noundef 64) #10
  %call114 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @ov7670_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #10
  %call116 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @ov7670_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #10
  %call118 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @ov7670_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 256, i64 noundef 1, i64 noundef 128) #10
  %105 = getelementptr inbounds %struct.ov7670_info, ptr %call.i, i32 0, i32 5
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call118, ptr %105, align 4
  %call120 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @ov7670_ctrl_ops, i32 noundef 9963779, i64 noundef -180, i64 noundef 180, i64 noundef 5, i64 noundef 0) #10
  %hue = getelementptr inbounds %struct.ov7670_info, ptr %call.i, i32 0, i32 5, i32 1
  %107 = ptrtoint ptr %hue to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call120, ptr %hue, align 4
  %call122 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @ov7670_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #10
  %108 = getelementptr inbounds %struct.ov7670_info, ptr %call.i, i32 0, i32 3
  %gain = getelementptr inbounds %struct.ov7670_info, ptr %call.i, i32 0, i32 3, i32 1
  %109 = ptrtoint ptr %gain to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call122, ptr %gain, align 4
  %call124 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @ov7670_ctrl_ops, i32 noundef 9963794, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #10
  %110 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call124, ptr %108, align 4
  %call126 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @ov7670_ctrl_ops, i32 noundef 9963793, i64 noundef 0, i64 noundef 65535, i64 noundef 1, i64 noundef 500) #10
  %111 = getelementptr inbounds %struct.ov7670_info, ptr %call.i, i32 0, i32 4
  %exposure = getelementptr inbounds %struct.ov7670_info, ptr %call.i, i32 0, i32 4, i32 1
  %112 = ptrtoint ptr %exposure to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %call126, ptr %exposure, align 4
  %call128 = call ptr @v4l2_ctrl_new_std_menu(ptr noundef %hdl, ptr noundef nonnull @ov7670_ctrl_ops, i32 noundef 10094849, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 0) #10
  %113 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call128, ptr %111, align 4
  %call130 = call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %hdl, ptr noundef nonnull @ov7670_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 3, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @ov7670_test_pattern_menu) #10
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %114 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %hdl, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.ov7670_info, ptr %call.i, i32 0, i32 2, i32 9
  %115 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool133.not = icmp eq i32 %116, 0
  br i1 %tobool133.not, label %if.end137, label %do.end87.hdl_free_crit_edge

do.end87.hdl_free_crit_edge:                      ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %hdl_free

if.end137:                                        ; preds = %do.end87
  call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %108, i8 noundef zeroext 0, i1 noundef zeroext true) #10
  call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %111, i8 noundef zeroext 1, i1 noundef zeroext false) #10
  call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %105) #10
  %pad = getelementptr inbounds %struct.ov7670_info, ptr %call.i, i32 0, i32 1
  %flags141 = getelementptr inbounds %struct.ov7670_info, ptr %call.i, i32 0, i32 1, i32 4
  %117 = ptrtoint ptr %flags141 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 2, ptr %flags141, align 4
  %function = getelementptr inbounds %struct.media_entity, ptr %call.i, i32 0, i32 3
  %118 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 131073, ptr %function, align 4
  %call146 = call i32 @media_entity_pads_init(ptr noundef nonnull %call.i, i16 noundef zeroext 1, ptr noundef %pad) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %cmp147 = icmp slt i32 %call146, 0
  br i1 %cmp147, label %if.end137.hdl_free_crit_edge, label %if.end150

if.end137.hdl_free_crit_edge:                     ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #12
  br label %hdl_free

if.end150:                                        ; preds = %if.end137
  %call152 = call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl) #10
  %call154 = call i32 @v4l2_async_register_subdev(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %cmp155 = icmp slt i32 %call154, 0
  br i1 %cmp155, label %if.end150.hdl_free_crit_edge, label %if.end158

if.end150.hdl_free_crit_edge:                     ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #12
  br label %hdl_free

if.end158:                                        ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @ov7670_power_off(ptr noundef nonnull %call.i)
  br label %cleanup

hdl_free:                                         ; preds = %if.end150.hdl_free_crit_edge, %if.end137.hdl_free_crit_edge, %do.end87.hdl_free_crit_edge
  %ret.0 = phi i32 [ %call146, %if.end137.hdl_free_crit_edge ], [ %116, %do.end87.hdl_free_crit_edge ], [ %call154, %if.end150.hdl_free_crit_edge ]
  call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #10
  br label %power_off

power_off:                                        ; preds = %hdl_free, %do.end, %do.body.power_off_crit_edge, %if.then54.power_off_crit_edge
  %ret.1 = phi i32 [ %retval.0.i277.ph, %do.end ], [ %retval.0.i277.ph, %do.body.power_off_crit_edge ], [ %ret.0, %hdl_free ], [ -22, %if.then54.power_off_crit_edge ]
  %on.i = getelementptr inbounds %struct.ov7670_info, ptr %call.i, i32 0, i32 10
  %119 = ptrtoint ptr %on.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %on.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool.not.i279 = icmp eq i32 %120, 0
  br i1 %tobool.not.i279, label %power_off.cleanup_crit_edge, label %if.end.i281

power_off.cleanup_crit_edge:                      ; preds = %power_off
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i281:                                      ; preds = %power_off
  %121 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %122) #10
  call void @clk_unprepare(ptr noundef %122) #10
  %123 = ptrtoint ptr %pwdn_gpio.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %pwdn_gpio.i, align 4
  %tobool1.not.i = icmp eq ptr %124, null
  br i1 %tobool1.not.i, label %if.end.i281.if.end4.i283_crit_edge, label %if.then2.i282

if.end.i281.if.end4.i283_crit_edge:               ; preds = %if.end.i281
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i283

if.then2.i282:                                    ; preds = %if.end.i281
  call void @__sanitizer_cov_trace_pc() #12
  call void @gpiod_set_value(ptr noundef nonnull %124, i32 noundef 1) #10
  br label %if.end4.i283

if.end4.i283:                                     ; preds = %if.then2.i282, %if.end.i281.if.end4.i283_crit_edge
  %125 = ptrtoint ptr %on.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %on.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4.i283, %power_off.cleanup_crit_edge, %if.end158, %ov7670_init_gpio.exit.cleanup_crit_edge, %if.then39.cleanup_crit_edge, %ov7670_parse_dt.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end158 ], [ -12, %entry.cleanup_crit_edge ], [ %36, %if.then39.cleanup_crit_edge ], [ %retval.0.i271, %ov7670_init_gpio.exit.cleanup_crit_edge ], [ %retval.0.i.ph, %ov7670_parse_dt.exit.thread ], [ %ret.1, %power_off.cleanup_crit_edge ], [ %ret.1, %if.end4.i283 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tpf) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7670_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #10
  %hdl = getelementptr inbounds %struct.ov7670_info, ptr %1, i32 0, i32 2
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #10
  %on.i = getelementptr inbounds %struct.ov7670_info, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %on.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %on.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.ov7670_power_off.exit_crit_edge, label %if.end.i

entry.ov7670_power_off.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ov7670_power_off.exit

if.end.i:                                         ; preds = %entry
  %clk.i = getelementptr inbounds %struct.ov7670_info, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %5) #10
  tail call void @clk_unprepare(ptr noundef %5) #10
  %pwdn_gpio.i = getelementptr inbounds %struct.ov7670_info, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %pwdn_gpio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pwdn_gpio.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gpiod_set_value(ptr noundef nonnull %7, i32 noundef 1) #10
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %8 = ptrtoint ptr %on.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %on.i, align 4
  br label %ov7670_power_off.exit

ov7670_power_off.exit:                            ; preds = %if.end4.i, %entry.ov7670_power_off.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ov7670_power_on(ptr nocapture noundef %sd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %on = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 10
  %0 = ptrtoint ptr %on to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 9
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.clk_prepare_enable.exit_crit_edge

if.end.clk_prepare_enable.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %3) #10
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end.clk_prepare_enable.exit_crit_edge
  %pwdn_gpio = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 12
  %4 = ptrtoint ptr %pwdn_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pwdn_gpio, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %clk_prepare_enable.exit.if.end5_crit_edge, label %if.then3

clk_prepare_enable.exit.if.end5_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then3:                                         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gpiod_set_value(ptr noundef nonnull %5, i32 noundef 0) #10
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %clk_prepare_enable.exit.if.end5_crit_edge
  %resetb_gpio = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 11
  %6 = ptrtoint ptr %resetb_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resetb_gpio, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end5.if.end10_crit_edge, label %if.then7

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gpiod_set_value(ptr noundef nonnull %7, i32 noundef 1) #10
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #10
  %8 = ptrtoint ptr %resetb_gpio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resetb_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %9, i32 noundef 0) #10
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end5.if.end10_crit_edge
  %10 = ptrtoint ptr %pwdn_gpio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pwdn_gpio, align 4
  %tobool12.not = icmp eq ptr %11, null
  br i1 %tobool12.not, label %lor.lhs.false, label %if.end10.if.then18_crit_edge

if.end10.if.then18_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

lor.lhs.false:                                    ; preds = %if.end10
  %12 = ptrtoint ptr %resetb_gpio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %resetb_gpio, align 4
  %tobool14.not = icmp eq ptr %13, null
  br i1 %tobool14.not, label %lor.lhs.false15, label %lor.lhs.false.if.then18_crit_edge

lor.lhs.false.if.then18_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk, align 4
  %tobool17.not = icmp eq ptr %15, null
  br i1 %tobool17.not, label %lor.lhs.false15.if.end19_crit_edge, label %lor.lhs.false15.if.then18_crit_edge

lor.lhs.false15.if.then18_crit_edge:              ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

lor.lhs.false15.if.end19_crit_edge:               ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then18:                                        ; preds = %lor.lhs.false15.if.then18_crit_edge, %lor.lhs.false.if.then18_crit_edge, %if.end10.if.then18_crit_edge
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 5000, i32 noundef 2) #10
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %lor.lhs.false15.if.end19_crit_edge
  %16 = ptrtoint ptr %on to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %on, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ov7670_power_off(ptr nocapture noundef %sd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %on = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 10
  %0 = ptrtoint ptr %on to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 9
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #10
  tail call void @clk_unprepare(ptr noundef %3) #10
  %pwdn_gpio = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 12
  %4 = ptrtoint ptr %pwdn_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pwdn_gpio, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gpiod_set_value(ptr noundef nonnull %5, i32 noundef 1) #10
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %6 = ptrtoint ptr %on to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %on, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subdev_log_status(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7670_init(ptr nocapture noundef readonly %sd, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %vals.addr.0.i = phi ptr [ @ov7670_default_regs, %entry ], [ %incdec.ptr.i, %while.body.i.while.cond.i_crit_edge ]
  %0 = ptrtoint ptr %vals.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vals.addr.0.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp.not.i = icmp eq i8 %1, -1
  br i1 %cmp.not.i, label %lor.rhs.i, label %while.cond.i.while.body.i_crit_edge

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

lor.rhs.i:                                        ; preds = %while.cond.i
  %value.i = getelementptr inbounds %struct.regval_list, ptr %vals.addr.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %value.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp3.not.i = icmp eq i8 %3, -1
  br i1 %cmp3.not.i, label %lor.rhs.i.ov7670_write_array.exit_crit_edge, label %lor.rhs.i.while.body.i_crit_edge

lor.rhs.i.while.body.i_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

lor.rhs.i.ov7670_write_array.exit_crit_edge:      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ov7670_write_array.exit

while.body.i:                                     ; preds = %lor.rhs.i.while.body.i_crit_edge, %while.cond.i.while.body.i_crit_edge
  %value6.i = getelementptr inbounds %struct.regval_list, ptr %vals.addr.0.i, i32 0, i32 1
  %4 = ptrtoint ptr %value6.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %value6.i, align 1
  %call.i = tail call fastcc i32 @ov7670_write(ptr noundef %sd, i8 noundef zeroext %1, i8 noundef zeroext %5) #10
  %cmp7.i = icmp sgt i32 %call.i, -1
  %incdec.ptr.i = getelementptr %struct.regval_list, ptr %vals.addr.0.i, i32 1
  br i1 %cmp7.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.ov7670_write_array.exit_crit_edge

while.body.i.ov7670_write_array.exit_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ov7670_write_array.exit

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

ov7670_write_array.exit:                          ; preds = %while.body.i.ov7670_write_array.exit_crit_edge, %lor.rhs.i.ov7670_write_array.exit_crit_edge
  %retval.2.i = phi i32 [ %call.i, %while.body.i.ov7670_write_array.exit_crit_edge ], [ 0, %lor.rhs.i.ov7670_write_array.exit_crit_edge ]
  ret i32 %retval.2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7670_reset(ptr nocapture noundef readonly %sd, i32 noundef %val) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %data.i.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %use_smbus.i = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 18
  %0 = ptrtoint ptr %use_smbus.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_smbus.i, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  %dev_priv.i.i7.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i7.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 18, i8 noundef zeroext -128) #10
  tail call void @msleep(i32 noundef 5) #10
  br label %ov7670_write.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #10
  %4 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 196607, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i) #10
  %6 = getelementptr inbounds [2 x i8], ptr %data.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 18, ptr %data.i.i, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -128, ptr %6, align 1
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr.i.i, align 2
  %11 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %data.i.i, ptr %buf.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter.i.i, align 8
  %call2.i.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg.i.i, i32 noundef 1) #10
  call void @msleep(i32 noundef 5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #10
  br label %ov7670_write.exit

ov7670_write.exit:                                ; preds = %if.else.i, %if.then.i
  call void @msleep(i32 noundef 1) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7670_g_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef %reg) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #10
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %val, align 1
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %1 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 8)
  %2 = load i64, ptr %reg1, align 1
  %conv = trunc i64 %2 to i8
  %call = call fastcc i32 @ov7670_read(ptr noundef %sd, i8 noundef zeroext %conv, ptr noundef nonnull %val)
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val, align 1
  %conv2 = zext i8 %4 to i64
  %val3 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %5 = ptrtoint ptr %val3 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 %conv2, ptr %val3, align 1
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %6 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 1, ptr %size, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7670_s_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %reg1, align 1
  %conv = trunc i64 %1 to i8
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %2 = ptrtoint ptr %val to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %val, align 1
  %conv3 = trunc i64 %3 to i8
  %call = tail call fastcc i32 @ov7670_write(ptr noundef %sd, i8 noundef zeroext %conv, i8 noundef zeroext %conv3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7670_s_power(ptr noundef %sd, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %on1 = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 10
  %0 = ptrtoint ptr %on1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %on1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %on)
  %cmp = icmp eq i32 %1, %on
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call fastcc void @ov7670_power_on(ptr noundef %sd)
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.then2
  %vals.addr.0.i.i = phi ptr [ @ov7670_default_regs, %if.then2 ], [ %incdec.ptr.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  %2 = ptrtoint ptr %vals.addr.0.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vals.addr.0.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp.not.i.i = icmp eq i8 %3, -1
  br i1 %cmp.not.i.i, label %lor.rhs.i.i, label %while.cond.i.i.while.body.i.i_crit_edge

while.cond.i.i.while.body.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

lor.rhs.i.i:                                      ; preds = %while.cond.i.i
  %value.i.i = getelementptr inbounds %struct.regval_list, ptr %vals.addr.0.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %value.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp3.not.i.i = icmp eq i8 %5, -1
  br i1 %cmp3.not.i.i, label %lor.rhs.i.i.ov7670_init.exit_crit_edge, label %lor.rhs.i.i.while.body.i.i_crit_edge

lor.rhs.i.i.while.body.i.i_crit_edge:             ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

lor.rhs.i.i.ov7670_init.exit_crit_edge:           ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ov7670_init.exit

while.body.i.i:                                   ; preds = %lor.rhs.i.i.while.body.i.i_crit_edge, %while.cond.i.i.while.body.i.i_crit_edge
  %value6.i.i = getelementptr inbounds %struct.regval_list, ptr %vals.addr.0.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %value6.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %value6.i.i, align 1
  %call.i.i = tail call fastcc i32 @ov7670_write(ptr noundef %sd, i8 noundef zeroext %3, i8 noundef zeroext %7) #10
  %cmp7.i.i = icmp sgt i32 %call.i.i, -1
  %incdec.ptr.i.i = getelementptr %struct.regval_list, ptr %vals.addr.0.i.i, i32 1
  br i1 %cmp7.i.i, label %while.body.i.i.while.cond.i.i_crit_edge, label %while.body.i.i.ov7670_init.exit_crit_edge

while.body.i.i.ov7670_init.exit_crit_edge:        ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ov7670_init.exit

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.i

ov7670_init.exit:                                 ; preds = %while.body.i.i.ov7670_init.exit_crit_edge, %lor.rhs.i.i.ov7670_init.exit_crit_edge
  %call4 = tail call fastcc i32 @ov7670_apply_fmt(ptr noundef %sd)
  %call5 = tail call fastcc i32 @ov7675_apply_framerate(ptr noundef %sd)
  %hdl = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 2
  %call6 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl) #10
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.else.cleanup_crit_edge, label %if.end.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.else
  %clk.i = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 9
  %8 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %9) #10
  tail call void @clk_unprepare(ptr noundef %9) #10
  %pwdn_gpio.i = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 12
  %10 = ptrtoint ptr %pwdn_gpio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pwdn_gpio.i, align 4
  %tobool1.not.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gpiod_set_value(ptr noundef nonnull %11, i32 noundef 1) #10
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %12 = ptrtoint ptr %on1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %on1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4.i, %if.else.cleanup_crit_edge, %ov7670_init.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subdev_subscribe_event(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subdev_unsubscribe(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov7670_write_array(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %vals) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %vals.addr.0 = phi ptr [ %vals, %entry ], [ %incdec.ptr, %while.body.while.cond_crit_edge ]
  %0 = ptrtoint ptr %vals.addr.0 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vals.addr.0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp.not = icmp eq i8 %1, -1
  br i1 %cmp.not, label %lor.rhs, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

lor.rhs:                                          ; preds = %while.cond
  %value = getelementptr inbounds %struct.regval_list, ptr %vals.addr.0, i32 0, i32 1
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %value, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp3.not = icmp eq i8 %3, -1
  br i1 %cmp3.not, label %lor.rhs.return_crit_edge, label %lor.rhs.while.body_crit_edge

lor.rhs.while.body_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

lor.rhs.return_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

while.body:                                       ; preds = %lor.rhs.while.body_crit_edge, %while.cond.while.body_crit_edge
  %value6 = getelementptr inbounds %struct.regval_list, ptr %vals.addr.0, i32 0, i32 1
  %4 = ptrtoint ptr %value6 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %value6, align 1
  %call = tail call fastcc i32 @ov7670_write(ptr noundef %sd, i8 noundef zeroext %1, i8 noundef zeroext %5)
  %cmp7 = icmp sgt i32 %call, -1
  %incdec.ptr = getelementptr %struct.regval_list, ptr %vals.addr.0, i32 1
  br i1 %cmp7, label %while.body.while.cond_crit_edge, label %while.body.return_crit_edge

while.body.return_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

return:                                           ; preds = %while.body.return_crit_edge, %lor.rhs.return_crit_edge
  %retval.2 = phi i32 [ %call, %while.body.return_crit_edge ], [ 0, %lor.rhs.return_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov7670_write(ptr nocapture noundef readonly %sd, i8 noundef zeroext %reg, i8 noundef zeroext %value) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  %data.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %use_smbus = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 18
  %0 = ptrtoint ptr %use_smbus to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_smbus, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %dev_priv.i.i7 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i.i7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i7, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %reg, i8 noundef zeroext %value) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %reg)
  %cmp.i = icmp ne i8 %reg, 18
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %value)
  %tobool.not.i = icmp sgt i8 %value, -1
  %or.cond.i = or i1 %cmp.i, %tobool.not.i
  br i1 %or.cond.i, label %if.then.cleanup_crit_edge, label %if.then.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 5) #10
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #10
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 196607, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #10
  %6 = getelementptr inbounds [2 x i8], ptr %data.i, i32 0, i32 1
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %reg, ptr %data.i, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %value, ptr %6, align 1
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr.i, align 2
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %data.i, ptr %buf.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter.i, align 8
  %call2.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %reg)
  %cmp3.i = icmp ne i8 %reg, 18
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %value)
  %tobool.not.i8 = icmp sgt i8 %value, -1
  %or.cond.i9 = or i1 %cmp3.i, %tobool.not.i8
  br i1 %or.cond.i9, label %if.else.ov7670_write_i2c.exit_crit_edge, label %if.then6.i

if.else.ov7670_write_i2c.exit_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %ov7670_write_i2c.exit

if.then6.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void @msleep(i32 noundef 5) #10
  br label %ov7670_write_i2c.exit

ov7670_write_i2c.exit:                            ; preds = %if.then6.i, %if.else.ov7670_write_i2c.exit_crit_edge
  %16 = call i32 @llvm.smin.i32(i32 %call2.i, i32 0) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #10
  br label %cleanup

cleanup:                                          ; preds = %ov7670_write_i2c.exit, %if.then.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %ov7670_write_i2c.exit ], [ %call1.i, %if.then.cleanup_crit_edge ], [ %call1.i, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov7670_read(ptr nocapture noundef readonly %sd, i8 noundef zeroext %reg, ptr nocapture noundef writeonly %value) unnamed_addr #2 align 64 {
entry:
  %data.i = alloca i8, align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %use_smbus = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 18
  %0 = ptrtoint ptr %use_smbus to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_smbus, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %dev_priv.i.i7 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i.i7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i7, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %reg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %if.then.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = trunc i32 %call1.i to i8
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv.i, ptr %value, align 1
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #10
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %reg, ptr %data.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #10
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 131071, ptr %6, align 4
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr.i, align 2
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %data.i, ptr %buf.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %13 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter.i, align 8
  %call2.i = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msg.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i8 = icmp slt i32 %call2.i, 0
  br i1 %cmp.i8, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call2.i) #13
  br label %ov7670_read_i2c.exit

if.end.i:                                         ; preds = %if.else
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags.i, align 2
  %16 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter.i, align 8
  %call6.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call6.i)
  %cmp7.i = icmp sgt i32 %call6.i, -1
  br i1 %cmp7.i, label %if.then8.i, label %if.end.i.ov7670_read_i2c.exit_crit_edge

if.end.i.ov7670_read_i2c.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ov7670_read_i2c.exit

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data.i, align 1
  %20 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %value, align 1
  br label %ov7670_read_i2c.exit

ov7670_read_i2c.exit:                             ; preds = %if.then8.i, %if.end.i.ov7670_read_i2c.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ %call2.i, %do.end.i ], [ 0, %if.then8.i ], [ %call6.i, %if.end.i.ov7670_read_i2c.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #10
  br label %cleanup

cleanup:                                          ; preds = %ov7670_read_i2c.exit, %if.then.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %ov7670_read_i2c.exit ], [ 0, %if.then.i ], [ %call1.i, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov7670_apply_fmt(ptr nocapture noundef readonly %sd) unnamed_addr #2 align 64 {
entry:
  %msg.i.i91.i = alloca %struct.i2c_msg, align 4
  %data.i.i92.i = alloca [2 x i8], align 1
  %msg.i.i74.i = alloca %struct.i2c_msg, align 4
  %data.i.i75.i = alloca [2 x i8], align 1
  %msg.i.i.i = alloca %struct.i2c_msg, align 4
  %data.i.i.i = alloca [2 x i8], align 1
  %v.i = alloca i8, align 1
  %msg.i.i90 = alloca %struct.i2c_msg, align 4
  %data.i.i91 = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %data.i.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wsize1 = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 8
  %0 = ptrtoint ptr %wsize1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wsize1, align 4
  %fmt = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 7
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fmt, align 4
  %regs = getelementptr inbounds %struct.ov7670_format_struct, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %value = getelementptr inbounds %struct.regval_list, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %value, align 1
  %com7_bit = getelementptr inbounds %struct.ov7670_win_size, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %com7_bit to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %com7_bit, align 4
  %or89 = or i8 %9, %7
  %use_smbus.i = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 18
  %10 = ptrtoint ptr %use_smbus.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %use_smbus.i, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  %dev_priv.i.i7.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %12 = ptrtoint ptr %dev_priv.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_priv.i.i7.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 18, i8 noundef zeroext %or89) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %or89)
  %tobool.not.i.i = icmp sgt i8 %or89, -1
  br i1 %tobool.not.i.i, label %if.then.i.ov7670_write.exit_crit_edge, label %if.then.i.i

if.then.i.ov7670_write.exit_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ov7670_write.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 5) #10
  br label %ov7670_write.exit

if.else.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #10
  %14 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 196607, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i) #10
  %16 = getelementptr inbounds [2 x i8], ptr %data.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 18, ptr %data.i.i, align 1
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %or89, ptr %16, align 1
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 1
  %19 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %addr.i.i, align 2
  %21 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %data.i.i, ptr %buf.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 3
  %24 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter.i.i, align 8
  %call2.i.i = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %msg.i.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %or89)
  %tobool.not.i8.i = icmp sgt i8 %or89, -1
  br i1 %tobool.not.i8.i, label %if.else.i.ov7670_write_i2c.exit.i_crit_edge, label %if.then6.i.i

if.else.i.ov7670_write_i2c.exit.i_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ov7670_write_i2c.exit.i

if.then6.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @msleep(i32 noundef 5) #10
  br label %ov7670_write_i2c.exit.i

ov7670_write_i2c.exit.i:                          ; preds = %if.then6.i.i, %if.else.i.ov7670_write_i2c.exit.i_crit_edge
  %26 = call i32 @llvm.smin.i32(i32 %call2.i.i, i32 0) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #10
  br label %ov7670_write.exit

ov7670_write.exit:                                ; preds = %ov7670_write_i2c.exit.i, %if.then.i.i, %if.then.i.ov7670_write.exit_crit_edge
  %retval.0.i = phi i32 [ %26, %ov7670_write_i2c.exit.i ], [ %call1.i.i, %if.then.i.ov7670_write.exit_crit_edge ], [ %call1.i.i, %if.then.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %if.end, label %ov7670_write.exit.cleanup_crit_edge

ov7670_write.exit.cleanup_crit_edge:              ; preds = %ov7670_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %ov7670_write.exit
  %mbus_config = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 13
  %27 = ptrtoint ptr %mbus_config to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mbus_config, align 4
  %29 = trunc i32 %28 to i8
  %30 = lshr i8 %29, 4
  %31 = and i8 %30, 2
  %32 = and i8 %29, 8
  %33 = or i8 %31, %32
  %pclk_hb_disable = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 20
  %34 = ptrtoint ptr %pclk_hb_disable to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %pclk_hb_disable, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool19.not = icmp eq i8 %35, 0
  %36 = or i8 %33, 32
  %com10.2 = select i1 %tobool19.not, i8 %33, i8 %36
  %37 = ptrtoint ptr %use_smbus.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %use_smbus.i, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i93 = icmp eq i8 %38, 0
  %39 = ptrtoint ptr %dev_priv.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_priv.i.i7.i, align 4
  br i1 %tobool.not.i93, label %if.else.i104, label %if.then.i97

if.then.i97:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i95 = call i32 @i2c_smbus_write_byte_data(ptr noundef %40, i8 noundef zeroext 21, i8 noundef zeroext %com10.2) #10
  br label %ov7670_write.exit107

if.else.i104:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i90) #10
  %41 = getelementptr inbounds i8, ptr %msg.i.i90, i32 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 196607, ptr %41, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i91) #10
  %43 = getelementptr inbounds [2 x i8], ptr %data.i.i91, i32 0, i32 1
  %44 = ptrtoint ptr %data.i.i91 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 21, ptr %data.i.i91, align 1
  %45 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %com10.2, ptr %43, align 1
  %addr.i.i98 = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 1
  %46 = ptrtoint ptr %addr.i.i98 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %addr.i.i98, align 2
  %48 = ptrtoint ptr %msg.i.i90 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %msg.i.i90, align 4
  %flags.i.i99 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i90, i32 0, i32 1
  %49 = ptrtoint ptr %flags.i.i99 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %flags.i.i99, align 2
  %buf.i.i100 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i90, i32 0, i32 3
  %50 = ptrtoint ptr %buf.i.i100 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %data.i.i91, ptr %buf.i.i100, align 4
  %adapter.i.i101 = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 3
  %51 = ptrtoint ptr %adapter.i.i101 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %adapter.i.i101, align 8
  %call2.i.i102 = call i32 @i2c_transfer(ptr noundef %52, ptr noundef nonnull %msg.i.i90, i32 noundef 1) #10
  %53 = call i32 @llvm.smin.i32(i32 %call2.i.i102, i32 0) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i91) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i90) #10
  br label %ov7670_write.exit107

ov7670_write.exit107:                             ; preds = %if.else.i104, %if.then.i97
  %retval.0.i106 = phi i32 [ %53, %if.else.i104 ], [ %call1.i.i95, %if.then.i97 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i106)
  %tobool26.not = icmp eq i32 %retval.0.i106, 0
  br i1 %tobool26.not, label %if.end28, label %ov7670_write.exit107.cleanup_crit_edge

ov7670_write.exit107.cleanup_crit_edge:           ; preds = %ov7670_write.exit107
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28:                                         ; preds = %ov7670_write.exit107
  %54 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fmt, align 4
  %regs30 = getelementptr inbounds %struct.ov7670_format_struct, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %regs30 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs30, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end28
  %.pn = phi ptr [ %57, %if.end28 ], [ %vals.addr.0.i, %while.body.i.while.cond.i_crit_edge ]
  %vals.addr.0.i = getelementptr %struct.regval_list, ptr %.pn, i32 1
  %58 = ptrtoint ptr %vals.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %vals.addr.0.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %59)
  %cmp.not.i = icmp eq i8 %59, -1
  br i1 %cmp.not.i, label %lor.rhs.i, label %while.cond.i.while.body.i_crit_edge

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

lor.rhs.i:                                        ; preds = %while.cond.i
  %value.i = getelementptr %struct.regval_list, ptr %.pn, i32 1, i32 1
  %60 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %value.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %61)
  %cmp3.not.i = icmp eq i8 %61, -1
  br i1 %cmp3.not.i, label %if.end34, label %lor.rhs.i.while.body.i_crit_edge

lor.rhs.i.while.body.i_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i:                                     ; preds = %lor.rhs.i.while.body.i_crit_edge, %while.cond.i.while.body.i_crit_edge
  %value6.i = getelementptr %struct.regval_list, ptr %.pn, i32 1, i32 1
  %62 = ptrtoint ptr %value6.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %value6.i, align 1
  %call.i = call fastcc i32 @ov7670_write(ptr noundef %sd, i8 noundef zeroext %59, i8 noundef zeroext %63) #10
  %cmp7.i = icmp sgt i32 %call.i, -1
  br i1 %cmp7.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.cleanup_crit_edge

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

if.end34:                                         ; preds = %lor.rhs.i
  %hstart = getelementptr inbounds %struct.ov7670_win_size, ptr %1, i32 0, i32 3
  %64 = ptrtoint ptr %hstart to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %hstart, align 4
  %hstop = getelementptr inbounds %struct.ov7670_win_size, ptr %1, i32 0, i32 4
  %66 = ptrtoint ptr %hstop to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %hstop, align 4
  %vstart = getelementptr inbounds %struct.ov7670_win_size, ptr %1, i32 0, i32 5
  %68 = ptrtoint ptr %vstart to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %vstart, align 4
  %vstop = getelementptr inbounds %struct.ov7670_win_size, ptr %1, i32 0, i32 6
  %70 = ptrtoint ptr %vstop to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %vstop, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %v.i) #10
  %72 = ptrtoint ptr %v.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -1, ptr %v.i, align 1, !annotation !125
  %73 = lshr i32 %65, 3
  %conv.i = trunc i32 %73 to i8
  %74 = ptrtoint ptr %use_smbus.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %use_smbus.i, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not.i.i108 = icmp eq i8 %75, 0
  %76 = ptrtoint ptr %dev_priv.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev_priv.i.i7.i, align 4
  br i1 %tobool.not.i.i108, label %if.else.i.i, label %if.then.i.i109

if.then.i.i109:                                   ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %77, i8 noundef zeroext 23, i8 noundef zeroext %conv.i) #10
  br label %ov7670_write.exit.i

if.else.i.i:                                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #10
  %78 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 196607, ptr %78, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i.i) #10
  %80 = getelementptr inbounds [2 x i8], ptr %data.i.i.i, i32 0, i32 1
  %81 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 23, ptr %data.i.i.i, align 1
  %82 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv.i, ptr %80, align 1
  %addr.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %77, i32 0, i32 1
  %83 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %addr.i.i.i, align 2
  %85 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %84, ptr %msg.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %86 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 0, ptr %flags.i.i.i, align 2
  %buf.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %87 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %data.i.i.i, ptr %buf.i.i.i, align 4
  %adapter.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %77, i32 0, i32 3
  %88 = ptrtoint ptr %adapter.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %adapter.i.i.i, align 8
  %call2.i.i.i = call i32 @i2c_transfer(ptr noundef %89, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #10
  %90 = call i32 @llvm.smin.i32(i32 %call2.i.i.i, i32 0) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #10
  br label %ov7670_write.exit.i

ov7670_write.exit.i:                              ; preds = %if.else.i.i, %if.then.i.i109
  %retval.0.i.i = phi i32 [ %90, %if.else.i.i ], [ %call1.i.i.i, %if.then.i.i109 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool.not.i110 = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not.i110, label %if.end.i, label %ov7670_write.exit.i.ov7670_set_hw.exit.thread_crit_edge

ov7670_write.exit.i.ov7670_set_hw.exit.thread_crit_edge: ; preds = %ov7670_write.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ov7670_set_hw.exit.thread

if.end.i:                                         ; preds = %ov7670_write.exit.i
  %91 = lshr i32 %67, 3
  %conv3.i = trunc i32 %91 to i8
  %92 = ptrtoint ptr %use_smbus.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %use_smbus.i, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool.not.i77.i = icmp eq i8 %93, 0
  %94 = ptrtoint ptr %dev_priv.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev_priv.i.i7.i, align 4
  br i1 %tobool.not.i77.i, label %if.else.i88.i, label %if.then.i81.i

if.then.i81.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i79.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %95, i8 noundef zeroext 24, i8 noundef zeroext %conv3.i) #10
  br label %ov7670_write.exit90.i

if.else.i88.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i74.i) #10
  %96 = getelementptr inbounds i8, ptr %msg.i.i74.i, i32 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 196607, ptr %96, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i75.i) #10
  %98 = getelementptr inbounds [2 x i8], ptr %data.i.i75.i, i32 0, i32 1
  %99 = ptrtoint ptr %data.i.i75.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 24, ptr %data.i.i75.i, align 1
  %100 = ptrtoint ptr %98 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv3.i, ptr %98, align 1
  %addr.i.i82.i = getelementptr inbounds %struct.i2c_client, ptr %95, i32 0, i32 1
  %101 = ptrtoint ptr %addr.i.i82.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %addr.i.i82.i, align 2
  %103 = ptrtoint ptr %msg.i.i74.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %102, ptr %msg.i.i74.i, align 4
  %flags.i.i83.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i74.i, i32 0, i32 1
  %104 = ptrtoint ptr %flags.i.i83.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 0, ptr %flags.i.i83.i, align 2
  %buf.i.i84.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i74.i, i32 0, i32 3
  %105 = ptrtoint ptr %buf.i.i84.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %data.i.i75.i, ptr %buf.i.i84.i, align 4
  %adapter.i.i85.i = getelementptr inbounds %struct.i2c_client, ptr %95, i32 0, i32 3
  %106 = ptrtoint ptr %adapter.i.i85.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %adapter.i.i85.i, align 8
  %call2.i.i86.i = call i32 @i2c_transfer(ptr noundef %107, ptr noundef nonnull %msg.i.i74.i, i32 noundef 1) #10
  %108 = call i32 @llvm.smin.i32(i32 %call2.i.i86.i, i32 0) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i75.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i74.i) #10
  br label %ov7670_write.exit90.i

ov7670_write.exit90.i:                            ; preds = %if.else.i88.i, %if.then.i81.i
  %retval.0.i89.i = phi i32 [ %108, %if.else.i88.i ], [ %call1.i.i79.i, %if.then.i81.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i89.i)
  %tobool5.not.i = icmp eq i32 %retval.0.i89.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %ov7670_write.exit90.i.ov7670_set_hw.exit.thread_crit_edge

ov7670_write.exit90.i.ov7670_set_hw.exit.thread_crit_edge: ; preds = %ov7670_write.exit90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ov7670_set_hw.exit.thread

if.end7.i:                                        ; preds = %ov7670_write.exit90.i
  %call8.i = call fastcc i32 @ov7670_read(ptr noundef %sd, i8 noundef zeroext 50, ptr noundef nonnull %v.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end7.i.ov7670_set_hw.exit.thread_crit_edge

if.end7.i.ov7670_set_hw.exit.thread_crit_edge:    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ov7670_set_hw.exit.thread

if.end11.i:                                       ; preds = %if.end7.i
  %109 = ptrtoint ptr %v.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %v.i, align 1
  %111 = and i8 %110, -64
  %and14.i = shl i32 %67, 3
  %shl.i = and i32 %and14.i, 56
  %and15.i = and i32 %65, 7
  %or.i = or i32 %shl.i, %and15.i
  %112 = trunc i32 %or.i to i8
  %conv17.i = or i8 %111, %112
  store i8 %conv17.i, ptr %v.i, align 1
  call void @msleep(i32 noundef 10) #10
  %113 = ptrtoint ptr %use_smbus.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %use_smbus.i, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool.not.i94.i = icmp eq i8 %114, 0
  %115 = ptrtoint ptr %dev_priv.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev_priv.i.i7.i, align 4
  br i1 %tobool.not.i94.i, label %if.else.i105.i, label %if.then.i98.i

if.then.i98.i:                                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i96.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %116, i8 noundef zeroext 50, i8 noundef zeroext %conv17.i) #10
  br label %ov7670_write.exit107.i

if.else.i105.i:                                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i91.i) #10
  %117 = getelementptr inbounds i8, ptr %msg.i.i91.i, i32 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 196607, ptr %117, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i92.i) #10
  %119 = getelementptr inbounds [2 x i8], ptr %data.i.i92.i, i32 0, i32 1
  %120 = ptrtoint ptr %data.i.i92.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 50, ptr %data.i.i92.i, align 1
  %121 = ptrtoint ptr %119 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv17.i, ptr %119, align 1
  %addr.i.i99.i = getelementptr inbounds %struct.i2c_client, ptr %116, i32 0, i32 1
  %122 = ptrtoint ptr %addr.i.i99.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %addr.i.i99.i, align 2
  %124 = ptrtoint ptr %msg.i.i91.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %123, ptr %msg.i.i91.i, align 4
  %flags.i.i100.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i91.i, i32 0, i32 1
  %125 = ptrtoint ptr %flags.i.i100.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 0, ptr %flags.i.i100.i, align 2
  %buf.i.i101.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i91.i, i32 0, i32 3
  %126 = ptrtoint ptr %buf.i.i101.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %data.i.i92.i, ptr %buf.i.i101.i, align 4
  %adapter.i.i102.i = getelementptr inbounds %struct.i2c_client, ptr %116, i32 0, i32 3
  %127 = ptrtoint ptr %adapter.i.i102.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %adapter.i.i102.i, align 8
  %call2.i.i103.i = call i32 @i2c_transfer(ptr noundef %128, ptr noundef nonnull %msg.i.i91.i, i32 noundef 1) #10
  %129 = call i32 @llvm.smin.i32(i32 %call2.i.i103.i, i32 0) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i92.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i91.i) #10
  br label %ov7670_write.exit107.i

ov7670_write.exit107.i:                           ; preds = %if.else.i105.i, %if.then.i98.i
  %retval.0.i106.i = phi i32 [ %129, %if.else.i105.i ], [ %call1.i.i96.i, %if.then.i98.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i106.i)
  %tobool19.not.i = icmp eq i32 %retval.0.i106.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %ov7670_write.exit107.i.ov7670_set_hw.exit.thread_crit_edge

ov7670_write.exit107.i.ov7670_set_hw.exit.thread_crit_edge: ; preds = %ov7670_write.exit107.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ov7670_set_hw.exit.thread

if.end21.i:                                       ; preds = %ov7670_write.exit107.i
  %130 = lshr i32 %69, 2
  %conv24.i = trunc i32 %130 to i8
  %call25.i = call fastcc i32 @ov7670_write(ptr noundef %sd, i8 noundef zeroext 25, i8 noundef zeroext %conv24.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %if.end21.i.ov7670_set_hw.exit.thread_crit_edge

if.end21.i.ov7670_set_hw.exit.thread_crit_edge:   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ov7670_set_hw.exit.thread

if.end28.i:                                       ; preds = %if.end21.i
  %131 = lshr i32 %71, 2
  %conv31.i = trunc i32 %131 to i8
  %call32.i = call fastcc i32 @ov7670_write(ptr noundef %sd, i8 noundef zeroext 26, i8 noundef zeroext %conv31.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.end35.i, label %if.end28.i.ov7670_set_hw.exit.thread_crit_edge

if.end28.i.ov7670_set_hw.exit.thread_crit_edge:   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ov7670_set_hw.exit.thread

if.end35.i:                                       ; preds = %if.end28.i
  %call36.i = call fastcc i32 @ov7670_read(ptr noundef %sd, i8 noundef zeroext 3, ptr noundef nonnull %v.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %ov7670_set_hw.exit, label %if.end35.i.ov7670_set_hw.exit.thread_crit_edge

if.end35.i.ov7670_set_hw.exit.thread_crit_edge:   ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ov7670_set_hw.exit.thread

ov7670_set_hw.exit.thread:                        ; preds = %if.end35.i.ov7670_set_hw.exit.thread_crit_edge, %if.end28.i.ov7670_set_hw.exit.thread_crit_edge, %if.end21.i.ov7670_set_hw.exit.thread_crit_edge, %ov7670_write.exit107.i.ov7670_set_hw.exit.thread_crit_edge, %if.end7.i.ov7670_set_hw.exit.thread_crit_edge, %ov7670_write.exit90.i.ov7670_set_hw.exit.thread_crit_edge, %ov7670_write.exit.i.ov7670_set_hw.exit.thread_crit_edge
  %retval.0.i111.ph = phi i32 [ %call36.i, %if.end35.i.ov7670_set_hw.exit.thread_crit_edge ], [ %call32.i, %if.end28.i.ov7670_set_hw.exit.thread_crit_edge ], [ %call25.i, %if.end21.i.ov7670_set_hw.exit.thread_crit_edge ], [ %retval.0.i106.i, %ov7670_write.exit107.i.ov7670_set_hw.exit.thread_crit_edge ], [ %call8.i, %if.end7.i.ov7670_set_hw.exit.thread_crit_edge ], [ %retval.0.i89.i, %ov7670_write.exit90.i.ov7670_set_hw.exit.thread_crit_edge ], [ %retval.0.i.i, %ov7670_write.exit.i.ov7670_set_hw.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %v.i) #10
  br label %cleanup

ov7670_set_hw.exit:                               ; preds = %if.end35.i
  %132 = ptrtoint ptr %v.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %v.i, align 1
  %134 = and i8 %133, -16
  %and42.i = shl i32 %71, 2
  %shl43.i = and i32 %and42.i, 12
  %and45.i = and i32 %69, 3
  %or44.i = or i32 %shl43.i, %and45.i
  %135 = trunc i32 %or44.i to i8
  %conv47.i = or i8 %134, %135
  call void @msleep(i32 noundef 10) #10
  %call48.i = call fastcc i32 @ov7670_write(ptr noundef %sd, i8 noundef zeroext 3, i8 noundef zeroext %conv47.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %v.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool36.not = icmp eq i32 %call48.i, 0
  br i1 %tobool36.not, label %if.end38, label %ov7670_set_hw.exit.cleanup_crit_edge

ov7670_set_hw.exit.cleanup_crit_edge:             ; preds = %ov7670_set_hw.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end38:                                         ; preds = %ov7670_set_hw.exit
  %regs39 = getelementptr inbounds %struct.ov7670_win_size, ptr %1, i32 0, i32 7
  %136 = ptrtoint ptr %regs39 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regs39, align 4
  %tobool40.not = icmp eq ptr %137, null
  br i1 %tobool40.not, label %if.end38.if.end47_crit_edge, label %if.then41

if.end38.if.end47_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then41:                                        ; preds = %if.end38
  %call43 = call fastcc i32 @ov7670_write_array(ptr noundef %sd, ptr noundef nonnull %137)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then41.if.end47_crit_edge, label %if.then41.cleanup_crit_edge

if.then41.cleanup_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then41.if.end47_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.end47:                                         ; preds = %if.then41.if.end47_crit_edge, %if.end38.if.end47_crit_edge
  %clkrc = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 17
  %138 = ptrtoint ptr %clkrc to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %clkrc, align 4
  %call48 = call fastcc i32 @ov7670_write(ptr noundef %sd, i8 noundef zeroext 17, i8 noundef zeroext %139)
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.then41.cleanup_crit_edge, %ov7670_set_hw.exit.cleanup_crit_edge, %ov7670_set_hw.exit.thread, %while.body.i.cleanup_crit_edge, %ov7670_write.exit107.cleanup_crit_edge, %ov7670_write.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %ov7670_write.exit.cleanup_crit_edge ], [ %retval.0.i106, %ov7670_write.exit107.cleanup_crit_edge ], [ %call48.i, %ov7670_set_hw.exit.cleanup_crit_edge ], [ %call43, %if.then41.cleanup_crit_edge ], [ %call48, %if.end47 ], [ %retval.0.i111.ph, %ov7670_set_hw.exit.thread ], [ %call.i, %while.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov7675_apply_framerate(ptr nocapture noundef readonly %sd) unnamed_addr #2 align 64 {
entry:
  %msg.i.i8 = alloca %struct.i2c_msg, align 4
  %data.i.i9 = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %data.i.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %clkrc = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 17
  %0 = ptrtoint ptr %clkrc to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %clkrc, align 4
  %use_smbus.i = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 18
  %2 = ptrtoint ptr %use_smbus.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_smbus.i, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  %dev_priv.i.i7.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i7.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 17, i8 noundef zeroext %1) #10
  br label %ov7670_write.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #10
  %6 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 196607, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i) #10
  %8 = getelementptr inbounds [2 x i8], ptr %data.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 17, ptr %data.i.i, align 1
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %1, ptr %8, align 1
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %addr.i.i, align 2
  %13 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %data.i.i, ptr %buf.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 3
  %16 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter.i.i, align 8
  %call2.i.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i.i, i32 noundef 1) #10
  %18 = call i32 @llvm.smin.i32(i32 %call2.i.i, i32 0) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #10
  br label %ov7670_write.exit

ov7670_write.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %18, %if.else.i ], [ %call1.i.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %ov7670_write.exit.cleanup_crit_edge, label %if.end

ov7670_write.exit.cleanup_crit_edge:              ; preds = %ov7670_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %ov7670_write.exit
  %pll_bypass = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 19
  %19 = ptrtoint ptr %pll_bypass to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pll_bypass, align 2, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not = icmp eq i8 %20, 0
  %conv = select i1 %tobool.not, i8 74, i8 10
  %21 = ptrtoint ptr %use_smbus.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %use_smbus.i, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i11 = icmp eq i8 %22, 0
  %23 = ptrtoint ptr %dev_priv.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_priv.i.i7.i, align 4
  br i1 %tobool.not.i11, label %if.else.i20, label %if.then.i14

if.then.i14:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i13 = call i32 @i2c_smbus_write_byte_data(ptr noundef %24, i8 noundef zeroext 107, i8 noundef zeroext %conv) #10
  br label %cleanup

if.else.i20:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i8) #10
  %25 = getelementptr inbounds i8, ptr %msg.i.i8, i32 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 196607, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i9) #10
  %27 = getelementptr inbounds [2 x i8], ptr %data.i.i9, i32 0, i32 1
  %28 = ptrtoint ptr %data.i.i9 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 107, ptr %data.i.i9, align 1
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv, ptr %27, align 1
  %addr.i.i15 = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 1
  %30 = ptrtoint ptr %addr.i.i15 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %addr.i.i15, align 2
  %32 = ptrtoint ptr %msg.i.i8 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %msg.i.i8, align 4
  %flags.i.i16 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i8, i32 0, i32 1
  %33 = ptrtoint ptr %flags.i.i16 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i.i16, align 2
  %buf.i.i17 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i8, i32 0, i32 3
  %34 = ptrtoint ptr %buf.i.i17 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %data.i.i9, ptr %buf.i.i17, align 4
  %adapter.i.i18 = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 3
  %35 = ptrtoint ptr %adapter.i.i18 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %adapter.i.i18, align 8
  %call2.i.i19 = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %msg.i.i8, i32 noundef 1) #10
  %37 = call i32 @llvm.smin.i32(i32 %call2.i.i19, i32 0) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i9) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i8) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else.i20, %if.then.i14, %ov7670_write.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %ov7670_write.exit.cleanup_crit_edge ], [ %37, %if.else.i20 ], [ %call1.i.i13, %if.then.i14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7670_g_frame_interval(ptr noundef %sd, ptr noundef %ival) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devtype = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 21
  %0 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devtype, align 4
  %get_framerate = getelementptr inbounds %struct.ov7670_devtype, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %get_framerate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_framerate, align 4
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %ival, i32 0, i32 1
  tail call void %3(ptr noundef %sd, ptr noundef %interval) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7670_s_frame_interval(ptr noundef %sd, ptr noundef %ival) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %ival, i32 0, i32 1
  %devtype = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 21
  %0 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devtype, align 4
  %set_framerate = getelementptr inbounds %struct.ov7670_devtype, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %set_framerate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_framerate, align 4
  %call1 = tail call i32 %3(ptr noundef %sd, ptr noundef %interval) #10
  ret i32 %call1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov7670_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp ugt i32 %3, 3
  br i1 %cmp, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr [4 x %struct.ov7670_format_struct], ptr @ov7670_formats, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %code2 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %6 = ptrtoint ptr %code2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %code2, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7670_enum_frame_size(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fse, align 4
  %devtype = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 21
  %2 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devtype, align 4
  %n_win_sizes2 = getelementptr inbounds %struct.ov7670_devtype, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %n_win_sizes2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_win_sizes2, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 1
  %6 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp48 = icmp ne i32 %5, 0
  %or.cond = select i1 %tobool.not, i1 %cmp48, i1 false
  br i1 %or.cond, label %for.body.lr.ph, label %entry.cleanup23_crit_edge

entry.cleanup23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup23

for.body.lr.ph:                                   ; preds = %entry
  %8 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %devtype, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %min_width = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 14
  %12 = ptrtoint ptr %min_width to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %min_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool4.not = icmp eq i32 %13, 0
  %min_height = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %num_valid.051 = phi i32 [ -1, %for.body.lr.ph ], [ %num_valid.1.ph, %for.inc.for.body_crit_edge ]
  %i.049 = phi i32 [ 0, %for.body.lr.ph ], [ %inc22, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ov7670_win_size, ptr %11, i32 %i.049
  br i1 %tobool4.not, label %for.body.if.end8_crit_edge, label %land.lhs.true

for.body.if.end8_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

land.lhs.true:                                    ; preds = %for.body
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %cmp6 = icmp slt i32 %15, %13
  br i1 %cmp6, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %for.body.if.end8_crit_edge
  %16 = ptrtoint ptr %min_height to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %min_height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool9.not = icmp eq i32 %17, 0
  br i1 %tobool9.not, label %if.end8.if.end14_crit_edge, label %land.lhs.true10

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

land.lhs.true10:                                  ; preds = %if.end8
  %height = getelementptr %struct.ov7670_win_size, ptr %11, i32 %i.049, i32 1
  %18 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %17)
  %cmp12 = icmp slt i32 %19, %17
  br i1 %cmp12, label %land.lhs.true10.for.inc_crit_edge, label %land.lhs.true10.if.end14_crit_edge

land.lhs.true10.if.end14_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

land.lhs.true10.for.inc_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end14:                                         ; preds = %land.lhs.true10.if.end14_crit_edge, %if.end8.if.end14_crit_edge
  %inc = add i32 %num_valid.051, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %inc)
  %cmp15 = icmp eq i32 %1, %inc
  br i1 %cmp15, label %cleanup, label %if.end14.for.inc_crit_edge

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

cleanup:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %22 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %max_width, align 4
  %min_width18 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %23 = ptrtoint ptr %min_width18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %21, ptr %min_width18, align 4
  %height19 = getelementptr %struct.ov7670_win_size, ptr %11, i32 %i.049, i32 1
  %24 = ptrtoint ptr %height19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %height19, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %26 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %max_height, align 4
  %min_height20 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %27 = ptrtoint ptr %min_height20 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %25, ptr %min_height20, align 4
  br label %cleanup23

for.inc:                                          ; preds = %if.end14.for.inc_crit_edge, %land.lhs.true10.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %num_valid.1.ph = phi i32 [ %inc, %if.end14.for.inc_crit_edge ], [ %num_valid.051, %land.lhs.true10.for.inc_crit_edge ], [ %num_valid.051, %land.lhs.true.for.inc_crit_edge ]
  %inc22 = add nuw i32 %i.049, 1
  %exitcond.not = icmp eq i32 %inc22, %5
  br i1 %exitcond.not, label %for.inc.cleanup23_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup23_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup23

cleanup23:                                        ; preds = %for.inc.cleanup23_crit_edge, %cleanup, %entry.cleanup23_crit_edge
  %retval.2 = phi i32 [ 0, %cleanup ], [ -22, %entry.cleanup23_crit_edge ], [ -22, %for.inc.cleanup23_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7670_enum_frame_interval(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fie) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devtype = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 21
  %0 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devtype, align 4
  %n_win_sizes1 = getelementptr inbounds %struct.ov7670_devtype, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %n_win_sizes1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_win_sizes1, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 1
  %4 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup32_crit_edge

entry.cleanup32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup32

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %fie to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp = icmp ugt i32 %7, 4
  br i1 %cmp, label %if.end.cleanup32_crit_edge, label %for.cond.preheader

if.end.cleanup32_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup32

for.cond.preheader:                               ; preds = %if.end
  %height21 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp457.not = icmp eq i32 %3, 0
  br i1 %cmp457.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %min_width = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 14
  %10 = ptrtoint ptr %min_width to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %min_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not = icmp eq i32 %11, 0
  %min_height = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 15
  %width17 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.058 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ov7670_win_size, ptr %9, i32 %i.058
  br i1 %tobool6.not, label %for.body.if.end10_crit_edge, label %land.lhs.true

for.body.if.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

land.lhs.true:                                    ; preds = %for.body
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp8 = icmp slt i32 %13, %11
  br i1 %cmp8, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %for.body.if.end10_crit_edge
  %14 = ptrtoint ptr %min_height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %min_height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool11.not = icmp eq i32 %15, 0
  br i1 %tobool11.not, label %if.end10.if.end16_crit_edge, label %land.lhs.true12

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

land.lhs.true12:                                  ; preds = %if.end10
  %height = getelementptr %struct.ov7670_win_size, ptr %9, i32 %i.058, i32 1
  %16 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp14 = icmp slt i32 %17, %15
  br i1 %cmp14, label %land.lhs.true12.for.inc_crit_edge, label %land.lhs.true12.if.end16_crit_edge

land.lhs.true12.if.end16_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

land.lhs.true12.for.inc_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end16:                                         ; preds = %land.lhs.true12.if.end16_crit_edge, %if.end10.if.end16_crit_edge
  %18 = ptrtoint ptr %width17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %width17, align 4
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp19 = icmp eq i32 %19, %21
  br i1 %cmp19, label %land.lhs.true20, label %if.end16.for.inc_crit_edge

if.end16.for.inc_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true20:                                  ; preds = %if.end16
  %22 = ptrtoint ptr %height21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height21, align 4
  %height22 = getelementptr %struct.ov7670_win_size, ptr %9, i32 %i.058, i32 1
  %24 = ptrtoint ptr %height22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %height22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp23 = icmp eq i32 %23, %25
  br i1 %cmp23, label %land.lhs.true20.for.end_crit_edge, label %land.lhs.true20.for.inc_crit_edge

land.lhs.true20.for.inc_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true20.for.end_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true20.for.inc_crit_edge, %if.end16.for.inc_crit_edge, %land.lhs.true12.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %inc = add nuw i32 %i.058, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.cleanup32_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup32_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup32

for.end:                                          ; preds = %land.lhs.true20.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %i.058, %land.lhs.true20.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %3)
  %cmp26 = icmp eq i32 %i.0.lcssa, %3
  br i1 %cmp26, label %for.end.cleanup32_crit_edge, label %if.end28

for.end.cleanup32_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup32

if.end28:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 5
  %26 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %interval, align 4
  %arrayidx30 = getelementptr [5 x i32], ptr @ov7670_frame_rates, i32 0, i32 %7
  %27 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx30, align 4
  %denominator = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 5, i32 1
  %29 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %denominator, align 4
  br label %cleanup32

cleanup32:                                        ; preds = %if.end28, %for.end.cleanup32_crit_edge, %for.inc.cleanup32_crit_edge, %if.end.cleanup32_crit_edge, %entry.cleanup32_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28 ], [ -22, %entry.cleanup32_crit_edge ], [ -22, %if.end.cleanup32_crit_edge ], [ -22, %for.end.cleanup32_crit_edge ], [ -22, %for.inc.cleanup32_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7670_get_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %2 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.not.i.not = icmp eq i16 %3, 0
  br i1 %cmp.not.i.not, label %do.end.i, label %if.then.v4l2_subdev_get_try_format.exit_crit_edge, !prof !127

if.then.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 998, i32 noundef 9, ptr noundef null) #10
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then.v4l2_subdev_get_try_format.exit_crit_edge
  %4 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sd_state, align 4
  %format2 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %6 = call ptr @memcpy(ptr %format2, ptr %5, i32 48)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %format3 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %format4 = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 6
  %7 = call ptr @memcpy(ptr %format3, ptr %format4, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %v4l2_subdev_get_try_format.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7670_set_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %format2 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  br i1 %cmp, label %if.then1, label %if.end10

if.then1:                                         ; preds = %if.end
  tail call fastcc void @ov7670_try_fmt_internal(ptr noundef %sd, ptr noundef %format2, ptr noundef null, ptr noundef null)
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
  br i1 %cmp.not.i, label %if.then1.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !128

if.then1.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 998, i32 noundef 9, ptr noundef null) #10
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then1.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %5, %if.then1.v4l2_subdev_get_try_format.exit_crit_edge ]
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i
  %10 = call ptr @memcpy(ptr %arrayidx.i, ptr %format2, i32 48)
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %fmt = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 7
  %wsize = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 8
  tail call fastcc void @ov7670_try_fmt_internal(ptr noundef %sd, ptr noundef %format2, ptr noundef %fmt, ptr noundef %wsize)
  %on = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 10
  %11 = ptrtoint ptr %on to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool16.not = icmp eq i32 %12, 0
  br i1 %tobool16.not, label %if.end10.cleanup_crit_edge, label %if.then17

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then17:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %call18 = tail call fastcc i32 @ov7670_apply_fmt(ptr noundef %sd)
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end10.cleanup_crit_edge, %v4l2_subdev_get_try_format.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %v4l2_subdev_get_try_format.exit ], [ %call18, %if.then17 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ov7670_try_fmt_internal(ptr nocapture noundef %sd, ptr nocapture noundef %fmt, ptr noundef writeonly %ret_fmt, ptr noundef writeonly %ret_wsize) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devtype = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 21
  %0 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devtype, align 4
  %n_win_sizes1 = getelementptr inbounds %struct.ov7670_devtype, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %n_win_sizes1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_win_sizes1, align 4
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 2
  %4 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %code, align 4
  %6 = load i32, ptr @ov7670_formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %5)
  %cmp2 = icmp eq i32 %6, %5
  br i1 %cmp2, label %entry.if.end6_crit_edge, label %for.inc

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

for.inc:                                          ; preds = %entry
  %7 = load i32, ptr getelementptr inbounds ([4 x %struct.ov7670_format_struct], ptr @ov7670_formats, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp2.1 = icmp eq i32 %7, %5
  br i1 %cmp2.1, label %for.inc.if.end6_crit_edge, label %for.inc.1

for.inc.if.end6_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

for.inc.1:                                        ; preds = %for.inc
  %8 = load i32, ptr getelementptr inbounds ([4 x %struct.ov7670_format_struct], ptr @ov7670_formats, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %5)
  %cmp2.2 = icmp eq i32 %8, %5
  br i1 %cmp2.2, label %for.inc.1.if.end6_crit_edge, label %for.inc.2

for.inc.1.if.end6_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

for.inc.2:                                        ; preds = %for.inc.1
  %9 = load i32, ptr getelementptr inbounds ([4 x %struct.ov7670_format_struct], ptr @ov7670_formats, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp2.3 = icmp eq i32 %9, %5
  br i1 %cmp2.3, label %for.inc.2.if.end6_crit_edge, label %for.inc.3

for.inc.2.if.end6_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  %10 = load i32, ptr @ov7670_formats, align 4
  %11 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %code, align 4
  br label %if.end6

if.end6:                                          ; preds = %for.inc.3, %for.inc.2.if.end6_crit_edge, %for.inc.1.if.end6_crit_edge, %for.inc.if.end6_crit_edge, %entry.if.end6_crit_edge
  %index.1 = phi i32 [ 0, %for.inc.3 ], [ 0, %entry.if.end6_crit_edge ], [ 1, %for.inc.if.end6_crit_edge ], [ 2, %for.inc.1.if.end6_crit_edge ], [ 3, %for.inc.2.if.end6_crit_edge ]
  %cmp7.not = icmp eq ptr %ret_fmt, null
  br i1 %cmp7.not, label %if.end6.if.end9_crit_edge, label %if.then8

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr %struct.ov7670_format_struct, ptr @ov7670_formats, i32 %index.1
  %12 = ptrtoint ptr %ret_fmt to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr, ptr %ret_fmt, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6.if.end9_crit_edge
  %field = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 3
  %13 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %field, align 4
  %min_width = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 14
  %14 = ptrtoint ptr %min_width to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %min_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then11

lor.lhs.false:                                    ; preds = %if.end9
  %min_height = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 15
  %16 = ptrtoint ptr %min_height to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %min_height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool10.not = icmp ne i32 %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp134 = icmp ne i32 %3, 0
  %or.cond = select i1 %tobool10.not, i1 %cmp134, i1 false
  br i1 %or.cond, label %lor.lhs.false.for.body14.lr.ph_crit_edge, label %lor.lhs.false.if.end27_crit_edge

lor.lhs.false.if.end27_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

lor.lhs.false.for.body14.lr.ph_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body14.lr.ph

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp134.old.not = icmp eq i32 %3, 0
  br i1 %cmp134.old.not, label %if.then11.if.end27_crit_edge, label %if.then11.for.body14.lr.ph_crit_edge

if.then11.for.body14.lr.ph_crit_edge:             ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body14.lr.ph

if.then11.if.end27_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

for.body14.lr.ph:                                 ; preds = %if.then11.for.body14.lr.ph_crit_edge, %lor.lhs.false.for.body14.lr.ph_crit_edge
  %18 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %devtype, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %min_height20 = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 15
  br label %for.body14

for.body14:                                       ; preds = %for.inc24.for.body14_crit_edge, %for.body14.lr.ph
  %i.05 = phi i32 [ 0, %for.body14.lr.ph ], [ %inc25, %for.inc24.for.body14_crit_edge ]
  %add.ptr16 = getelementptr %struct.ov7670_win_size, ptr %21, i32 %i.05
  %22 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %15)
  %cmp18 = icmp slt i32 %23, %15
  br i1 %cmp18, label %for.body14.if.end27_crit_edge, label %lor.lhs.false19

for.body14.if.end27_crit_edge:                    ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

lor.lhs.false19:                                  ; preds = %for.body14
  %height = getelementptr %struct.ov7670_win_size, ptr %21, i32 %i.05, i32 1
  %24 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %height, align 4
  %26 = ptrtoint ptr %min_height20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %min_height20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp21 = icmp slt i32 %25, %27
  br i1 %cmp21, label %lor.lhs.false19.if.end27_crit_edge, label %for.inc24

lor.lhs.false19.if.end27_crit_edge:               ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

for.inc24:                                        ; preds = %lor.lhs.false19
  %inc25 = add nuw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc25, %3
  br i1 %exitcond.not, label %for.inc24.if.end27_crit_edge, label %for.inc24.for.body14_crit_edge

for.inc24.for.body14_crit_edge:                   ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body14

for.inc24.if.end27_crit_edge:                     ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.end27:                                         ; preds = %for.inc24.if.end27_crit_edge, %lor.lhs.false19.if.end27_crit_edge, %for.body14.if.end27_crit_edge, %if.then11.if.end27_crit_edge, %lor.lhs.false.if.end27_crit_edge
  %win_sizes_limit.0 = phi i32 [ %3, %lor.lhs.false.if.end27_crit_edge ], [ 0, %if.then11.if.end27_crit_edge ], [ %3, %for.inc24.if.end27_crit_edge ], [ %i.05, %lor.lhs.false19.if.end27_crit_edge ], [ %i.05, %for.body14.if.end27_crit_edge ]
  %28 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %devtype, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %height39 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 1
  %add.ptr33 = getelementptr %struct.ov7670_win_size, ptr %31, i32 %win_sizes_limit.0
  %cmp348 = icmp ult ptr %31, %add.ptr33
  br i1 %cmp348, label %for.body35.lr.ph, label %if.end27.for.end45_crit_edge

if.end27.for.end45_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end45

for.body35.lr.ph:                                 ; preds = %if.end27
  %32 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fmt, align 4
  br label %for.body35

for.body35:                                       ; preds = %for.inc44.for.body35_crit_edge, %for.body35.lr.ph
  %wsize.09 = phi ptr [ %31, %for.body35.lr.ph ], [ %incdec.ptr, %for.inc44.for.body35_crit_edge ]
  %34 = ptrtoint ptr %wsize.09 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %wsize.09, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp38.not = icmp ult i32 %33, %35
  br i1 %cmp38.not, label %for.body35.for.inc44_crit_edge, label %land.lhs.true

for.body35.for.inc44_crit_edge:                   ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc44

land.lhs.true:                                    ; preds = %for.body35
  %36 = ptrtoint ptr %height39 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %height39, align 4
  %height40 = getelementptr inbounds %struct.ov7670_win_size, ptr %wsize.09, i32 0, i32 1
  %38 = ptrtoint ptr %height40 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %height40, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp41.not = icmp ult i32 %37, %39
  br i1 %cmp41.not, label %land.lhs.true.for.inc44_crit_edge, label %land.lhs.true.for.end45_crit_edge

land.lhs.true.for.end45_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end45

land.lhs.true.for.inc44_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc44

for.inc44:                                        ; preds = %land.lhs.true.for.inc44_crit_edge, %for.body35.for.inc44_crit_edge
  %incdec.ptr = getelementptr %struct.ov7670_win_size, ptr %wsize.09, i32 1
  %cmp34 = icmp ult ptr %incdec.ptr, %add.ptr33
  br i1 %cmp34, label %for.inc44.for.body35_crit_edge, label %for.inc44.for.end45_crit_edge

for.inc44.for.end45_crit_edge:                    ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end45

for.inc44.for.body35_crit_edge:                   ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body35

for.end45:                                        ; preds = %for.inc44.for.end45_crit_edge, %land.lhs.true.for.end45_crit_edge, %if.end27.for.end45_crit_edge
  %wsize.0.lcssa = phi ptr [ %31, %if.end27.for.end45_crit_edge ], [ %wsize.09, %land.lhs.true.for.end45_crit_edge ], [ %incdec.ptr, %for.inc44.for.end45_crit_edge ]
  %cmp34.lcssa = phi i32 [ -1, %if.end27.for.end45_crit_edge ], [ 0, %land.lhs.true.for.end45_crit_edge ], [ -1, %for.inc44.for.end45_crit_edge ]
  %spec.select = getelementptr %struct.ov7670_win_size, ptr %wsize.0.lcssa, i32 %cmp34.lcssa
  %cmp53.not = icmp eq ptr %ret_wsize, null
  br i1 %cmp53.not, label %for.end45.if.end55_crit_edge, label %if.then54

for.end45.if.end55_crit_edge:                     ; preds = %for.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then54:                                        ; preds = %for.end45
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %ret_wsize to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %spec.select, ptr %ret_wsize, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %for.end45.if.end55_crit_edge
  %41 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %spec.select, align 4
  %43 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %fmt, align 4
  %height58 = getelementptr %struct.ov7670_win_size, ptr %wsize.0.lcssa, i32 %cmp34.lcssa, i32 1
  %44 = ptrtoint ptr %height58 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %height58, align 4
  %46 = ptrtoint ptr %height39 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %height39, align 4
  %colorspace = getelementptr [4 x %struct.ov7670_format_struct], ptr @ov7670_formats, i32 0, i32 %index.1, i32 1
  %47 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %colorspace, align 4
  %colorspace61 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 4
  %49 = ptrtoint ptr %colorspace61 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %colorspace61, align 4
  %format = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 6
  %50 = call ptr @memcpy(ptr %format, ptr %fmt, i32 48)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7670_open(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %fh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  br i1 %cmp.not.i.not, label %do.end.i, label %entry.v4l2_subdev_get_try_format.exit_crit_edge, !prof !127

entry.v4l2_subdev_get_try_format.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 998, i32 noundef 9, ptr noundef null) #10
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %entry.v4l2_subdev_get_try_format.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %devtype.i = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 21
  %6 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %devtype.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %5, align 4
  %13 = load ptr, ptr %devtype.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %height.i = getelementptr inbounds %struct.ov7670_win_size, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height.i, align 4
  %height5.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 1
  %18 = ptrtoint ptr %height5.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %height5.i, align 4
  %fmt.i = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 7
  %19 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fmt.i, align 4
  %colorspace.i = getelementptr inbounds %struct.ov7670_format_struct, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %colorspace.i, align 4
  %colorspace6.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 4
  %23 = ptrtoint ptr %colorspace6.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %colorspace6.i, align 4
  %24 = load ptr, ptr %fmt.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %code.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 2
  %27 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %code.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 3
  %28 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %field.i, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fwnode_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7670_set_framerate_legacy(ptr nocapture noundef %sd, ptr nocapture noundef %tpf) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %data.i.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tpf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tpf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.if.end.thread_crit_edge, label %lor.lhs.false

entry.if.end.thread_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.thread

lor.lhs.false:                                    ; preds = %entry
  %denominator = getelementptr inbounds %struct.v4l2_fract, ptr %tpf, i32 0, i32 1
  %2 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %denominator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %lor.lhs.false.if.end.thread_crit_edge, label %if.end

lor.lhs.false.if.end.thread_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.thread

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %clock_speed = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 16
  %4 = ptrtoint ptr %clock_speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clock_speed, align 4
  %mul = mul i32 %5, %1
  %div4 = udiv i32 %mul, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %mul)
  %cmp5 = icmp ugt i32 %3, %mul
  %6 = tail call i32 @llvm.smin.i32(i32 %div4, i32 63)
  %spec.select = select i1 %cmp5, i32 1, i32 %6
  br label %if.end.thread

if.end.thread:                                    ; preds = %if.end, %lor.lhs.false.if.end.thread_crit_edge, %entry.if.end.thread_crit_edge
  %7 = phi i32 [ 1, %lor.lhs.false.if.end.thread_crit_edge ], [ 1, %entry.if.end.thread_crit_edge ], [ %spec.select, %if.end ]
  %clkrc = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 17
  %8 = ptrtoint ptr %clkrc to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %clkrc, align 4
  %10 = and i8 %9, -128
  %11 = trunc i32 %7 to i8
  %conv12 = or i8 %10, %11
  store i8 %conv12, ptr %clkrc, align 4
  %12 = ptrtoint ptr %tpf to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %tpf, align 4
  %clock_speed15 = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 16
  %13 = ptrtoint ptr %clock_speed15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %clock_speed15, align 4
  %div16 = sdiv i32 %14, %7
  %denominator17 = getelementptr inbounds %struct.v4l2_fract, ptr %tpf, i32 0, i32 1
  %15 = ptrtoint ptr %denominator17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div16, ptr %denominator17, align 4
  %on = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 10
  %16 = ptrtoint ptr %on to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %if.end.thread.cleanup_crit_edge, label %if.then18

if.end.thread.cleanup_crit_edge:                  ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then18:                                        ; preds = %if.end.thread
  %18 = ptrtoint ptr %clkrc to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %clkrc, align 4
  %use_smbus.i = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 18
  %20 = ptrtoint ptr %use_smbus.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %use_smbus.i, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp eq i8 %21, 0
  %dev_priv.i.i7.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %22 = ptrtoint ptr %dev_priv.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_priv.i.i7.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext 17, i8 noundef zeroext %19) #10
  br label %cleanup

if.else.i:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #10
  %24 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 196607, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i) #10
  %26 = getelementptr inbounds [2 x i8], ptr %data.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 17, ptr %data.i.i, align 1
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %19, ptr %26, align 1
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 1
  %29 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %addr.i.i, align 2
  %31 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %data.i.i, ptr %buf.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 3
  %34 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adapter.i.i, align 8
  %call2.i.i = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg.i.i, i32 noundef 1) #10
  %36 = call i32 @llvm.smin.i32(i32 %call2.i.i, i32 0) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i, %if.end.thread.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.thread.cleanup_crit_edge ], [ %36, %if.else.i ], [ %call1.i.i, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ov7670_get_framerate_legacy(ptr nocapture noundef readonly %sd, ptr nocapture noundef writeonly %tpf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tpf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %tpf, align 4
  %clock_speed = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 16
  %1 = ptrtoint ptr %clock_speed to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %clock_speed, align 4
  %denominator = getelementptr inbounds %struct.v4l2_fract, ptr %tpf, i32 0, i32 1
  %3 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %denominator, align 4
  %clkrc = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 17
  %4 = ptrtoint ptr %clkrc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %clkrc, align 4
  %conv = zext i8 %5 to i32
  %and = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %and4 = and i32 %conv, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and4)
  %cmp5 = icmp ugt i32 %and4, 1
  br i1 %cmp5, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %div = udiv i32 %2, %and4
  %6 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div, ptr %denominator, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7675_set_framerate(ptr nocapture noundef %sd, ptr nocapture noundef %tpf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tpf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tpf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.if.end9.thread_crit_edge, label %lor.lhs.false

entry.if.end9.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.thread

lor.lhs.false:                                    ; preds = %entry
  %denominator = getelementptr inbounds %struct.v4l2_fract, ptr %tpf, i32 0, i32 1
  %2 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %denominator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %lor.lhs.false.if.end9.thread_crit_edge, label %if.end9

lor.lhs.false.if.end9.thread_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.thread

if.end9:                                          ; preds = %lor.lhs.false
  %pll_bypass = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 19
  %4 = ptrtoint ptr %pll_bypass to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pll_bypass, align 2, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %mul = select i1 %tobool.not, i32 20, i32 5
  %clock_speed = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 16
  %6 = ptrtoint ptr %clock_speed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clock_speed, align 4
  %mul2 = mul i32 %7, %1
  %mul4 = mul i32 %mul2, %mul
  %mul6 = shl i32 %3, 2
  %div = udiv i32 %mul4, %mul6
  %fmt = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 7
  %8 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fmt, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12289, i32 %11)
  %cmp7 = icmp eq i32 %11, 12289
  %shl = zext i1 %cmp7 to i32
  %spec.select = shl i32 %div, %shl
  %dec = add i32 %spec.select, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp10 = icmp eq i32 %dec, 0
  %12 = tail call i32 @llvm.umin.i32(i32 %dec, i32 63)
  %phi.cast = trunc i32 %12 to i8
  br i1 %cmp10, label %if.end9.if.end9.thread_crit_edge, label %if.end9._crit_edge

if.end9._crit_edge:                               ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %13

if.end9.if.end9.thread_crit_edge:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.thread

if.end9.thread:                                   ; preds = %if.end9.if.end9.thread_crit_edge, %lor.lhs.false.if.end9.thread_crit_edge, %entry.if.end9.thread_crit_edge
  br label %13

13:                                               ; preds = %if.end9.thread, %if.end9._crit_edge
  %14 = phi i8 [ 64, %if.end9.thread ], [ %phi.cast, %if.end9._crit_edge ]
  %clkrc17 = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 17
  %15 = ptrtoint ptr %clkrc17 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %clkrc17, align 4
  %conv.i = zext i8 %14 to i32
  %pll_bypass.i = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 19
  %16 = ptrtoint ptr %pll_bypass.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pll_bypass.i, align 2, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  %..i = select i1 %tobool.not.i, i32 20, i32 5
  %inc.i = add nuw nsw i32 %conv.i, 1
  %fmt.i = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 7
  %18 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fmt.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12289, i32 %21)
  %cmp.i = icmp eq i32 %21, 12289
  %shr.i = zext i1 %cmp.i to i32
  %clkrc.0.i = lshr i32 %inc.i, %shr.i
  %22 = ptrtoint ptr %tpf to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %tpf, align 4
  %clock_speed.i = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 16
  %23 = ptrtoint ptr %clock_speed.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %clock_speed.i, align 4
  %mul5.i = mul i32 %24, %..i
  %mul6.i = shl nuw nsw i32 %clkrc.0.i, 2
  %div.i = udiv i32 %mul5.i, %mul6.i
  %denominator.i = getelementptr inbounds %struct.v4l2_fract, ptr %tpf, i32 0, i32 1
  %25 = ptrtoint ptr %denominator.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div.i, ptr %denominator.i, align 4
  %on = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 10
  %26 = ptrtoint ptr %on to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool18.not = icmp eq i32 %27, 0
  br i1 %tobool18.not, label %.cleanup_crit_edge, label %if.then19

.cleanup_crit_edge:                               ; preds = %13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then19:                                        ; preds = %13
  call void @__sanitizer_cov_trace_pc() #12
  %call20 = tail call fastcc i32 @ov7675_apply_framerate(ptr noundef %sd)
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.then19 ], [ 0, %.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ov7675_get_framerate(ptr nocapture noundef readonly %sd, ptr nocapture noundef writeonly %tpf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %clkrc1 = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 17
  %0 = ptrtoint ptr %clkrc1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %clkrc1, align 4
  %conv = zext i8 %1 to i32
  %pll_bypass = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 19
  %2 = ptrtoint ptr %pll_bypass to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pll_bypass, align 2, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %. = select i1 %tobool.not, i32 20, i32 5
  %inc = add nuw nsw i32 %conv, 1
  %fmt = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 7
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fmt, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12289, i32 %7)
  %cmp = icmp eq i32 %7, 12289
  %shr = zext i1 %cmp to i32
  %clkrc.0 = lshr i32 %inc, %shr
  %8 = ptrtoint ptr %tpf to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %tpf, align 4
  %clock_speed = getelementptr inbounds %struct.ov7670_info, ptr %sd, i32 0, i32 16
  %9 = ptrtoint ptr %clock_speed to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %clock_speed, align 4
  %mul5 = mul i32 %10, %.
  %mul6 = shl nuw nsw i32 %clkrc.0, 2
  %div = udiv i32 %mul5, %mul6
  %denominator = getelementptr inbounds %struct.v4l2_fract, ptr %tpf, i32 0, i32 1
  %11 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div, ptr %denominator, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7670_g_volatile_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %gain.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963794, i32 %1)
  %cond = icmp eq i32 %1, 9963794
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %2 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -228
  %gain = getelementptr i8, ptr %3, i32 188
  %4 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gain, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %gain.i) #10
  %6 = ptrtoint ptr %gain.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %gain.i, align 1, !annotation !125
  %call.i = call fastcc i32 @ov7670_read(ptr noundef %add.ptr.i, i8 noundef zeroext 0, ptr noundef nonnull %gain.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.ov7670_g_gain.exit_crit_edge

sw.bb.ov7670_g_gain.exit_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %ov7670_g_gain.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %5, i32 0, i32 22
  %7 = ptrtoint ptr %gain.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %gain.i, align 1
  %conv.i = zext i8 %8 to i32
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv.i, ptr %val, align 4
  br label %ov7670_g_gain.exit

ov7670_g_gain.exit:                               ; preds = %if.end.i, %sw.bb.ov7670_g_gain.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %gain.i) #10
  br label %cleanup

cleanup:                                          ; preds = %ov7670_g_gain.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %ov7670_g_gain.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7670_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %msg.i.i21.i = alloca %struct.i2c_msg, align 4
  %data.i.i22.i = alloca [2 x i8], align 1
  %msg.i.i.i210 = alloca %struct.i2c_msg, align 4
  %data.i.i.i211 = alloca [2 x i8], align 1
  %orig.i11.i = alloca i8, align 1
  %orig.i.i = alloca i8, align 1
  %msg.i.i.i191 = alloca %struct.i2c_msg, align 4
  %data.i.i.i192 = alloca [2 x i8], align 1
  %com8.i193 = alloca i8, align 1
  %msg.i.i75.i = alloca %struct.i2c_msg, align 4
  %data.i.i76.i = alloca [2 x i8], align 1
  %msg.i.i58.i = alloca %struct.i2c_msg, align 4
  %data.i.i59.i = alloca [2 x i8], align 1
  %msg.i.i41.i = alloca %struct.i2c_msg, align 4
  %data.i.i42.i = alloca [2 x i8], align 1
  %msg.i.i.i169 = alloca %struct.i2c_msg, align 4
  %data.i.i.i170 = alloca [2 x i8], align 1
  %com1.i = alloca i8, align 1
  %com8.i171 = alloca i8, align 1
  %aechh.i = alloca i8, align 1
  %msg.i.i.i154 = alloca %struct.i2c_msg, align 4
  %data.i.i.i155 = alloca [2 x i8], align 1
  %com8.i156 = alloca i8, align 1
  %msg.i.i15.i123 = alloca %struct.i2c_msg, align 4
  %data.i.i16.i124 = alloca [2 x i8], align 1
  %msg.i.i.i125 = alloca %struct.i2c_msg, align 4
  %data.i.i.i126 = alloca [2 x i8], align 1
  %com8.i127 = alloca i8, align 1
  %msg.i.i.i102 = alloca %struct.i2c_msg, align 4
  %data.i.i.i103 = alloca [2 x i8], align 1
  %v.i104 = alloca i8, align 1
  %msg.i.i.i88 = alloca %struct.i2c_msg, align 4
  %data.i.i.i89 = alloca [2 x i8], align 1
  %v.i = alloca i8, align 1
  %msg.i.i83.i = alloca %struct.i2c_msg, align 4
  %data.i.i84.i = alloca [2 x i8], align 1
  %msg.i.i66.i = alloca %struct.i2c_msg, align 4
  %data.i.i67.i = alloca [2 x i8], align 1
  %msg.i.i49.i = alloca %struct.i2c_msg, align 4
  %data.i.i50.i = alloca [2 x i8], align 1
  %msg.i.i32.i = alloca %struct.i2c_msg, align 4
  %data.i.i33.i = alloca [2 x i8], align 1
  %msg.i.i15.i = alloca %struct.i2c_msg, align 4
  %data.i.i16.i = alloca [2 x i8], align 1
  %msg.i.i.i72 = alloca %struct.i2c_msg, align 4
  %data.i.i.i73 = alloca [2 x i8], align 1
  %msg.i.i.i.i = alloca %struct.i2c_msg, align 4
  %data.i.i.i.i = alloca [2 x i8], align 1
  %signbits.i.i = alloca i8, align 1
  %msg.i.i.i58 = alloca %struct.i2c_msg, align 4
  %data.i.i.i59 = alloca [2 x i8], align 1
  %msg.i.i9.i = alloca %struct.i2c_msg, align 4
  %data.i.i10.i = alloca [2 x i8], align 1
  %msg.i.i.i = alloca %struct.i2c_msg, align 4
  %data.i.i.i = alloca [2 x i8], align 1
  %com8.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -228
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963777, label %sw.bb3
    i32 9963778, label %sw.bb6
    i32 9963797, label %sw.bb10
    i32 9963796, label %sw.bb13
    i32 9963794, label %sw.bb16
    i32 10094849, label %sw.bb22
    i32 10422531, label %sw.bb30
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %com8.i) #10
  %7 = ptrtoint ptr %com8.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %com8.i, align 1
  %call.i = call fastcc i32 @ov7670_read(ptr noundef %add.ptr.i, i8 noundef zeroext 19, ptr noundef nonnull %com8.i) #10
  %8 = ptrtoint ptr %com8.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %com8.i, align 1
  %10 = and i8 %9, -2
  store i8 %10, ptr %com8.i, align 1
  %use_smbus.i.i = getelementptr i8, ptr %1, i32 297
  %11 = ptrtoint ptr %use_smbus.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %use_smbus.i.i, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i.i = icmp eq i8 %12, 0
  %dev_priv.i.i7.i.i = getelementptr i8, ptr %1, i32 -76
  %13 = ptrtoint ptr %dev_priv.i.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_priv.i.i7.i.i, align 4
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 19, i8 noundef zeroext %10) #10
  br label %ov7670_write.exit.i

if.else.i.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #10
  %15 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 196607, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i.i) #10
  %17 = getelementptr inbounds [2 x i8], ptr %data.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 19, ptr %data.i.i.i, align 1
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %10, ptr %17, align 1
  %addr.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 1
  %20 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %addr.i.i.i, align 2
  %22 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %msg.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %flags.i.i.i, align 2
  %buf.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %data.i.i.i, ptr %buf.i.i.i, align 4
  %adapter.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 3
  %25 = ptrtoint ptr %adapter.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter.i.i.i, align 8
  %call2.i.i.i = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #10
  br label %ov7670_write.exit.i

ov7670_write.exit.i:                              ; preds = %if.else.i.i, %if.then.i.i
  %conv3.i = trunc i32 %6 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv3.i)
  %cmp.i.i = icmp slt i8 %conv3.i, 0
  %27 = and i8 %conv3.i, 127
  %sub.i.i = sub i8 0, %conv3.i
  %or.i.i = or i8 %sub.i.i, -128
  %retval.0.i8.i = select i1 %cmp.i.i, i8 %27, i8 %or.i.i
  %28 = ptrtoint ptr %use_smbus.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %use_smbus.i.i, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i12.i = icmp eq i8 %29, 0
  %30 = ptrtoint ptr %dev_priv.i.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_priv.i.i7.i.i, align 4
  br i1 %tobool.not.i12.i, label %if.else.i21.i, label %if.then.i15.i

if.then.i15.i:                                    ; preds = %ov7670_write.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i14.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %31, i8 noundef zeroext 85, i8 noundef zeroext %retval.0.i8.i) #10
  br label %ov7670_s_brightness.exit

if.else.i21.i:                                    ; preds = %ov7670_write.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i9.i) #10
  %32 = getelementptr inbounds i8, ptr %msg.i.i9.i, i32 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 196607, ptr %32, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i10.i) #10
  %34 = getelementptr inbounds [2 x i8], ptr %data.i.i10.i, i32 0, i32 1
  %35 = ptrtoint ptr %data.i.i10.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 85, ptr %data.i.i10.i, align 1
  %36 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %retval.0.i8.i, ptr %34, align 1
  %addr.i.i16.i = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 1
  %37 = ptrtoint ptr %addr.i.i16.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %addr.i.i16.i, align 2
  %39 = ptrtoint ptr %msg.i.i9.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %msg.i.i9.i, align 4
  %flags.i.i17.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i9.i, i32 0, i32 1
  %40 = ptrtoint ptr %flags.i.i17.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %flags.i.i17.i, align 2
  %buf.i.i18.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i9.i, i32 0, i32 3
  %41 = ptrtoint ptr %buf.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %data.i.i10.i, ptr %buf.i.i18.i, align 4
  %adapter.i.i19.i = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 3
  %42 = ptrtoint ptr %adapter.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %adapter.i.i19.i, align 8
  %call2.i.i20.i = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %msg.i.i9.i, i32 noundef 1) #10
  %44 = call i32 @llvm.smin.i32(i32 %call2.i.i20.i, i32 0) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i10.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i9.i) #10
  br label %ov7670_s_brightness.exit

ov7670_s_brightness.exit:                         ; preds = %if.else.i21.i, %if.then.i15.i
  %retval.0.i22.i = phi i32 [ %44, %if.else.i21.i ], [ %call1.i.i14.i, %if.then.i15.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %com8.i) #10
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %45 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %val4, align 4
  %conv.i = trunc i32 %46 to i8
  %use_smbus.i.i60 = getelementptr i8, ptr %1, i32 297
  %47 = ptrtoint ptr %use_smbus.i.i60 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %use_smbus.i.i60, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i.i61 = icmp eq i8 %48, 0
  %dev_priv.i.i7.i.i62 = getelementptr i8, ptr %1, i32 -76
  %49 = ptrtoint ptr %dev_priv.i.i7.i.i62 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev_priv.i.i7.i.i62, align 4
  br i1 %tobool.not.i.i61, label %if.else.i.i70, label %if.then.i.i64

if.then.i.i64:                                    ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i.i63 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %50, i8 noundef zeroext 86, i8 noundef zeroext %conv.i) #10
  br label %cleanup

if.else.i.i70:                                    ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i58) #10
  %51 = getelementptr inbounds i8, ptr %msg.i.i.i58, i32 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 196607, ptr %51, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i.i59) #10
  %53 = getelementptr inbounds [2 x i8], ptr %data.i.i.i59, i32 0, i32 1
  %54 = ptrtoint ptr %data.i.i.i59 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 86, ptr %data.i.i.i59, align 1
  %55 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv.i, ptr %53, align 1
  %addr.i.i.i65 = getelementptr inbounds %struct.i2c_client, ptr %50, i32 0, i32 1
  %56 = ptrtoint ptr %addr.i.i.i65 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %addr.i.i.i65, align 2
  %58 = ptrtoint ptr %msg.i.i.i58 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %msg.i.i.i58, align 4
  %flags.i.i.i66 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i58, i32 0, i32 1
  %59 = ptrtoint ptr %flags.i.i.i66 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 0, ptr %flags.i.i.i66, align 2
  %buf.i.i.i67 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i58, i32 0, i32 3
  %60 = ptrtoint ptr %buf.i.i.i67 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %data.i.i.i59, ptr %buf.i.i.i67, align 4
  %adapter.i.i.i68 = getelementptr inbounds %struct.i2c_client, ptr %50, i32 0, i32 3
  %61 = ptrtoint ptr %adapter.i.i.i68 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %adapter.i.i.i68, align 8
  %call2.i.i.i69 = call i32 @i2c_transfer(ptr noundef %62, ptr noundef nonnull %msg.i.i.i58, i32 noundef 1) #10
  %63 = call i32 @llvm.smin.i32(i32 %call2.i.i.i69, i32 0) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i.i59) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i58) #10
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %64 = getelementptr i8, ptr %1, i32 200
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %val7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %66, i32 0, i32 22
  %67 = ptrtoint ptr %val7 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %val7, align 4
  %hue = getelementptr i8, ptr %1, i32 204
  %69 = ptrtoint ptr %hue to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hue, align 4
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %70, i32 0, i32 22
  %71 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %val8, align 4
  %fmt.i.i = getelementptr i8, ptr %1, i32 256
  %73 = ptrtoint ptr %fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %fmt.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.ov7670_format_struct, ptr %74, i32 0, i32 3, i32 0
  %75 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx.i.i, align 4
  %mul.i.i = mul i32 %76, %68
  %shr.i.i = ashr i32 %mul.i.i, 7
  %arrayidx.1.i.i = getelementptr %struct.ov7670_format_struct, ptr %74, i32 0, i32 3, i32 1
  %77 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.1.i.i, align 4
  %mul.1.i.i = mul i32 %78, %68
  %shr.1.i.i = ashr i32 %mul.1.i.i, 7
  %arrayidx.2.i.i = getelementptr %struct.ov7670_format_struct, ptr %74, i32 0, i32 3, i32 2
  %79 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.2.i.i, align 4
  %mul.2.i.i = mul i32 %80, %68
  %shr.2.i.i = ashr i32 %mul.2.i.i, 7
  %arrayidx.3.i.i = getelementptr %struct.ov7670_format_struct, ptr %74, i32 0, i32 3, i32 3
  %81 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx.3.i.i, align 4
  %mul.3.i.i = mul i32 %82, %68
  %shr.3.i.i = ashr i32 %mul.3.i.i, 7
  %arrayidx.4.i.i = getelementptr %struct.ov7670_format_struct, ptr %74, i32 0, i32 3, i32 4
  %83 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx.4.i.i, align 4
  %mul.4.i.i = mul i32 %84, %68
  %shr.4.i.i = ashr i32 %mul.4.i.i, 7
  %arrayidx.5.i.i = getelementptr %struct.ov7670_format_struct, ptr %74, i32 0, i32 3, i32 5
  %85 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx.5.i.i, align 4
  %mul.5.i.i = mul i32 %86, %68
  %shr.5.i.i = ashr i32 %mul.5.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp2.not.i.i = icmp eq i32 %72, 0
  br i1 %cmp2.not.i.i, label %sw.bb6.ov7670_calc_cmatrix.exit.i_crit_edge, label %if.then.i.i74

sw.bb6.ov7670_calc_cmatrix.exit.i_crit_edge:      ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %ov7670_calc_cmatrix.exit.i

if.then.i.i74:                                    ; preds = %sw.bb6
  %87 = tail call i32 @llvm.abs.i32(i32 %72, i1 false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 91, i32 %87)
  %cmp1.i.i.i = icmp slt i32 %87, 91
  br i1 %cmp1.i.i.i, label %if.then2.i.i.i, label %if.else.i.i.i

if.then2.i.i.i:                                   ; preds = %if.then.i.i74
  call void @__sanitizer_cov_trace_pc() #12
  %div.i.i.i = sdiv i32 %87, 5
  %arrayidx.i.i.i = getelementptr [19 x i32], ptr @ov7670_sin_table, i32 0, i32 %div.i.i.i
  %88 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx.i.i.i, align 4
  br label %ov7670_sine.exit.i.i

if.else.i.i.i:                                    ; preds = %if.then.i.i74
  call void @__sanitizer_cov_trace_pc() #12
  %sub3.i.i.i = add nsw i32 %87, -90
  %div414.i.i.i = udiv i32 %sub3.i.i.i, 5
  %arrayidx5.i.i.i = getelementptr [19 x i32], ptr @ov7670_sin_table, i32 0, i32 %div414.i.i.i
  %90 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx5.i.i.i, align 4
  %sub6.i.i.i = sub i32 1000, %91
  br label %ov7670_sine.exit.i.i

ov7670_sine.exit.i.i:                             ; preds = %if.else.i.i.i, %if.then2.i.i.i
  %sine.0.i.i.i = phi i32 [ %89, %if.then2.i.i.i ], [ %sub6.i.i.i, %if.else.i.i.i ]
  %92 = sub i32 0, %sine.0.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp.inv15.i.i.i = icmp slt i32 %72, 0
  %93 = select i1 %cmp.inv15.i.i.i, i32 %92, i32 %sine.0.i.i.i
  %sub.i.i.i = sub i32 90, %72
  call void @__sanitizer_cov_trace_const_cmp4(i32 180, i32 %sub.i.i.i)
  %cmp.i.i.i = icmp sgt i32 %sub.i.i.i, 180
  %sub1.i.i.i = sub i32 -270, %72
  call void @__sanitizer_cov_trace_const_cmp4(i32 -180, i32 %sub.i.i.i)
  %cmp2.i.i.i = icmp slt i32 %sub.i.i.i, -180
  %add.i.i.i = sub i32 450, %72
  %spec.select.i.i.i = select i1 %cmp2.i.i.i, i32 %add.i.i.i, i32 %sub.i.i.i
  %theta.addr.0.i.i.i = select i1 %cmp.i.i.i, i32 %sub1.i.i.i, i32 %spec.select.i.i.i
  %94 = tail call i32 @llvm.abs.i32(i32 %theta.addr.0.i.i.i, i1 false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 91, i32 %94)
  %cmp1.i.i.i.i = icmp slt i32 %94, 91
  br i1 %cmp1.i.i.i.i, label %if.then2.i.i.i.i, label %if.else.i.i.i.i

if.then2.i.i.i.i:                                 ; preds = %ov7670_sine.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %div.i.i.i.i = sdiv i32 %94, 5
  %arrayidx.i.i.i.i = getelementptr [19 x i32], ptr @ov7670_sin_table, i32 0, i32 %div.i.i.i.i
  %95 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx.i.i.i.i, align 4
  br label %ov7670_cosine.exit.i.i

if.else.i.i.i.i:                                  ; preds = %ov7670_sine.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub3.i.i.i.i = add nsw i32 %94, -90
  %div414.i.i.i.i = udiv i32 %sub3.i.i.i.i, 5
  %arrayidx5.i.i.i.i = getelementptr [19 x i32], ptr @ov7670_sin_table, i32 0, i32 %div414.i.i.i.i
  %97 = ptrtoint ptr %arrayidx5.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx5.i.i.i.i, align 4
  %sub6.i.i.i.i = sub i32 1000, %98
  br label %ov7670_cosine.exit.i.i

ov7670_cosine.exit.i.i:                           ; preds = %if.else.i.i.i.i, %if.then2.i.i.i.i
  %sine.0.i.i.i.i = phi i32 [ %96, %if.then2.i.i.i.i ], [ %sub6.i.i.i.i, %if.else.i.i.i.i ]
  %99 = sub i32 0, %sine.0.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %theta.addr.0.i.i.i)
  %cmp.inv15.i.i.i.i = icmp slt i32 %theta.addr.0.i.i.i, 0
  %100 = select i1 %cmp.inv15.i.i.i.i, i32 %99, i32 %sine.0.i.i.i.i
  %mul5.i.i = mul i32 %93, %shr.3.i.i
  %mul7.i.i = mul i32 %100, %shr.i.i
  %add.i.i = add i32 %mul7.i.i, %mul5.i.i
  %div.i.i = sdiv i32 %add.i.i, 1000
  %mul10.i.i = mul i32 %93, %shr.4.i.i
  %mul12.i.i = mul i32 %100, %shr.1.i.i
  %add13.i.i = add i32 %mul12.i.i, %mul10.i.i
  %div14.i.i = sdiv i32 %add13.i.i, 1000
  %mul17.i.i = mul i32 %93, %shr.5.i.i
  %mul19.i.i = mul i32 %100, %shr.2.i.i
  %add20.i.i = add i32 %mul19.i.i, %mul17.i.i
  %div21.i.i = sdiv i32 %add20.i.i, 1000
  %mul24.i.i = mul i32 %100, %shr.3.i.i
  %mul26.i.i = mul i32 %div.i.i, %93
  %sub.i.i75 = sub i32 %mul24.i.i, %mul26.i.i
  %div27.i.i = sdiv i32 %sub.i.i75, 1000
  %mul30.i.i = mul i32 %100, %shr.4.i.i
  %mul32.i.i = mul i32 %div14.i.i, %93
  %sub33.i.i = sub i32 %mul30.i.i, %mul32.i.i
  %div34.i.i = sdiv i32 %sub33.i.i, 1000
  %mul37.i.i = mul i32 %100, %shr.5.i.i
  %mul39.i.i = mul i32 %div21.i.i, %93
  %sub40.i.i = sub i32 %mul37.i.i, %mul39.i.i
  %div41.i.i = sdiv i32 %sub40.i.i, 1000
  br label %ov7670_calc_cmatrix.exit.i

ov7670_calc_cmatrix.exit.i:                       ; preds = %ov7670_cosine.exit.i.i, %sw.bb6.ov7670_calc_cmatrix.exit.i_crit_edge
  %matrix.sroa.27.0.i = phi i32 [ %shr.5.i.i, %sw.bb6.ov7670_calc_cmatrix.exit.i_crit_edge ], [ %div41.i.i, %ov7670_cosine.exit.i.i ]
  %matrix.sroa.22.0.i = phi i32 [ %shr.4.i.i, %sw.bb6.ov7670_calc_cmatrix.exit.i_crit_edge ], [ %div34.i.i, %ov7670_cosine.exit.i.i ]
  %matrix.sroa.17.0.i = phi i32 [ %shr.3.i.i, %sw.bb6.ov7670_calc_cmatrix.exit.i_crit_edge ], [ %div27.i.i, %ov7670_cosine.exit.i.i ]
  %matrix.sroa.12.0.i = phi i32 [ %shr.2.i.i, %sw.bb6.ov7670_calc_cmatrix.exit.i_crit_edge ], [ %div21.i.i, %ov7670_cosine.exit.i.i ]
  %matrix.sroa.7.0.i = phi i32 [ %shr.1.i.i, %sw.bb6.ov7670_calc_cmatrix.exit.i_crit_edge ], [ %div14.i.i, %ov7670_cosine.exit.i.i ]
  %matrix.sroa.0.0.i = phi i32 [ %shr.i.i, %sw.bb6.ov7670_calc_cmatrix.exit.i_crit_edge ], [ %div.i.i, %ov7670_cosine.exit.i.i ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %signbits.i.i) #10
  %101 = ptrtoint ptr %signbits.i.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %signbits.i.i, align 1
  %call.i.i = call fastcc i32 @ov7670_read(ptr noundef %add.ptr.i, i8 noundef zeroext 88, ptr noundef nonnull %signbits.i.i) #10
  %102 = ptrtoint ptr %signbits.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %signbits.i.i, align 1
  %104 = and i8 %103, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %matrix.sroa.0.0.i)
  %cmp3.i.i = icmp slt i32 %matrix.sroa.0.0.i, 0
  br i1 %cmp3.i.i, label %if.then.i9.i, label %if.else14.i.i

for.cond.i.i:                                     ; preds = %ov7670_write.exit.i87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %matrix.sroa.7.0.i)
  %cmp3.1.i.i = icmp slt i32 %matrix.sroa.7.0.i, 0
  br i1 %cmp3.1.i.i, label %if.then.1.i.i, label %if.else14.1.i.i

if.else14.1.i.i:                                  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %105 = call i32 @llvm.umin.i32(i32 %matrix.sroa.7.0.i, i32 255) #10
  %106 = trunc i32 %105 to i8
  br label %if.end24.1.i.i

if.then.1.i.i:                                    ; preds = %for.cond.i.i
  %conv6.1.i.i = or i8 %conv650.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %matrix.sroa.7.0.i)
  %cmp8.1.i.i = icmp ult i32 %matrix.sroa.7.0.i, -255
  br i1 %cmp8.1.i.i, label %if.then.1.i.i.if.end24.1.i.i_crit_edge, label %if.else.1.i.i

if.then.1.i.i.if.end24.1.i.i_crit_edge:           ; preds = %if.then.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.1.i.i

if.else.1.i.i:                                    ; preds = %if.then.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %107 = trunc i32 %matrix.sroa.7.0.i to i8
  %conv13.1.i.i = sub i8 0, %107
  br label %if.end24.1.i.i

if.end24.1.i.i:                                   ; preds = %if.else.1.i.i, %if.then.1.i.i.if.end24.1.i.i_crit_edge, %if.else14.1.i.i
  %conv650.1.i.i = phi i8 [ %conv6.1.i.i, %if.else.1.i.i ], [ %conv6.1.i.i, %if.then.1.i.i.if.end24.1.i.i_crit_edge ], [ %conv650.i.i, %if.else14.1.i.i ]
  %raw.0.1.i.i = phi i8 [ %conv13.1.i.i, %if.else.1.i.i ], [ -1, %if.then.1.i.i.if.end24.1.i.i_crit_edge ], [ %106, %if.else14.1.i.i ]
  %108 = ptrtoint ptr %use_smbus.i.i77 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %use_smbus.i.i77, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool.not.i86.i = icmp eq i8 %109, 0
  %110 = ptrtoint ptr %dev_priv.i.i7.i.i78 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev_priv.i.i7.i.i78, align 4
  br i1 %tobool.not.i86.i, label %if.else.i97.i, label %if.then.i90.i

if.then.i90.i:                                    ; preds = %if.end24.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i88.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %111, i8 noundef zeroext 80, i8 noundef zeroext %raw.0.1.i.i) #10
  br label %ov7670_write.exit99.i

if.else.i97.i:                                    ; preds = %if.end24.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i83.i) #10
  %112 = getelementptr inbounds i8, ptr %msg.i.i83.i, i32 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 196607, ptr %112, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i84.i) #10
  %114 = getelementptr inbounds [2 x i8], ptr %data.i.i84.i, i32 0, i32 1
  %115 = ptrtoint ptr %data.i.i84.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 80, ptr %data.i.i84.i, align 1
  %116 = ptrtoint ptr %114 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %raw.0.1.i.i, ptr %114, align 1
  %addr.i.i91.i = getelementptr inbounds %struct.i2c_client, ptr %111, i32 0, i32 1
  %117 = ptrtoint ptr %addr.i.i91.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %addr.i.i91.i, align 2
  %119 = ptrtoint ptr %msg.i.i83.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %118, ptr %msg.i.i83.i, align 4
  %flags.i.i92.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i83.i, i32 0, i32 1
  %120 = ptrtoint ptr %flags.i.i92.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 0, ptr %flags.i.i92.i, align 2
  %buf.i.i93.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i83.i, i32 0, i32 3
  %121 = ptrtoint ptr %buf.i.i93.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %data.i.i84.i, ptr %buf.i.i93.i, align 4
  %adapter.i.i94.i = getelementptr inbounds %struct.i2c_client, ptr %111, i32 0, i32 3
  %122 = ptrtoint ptr %adapter.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %adapter.i.i94.i, align 8
  %call2.i.i95.i = call i32 @i2c_transfer(ptr noundef %123, ptr noundef nonnull %msg.i.i83.i, i32 noundef 1) #10
  %124 = call i32 @llvm.smin.i32(i32 %call2.i.i95.i, i32 0) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i84.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i83.i) #10
  br label %ov7670_write.exit99.i

ov7670_write.exit99.i:                            ; preds = %if.else.i97.i, %if.then.i90.i
  %retval.0.i98.i = phi i32 [ %124, %if.else.i97.i ], [ %call1.i.i88.i, %if.then.i90.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i98.i)
  %tobool.not.1.i.i = icmp eq i32 %retval.0.i98.i, 0
  br i1 %tobool.not.1.i.i, label %for.cond.1.i.i, label %ov7670_write.exit99.i.ov7670_s_sat_hue.exit_crit_edge

ov7670_write.exit99.i.ov7670_s_sat_hue.exit_crit_edge: ; preds = %ov7670_write.exit99.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ov7670_s_sat_hue.exit

for.cond.1.i.i:                                   ; preds = %ov7670_write.exit99.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %matrix.sroa.12.0.i)
  %cmp3.2.i.i = icmp slt i32 %matrix.sroa.12.0.i, 0
  br i1 %cmp3.2.i.i, label %if.then.2.i.i, label %if.else14.2.i.i

if.else14.2.i.i:                                  ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %125 = call i32 @llvm.umin.i32(i32 %matrix.sroa.12.0.i, i32 255) #10
  %126 = trunc i32 %125 to i8
  br label %if.end24.2.i.i

if.then.2.i.i:                                    ; preds = %for.cond.1.i.i
  %conv6.2.i.i = or i8 %conv650.1.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %matrix.sroa.12.0.i)
  %cmp8.2.i.i = icmp ult i32 %matrix.sroa.12.0.i, -255
  br i1 %cmp8.2.i.i, label %if.then.2.i.i.if.end24.2.i.i_crit_edge, label %if.else.2.i.i

if.then.2.i.i.if.end24.2.i.i_crit_edge:           ; preds = %if.then.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.2.i.i

if.else.2.i.i:                                    ; preds = %if.then.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %127 = trunc i32 %matrix.sroa.12.0.i to i8
  %conv13.2.i.i = sub i8 0, %127
  br label %if.end24.2.i.i

if.end24.2.i.i:                                   ; preds = %if.else.2.i.i, %if.then.2.i.i.if.end24.2.i.i_crit_edge, %if.else14.2.i.i
  %conv650.2.i.i = phi i8 [ %conv6.2.i.i, %if.else.2.i.i ], [ %conv6.2.i.i, %if.then.2.i.i.if.end24.2.i.i_crit_edge ], [ %conv650.1.i.i, %if.else14.2.i.i ]
  %raw.0.2.i.i = phi i8 [ %conv13.2.i.i, %if.else.2.i.i ], [ -1, %if.then.2.i.i.if.end24.2.i.i_crit_edge ], [ %126, %if.else14.2.i.i ]
  %128 = ptrtoint ptr %use_smbus.i.i77 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %use_smbus.i.i77, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool.not.i69.i = icmp eq i8 %129, 0
  %130 = ptrtoint ptr %dev_priv.i.i7.i.i78 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev_priv.i.i7.i.i78, align 4
  br i1 %tobool.not.i69.i, label %if.else.i80.i, label %if.then.i73.i

if.then.i73.i:                                    ; preds = %if.end24.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i71.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %131, i8 noundef zeroext 81, i8 noundef zeroext %raw.0.2.i.i) #10
  br label %ov7670_write.exit82.i

if.else.i80.i:                                    ; preds = %if.end24.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i66.i) #10
  %132 = getelementptr inbounds i8, ptr %msg.i.i66.i, i32 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 196607, ptr %132, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i67.i) #10
  %134 = getelementptr inbounds [2 x i8], ptr %data.i.i67.i, i32 0, i32 1
  %135 = ptrtoint ptr %data.i.i67.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 81, ptr %data.i.i67.i, align 1
  %136 = ptrtoint ptr %134 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %raw.0.2.i.i, ptr %134, align 1
  %addr.i.i74.i = getelementptr inbounds %struct.i2c_client, ptr %131, i32 0, i32 1
  %137 = ptrtoint ptr %addr.i.i74.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %addr.i.i74.i, align 2
  %139 = ptrtoint ptr %msg.i.i66.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %138, ptr %msg.i.i66.i, align 4
  %flags.i.i75.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i66.i, i32 0, i32 1
  %140 = ptrtoint ptr %flags.i.i75.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 0, ptr %flags.i.i75.i, align 2
  %buf.i.i76.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i66.i, i32 0, i32 3
  %141 = ptrtoint ptr %buf.i.i76.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %data.i.i67.i, ptr %buf.i.i76.i, align 4
  %adapter.i.i77.i = getelementptr inbounds %struct.i2c_client, ptr %131, i32 0, i32 3
  %142 = ptrtoint ptr %adapter.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %adapter.i.i77.i, align 8
  %call2.i.i78.i = call i32 @i2c_transfer(ptr noundef %143, ptr noundef nonnull %msg.i.i66.i, i32 noundef 1) #10
  %144 = call i32 @llvm.smin.i32(i32 %call2.i.i78.i, i32 0) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i67.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i66.i) #10
  br label %ov7670_write.exit82.i

ov7670_write.exit82.i:                            ; preds = %if.else.i80.i, %if.then.i73.i
  %retval.0.i81.i = phi i32 [ %144, %if.else.i80.i ], [ %call1.i.i71.i, %if.then.i73.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i81.i)
  %tobool.not.2.i.i = icmp eq i32 %retval.0.i81.i, 0
  br i1 %tobool.not.2.i.i, label %for.cond.2.i.i, label %ov7670_write.exit82.i.ov7670_s_sat_hue.exit_crit_edge

ov7670_write.exit82.i.ov7670_s_sat_hue.exit_crit_edge: ; preds = %ov7670_write.exit82.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ov7670_s_sat_hue.exit

for.cond.2.i.i:                                   ; preds = %ov7670_write.exit82.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %matrix.sroa.17.0.i)
  %cmp3.3.i.i = icmp slt i32 %matrix.sroa.17.0.i, 0
  br i1 %cmp3.3.i.i, label %if.then.3.i.i, label %if.else14.3.i.i

if.else14.3.i.i:                                  ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %145 = call i32 @llvm.umin.i32(i32 %matrix.sroa.17.0.i, i32 255) #10
  %146 = trunc i32 %145 to i8
  br label %if.end24.3.i.i

if.then.3.i.i:                                    ; preds = %for.cond.2.i.i
  %conv6.3.i.i = or i8 %conv650.2.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %matrix.sroa.17.0.i)
  %cmp8.3.i.i = icmp ult i32 %matrix.sroa.17.0.i, -255
  br i1 %cmp8.3.i.i, label %if.then.3.i.i.if.end24.3.i.i_crit_edge, label %if.else.3.i.i

if.then.3.i.i.if.end24.3.i.i_crit_edge:           ; preds = %if.then.3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.3.i.i

if.else.3.i.i:                                    ; preds = %if.then.3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %147 = trunc i32 %matrix.sroa.17.0.i to i8
  %conv13.3.i.i = sub i8 0, %147
  br label %if.end24.3.i.i

if.end24.3.i.i:                                   ; preds = %if.else.3.i.i, %if.then.3.i.i.if.end24.3.i.i_crit_edge, %if.else14.3.i.i
  %conv650.3.i.i = phi i8 [ %conv6.3.i.i, %if.else.3.i.i ], [ %conv6.3.i.i, %if.then.3.i.i.if.end24.3.i.i_crit_edge ], [ %conv650.2.i.i, %if.else14.3.i.i ]
  %raw.0.3.i.i = phi i8 [ %conv13.3.i.i, %if.else.3.i.i ], [ -1, %if.then.3.i.i.if.end24.3.i.i_crit_edge ], [ %146, %if.else14.3.i.i ]
  %148 = ptrtoint ptr %use_smbus.i.i77 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %use_smbus.i.i77, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool.not.i52.i = icmp eq i8 %149, 0
  %150 = ptrtoint ptr %dev_priv.i.i7.i.i78 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev_priv.i.i7.i.i78, align 4
  br i1 %tobool.not.i52.i, label %if.else.i63.i, label %if.then.i56.i

if.then.i56.i:                                    ; preds = %if.end24.3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i54.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %151, i8 noundef zeroext 82, i8 noundef zeroext %raw.0.3.i.i) #10
  br label %ov7670_write.exit65.i

if.else.i63.i:                                    ; preds = %if.end24.3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i49.i) #10
  %152 = getelementptr inbounds i8, ptr %msg.i.i49.i, i32 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 196607, ptr %152, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i50.i) #10
  %154 = getelementptr inbounds [2 x i8], ptr %data.i.i50.i, i32 0, i32 1
  %155 = ptrtoint ptr %data.i.i50.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 82, ptr %data.i.i50.i, align 1
  %156 = ptrtoint ptr %154 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %raw.0.3.i.i, ptr %154, align 1
  %addr.i.i57.i = getelementptr inbounds %struct.i2c_client, ptr %151, i32 0, i32 1
  %157 = ptrtoint ptr %addr.i.i57.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %addr.i.i57.i, align 2
  %159 = ptrtoint ptr %msg.i.i49.i to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %158, ptr %msg.i.i49.i, align 4
  %flags.i.i58.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i49.i, i32 0, i32 1
  %160 = ptrtoint ptr %flags.i.i58.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 0, ptr %flags.i.i58.i, align 2
  %buf.i.i59.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i49.i, i32 0, i32 3
  %161 = ptrtoint ptr %buf.i.i59.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %data.i.i50.i, ptr %buf.i.i59.i, align 4
  %adapter.i.i60.i = getelementptr inbounds %struct.i2c_client, ptr %151, i32 0, i32 3
  %162 = ptrtoint ptr %adapter.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %adapter.i.i60.i, align 8
  %call2.i.i61.i = call i32 @i2c_transfer(ptr noundef %163, ptr noundef nonnull %msg.i.i49.i, i32 noundef 1) #10
  %164 = call i32 @llvm.smin.i32(i32 %call2.i.i61.i, i32 0) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i50.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i49.i) #10
  br label %ov7670_write.exit65.i

ov7670_write.exit65.i:                            ; preds = %if.else.i63.i, %if.then.i56.i
  %retval.0.i64.i = phi i32 [ %164, %if.else.i63.i ], [ %call1.i.i54.i, %if.then.i56.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i64.i)
  %tobool.not.3.i.i = icmp eq i32 %retval.0.i64.i, 0
  br i1 %tobool.not.3.i.i, label %for.cond.3.i.i, label %ov7670_write.exit65.i.ov7670_s_sat_hue.exit_crit_edge

ov7670_write.exit65.i.ov7670_s_sat_hue.exit_crit_edge: ; preds = %ov7670_write.exit65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ov7670_s_sat_hue.exit

for.cond.3.i.i:                                   ; preds = %ov7670_write.exit65.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %matrix.sroa.22.0.i)
  %cmp3.4.i.i = icmp slt i32 %matrix.sroa.22.0.i, 0
  br i1 %cmp3.4.i.i, label %if.then.4.i.i, label %if.else14.4.i.i

if.else14.4.i.i:                                  ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %165 = call i32 @llvm.umin.i32(i32 %matrix.sroa.22.0.i, i32 255) #10
  %166 = trunc i32 %165 to i8
  br label %if.end24.4.i.i

if.then.4.i.i:                                    ; preds = %for.cond.3.i.i
  %conv6.4.i.i = or i8 %conv650.3.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %matrix.sroa.22.0.i)
  %cmp8.4.i.i = icmp ult i32 %matrix.sroa.22.0.i, -255
  br i1 %cmp8.4.i.i, label %if.then.4.i.i.if.end24.4.i.i_crit_edge, label %if.else.4.i.i

if.then.4.i.i.if.end24.4.i.i_crit_edge:           ; preds = %if.then.4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.4.i.i

if.else.4.i.i:                                    ; preds = %if.then.4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %167 = trunc i32 %matrix.sroa.22.0.i to i8
  %conv13.4.i.i = sub i8 0, %167
  br label %if.end24.4.i.i

if.end24.4.i.i:                                   ; preds = %if.else.4.i.i, %if.then.4.i.i.if.end24.4.i.i_crit_edge, %if.else14.4.i.i
  %conv650.4.i.i = phi i8 [ %conv6.4.i.i, %if.else.4.i.i ], [ %conv6.4.i.i, %if.then.4.i.i.if.end24.4.i.i_crit_edge ], [ %conv650.3.i.i, %if.else14.4.i.i ]
  %raw.0.4.i.i = phi i8 [ %conv13.4.i.i, %if.else.4.i.i ], [ -1, %if.then.4.i.i.if.end24.4.i.i_crit_edge ], [ %166, %if.else14.4.i.i ]
  %168 = ptrtoint ptr %use_smbus.i.i77 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %use_smbus.i.i77, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool.not.i35.i = icmp eq i8 %169, 0
  %170 = ptrtoint ptr %dev_priv.i.i7.i.i78 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %dev_priv.i.i7.i.i78, align 4
  br i1 %tobool.not.i35.i, label %if.else.i46.i, label %if.then.i39.i

if.then.i39.i:                                    ; preds = %if.end24.4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i37.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %171, i8 noundef zeroext 83, i8 noundef zeroext %raw.0.4.i.i) #10
  br label %ov7670_write.exit48.i

if.else.i46.i:                                    ; preds = %if.end24.4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i32.i) #10
  %172 = getelementptr inbounds i8, ptr %msg.i.i32.i, i32 4
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 196607, ptr %172, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i33.i) #10
  %174 = getelementptr inbounds [2 x i8], ptr %data.i.i33.i, i32 0, i32 1
  %175 = ptrtoint ptr %data.i.i33.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 83, ptr %data.i.i33.i, align 1
  %176 = ptrtoint ptr %174 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %raw.0.4.i.i, ptr %174, align 1
  %addr.i.i40.i = getelementptr inbounds %struct.i2c_client, ptr %171, i32 0, i32 1
  %177 = ptrtoint ptr %addr.i.i40.i to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %addr.i.i40.i, align 2
  %179 = ptrtoint ptr %msg.i.i32.i to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 %178, ptr %msg.i.i32.i, align 4
  %flags.i.i41.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i32.i, i32 0, i32 1
  %180 = ptrtoint ptr %flags.i.i41.i to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 0, ptr %flags.i.i41.i, align 2
  %buf.i.i42.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i32.i, i32 0, i32 3
  %181 = ptrtoint ptr %buf.i.i42.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %data.i.i33.i, ptr %buf.i.i42.i, align 4
  %adapter.i.i43.i = getelementptr inbounds %struct.i2c_client, ptr %171, i32 0, i32 3
  %182 = ptrtoint ptr %adapter.i.i43.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %adapter.i.i43.i, align 8
  %call2.i.i44.i = call i32 @i2c_transfer(ptr noundef %183, ptr noundef nonnull %msg.i.i32.i, i32 noundef 1) #10
  %184 = call i32 @llvm.smin.i32(i32 %call2.i.i44.i, i32 0) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i33.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i32.i) #10
  br label %ov7670_write.exit48.i

ov7670_write.exit48.i:                            ; preds = %if.else.i46.i, %if.then.i39.i
  %retval.0.i47.i = phi i32 [ %184, %if.else.i46.i ], [ %call1.i.i37.i, %if.then.i39.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i47.i)
  %tobool.not.4.i.i = icmp eq i32 %retval.0.i47.i, 0
  br i1 %tobool.not.4.i.i, label %for.cond.4.i.i, label %ov7670_write.exit48.i.ov7670_s_sat_hue.exit_crit_edge

ov7670_write.exit48.i.ov7670_s_sat_hue.exit_crit_edge: ; preds = %ov7670_write.exit48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ov7670_s_sat_hue.exit

for.cond.4.i.i:                                   ; preds = %ov7670_write.exit48.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %matrix.sroa.27.0.i)
  %cmp3.5.i.i = icmp slt i32 %matrix.sroa.27.0.i, 0
  br i1 %cmp3.5.i.i, label %if.then.5.i.i, label %if.else14.5.i.i

if.else14.5.i.i:                                  ; preds = %for.cond.4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %185 = call i32 @llvm.umin.i32(i32 %matrix.sroa.27.0.i, i32 255) #10
  %186 = trunc i32 %185 to i8
  br label %if.end24.5.i.i

if.then.5.i.i:                                    ; preds = %for.cond.4.i.i
  %conv6.5.i.i = or i8 %conv650.4.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %matrix.sroa.27.0.i)
  %cmp8.5.i.i = icmp ult i32 %matrix.sroa.27.0.i, -255
  br i1 %cmp8.5.i.i, label %if.then.5.i.i.if.end24.5.i.i_crit_edge, label %if.else.5.i.i

if.then.5.i.i.if.end24.5.i.i_crit_edge:           ; preds = %if.then.5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.5.i.i

if.else.5.i.i:                                    ; preds = %if.then.5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %187 = trunc i32 %matrix.sroa.27.0.i to i8
  %conv13.5.i.i = sub i8 0, %187
  br label %if.end24.5.i.i

if.end24.5.i.i:                                   ; preds = %if.else.5.i.i, %if.then.5.i.i.if.end24.5.i.i_crit_edge, %if.else14.5.i.i
  %conv650.5.i.i = phi i8 [ %conv6.5.i.i, %if.else.5.i.i ], [ %conv6.5.i.i, %if.then.5.i.i.if.end24.5.i.i_crit_edge ], [ %conv650.4.i.i, %if.else14.5.i.i ]
  %raw.0.5.i.i = phi i8 [ %conv13.5.i.i, %if.else.5.i.i ], [ -1, %if.then.5.i.i.if.end24.5.i.i_crit_edge ], [ %186, %if.else14.5.i.i ]
  %188 = ptrtoint ptr %use_smbus.i.i77 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %use_smbus.i.i77, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %tobool.not.i18.i = icmp eq i8 %189, 0
  %190 = ptrtoint ptr %dev_priv.i.i7.i.i78 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %dev_priv.i.i7.i.i78, align 4
  br i1 %tobool.not.i18.i, label %if.else.i29.i, label %if.then.i22.i

if.then.i22.i:                                    ; preds = %if.end24.5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i20.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %191, i8 noundef zeroext 84, i8 noundef zeroext %raw.0.5.i.i) #10
  br label %ov7670_write.exit31.i

if.else.i29.i:                                    ; preds = %if.end24.5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i15.i) #10
  %192 = getelementptr inbounds i8, ptr %msg.i.i15.i, i32 4
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 196607, ptr %192, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i16.i) #10
  %194 = getelementptr inbounds [2 x i8], ptr %data.i.i16.i, i32 0, i32 1
  %195 = ptrtoint ptr %data.i.i16.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 84, ptr %data.i.i16.i, align 1
  %196 = ptrtoint ptr %194 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %raw.0.5.i.i, ptr %194, align 1
  %addr.i.i23.i = getelementptr inbounds %struct.i2c_client, ptr %191, i32 0, i32 1
  %197 = ptrtoint ptr %addr.i.i23.i to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %addr.i.i23.i, align 2
  %199 = ptrtoint ptr %msg.i.i15.i to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 %198, ptr %msg.i.i15.i, align 4
  %flags.i.i24.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i15.i, i32 0, i32 1
  %200 = ptrtoint ptr %flags.i.i24.i to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 0, ptr %flags.i.i24.i, align 2
  %buf.i.i25.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i15.i, i32 0, i32 3
  %201 = ptrtoint ptr %buf.i.i25.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %data.i.i16.i, ptr %buf.i.i25.i, align 4
  %adapter.i.i26.i = getelementptr inbounds %struct.i2c_client, ptr %191, i32 0, i32 3
  %202 = ptrtoint ptr %adapter.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %adapter.i.i26.i, align 8
  %call2.i.i27.i = call i32 @i2c_transfer(ptr noundef %203, ptr noundef nonnull %msg.i.i15.i, i32 noundef 1) #10
  %204 = call i32 @llvm.smin.i32(i32 %call2.i.i27.i, i32 0) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i16.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i15.i) #10
  br label %ov7670_write.exit31.i

ov7670_write.exit31.i:                            ; preds = %if.else.i29.i, %if.then.i22.i
  %retval.0.i30.i = phi i32 [ %204, %if.else.i29.i ], [ %call1.i.i20.i, %if.then.i22.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i30.i)
  %tobool.not.5.i.i = icmp eq i32 %retval.0.i30.i, 0
  br i1 %tobool.not.5.i.i, label %for.cond.5.i.i, label %ov7670_write.exit31.i.ov7670_s_sat_hue.exit_crit_edge

ov7670_write.exit31.i.ov7670_s_sat_hue.exit_crit_edge: ; preds = %ov7670_write.exit31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ov7670_s_sat_hue.exit

for.cond.5.i.i:                                   ; preds = %ov7670_write.exit31.i
  %205 = ptrtoint ptr %use_smbus.i.i77 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %use_smbus.i.i77, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %206)
  %tobool.not.i.i.i = icmp eq i8 %206, 0
  %207 = ptrtoint ptr %dev_priv.i.i7.i.i78 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %dev_priv.i.i7.i.i78, align 4
  br i1 %tobool.not.i.i.i, label %if.else.i.i10.i, label %if.then.i.i.i

if.then.i9.i:                                     ; preds = %ov7670_calc_cmatrix.exit.i
  %conv6.i.i = or i8 %104, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %matrix.sroa.0.0.i)
  %cmp8.i.i = icmp ult i32 %matrix.sroa.0.0.i, -255
  br i1 %cmp8.i.i, label %if.then.i9.i.if.end24.i.i_crit_edge, label %if.else.i.i76

if.then.i9.i.if.end24.i.i_crit_edge:              ; preds = %if.then.i9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i.i

if.else.i.i76:                                    ; preds = %if.then.i9.i
  call void @__sanitizer_cov_trace_pc() #12
  %209 = trunc i32 %matrix.sroa.0.0.i to i8
  %conv13.i.i = sub i8 0, %209
  br label %if.end24.i.i

if.else14.i.i:                                    ; preds = %ov7670_calc_cmatrix.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %210 = tail call i32 @llvm.umin.i32(i32 %matrix.sroa.0.0.i, i32 255) #10
  %211 = trunc i32 %210 to i8
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.else14.i.i, %if.else.i.i76, %if.then.i9.i.if.end24.i.i_crit_edge
  %conv650.i.i = phi i8 [ %conv6.i.i, %if.else.i.i76 ], [ %conv6.i.i, %if.then.i9.i.if.end24.i.i_crit_edge ], [ %104, %if.else14.i.i ]
  %raw.0.i.i = phi i8 [ %conv13.i.i, %if.else.i.i76 ], [ -1, %if.then.i9.i.if.end24.i.i_crit_edge ], [ %211, %if.else14.i.i ]
  %use_smbus.i.i77 = getelementptr i8, ptr %1, i32 297
  %212 = ptrtoint ptr %use_smbus.i.i77 to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %use_smbus.i.i77, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %213)
  %tobool.not.i11.i = icmp eq i8 %213, 0
  %dev_priv.i.i7.i.i78 = getelementptr i8, ptr %1, i32 -76
  %214 = ptrtoint ptr %dev_priv.i.i7.i.i78 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %dev_priv.i.i7.i.i78, align 4
  br i1 %tobool.not.i11.i, label %if.else.i14.i, label %if.then.i13.i

if.then.i13.i:                                    ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i.i79 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %215, i8 noundef zeroext 79, i8 noundef zeroext %raw.0.i.i) #10
  br label %ov7670_write.exit.i87

if.else.i14.i:                                    ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i72) #10
  %216 = getelementptr inbounds i8, ptr %msg.i.i.i72, i32 4
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 196607, ptr %216, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i.i73) #10
  %218 = getelementptr inbounds [2 x i8], ptr %data.i.i.i73, i32 0, i32 1
  %219 = ptrtoint ptr %data.i.i.i73 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 79, ptr %data.i.i.i73, align 1
  %220 = ptrtoint ptr %218 to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %raw.0.i.i, ptr %218, align 1
  %addr.i.i.i80 = getelementptr inbounds %struct.i2c_client, ptr %215, i32 0, i32 1
  %221 = ptrtoint ptr %addr.i.i.i80 to i32
  call void @__asan_load2_noabort(i32 %221)
  %222 = load i16, ptr %addr.i.i.i80, align 2
  %223 = ptrtoint ptr %msg.i.i.i72 to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 %222, ptr %msg.i.i.i72, align 4
  %flags.i.i.i81 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i72, i32 0, i32 1
  %224 = ptrtoint ptr %flags.i.i.i81 to i32
  call void @__asan_store2_noabort(i32 %224)
  store i16 0, ptr %flags.i.i.i81, align 2
  %buf.i.i.i82 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i72, i32 0, i32 3
  %225 = ptrtoint ptr %buf.i.i.i82 to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %data.i.i.i73, ptr %buf.i.i.i82, align 4
  %adapter.i.i.i83 = getelementptr inbounds %struct.i2c_client, ptr %215, i32 0, i32 3
  %226 = ptrtoint ptr %adapter.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %adapter.i.i.i83, align 8
  %call2.i.i.i84 = call i32 @i2c_transfer(ptr noundef %227, ptr noundef nonnull %msg.i.i.i72, i32 noundef 1) #10
  %228 = call i32 @llvm.smin.i32(i32 %call2.i.i.i84, i32 0) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i.i73) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i72) #10
  br label %ov7670_write.exit.i87

ov7670_write.exit.i87:                            ; preds = %if.else.i14.i, %if.then.i13.i
  %retval.0.i.i85 = phi i32 [ %228, %if.else.i14.i ], [ %call1.i.i.i79, %if.then.i13.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i85)
  %tobool.not.i.i86 = icmp eq i32 %retval.0.i.i85, 0
  br i1 %tobool.not.i.i86, label %for.cond.i.i, label %ov7670_write.exit.i87.ov7670_s_sat_hue.exit_crit_edge

ov7670_write.exit.i87.ov7670_s_sat_hue.exit_crit_edge: ; preds = %ov7670_write.exit.i87
  call void @__sanitizer_cov_trace_pc() #12
  br label %ov7670_s_sat_hue.exit

if.then.i.i.i:                                    ; preds = %for.cond.5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %208, i8 noundef zeroext 88, i8 noundef zeroext %conv650.5.i.i) #10
  br label %ov7670_s_sat_hue.exit

if.else.i.i10.i:                                  ; preds = %for.cond.5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i.i) #10
  %229 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 4
  %230 = ptrtoint ptr %229 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 196607, ptr %229, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i.i.i) #10
  %231 = getelementptr inbounds [2 x i8], ptr %data.i.i.i.i, i32 0, i32 1
  %232 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 88, ptr %data.i.i.i.i, align 1
  %233 = ptrtoint ptr %231 to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 %conv650.5.i.i, ptr %231, align 1
  %addr.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %208, i32 0, i32 1
  %234 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %234)
  %235 = load i16, ptr %addr.i.i.i.i, align 2
  %236 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %236)
  store i16 %235, ptr %msg.i.i.i.i, align 4
  %flags.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i.i, i32 0, i32 1
  %237 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %237)
  store i16 0, ptr %flags.i.i.i.i, align 2
  %buf.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i.i, i32 0, i32 3
  %238 = ptrtoint ptr %buf.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr %data.i.i.i.i, ptr %buf.i.i.i.i, align 4
  %adapter.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %208, i32 0, i32 3
  %239 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call2.i.i.i.i = call i32 @i2c_transfer(ptr noundef %240, ptr noundef nonnull %msg.i.i.i.i, i32 noundef 1) #10
  %241 = call i32 @llvm.smin.i32(i32 %call2.i.i.i.i, i32 0) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i.i) #10
  br label %ov7670_s_sat_hue.exit

ov7670_s_sat_hue.exit:                            ; preds = %if.else.i.i10.i, %if.then.i.i.i, %ov7670_write.exit.i87.ov7670_s_sat_hue.exit_crit_edge, %ov7670_write.exit31.i.ov7670_s_sat_hue.exit_crit_edge, %ov7670_write.exit48.i.ov7670_s_sat_hue.exit_crit_edge, %ov7670_write.exit65.i.ov7670_s_sat_hue.exit_crit_edge, %ov7670_write.exit82.i.ov7670_s_sat_hue.exit_crit_edge, %ov7670_write.exit99.i.ov7670_s_sat_hue.exit_crit_edge
  %retval.2.i.i = phi i32 [ %241, %if.else.i.i10.i ], [ %call1.i.i.i.i, %if.then.i.i.i ], [ %retval.0.i.i85, %ov7670_write.exit.i87.ov7670_s_sat_hue.exit_crit_edge ], [ %retval.0.i98.i, %ov7670_write.exit99.i.ov7670_s_sat_hue.exit_crit_edge ], [ %retval.0.i81.i, %ov7670_write.exit82.i.ov7670_s_sat_hue.exit_crit_edge ], [ %retval.0.i64.i, %ov7670_write.exit65.i.ov7670_s_sat_hue.exit_crit_edge ], [ %retval.0.i47.i, %ov7670_write.exit48.i.ov7670_s_sat_hue.exit_crit_edge ], [ %retval.0.i30.i, %ov7670_write.exit31.i.ov7670_s_sat_hue.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %signbits.i.i) #10
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %val11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %242 = ptrtoint ptr %val11 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %val11, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %v.i) #10
  %244 = ptrtoint ptr %v.i to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 0, ptr %v.i, align 1
  %call.i90 = call fastcc i32 @ov7670_read(ptr noundef %add.ptr.i, i8 noundef zeroext 30, ptr noundef nonnull %v.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %tobool.not.i = icmp eq i32 %call.i90, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb10.ov7670_s_vflip.exit_crit_edge

sw.bb10.ov7670_s_vflip.exit_crit_edge:            ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #12
  br label %ov7670_s_vflip.exit

if.end.i:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %243)
  %tobool1.not.i = icmp eq i32 %243, 0
  %245 = ptrtoint ptr %v.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %v.i, align 1
  %247 = and i8 %246, -17
  %masksel.i = select i1 %tobool1.not.i, i8 0, i8 16
  %storemerge.i = or i8 %247, %masksel.i
  tail call void @msleep(i32 noundef 10) #10
  %use_smbus.i.i91 = getelementptr i8, ptr %1, i32 297
  %248 = ptrtoint ptr %use_smbus.i.i91 to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %use_smbus.i.i91, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %249)
  %tobool.not.i.i92 = icmp eq i8 %249, 0
  %dev_priv.i.i7.i.i93 = getelementptr i8, ptr %1, i32 -76
  %250 = ptrtoint ptr %dev_priv.i.i7.i.i93 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %dev_priv.i.i7.i.i93, align 4
  br i1 %tobool.not.i.i92, label %if.else.i.i101, label %if.then.i.i95

if.then.i.i95:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i.i94 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %251, i8 noundef zeroext 30, i8 noundef zeroext %storemerge.i) #10
  br label %ov7670_s_vflip.exit

if.else.i.i101:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i88) #10
  %252 = getelementptr inbounds i8, ptr %msg.i.i.i88, i32 4
  %253 = ptrtoint ptr %252 to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 196607, ptr %252, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i.i89) #10
  %254 = getelementptr inbounds [2 x i8], ptr %data.i.i.i89, i32 0, i32 1
  %255 = ptrtoint ptr %data.i.i.i89 to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 30, ptr %data.i.i.i89, align 1
  %256 = ptrtoint ptr %254 to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 %storemerge.i, ptr %254, align 1
  %addr.i.i.i96 = getelementptr inbounds %struct.i2c_client, ptr %251, i32 0, i32 1
  %257 = ptrtoint ptr %addr.i.i.i96 to i32
  call void @__asan_load2_noabort(i32 %257)
  %258 = load i16, ptr %addr.i.i.i96, align 2
  %259 = ptrtoint ptr %msg.i.i.i88 to i32
  call void @__asan_store2_noabort(i32 %259)
  store i16 %258, ptr %msg.i.i.i88, align 4
  %flags.i.i.i97 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i88, i32 0, i32 1
  %260 = ptrtoint ptr %flags.i.i.i97 to i32
  call void @__asan_store2_noabort(i32 %260)
  store i16 0, ptr %flags.i.i.i97, align 2
  %buf.i.i.i98 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i88, i32 0, i32 3
  %261 = ptrtoint ptr %buf.i.i.i98 to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr %data.i.i.i89, ptr %buf.i.i.i98, align 4
  %adapter.i.i.i99 = getelementptr inbounds %struct.i2c_client, ptr %251, i32 0, i32 3
  %262 = ptrtoint ptr %adapter.i.i.i99 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %adapter.i.i.i99, align 8
  %call2.i.i.i100 = call i32 @i2c_transfer(ptr noundef %263, ptr noundef nonnull %msg.i.i.i88, i32 noundef 1) #10
  %264 = call i32 @llvm.smin.i32(i32 %call2.i.i.i100, i32 0) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i.i89) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i88) #10
  br label %ov7670_s_vflip.exit

ov7670_s_vflip.exit:                              ; preds = %if.else.i.i101, %if.then.i.i95, %sw.bb10.ov7670_s_vflip.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i90, %sw.bb10.ov7670_s_vflip.exit_crit_edge ], [ %264, %if.else.i.i101 ], [ %call1.i.i.i94, %if.then.i.i95 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %v.i) #10
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  %val14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %265 = ptrtoint ptr %val14 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %val14, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %v.i104) #10
  %267 = ptrtoint ptr %v.i104 to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 0, ptr %v.i104, align 1
  %call.i105 = call fastcc i32 @ov7670_read(ptr noundef %add.ptr.i, i8 noundef zeroext 30, ptr noundef nonnull %v.i104) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105)
  %tobool.not.i106 = icmp eq i32 %call.i105, 0
  br i1 %tobool.not.i106, label %if.end.i113, label %sw.bb13.ov7670_s_hflip.exit_crit_edge

sw.bb13.ov7670_s_hflip.exit_crit_edge:            ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #12
  br label %ov7670_s_hflip.exit

if.end.i113:                                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %266)
  %tobool1.not.i107 = icmp eq i32 %266, 0
  %268 = ptrtoint ptr %v.i104 to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %v.i104, align 1
  %270 = and i8 %269, -33
  %masksel.i108 = select i1 %tobool1.not.i107, i8 0, i8 32
  %storemerge.i109 = or i8 %270, %masksel.i108
  tail call void @msleep(i32 noundef 10) #10
  %use_smbus.i.i110 = getelementptr i8, ptr %1, i32 297
  %271 = ptrtoint ptr %use_smbus.i.i110 to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %use_smbus.i.i110, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %272)
  %tobool.not.i.i111 = icmp eq i8 %272, 0
  %dev_priv.i.i7.i.i112 = getelementptr i8, ptr %1, i32 -76
  %273 = ptrtoint ptr %dev_priv.i.i7.i.i112 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %dev_priv.i.i7.i.i112, align 4
  br i1 %tobool.not.i.i111, label %if.else.i.i121, label %if.then.i.i115

if.then.i.i115:                                   ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i.i114 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %274, i8 noundef zeroext 30, i8 noundef zeroext %storemerge.i109) #10
  br label %ov7670_s_hflip.exit

if.else.i.i121:                                   ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i102) #10
  %275 = getelementptr inbounds i8, ptr %msg.i.i.i102, i32 4
  %276 = ptrtoint ptr %275 to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 196607, ptr %275, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i.i103) #10
  %277 = getelementptr inbounds [2 x i8], ptr %data.i.i.i103, i32 0, i32 1
  %278 = ptrtoint ptr %data.i.i.i103 to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 30, ptr %data.i.i.i103, align 1
  %279 = ptrtoint ptr %277 to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 %storemerge.i109, ptr %277, align 1
  %addr.i.i.i116 = getelementptr inbounds %struct.i2c_client, ptr %274, i32 0, i32 1
  %280 = ptrtoint ptr %addr.i.i.i116 to i32
  call void @__asan_load2_noabort(i32 %280)
  %281 = load i16, ptr %addr.i.i.i116, align 2
  %282 = ptrtoint ptr %msg.i.i.i102 to i32
  call void @__asan_store2_noabort(i32 %282)
  store i16 %281, ptr %msg.i.i.i102, align 4
  %flags.i.i.i117 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i102, i32 0, i32 1
  %283 = ptrtoint ptr %flags.i.i.i117 to i32
  call void @__asan_store2_noabort(i32 %283)
  store i16 0, ptr %flags.i.i.i117, align 2
  %buf.i.i.i118 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i102, i32 0, i32 3
  %284 = ptrtoint ptr %buf.i.i.i118 to i32
  call void @__asan_store4_noabort(i32 %284)
  store ptr %data.i.i.i103, ptr %buf.i.i.i118, align 4
  %adapter.i.i.i119 = getelementptr inbounds %struct.i2c_client, ptr %274, i32 0, i32 3
  %285 = ptrtoint ptr %adapter.i.i.i119 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %adapter.i.i.i119, align 8
  %call2.i.i.i120 = call i32 @i2c_transfer(ptr noundef %286, ptr noundef nonnull %msg.i.i.i102, i32 noundef 1) #10
  %287 = call i32 @llvm.smin.i32(i32 %call2.i.i.i120, i32 0) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i.i103) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i102) #10
  br label %ov7670_s_hflip.exit

ov7670_s_hflip.exit:                              ; preds = %if.else.i.i121, %if.then.i.i115, %sw.bb13.ov7670_s_hflip.exit_crit_edge
  %retval.0.i122 = phi i32 [ %call.i105, %sw.bb13.ov7670_s_hflip.exit_crit_edge ], [ %287, %if.else.i.i121 ], [ %call1.i.i.i114, %if.then.i.i115 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %v.i104) #10
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  %val17 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %288 = ptrtoint ptr %val17 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %val17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %289)
  %tobool.not = icmp eq i32 %289, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb16
  %gain = getelementptr i8, ptr %1, i32 188
  %290 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %gain, align 4
  %val18 = getelementptr inbounds %struct.v4l2_ctrl, ptr %291, i32 0, i32 22
  %292 = ptrtoint ptr %val18 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %val18, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %com8.i127) #10
  %294 = ptrtoint ptr %com8.i127 to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 -1, ptr %com8.i127, align 1, !annotation !125
  %conv.i128 = trunc i32 %293 to i8
  %use_smbus.i.i129 = getelementptr i8, ptr %1, i32 297
  %295 = ptrtoint ptr %use_smbus.i.i129 to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %use_smbus.i.i129, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %296)
  %tobool.not.i.i130 = icmp eq i8 %296, 0
  %dev_priv.i.i7.i.i131 = getelementptr i8, ptr %1, i32 -76
  %297 = ptrtoint ptr %dev_priv.i.i7.i.i131 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %dev_priv.i.i7.i.i131, align 4
  br i1 %tobool.not.i.i130, label %if.else.i.i139, label %if.then.i.i133

if.then.i.i133:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i.i132 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %298, i8 noundef zeroext 0, i8 noundef zeroext %conv.i128) #10
  br label %ov7670_write.exit.i142

if.else.i.i139:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i125) #10
  %299 = getelementptr inbounds i8, ptr %msg.i.i.i125, i32 4
  %300 = ptrtoint ptr %299 to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 196607, ptr %299, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i.i126) #10
  %301 = getelementptr inbounds [2 x i8], ptr %data.i.i.i126, i32 0, i32 1
  %302 = ptrtoint ptr %data.i.i.i126 to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 0, ptr %data.i.i.i126, align 1
  %303 = ptrtoint ptr %301 to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 %conv.i128, ptr %301, align 1
  %addr.i.i.i134 = getelementptr inbounds %struct.i2c_client, ptr %298, i32 0, i32 1
  %304 = ptrtoint ptr %addr.i.i.i134 to i32
  call void @__asan_load2_noabort(i32 %304)
  %305 = load i16, ptr %addr.i.i.i134, align 2
  %306 = ptrtoint ptr %msg.i.i.i125 to i32
  call void @__asan_store2_noabort(i32 %306)
  store i16 %305, ptr %msg.i.i.i125, align 4
  %flags.i.i.i135 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i125, i32 0, i32 1
  %307 = ptrtoint ptr %flags.i.i.i135 to i32
  call void @__asan_store2_noabort(i32 %307)
  store i16 0, ptr %flags.i.i.i135, align 2
  %buf.i.i.i136 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i125, i32 0, i32 3
  %308 = ptrtoint ptr %buf.i.i.i136 to i32
  call void @__asan_store4_noabort(i32 %308)
  store ptr %data.i.i.i126, ptr %buf.i.i.i136, align 4
  %adapter.i.i.i137 = getelementptr inbounds %struct.i2c_client, ptr %298, i32 0, i32 3
  %309 = ptrtoint ptr %adapter.i.i.i137 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %adapter.i.i.i137, align 8
  %call2.i.i.i138 = call i32 @i2c_transfer(ptr noundef %310, ptr noundef nonnull %msg.i.i.i125, i32 noundef 1) #10
  %311 = call i32 @llvm.smin.i32(i32 %call2.i.i.i138, i32 0) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i.i126) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i125) #10
  br label %ov7670_write.exit.i142

ov7670_write.exit.i142:                           ; preds = %if.else.i.i139, %if.then.i.i133
  %retval.0.i.i140 = phi i32 [ %311, %if.else.i.i139 ], [ %call1.i.i.i132, %if.then.i.i133 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i140)
  %tobool.not.i141 = icmp eq i32 %retval.0.i.i140, 0
  br i1 %tobool.not.i141, label %if.end.i143, label %ov7670_write.exit.i142.ov7670_s_gain.exit_crit_edge

ov7670_write.exit.i142.ov7670_s_gain.exit_crit_edge: ; preds = %ov7670_write.exit.i142
  call void @__sanitizer_cov_trace_pc() #12
  br label %ov7670_s_gain.exit

if.end.i143:                                      ; preds = %ov7670_write.exit.i142
  %call1.i = call fastcc i32 @ov7670_read(ptr noundef %add.ptr.i, i8 noundef zeroext 19, ptr noundef nonnull %com8.i127) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i143.ov7670_s_gain.exit_crit_edge

if.end.i143.ov7670_s_gain.exit_crit_edge:         ; preds = %if.end.i143
  call void @__sanitizer_cov_trace_pc() #12
  br label %ov7670_s_gain.exit

if.end4.i:                                        ; preds = %if.end.i143
  %312 = ptrtoint ptr %com8.i127 to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %com8.i127, align 1
  %314 = and i8 %313, -5
  %315 = ptrtoint ptr %use_smbus.i.i129 to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %use_smbus.i.i129, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %316)
  %tobool.not.i18.i144 = icmp eq i8 %316, 0
  %317 = ptrtoint ptr %dev_priv.i.i7.i.i131 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %dev_priv.i.i7.i.i131, align 4
  br i1 %tobool.not.i18.i144, label %if.else.i29.i152, label %if.then.i22.i146

if.then.i22.i146:                                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i20.i145 = call i32 @i2c_smbus_write_byte_data(ptr noundef %318, i8 noundef zeroext 19, i8 noundef zeroext %314) #10
  br label %ov7670_s_gain.exit

if.else.i29.i152:                                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i15.i123) #10
  %319 = getelementptr inbounds i8, ptr %msg.i.i15.i123, i32 4
  %320 = ptrtoint ptr %319 to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 196607, ptr %319, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i16.i124) #10
  %321 = getelementptr inbounds [2 x i8], ptr %data.i.i16.i124, i32 0, i32 1
  %322 = ptrtoint ptr %data.i.i16.i124 to i32
  call void @__asan_store1_noabort(i32 %322)
  store i8 19, ptr %data.i.i16.i124, align 1
  %323 = ptrtoint ptr %321 to i32
  call void @__asan_store1_noabort(i32 %323)
  store i8 %314, ptr %321, align 1
  %addr.i.i23.i147 = getelementptr inbounds %struct.i2c_client, ptr %318, i32 0, i32 1
  %324 = ptrtoint ptr %addr.i.i23.i147 to i32
  call void @__asan_load2_noabort(i32 %324)
  %325 = load i16, ptr %addr.i.i23.i147, align 2
  %326 = ptrtoint ptr %msg.i.i15.i123 to i32
  call void @__asan_store2_noabort(i32 %326)
  store i16 %325, ptr %msg.i.i15.i123, align 4
  %flags.i.i24.i148 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i15.i123, i32 0, i32 1
  %327 = ptrtoint ptr %flags.i.i24.i148 to i32
  call void @__asan_store2_noabort(i32 %327)
  store i16 0, ptr %flags.i.i24.i148, align 2
  %buf.i.i25.i149 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i15.i123, i32 0, i32 3
  %328 = ptrtoint ptr %buf.i.i25.i149 to i32
  call void @__asan_store4_noabort(i32 %328)
  store ptr %data.i.i16.i124, ptr %buf.i.i25.i149, align 4
  %adapter.i.i26.i150 = getelementptr inbounds %struct.i2c_client, ptr %318, i32 0, i32 3
  %329 = ptrtoint ptr %adapter.i.i26.i150 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %adapter.i.i26.i150, align 8
  %call2.i.i27.i151 = call i32 @i2c_transfer(ptr noundef %330, ptr noundef nonnull %msg.i.i15.i123, i32 noundef 1) #10
  %331 = call i32 @llvm.smin.i32(i32 %call2.i.i27.i151, i32 0) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i16.i124) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i15.i123) #10
  br label %ov7670_s_gain.exit

ov7670_s_gain.exit:                               ; preds = %if.else.i29.i152, %if.then.i22.i146, %if.end.i143.ov7670_s_gain.exit_crit_edge, %ov7670_write.exit.i142.ov7670_s_gain.exit_crit_edge
  %retval.0.i153 = phi i32 [ %retval.0.i.i140, %ov7670_write.exit.i142.ov7670_s_gain.exit_crit_edge ], [ %call1.i, %if.end.i143.ov7670_s_gain.exit_crit_edge ], [ %331, %if.else.i29.i152 ], [ %call1.i.i20.i145, %if.then.i22.i146 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %com8.i127) #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %com8.i156) #10
  %332 = ptrtoint ptr %com8.i156 to i32
  call void @__asan_store1_noabort(i32 %332)
  store i8 -1, ptr %com8.i156, align 1, !annotation !125
  %call.i157 = call fastcc i32 @ov7670_read(ptr noundef %add.ptr.i, i8 noundef zeroext 19, ptr noundef nonnull %com8.i156) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157)
  %cmp.i = icmp eq i32 %call.i157, 0
  br i1 %cmp.i, label %if.then1.i, label %if.end.ov7670_s_autogain.exit_crit_edge

if.end.ov7670_s_autogain.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ov7670_s_autogain.exit

if.then1.i:                                       ; preds = %if.end
  %333 = ptrtoint ptr %com8.i156 to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %com8.i156, align 1
  %335 = or i8 %334, 4
  %use_smbus.i.i158 = getelementptr i8, ptr %1, i32 297
  %336 = ptrtoint ptr %use_smbus.i.i158 to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %use_smbus.i.i158, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %337)
  %tobool.not.i.i159 = icmp eq i8 %337, 0
  %dev_priv.i.i7.i.i160 = getelementptr i8, ptr %1, i32 -76
  %338 = ptrtoint ptr %dev_priv.i.i7.i.i160 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %dev_priv.i.i7.i.i160, align 4
  br i1 %tobool.not.i.i159, label %if.else.i.i168, label %if.then.i.i162

if.then.i.i162:                                   ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i.i161 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %339, i8 noundef zeroext 19, i8 noundef zeroext %335) #10
  br label %ov7670_s_autogain.exit

if.else.i.i168:                                   ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i154) #10
  %340 = getelementptr inbounds i8, ptr %msg.i.i.i154, i32 4
  %341 = ptrtoint ptr %340 to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 196607, ptr %340, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i.i155) #10
  %342 = getelementptr inbounds [2 x i8], ptr %data.i.i.i155, i32 0, i32 1
  %343 = ptrtoint ptr %data.i.i.i155 to i32
  call void @__asan_store1_noabort(i32 %343)
  store i8 19, ptr %data.i.i.i155, align 1
  %344 = ptrtoint ptr %342 to i32
  call void @__asan_store1_noabort(i32 %344)
  store i8 %335, ptr %342, align 1
  %addr.i.i.i163 = getelementptr inbounds %struct.i2c_client, ptr %339, i32 0, i32 1
  %345 = ptrtoint ptr %addr.i.i.i163 to i32
  call void @__asan_load2_noabort(i32 %345)
  %346 = load i16, ptr %addr.i.i.i163, align 2
  %347 = ptrtoint ptr %msg.i.i.i154 to i32
  call void @__asan_store2_noabort(i32 %347)
  store i16 %346, ptr %msg.i.i.i154, align 4
  %flags.i.i.i164 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i154, i32 0, i32 1
  %348 = ptrtoint ptr %flags.i.i.i164 to i32
  call void @__asan_store2_noabort(i32 %348)
  store i16 0, ptr %flags.i.i.i164, align 2
  %buf.i.i.i165 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i154, i32 0, i32 3
  %349 = ptrtoint ptr %buf.i.i.i165 to i32
  call void @__asan_store4_noabort(i32 %349)
  store ptr %data.i.i.i155, ptr %buf.i.i.i165, align 4
  %adapter.i.i.i166 = getelementptr inbounds %struct.i2c_client, ptr %339, i32 0, i32 3
  %350 = ptrtoint ptr %adapter.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %adapter.i.i.i166, align 8
  %call2.i.i.i167 = call i32 @i2c_transfer(ptr noundef %351, ptr noundef nonnull %msg.i.i.i154, i32 noundef 1) #10
  %352 = call i32 @llvm.smin.i32(i32 %call2.i.i.i167, i32 0) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i.i155) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i154) #10
  br label %ov7670_s_autogain.exit

ov7670_s_autogain.exit:                           ; preds = %if.else.i.i168, %if.then.i.i162, %if.end.ov7670_s_autogain.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i157, %if.end.ov7670_s_autogain.exit_crit_edge ], [ %352, %if.else.i.i168 ], [ %call1.i.i.i161, %if.then.i.i162 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %com8.i156) #10
  br label %cleanup

sw.bb22:                                          ; preds = %entry
  %val23 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %353 = ptrtoint ptr %val23 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %val23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %354)
  %cmp = icmp eq i32 %354, 1
  br i1 %cmp, label %if.then24, label %if.end27

if.then24:                                        ; preds = %sw.bb22
  %exposure = getelementptr i8, ptr %1, i32 196
  %355 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %exposure, align 4
  %val25 = getelementptr inbounds %struct.v4l2_ctrl, ptr %356, i32 0, i32 22
  %357 = ptrtoint ptr %val25 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %val25, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %com1.i) #10
  %359 = ptrtoint ptr %com1.i to i32
  call void @__asan_store1_noabort(i32 %359)
  store i8 -1, ptr %com1.i, align 1, !annotation !125
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %com8.i171) #10
  %360 = ptrtoint ptr %com8.i171 to i32
  call void @__asan_store1_noabort(i32 %360)
  store i8 -1, ptr %com8.i171, align 1, !annotation !125
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %aechh.i) #10
  %361 = ptrtoint ptr %aechh.i to i32
  call void @__asan_store1_noabort(i32 %361)
  store i8 -1, ptr %aechh.i, align 1, !annotation !125
  %call.i172 = call fastcc i32 @ov7670_read(ptr noundef %add.ptr.i, i8 noundef zeroext 4, ptr noundef nonnull %com1.i) #10
  %call1.i173 = call fastcc i32 @ov7670_read(ptr noundef %add.ptr.i, i8 noundef zeroext 19, ptr noundef nonnull %com8.i171) #10
  %add.i = add i32 %call1.i173, %call.i172
  %call2.i = call fastcc i32 @ov7670_read(ptr noundef %add.ptr.i, i8 noundef zeroext 7, ptr noundef nonnull %aechh.i) #10
  %add3.i = add i32 %add.i, %call2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add3.i)
  %tobool.not.i174 = icmp eq i32 %add3.i, 0
  br i1 %tobool.not.i174, label %if.end.i178, label %if.then24.ov7670_s_exp.exit_crit_edge

if.then24.ov7670_s_exp.exit_crit_edge:            ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %ov7670_s_exp.exit

if.end.i178:                                      ; preds = %if.then24
  %362 = ptrtoint ptr %com1.i to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %com1.i, align 1
  %364 = and i8 %363, -4
  %365 = trunc i32 %358 to i8
  %366 = and i8 %365, 3
  %conv5.i = or i8 %364, %366
  store i8 %conv5.i, ptr %com1.i, align 1
  %367 = lshr i32 %358, 2
  %conv7.i = trunc i32 %367 to i8
  %368 = ptrtoint ptr %aechh.i to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %aechh.i, align 1
  %370 = and i8 %369, -64
  %371 = lshr i32 %358, 10
  %372 = trunc i32 %371 to i8
  %373 = and i8 %372, 63
  %conv13.i = or i8 %370, %373
  store i8 %conv13.i, ptr %aechh.i, align 1
  %use_smbus.i.i175 = getelementptr i8, ptr %1, i32 297
  %374 = ptrtoint ptr %use_smbus.i.i175 to i32
  call void @__asan_load1_noabort(i32 %374)
  %375 = load i8, ptr %use_smbus.i.i175, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %375)
  %tobool.not.i.i176 = icmp eq i8 %375, 0
  %dev_priv.i.i7.i.i177 = getelementptr i8, ptr %1, i32 -76
  %376 = ptrtoint ptr %dev_priv.i.i7.i.i177 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %dev_priv.i.i7.i.i177, align 4
  br i1 %tobool.not.i.i176, label %if.else.i.i186, label %if.then.i.i180

if.then.i.i180:                                   ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i.i179 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %377, i8 noundef zeroext 4, i8 noundef zeroext %conv5.i) #10
  br label %ov7670_write.exit.i188

if.else.i.i186:                                   ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i169) #10
  %378 = getelementptr inbounds i8, ptr %msg.i.i.i169, i32 4
  %379 = ptrtoint ptr %378 to i32
  call void @__asan_store4_noabort(i32 %379)
  store i32 196607, ptr %378, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i.i170) #10
  %380 = getelementptr inbounds [2 x i8], ptr %data.i.i.i170, i32 0, i32 1
  %381 = ptrtoint ptr %data.i.i.i170 to i32
  call void @__asan_store1_noabort(i32 %381)
  store i8 4, ptr %data.i.i.i170, align 1
  %382 = ptrtoint ptr %380 to i32
  call void @__asan_store1_noabort(i32 %382)
  store i8 %conv5.i, ptr %380, align 1
  %addr.i.i.i181 = getelementptr inbounds %struct.i2c_client, ptr %377, i32 0, i32 1
  %383 = ptrtoint ptr %addr.i.i.i181 to i32
  call void @__asan_load2_noabort(i32 %383)
  %384 = load i16, ptr %addr.i.i.i181, align 2
  %385 = ptrtoint ptr %msg.i.i.i169 to i32
  call void @__asan_store2_noabort(i32 %385)
  store i16 %384, ptr %msg.i.i.i169, align 4
  %flags.i.i.i182 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i169, i32 0, i32 1
  %386 = ptrtoint ptr %flags.i.i.i182 to i32
  call void @__asan_store2_noabort(i32 %386)
  store i16 0, ptr %flags.i.i.i182, align 2
  %buf.i.i.i183 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i169, i32 0, i32 3
  %387 = ptrtoint ptr %buf.i.i.i183 to i32
  call void @__asan_store4_noabort(i32 %387)
  store ptr %data.i.i.i170, ptr %buf.i.i.i183, align 4
  %adapter.i.i.i184 = getelementptr inbounds %struct.i2c_client, ptr %377, i32 0, i32 3
  %388 = ptrtoint ptr %adapter.i.i.i184 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %adapter.i.i.i184, align 8
  %call2.i.i.i185 = call i32 @i2c_transfer(ptr noundef %389, ptr noundef nonnull %msg.i.i.i169, i32 noundef 1) #10
  %390 = call i32 @llvm.smin.i32(i32 %call2.i.i.i185, i32 0) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i.i170) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i169) #10
  br label %ov7670_write.exit.i188

ov7670_write.exit.i188:                           ; preds = %if.else.i.i186, %if.then.i.i180
  %retval.0.i.i187 = phi i32 [ %390, %if.else.i.i186 ], [ %call1.i.i.i179, %if.then.i.i180 ]
  %391 = ptrtoint ptr %use_smbus.i.i175 to i32
  call void @__asan_load1_noabort(i32 %391)
  %392 = load i8, ptr %use_smbus.i.i175, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %392)
  %tobool.not.i44.i = icmp eq i8 %392, 0
  %393 = ptrtoint ptr %dev_priv.i.i7.i.i177 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %dev_priv.i.i7.i.i177, align 4
  br i1 %tobool.not.i44.i, label %if.else.i55.i, label %if.then.i48.i

if.then.i48.i:                                    ; preds = %ov7670_write.exit.i188
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i46.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %394, i8 noundef zeroext 16, i8 noundef zeroext %conv7.i) #10
  br label %ov7670_write.exit57.i

if.else.i55.i:                                    ; preds = %ov7670_write.exit.i188
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i41.i) #10
  %395 = getelementptr inbounds i8, ptr %msg.i.i41.i, i32 4
  %396 = ptrtoint ptr %395 to i32
  call void @__asan_store4_noabort(i32 %396)
  store i32 196607, ptr %395, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i42.i) #10
  %397 = getelementptr inbounds [2 x i8], ptr %data.i.i42.i, i32 0, i32 1
  %398 = ptrtoint ptr %data.i.i42.i to i32
  call void @__asan_store1_noabort(i32 %398)
  store i8 16, ptr %data.i.i42.i, align 1
  %399 = ptrtoint ptr %397 to i32
  call void @__asan_store1_noabort(i32 %399)
  store i8 %conv7.i, ptr %397, align 1
  %addr.i.i49.i = getelementptr inbounds %struct.i2c_client, ptr %394, i32 0, i32 1
  %400 = ptrtoint ptr %addr.i.i49.i to i32
  call void @__asan_load2_noabort(i32 %400)
  %401 = load i16, ptr %addr.i.i49.i, align 2
  %402 = ptrtoint ptr %msg.i.i41.i to i32
  call void @__asan_store2_noabort(i32 %402)
  store i16 %401, ptr %msg.i.i41.i, align 4
  %flags.i.i50.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i41.i, i32 0, i32 1
  %403 = ptrtoint ptr %flags.i.i50.i to i32
  call void @__asan_store2_noabort(i32 %403)
  store i16 0, ptr %flags.i.i50.i, align 2
  %buf.i.i51.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i41.i, i32 0, i32 3
  %404 = ptrtoint ptr %buf.i.i51.i to i32
  call void @__asan_store4_noabort(i32 %404)
  store ptr %data.i.i42.i, ptr %buf.i.i51.i, align 4
  %adapter.i.i52.i = getelementptr inbounds %struct.i2c_client, ptr %394, i32 0, i32 3
  %405 = ptrtoint ptr %adapter.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %adapter.i.i52.i, align 8
  %call2.i.i53.i = call i32 @i2c_transfer(ptr noundef %406, ptr noundef nonnull %msg.i.i41.i, i32 noundef 1) #10
  %407 = call i32 @llvm.smin.i32(i32 %call2.i.i53.i, i32 0) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i42.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i41.i) #10
  br label %ov7670_write.exit57.i

ov7670_write.exit57.i:                            ; preds = %if.else.i55.i, %if.then.i48.i
  %retval.0.i56.i = phi i32 [ %407, %if.else.i55.i ], [ %call1.i.i46.i, %if.then.i48.i ]
  %add16.i = add i32 %retval.0.i56.i, %retval.0.i.i187
  %408 = ptrtoint ptr %use_smbus.i.i175 to i32
  call void @__asan_load1_noabort(i32 %408)
  %409 = load i8, ptr %use_smbus.i.i175, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %409)
  %tobool.not.i61.i = icmp eq i8 %409, 0
  %410 = ptrtoint ptr %dev_priv.i.i7.i.i177 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %dev_priv.i.i7.i.i177, align 4
  br i1 %tobool.not.i61.i, label %if.else.i72.i, label %if.then.i65.i

if.then.i65.i:                                    ; preds = %ov7670_write.exit57.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i63.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %411, i8 noundef zeroext 7, i8 noundef zeroext %conv13.i) #10
  br label %ov7670_write.exit74.i

if.else.i72.i:                                    ; preds = %ov7670_write.exit57.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i58.i) #10
  %412 = getelementptr inbounds i8, ptr %msg.i.i58.i, i32 4
  %413 = ptrtoint ptr %412 to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 196607, ptr %412, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i59.i) #10
  %414 = getelementptr inbounds [2 x i8], ptr %data.i.i59.i, i32 0, i32 1
  %415 = ptrtoint ptr %data.i.i59.i to i32
  call void @__asan_store1_noabort(i32 %415)
  store i8 7, ptr %data.i.i59.i, align 1
  %416 = ptrtoint ptr %414 to i32
  call void @__asan_store1_noabort(i32 %416)
  store i8 %conv13.i, ptr %414, align 1
  %addr.i.i66.i = getelementptr inbounds %struct.i2c_client, ptr %411, i32 0, i32 1
  %417 = ptrtoint ptr %addr.i.i66.i to i32
  call void @__asan_load2_noabort(i32 %417)
  %418 = load i16, ptr %addr.i.i66.i, align 2
  %419 = ptrtoint ptr %msg.i.i58.i to i32
  call void @__asan_store2_noabort(i32 %419)
  store i16 %418, ptr %msg.i.i58.i, align 4
  %flags.i.i67.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i58.i, i32 0, i32 1
  %420 = ptrtoint ptr %flags.i.i67.i to i32
  call void @__asan_store2_noabort(i32 %420)
  store i16 0, ptr %flags.i.i67.i, align 2
  %buf.i.i68.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i58.i, i32 0, i32 3
  %421 = ptrtoint ptr %buf.i.i68.i to i32
  call void @__asan_store4_noabort(i32 %421)
  store ptr %data.i.i59.i, ptr %buf.i.i68.i, align 4
  %adapter.i.i69.i = getelementptr inbounds %struct.i2c_client, ptr %411, i32 0, i32 3
  %422 = ptrtoint ptr %adapter.i.i69.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %adapter.i.i69.i, align 8
  %call2.i.i70.i = call i32 @i2c_transfer(ptr noundef %423, ptr noundef nonnull %msg.i.i58.i, i32 noundef 1) #10
  %424 = call i32 @llvm.smin.i32(i32 %call2.i.i70.i, i32 0) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i59.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i58.i) #10
  br label %ov7670_write.exit74.i

ov7670_write.exit74.i:                            ; preds = %if.else.i72.i, %if.then.i65.i
  %retval.0.i73.i = phi i32 [ %424, %if.else.i72.i ], [ %call1.i.i63.i, %if.then.i65.i ]
  %add18.i = add i32 %add16.i, %retval.0.i73.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add18.i)
  %cmp.i189 = icmp eq i32 %add18.i, 0
  br i1 %cmp.i189, label %if.then20.i, label %ov7670_write.exit74.i.ov7670_s_exp.exit_crit_edge

ov7670_write.exit74.i.ov7670_s_exp.exit_crit_edge: ; preds = %ov7670_write.exit74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ov7670_s_exp.exit

if.then20.i:                                      ; preds = %ov7670_write.exit74.i
  %425 = ptrtoint ptr %com8.i171 to i32
  call void @__asan_load1_noabort(i32 %425)
  %426 = load i8, ptr %com8.i171, align 1
  %427 = and i8 %426, -2
  %428 = ptrtoint ptr %use_smbus.i.i175 to i32
  call void @__asan_load1_noabort(i32 %428)
  %429 = load i8, ptr %use_smbus.i.i175, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %429)
  %tobool.not.i78.i = icmp eq i8 %429, 0
  %430 = ptrtoint ptr %dev_priv.i.i7.i.i177 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %dev_priv.i.i7.i.i177, align 4
  br i1 %tobool.not.i78.i, label %if.else.i89.i, label %if.then.i82.i

if.then.i82.i:                                    ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i80.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %431, i8 noundef zeroext 19, i8 noundef zeroext %427) #10
  br label %ov7670_s_exp.exit

if.else.i89.i:                                    ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i75.i) #10
  %432 = getelementptr inbounds i8, ptr %msg.i.i75.i, i32 4
  %433 = ptrtoint ptr %432 to i32
  call void @__asan_store4_noabort(i32 %433)
  store i32 196607, ptr %432, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i76.i) #10
  %434 = getelementptr inbounds [2 x i8], ptr %data.i.i76.i, i32 0, i32 1
  %435 = ptrtoint ptr %data.i.i76.i to i32
  call void @__asan_store1_noabort(i32 %435)
  store i8 19, ptr %data.i.i76.i, align 1
  %436 = ptrtoint ptr %434 to i32
  call void @__asan_store1_noabort(i32 %436)
  store i8 %427, ptr %434, align 1
  %addr.i.i83.i = getelementptr inbounds %struct.i2c_client, ptr %431, i32 0, i32 1
  %437 = ptrtoint ptr %addr.i.i83.i to i32
  call void @__asan_load2_noabort(i32 %437)
  %438 = load i16, ptr %addr.i.i83.i, align 2
  %439 = ptrtoint ptr %msg.i.i75.i to i32
  call void @__asan_store2_noabort(i32 %439)
  store i16 %438, ptr %msg.i.i75.i, align 4
  %flags.i.i84.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i75.i, i32 0, i32 1
  %440 = ptrtoint ptr %flags.i.i84.i to i32
  call void @__asan_store2_noabort(i32 %440)
  store i16 0, ptr %flags.i.i84.i, align 2
  %buf.i.i85.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i75.i, i32 0, i32 3
  %441 = ptrtoint ptr %buf.i.i85.i to i32
  call void @__asan_store4_noabort(i32 %441)
  store ptr %data.i.i76.i, ptr %buf.i.i85.i, align 4
  %adapter.i.i86.i = getelementptr inbounds %struct.i2c_client, ptr %431, i32 0, i32 3
  %442 = ptrtoint ptr %adapter.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %adapter.i.i86.i, align 8
  %call2.i.i87.i = call i32 @i2c_transfer(ptr noundef %443, ptr noundef nonnull %msg.i.i75.i, i32 noundef 1) #10
  %444 = call i32 @llvm.smin.i32(i32 %call2.i.i87.i, i32 0) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i76.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i75.i) #10
  br label %ov7670_s_exp.exit

ov7670_s_exp.exit:                                ; preds = %if.else.i89.i, %if.then.i82.i, %ov7670_write.exit74.i.ov7670_s_exp.exit_crit_edge, %if.then24.ov7670_s_exp.exit_crit_edge
  %retval.0.i190 = phi i32 [ %add3.i, %if.then24.ov7670_s_exp.exit_crit_edge ], [ %add18.i, %ov7670_write.exit74.i.ov7670_s_exp.exit_crit_edge ], [ %444, %if.else.i89.i ], [ %call1.i.i80.i, %if.then.i82.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %aechh.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %com8.i171) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %com1.i) #10
  br label %cleanup

if.end27:                                         ; preds = %sw.bb22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %com8.i193) #10
  %445 = ptrtoint ptr %com8.i193 to i32
  call void @__asan_store1_noabort(i32 %445)
  store i8 -1, ptr %com8.i193, align 1, !annotation !125
  %call.i194 = call fastcc i32 @ov7670_read(ptr noundef %add.ptr.i, i8 noundef zeroext 19, ptr noundef nonnull %com8.i193) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i194)
  %cmp.i195 = icmp eq i32 %call.i194, 0
  br i1 %cmp.i195, label %if.then.i, label %if.end27.ov7670_s_autoexp.exit_crit_edge

if.end27.ov7670_s_autoexp.exit_crit_edge:         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %ov7670_s_autoexp.exit

if.then.i:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %354)
  %cmp1.i = icmp eq i32 %354, 0
  %446 = ptrtoint ptr %com8.i193 to i32
  call void @__asan_load1_noabort(i32 %446)
  %447 = load i8, ptr %com8.i193, align 1
  %448 = and i8 %447, -2
  %masksel.i196 = zext i1 %cmp1.i to i8
  %storemerge.i197 = or i8 %448, %masksel.i196
  %use_smbus.i.i198 = getelementptr i8, ptr %1, i32 297
  %449 = ptrtoint ptr %use_smbus.i.i198 to i32
  call void @__asan_load1_noabort(i32 %449)
  %450 = load i8, ptr %use_smbus.i.i198, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %450)
  %tobool.not.i.i199 = icmp eq i8 %450, 0
  %dev_priv.i.i7.i.i200 = getelementptr i8, ptr %1, i32 -76
  %451 = ptrtoint ptr %dev_priv.i.i7.i.i200 to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %dev_priv.i.i7.i.i200, align 4
  br i1 %tobool.not.i.i199, label %if.else.i.i208, label %if.then.i.i202

if.then.i.i202:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i.i201 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %452, i8 noundef zeroext 19, i8 noundef zeroext %storemerge.i197) #10
  br label %ov7670_s_autoexp.exit

if.else.i.i208:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i191) #10
  %453 = getelementptr inbounds i8, ptr %msg.i.i.i191, i32 4
  %454 = ptrtoint ptr %453 to i32
  call void @__asan_store4_noabort(i32 %454)
  store i32 196607, ptr %453, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i.i192) #10
  %455 = getelementptr inbounds [2 x i8], ptr %data.i.i.i192, i32 0, i32 1
  %456 = ptrtoint ptr %data.i.i.i192 to i32
  call void @__asan_store1_noabort(i32 %456)
  store i8 19, ptr %data.i.i.i192, align 1
  %457 = ptrtoint ptr %455 to i32
  call void @__asan_store1_noabort(i32 %457)
  store i8 %storemerge.i197, ptr %455, align 1
  %addr.i.i.i203 = getelementptr inbounds %struct.i2c_client, ptr %452, i32 0, i32 1
  %458 = ptrtoint ptr %addr.i.i.i203 to i32
  call void @__asan_load2_noabort(i32 %458)
  %459 = load i16, ptr %addr.i.i.i203, align 2
  %460 = ptrtoint ptr %msg.i.i.i191 to i32
  call void @__asan_store2_noabort(i32 %460)
  store i16 %459, ptr %msg.i.i.i191, align 4
  %flags.i.i.i204 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i191, i32 0, i32 1
  %461 = ptrtoint ptr %flags.i.i.i204 to i32
  call void @__asan_store2_noabort(i32 %461)
  store i16 0, ptr %flags.i.i.i204, align 2
  %buf.i.i.i205 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i191, i32 0, i32 3
  %462 = ptrtoint ptr %buf.i.i.i205 to i32
  call void @__asan_store4_noabort(i32 %462)
  store ptr %data.i.i.i192, ptr %buf.i.i.i205, align 4
  %adapter.i.i.i206 = getelementptr inbounds %struct.i2c_client, ptr %452, i32 0, i32 3
  %463 = ptrtoint ptr %adapter.i.i.i206 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %adapter.i.i.i206, align 8
  %call2.i.i.i207 = call i32 @i2c_transfer(ptr noundef %464, ptr noundef nonnull %msg.i.i.i191, i32 noundef 1) #10
  %465 = call i32 @llvm.smin.i32(i32 %call2.i.i.i207, i32 0) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i.i192) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i191) #10
  br label %ov7670_s_autoexp.exit

ov7670_s_autoexp.exit:                            ; preds = %if.else.i.i208, %if.then.i.i202, %if.end27.ov7670_s_autoexp.exit_crit_edge
  %ret.0.i209 = phi i32 [ %call.i194, %if.end27.ov7670_s_autoexp.exit_crit_edge ], [ %465, %if.else.i.i208 ], [ %call1.i.i.i201, %if.then.i.i202 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %com8.i193) #10
  br label %cleanup

sw.bb30:                                          ; preds = %entry
  %val31 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %466 = ptrtoint ptr %val31 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %val31, align 4
  %value.tr.i = trunc i32 %467 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %orig.i.i) #10
  %468 = ptrtoint ptr %orig.i.i to i32
  call void @__asan_store1_noabort(i32 %468)
  store i8 -1, ptr %orig.i.i, align 1, !annotation !125
  %call.i.i212 = call fastcc i32 @ov7670_read(ptr noundef %add.ptr.i, i8 noundef zeroext 112, ptr noundef nonnull %orig.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i212)
  %tobool.not.i.i213 = icmp eq i32 %call.i.i212, 0
  br i1 %tobool.not.i.i213, label %if.end.i.i, label %ov7670_update_bits.exit.thread.i

ov7670_update_bits.exit.thread.i:                 ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %orig.i.i) #10
  br label %cleanup

if.end.i.i:                                       ; preds = %sw.bb30
  %conv.i214 = shl i8 %value.tr.i, 7
  %469 = ptrtoint ptr %orig.i.i to i32
  call void @__asan_load1_noabort(i32 %469)
  %470 = load i8, ptr %orig.i.i, align 1
  %471 = and i8 %470, 127
  %or1.i.i = or i8 %471, %conv.i214
  %use_smbus.i.i215 = getelementptr i8, ptr %1, i32 297
  %472 = ptrtoint ptr %use_smbus.i.i215 to i32
  call void @__asan_load1_noabort(i32 %472)
  %473 = load i8, ptr %use_smbus.i.i215, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %473)
  %tobool.not.i19.i = icmp eq i8 %473, 0
  %dev_priv.i.i7.i.i216 = getelementptr i8, ptr %1, i32 -76
  %474 = ptrtoint ptr %dev_priv.i.i7.i.i216 to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %dev_priv.i.i7.i.i216, align 4
  br i1 %tobool.not.i19.i, label %if.else.i.i224, label %if.then.i.i218

if.then.i.i218:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i.i217 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %475, i8 noundef zeroext 112, i8 noundef zeroext %or1.i.i) #10
  br label %ov7670_update_bits.exit.i

if.else.i.i224:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i210) #10
  %476 = getelementptr inbounds i8, ptr %msg.i.i.i210, i32 4
  %477 = ptrtoint ptr %476 to i32
  call void @__asan_store4_noabort(i32 %477)
  store i32 196607, ptr %476, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i.i211) #10
  %478 = getelementptr inbounds [2 x i8], ptr %data.i.i.i211, i32 0, i32 1
  %479 = ptrtoint ptr %data.i.i.i211 to i32
  call void @__asan_store1_noabort(i32 %479)
  store i8 112, ptr %data.i.i.i211, align 1
  %480 = ptrtoint ptr %478 to i32
  call void @__asan_store1_noabort(i32 %480)
  store i8 %or1.i.i, ptr %478, align 1
  %addr.i.i.i219 = getelementptr inbounds %struct.i2c_client, ptr %475, i32 0, i32 1
  %481 = ptrtoint ptr %addr.i.i.i219 to i32
  call void @__asan_load2_noabort(i32 %481)
  %482 = load i16, ptr %addr.i.i.i219, align 2
  %483 = ptrtoint ptr %msg.i.i.i210 to i32
  call void @__asan_store2_noabort(i32 %483)
  store i16 %482, ptr %msg.i.i.i210, align 4
  %flags.i.i.i220 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i210, i32 0, i32 1
  %484 = ptrtoint ptr %flags.i.i.i220 to i32
  call void @__asan_store2_noabort(i32 %484)
  store i16 0, ptr %flags.i.i.i220, align 2
  %buf.i.i.i221 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i210, i32 0, i32 3
  %485 = ptrtoint ptr %buf.i.i.i221 to i32
  call void @__asan_store4_noabort(i32 %485)
  store ptr %data.i.i.i211, ptr %buf.i.i.i221, align 4
  %adapter.i.i.i222 = getelementptr inbounds %struct.i2c_client, ptr %475, i32 0, i32 3
  %486 = ptrtoint ptr %adapter.i.i.i222 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %adapter.i.i.i222, align 8
  %call2.i.i.i223 = call i32 @i2c_transfer(ptr noundef %487, ptr noundef nonnull %msg.i.i.i210, i32 noundef 1) #10
  %488 = call i32 @llvm.smin.i32(i32 %call2.i.i.i223, i32 0) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i.i211) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i210) #10
  br label %ov7670_update_bits.exit.i

ov7670_update_bits.exit.i:                        ; preds = %if.else.i.i224, %if.then.i.i218
  %retval.0.i.i225 = phi i32 [ %488, %if.else.i.i224 ], [ %call1.i.i.i217, %if.then.i.i218 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %orig.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i225)
  %tobool1.not.i226 = icmp eq i32 %retval.0.i.i225, 0
  br i1 %tobool1.not.i226, label %if.end.i227, label %ov7670_update_bits.exit.i.cleanup_crit_edge

ov7670_update_bits.exit.i.cleanup_crit_edge:      ; preds = %ov7670_update_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i227:                                      ; preds = %ov7670_update_bits.exit.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %orig.i11.i) #10
  %489 = ptrtoint ptr %orig.i11.i to i32
  call void @__asan_store1_noabort(i32 %489)
  store i8 -1, ptr %orig.i11.i, align 1, !annotation !125
  %call.i12.i = call fastcc i32 @ov7670_read(ptr noundef %add.ptr.i, i8 noundef zeroext 113, ptr noundef nonnull %orig.i11.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i)
  %tobool.not.i13.i = icmp eq i32 %call.i12.i, 0
  br i1 %tobool.not.i13.i, label %if.end.i16.i, label %if.end.i227.ov7670_update_bits.exit18.i_crit_edge

if.end.i227.ov7670_update_bits.exit18.i_crit_edge: ; preds = %if.end.i227
  call void @__sanitizer_cov_trace_pc() #12
  br label %ov7670_update_bits.exit18.i

if.end.i16.i:                                     ; preds = %if.end.i227
  %490 = shl i8 %value.tr.i, 6
  %conv5.i228 = and i8 %490, -128
  %491 = ptrtoint ptr %orig.i11.i to i32
  call void @__asan_load1_noabort(i32 %491)
  %492 = load i8, ptr %orig.i11.i, align 1
  %493 = and i8 %492, 127
  %or1.i14.i = or i8 %493, %conv5.i228
  %494 = ptrtoint ptr %use_smbus.i.i215 to i32
  call void @__asan_load1_noabort(i32 %494)
  %495 = load i8, ptr %use_smbus.i.i215, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %495)
  %tobool.not.i24.i = icmp eq i8 %495, 0
  %496 = ptrtoint ptr %dev_priv.i.i7.i.i216 to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %dev_priv.i.i7.i.i216, align 4
  br i1 %tobool.not.i24.i, label %if.else.i35.i, label %if.then.i28.i

if.then.i28.i:                                    ; preds = %if.end.i16.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i26.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %497, i8 noundef zeroext 113, i8 noundef zeroext %or1.i14.i) #10
  br label %ov7670_update_bits.exit18.i

if.else.i35.i:                                    ; preds = %if.end.i16.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i21.i) #10
  %498 = getelementptr inbounds i8, ptr %msg.i.i21.i, i32 4
  %499 = ptrtoint ptr %498 to i32
  call void @__asan_store4_noabort(i32 %499)
  store i32 196607, ptr %498, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i22.i) #10
  %500 = getelementptr inbounds [2 x i8], ptr %data.i.i22.i, i32 0, i32 1
  %501 = ptrtoint ptr %data.i.i22.i to i32
  call void @__asan_store1_noabort(i32 %501)
  store i8 113, ptr %data.i.i22.i, align 1
  %502 = ptrtoint ptr %500 to i32
  call void @__asan_store1_noabort(i32 %502)
  store i8 %or1.i14.i, ptr %500, align 1
  %addr.i.i29.i = getelementptr inbounds %struct.i2c_client, ptr %497, i32 0, i32 1
  %503 = ptrtoint ptr %addr.i.i29.i to i32
  call void @__asan_load2_noabort(i32 %503)
  %504 = load i16, ptr %addr.i.i29.i, align 2
  %505 = ptrtoint ptr %msg.i.i21.i to i32
  call void @__asan_store2_noabort(i32 %505)
  store i16 %504, ptr %msg.i.i21.i, align 4
  %flags.i.i30.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i21.i, i32 0, i32 1
  %506 = ptrtoint ptr %flags.i.i30.i to i32
  call void @__asan_store2_noabort(i32 %506)
  store i16 0, ptr %flags.i.i30.i, align 2
  %buf.i.i31.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i21.i, i32 0, i32 3
  %507 = ptrtoint ptr %buf.i.i31.i to i32
  call void @__asan_store4_noabort(i32 %507)
  store ptr %data.i.i22.i, ptr %buf.i.i31.i, align 4
  %adapter.i.i32.i = getelementptr inbounds %struct.i2c_client, ptr %497, i32 0, i32 3
  %508 = ptrtoint ptr %adapter.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %adapter.i.i32.i, align 8
  %call2.i.i33.i = call i32 @i2c_transfer(ptr noundef %509, ptr noundef nonnull %msg.i.i21.i, i32 noundef 1) #10
  %510 = call i32 @llvm.smin.i32(i32 %call2.i.i33.i, i32 0) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i22.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i21.i) #10
  br label %ov7670_update_bits.exit18.i

ov7670_update_bits.exit18.i:                      ; preds = %if.else.i35.i, %if.then.i28.i, %if.end.i227.ov7670_update_bits.exit18.i_crit_edge
  %retval.0.i17.i = phi i32 [ %call.i12.i, %if.end.i227.ov7670_update_bits.exit18.i_crit_edge ], [ %510, %if.else.i35.i ], [ %call1.i.i26.i, %if.then.i28.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %orig.i11.i) #10
  br label %cleanup

cleanup:                                          ; preds = %ov7670_update_bits.exit18.i, %ov7670_update_bits.exit.i.cleanup_crit_edge, %ov7670_update_bits.exit.thread.i, %ov7670_s_autoexp.exit, %ov7670_s_exp.exit, %ov7670_s_autogain.exit, %ov7670_s_gain.exit, %ov7670_s_hflip.exit, %ov7670_s_vflip.exit, %ov7670_s_sat_hue.exit, %if.else.i.i70, %if.then.i.i64, %ov7670_s_brightness.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i190, %ov7670_s_exp.exit ], [ %ret.0.i209, %ov7670_s_autoexp.exit ], [ %ret.0.i, %ov7670_s_autogain.exit ], [ %retval.0.i153, %ov7670_s_gain.exit ], [ %retval.0.i122, %ov7670_s_hflip.exit ], [ %retval.0.i, %ov7670_s_vflip.exit ], [ %retval.2.i.i, %ov7670_s_sat_hue.exit ], [ %retval.0.i22.i, %ov7670_s_brightness.exit ], [ -22, %entry.cleanup_crit_edge ], [ %63, %if.else.i.i70 ], [ %call1.i.i.i63, %if.then.i.i64 ], [ %retval.0.i17.i, %ov7670_update_bits.exit18.i ], [ %retval.0.i.i225, %ov7670_update_bits.exit.i.cleanup_crit_edge ], [ %call.i.i212, %ov7670_update_bits.exit.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !18, !20, !22, !24, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !39, !41, !43, !45, !46, !47, !48, !50, !52, !54, !56, !58, !60, !62, !63, !64, !65, !66, !67, !69, !71, !72, !73, !74, !75, !77, !79, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @__UNIQUE_ID_author292, !1, !"__UNIQUE_ID_author292", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/ov7670.c", i32 28, i32 1}
!2 = !{ptr @__UNIQUE_ID_description293, !3, !"__UNIQUE_ID_description293", i1 false, i1 false}
!3 = !{!"../drivers/media/i2c/ov7670.c", i32 29, i32 1}
!4 = !{ptr @__UNIQUE_ID_file294, !5, !"__UNIQUE_ID_file294", i1 false, i1 false}
!5 = !{!"../drivers/media/i2c/ov7670.c", i32 30, i32 1}
!6 = !{ptr @__UNIQUE_ID_license295, !5, !"__UNIQUE_ID_license295", i1 false, i1 false}
!7 = !{ptr @__param_debug, !8, !"__param_debug", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/ov7670.c", i32 33, i32 1}
!9 = !{ptr @__UNIQUE_ID_debugtype296, !8, !"__UNIQUE_ID_debugtype296", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_debug297, !11, !"__UNIQUE_ID_debug297", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/ov7670.c", i32 34, i32 1}
!12 = !{ptr @__initcall__kmod_ov7670__298_2049_ov7670_driver_init6, !13, !"__initcall__kmod_ov7670__298_2049_ov7670_driver_init6", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/ov7670.c", i32 2049, i32 1}
!14 = !{ptr @__exitcall_ov7670_driver_exit, !13, !"__exitcall_ov7670_driver_exit", i1 false, i1 false}
!15 = !{ptr @debug, !16, !"debug", i1 false, i1 false}
!16 = !{!"../drivers/media/i2c/ov7670.c", i32 32, i32 13}
!17 = !{ptr @__param_str_debug, !8, !"__param_str_debug", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/ov7670.c", i32 2041, i32 11}
!20 = !{ptr @ov7670_driver, !21, !"ov7670_driver", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/ov7670.c", i32 2039, i32 26}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/ov7670.c", i32 1898, i32 41}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/i2c/ov7670.c", i32 1924, i32 3}
!26 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ov7670_probe._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @ov7670_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/ov7670.c", i32 1929, i32 2}
!32 = !{ptr @ov7670_probe._entry.5, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @ov7670_probe._entry_ptr.7, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @ov7670_probe._key, !35, !"_key", i1 false, i1 false}
!35 = !{!"../drivers/media/i2c/ov7670.c", i32 1945, i32 2}
!36 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ov7670_ops, !38, !"ov7670_ops", i1 false, i1 false}
!38 = !{!"../drivers/media/i2c/ov7670.c", i32 1764, i32 37}
!39 = !{ptr @ov7670_core_ops, !40, !"ov7670_core_ops", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/ov7670.c", i32 1738, i32 42}
!41 = !{ptr @ov7670_default_regs, !42, !"ov7670_default_regs", i1 false, i1 false}
!42 = !{!"../drivers/media/i2c/ov7670.c", i32 283, i32 27}
!43 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/i2c/ov7670.c", i32 524, i32 3}
!45 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @ov7670_read_i2c._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @ov7670_read_i2c._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @ov7670_video_ops, !49, !"ov7670_video_ops", i1 false, i1 false}
!49 = !{!"../drivers/media/i2c/ov7670.c", i32 1751, i32 43}
!50 = !{ptr @ov7670_pad_ops, !51, !"ov7670_pad_ops", i1 false, i1 false}
!51 = !{!"../drivers/media/i2c/ov7670.c", i32 1756, i32 41}
!52 = !{ptr @ov7670_frame_rates, !53, !"ov7670_frame_rates", i1 false, i1 false}
!53 = !{!"../drivers/media/i2c/ov7670.c", i32 1203, i32 12}
!54 = !{ptr @.str.11, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!56 = !{ptr @ov7670_subdev_internal_ops, !57, !"ov7670_subdev_internal_ops", i1 false, i1 false}
!57 = !{!"../drivers/media/i2c/ov7670.c", i32 1771, i32 46}
!58 = !{ptr @.str.12, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/i2c/ov7670.c", i32 1830, i32 38}
!60 = !{ptr @.str.13, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/i2c/ov7670.c", i32 1843, i32 3}
!62 = !{ptr @.str.14, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.15, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.16, !61, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @ov7670_parse_dt._entry, !61, !"_entry", i1 false, i1 false}
!66 = !{ptr @ov7670_parse_dt._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.17, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/i2c/ov7670.c", i32 1795, i32 58}
!69 = !{ptr @.str.18, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/i2c/ov7670.c", i32 1798, i32 3}
!71 = !{ptr @.str.19, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.20, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @ov7670_init_gpio._entry, !70, !"_entry", i1 false, i1 false}
!74 = !{ptr @ov7670_init_gpio._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.21, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/i2c/ov7670.c", i32 1802, i32 60}
!77 = !{ptr @ov7670_init_gpio._entry.22, !78, !"_entry", i1 false, i1 false}
!78 = !{!"../drivers/media/i2c/ov7670.c", i32 1805, i32 3}
!79 = !{ptr @ov7670_init_gpio._entry_ptr.23, !78, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @ov7670_devdata, !81, !"ov7670_devdata", i1 false, i1 false}
!81 = !{!"../drivers/media/i2c/ov7670.c", i32 1778, i32 36}
!82 = !{ptr @ov7670_win_sizes, !83, !"ov7670_win_sizes", i1 false, i1 false}
!83 = !{!"../drivers/media/i2c/ov7670.c", i32 730, i32 31}
!84 = !{ptr @ov7670_qcif_regs, !85, !"ov7670_qcif_regs", i1 false, i1 false}
!85 = !{!"../drivers/media/i2c/ov7670.c", i32 711, i32 27}
!86 = !{ptr @ov7675_win_sizes, !87, !"ov7675_win_sizes", i1 false, i1 false}
!87 = !{!"../drivers/media/i2c/ov7670.c", i32 777, i32 31}
!88 = !{ptr @ov7670_formats, !89, !"ov7670_formats", i1 false, i1 false}
!89 = !{!"../drivers/media/i2c/ov7670.c", i32 672, i32 3}
!90 = !{ptr @ov7670_fmt_yuv422, !91, !"ov7670_fmt_yuv422", i1 false, i1 false}
!91 = !{!"../drivers/media/i2c/ov7670.c", i32 412, i32 27}
!92 = !{ptr @ov7670_fmt_rgb444, !93, !"ov7670_fmt_rgb444", i1 false, i1 false}
!93 = !{!"../drivers/media/i2c/ov7670.c", i32 444, i32 27}
!94 = !{ptr @ov7670_fmt_rgb565, !95, !"ov7670_fmt_rgb565", i1 false, i1 false}
!95 = !{!"../drivers/media/i2c/ov7670.c", i32 428, i32 27}
!96 = !{ptr @ov7670_fmt_raw, !97, !"ov7670_fmt_raw", i1 false, i1 false}
!97 = !{!"../drivers/media/i2c/ov7670.c", i32 460, i32 27}
!98 = !{ptr @ov7670_ctrl_ops, !99, !"ov7670_ctrl_ops", i1 false, i1 false}
!99 = !{!"../drivers/media/i2c/ov7670.c", i32 1631, i32 35}
!100 = !{ptr @ov7670_sin_table, !101, !"ov7670_sin_table", i1 false, i1 false}
!101 = !{!"../drivers/media/i2c/ov7670.c", i32 1328, i32 18}
!102 = !{ptr @.str.24, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/i2c/ov7670.c", i32 1561, i32 2}
!104 = !{ptr @.str.25, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/i2c/ov7670.c", i32 1562, i32 2}
!106 = !{ptr @.str.26, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/i2c/ov7670.c", i32 1563, i32 2}
!108 = !{ptr @.str.27, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/i2c/ov7670.c", i32 1564, i32 2}
!110 = !{ptr @ov7670_test_pattern_menu, !111, !"ov7670_test_pattern_menu", i1 false, i1 false}
!111 = !{!"../drivers/media/i2c/ov7670.c", i32 1560, i32 27}
!112 = !{ptr @ov7670_of_match, !113, !"ov7670_of_match", i1 false, i1 false}
!113 = !{!"../drivers/media/i2c/ov7670.c", i32 2032, i32 34}
!114 = !{ptr @ov7670_id, !115, !"ov7670_id", i1 false, i1 false}
!115 = !{!"../drivers/media/i2c/ov7670.c", i32 2024, i32 35}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!125 = !{!"auto-init"}
!126 = !{i8 0, i8 2}
!127 = !{!"branch_weights", i32 1, i32 2000}
!128 = !{!"branch_weights", i32 2000, i32 1}
