; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/mt9v011.c_pt.bc'
source_filename = "../drivers/media/i2c/mt9v011.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_reg_value = type { i8, i16 }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mt9v011 = type { %struct.v4l2_subdev, %struct.media_pad, %struct.v4l2_ctrl_handler, i32, i32, i32, i8, i16, i16, i16, i16 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.94 }
%union.anon.94 = type { i32, [28 x i8] }
%struct.v4l2_subdev_frame_interval = type { i32, %struct.v4l2_fract, [9 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_description292 = internal constant [49 x i8] c"mt9v011.description=Micron mt9v011 sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [37 x i8] c"mt9v011.author=Mauro Carvalho Chehab\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [39 x i8] c"mt9v011.file=drivers/media/i2c/mt9v011\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [23 x i8] c"mt9v011.license=GPL v2\00", section ".modinfo", align 1
@__param_str_debug = internal constant [14 x i8] c"mt9v011.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype296 = internal constant [27 x i8] c"mt9v011.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug297 = internal constant [37 x i8] c"mt9v011.parm=debug:Debug level (0-2)\00", section ".modinfo", align 1
@__initcall__kmod_mt9v011__298_596_mt9v011_driver_init6 = internal global ptr @mt9v011_driver_init, section ".initcall6.init", align 4
@mt9v011_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @mt9v011_probe, ptr @mt9v011_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @mt9v011_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_mt9v011_driver_exit = internal global ptr @mt9v011_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mt9v011\00", [24 x i8] zeroinitializer }, align 32
@mt9v011_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mt9v011\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mt9v011_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @mt9v011_core_ops, ptr null, ptr null, ptr @mt9v011_video_ops, ptr null, ptr null, ptr null, ptr @mt9v011_pad_ops }, [32 x i8] zeroinitializer }, align 32
@mt9v011_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016%s: *** unknown micron chip detected (0x%04x).\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt9v011_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/i2c/mt9v011.c\00", [36 x i8] zeroinitializer }, align 32
@mt9v011_probe._entry_ptr = internal global ptr @mt9v011_probe._entry, section ".printk_index", align 4
@mt9v011_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mt9v011:521:(&core->ctrls)->_lock\00", [62 x i8] zeroinitializer }, align 32
@mt9v011_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @mt9v011_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@mt9v011_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: control initialization error %d\0A\00", [57 x i8] zeroinitializer }, align 32
@mt9v011_probe._entry_ptr.7 = internal global ptr @mt9v011_probe._entry.5, section ".printk_index", align 4
@mt9v011_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: xtal set to %d.%03d MHz\0A\00", [33 x i8] zeroinitializer }, align 32
@mt9v011_probe._entry_ptr.10 = internal global ptr @mt9v011_probe._entry.8, section ".printk_index", align 4
@mt9v011_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016%s %d-%04x: chip found @ 0x%02x (%s - chip version 0x%04x)\0A\00", [34 x i8] zeroinitializer }, align 32
@mt9v011_probe._entry_ptr.13 = internal global ptr @mt9v011_probe._entry.11, section ".printk_index", align 4
@mt9v011_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr @mt9v011_reset, ptr null, ptr null, ptr null, ptr @mt9v011_g_register, ptr @mt9v011_s_register, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mt9v011_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt9v011_g_frame_interval, ptr @mt9v011_s_frame_interval, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@mt9v011_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @mt9v011_enum_mbus_code, ptr null, ptr null, ptr null, ptr @mt9v011_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@mt9v011_init_default = internal constant { [7 x %struct.i2c_reg_value], [36 x i8] } { [7 x %struct.i2c_reg_value] [%struct.i2c_reg_value { i8 13, i16 1 }, %struct.i2c_reg_value { i8 13, i16 0 }, %struct.i2c_reg_value { i8 12, i16 0 }, %struct.i2c_reg_value { i8 9, i16 508 }, %struct.i2c_reg_value { i8 10, i16 0 }, %struct.i2c_reg_value { i8 30, i16 0 }, %struct.i2c_reg_value { i8 7, i16 2 }], [36 x i8] zeroinitializer }, align 32
@mt9v011_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: mt9v011: writing 0x%02x 0x%04x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt9v011_write\00", [18 x i8] zeroinitializer }, align 32
@mt9v011_write._entry_ptr = internal global ptr @mt9v011_write._entry, section ".printk_index", align 4
@mt9v011_write._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.3, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017%s: i2c i/o error: rc == %d (should be 3)\0A\00", [51 x i8] zeroinitializer }, align 32
@mt9v011_write._entry_ptr.18 = internal global ptr @mt9v011_write._entry.16, section ".printk_index", align 4
@calc_fps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s: Programmed to %u.%03u fps (%d pixel clcks)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"calc_fps\00", [23 x i8] zeroinitializer }, align 32
@calc_fps._entry_ptr = internal global ptr @calc_fps._entry, section ".printk_index", align 4
@mt9v011_s_frame_interval._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: Setting speed to %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mt9v011_s_frame_interval\00", [39 x i8] zeroinitializer }, align 32
@mt9v011_s_frame_interval._entry_ptr = internal global ptr @mt9v011_s_frame_interval._entry, section ".printk_index", align 4
@mt9v011_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017%s: i2c i/o error: rc == %d (should be 1)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mt9v011_read\00", [19 x i8] zeroinitializer }, align 32
@mt9v011_read._entry_ptr = internal global ptr @mt9v011_read._entry, section ".printk_index", align 4
@mt9v011_read._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.3, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017%s: i2c i/o error: rc == %d (should be 2)\0A\00", [51 x i8] zeroinitializer }, align 32
@mt9v011_read._entry_ptr.27 = internal global ptr @mt9v011_read._entry.25, section ".printk_index", align 4
@mt9v011_read._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.3, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: mt9v011: read 0x%02x = 0x%04x\0A\00", [59 x i8] zeroinitializer }, align 32
@mt9v011_read._entry_ptr.30 = internal global ptr @mt9v011_read._entry.28, section ".printk_index", align 4
@mt9v011_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 571, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017%s: mt9v011.c: removing mt9v011 adapter on address 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mt9v011_remove\00", [17 x i8] zeroinitializer }, align 32
@mt9v011_remove._entry_ptr = internal global ptr @mt9v011_remove._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 33330, i64 33347]
@__sancov_gen_cov_switch_values.33 = internal global [8 x i64] [i64 6, i64 32, i64 9963790, i64 9963791, i64 9963793, i64 9963795, i64 9963796, i64 9963797]
@___asan_gen_.34 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 21, i32 12 }
@___asan_gen_.37 = private unnamed_addr constant [15 x i8] c"mt9v011_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 587, i32 26 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 589, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [11 x i8] c"mt9v011_id\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 581, i32 35 }
@___asan_gen_.46 = private unnamed_addr constant [12 x i8] c"mt9v011_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 470, i32 37 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 516, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 521, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"mt9v011_ctrl_ops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 448, i32 35 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 538, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 554, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 558, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"mt9v011_core_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 452, i32 42 }
@___asan_gen_.91 = private unnamed_addr constant [18 x i8] c"mt9v011_video_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 460, i32 43 }
@___asan_gen_.94 = private unnamed_addr constant [16 x i8] c"mt9v011_pad_ops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 465, i32 41 }
@___asan_gen_.97 = private unnamed_addr constant [21 x i8] c"mt9v011_init_default\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 124, i32 35 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 106, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 110, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 222, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 386, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 78, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 85, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 90, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.161 = private constant [31 x i8] c"../drivers/media/i2c/mt9v011.c\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 569, i32 2 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug297, ptr @__UNIQUE_ID_debugtype296, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_mt9v011_driver_exit, ptr @__initcall__kmod_mt9v011__298_596_mt9v011_driver_init6, ptr @__param_debug, ptr @calc_fps._entry, ptr @calc_fps._entry_ptr, ptr @mt9v011_driver_exit, ptr @mt9v011_probe._entry, ptr @mt9v011_probe._entry.11, ptr @mt9v011_probe._entry.5, ptr @mt9v011_probe._entry.8, ptr @mt9v011_probe._entry_ptr, ptr @mt9v011_probe._entry_ptr.10, ptr @mt9v011_probe._entry_ptr.13, ptr @mt9v011_probe._entry_ptr.7, ptr @mt9v011_read._entry, ptr @mt9v011_read._entry.25, ptr @mt9v011_read._entry.28, ptr @mt9v011_read._entry_ptr, ptr @mt9v011_read._entry_ptr.27, ptr @mt9v011_read._entry_ptr.30, ptr @mt9v011_remove._entry, ptr @mt9v011_remove._entry_ptr, ptr @mt9v011_s_frame_interval._entry, ptr @mt9v011_s_frame_interval._entry_ptr, ptr @mt9v011_write._entry, ptr @mt9v011_write._entry.16, ptr @mt9v011_write._entry_ptr, ptr @mt9v011_write._entry_ptr.18, ptr @debug, ptr @mt9v011_driver, ptr @.str, ptr @mt9v011_id, ptr @mt9v011_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @mt9v011_probe._key, ptr @.str.4, ptr @mt9v011_ctrl_ops, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @mt9v011_core_ops, ptr @mt9v011_video_ops, ptr @mt9v011_pad_ops, ptr @mt9v011_init_default, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v011_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v011_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v011_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v011_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v011_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v011_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v011_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v011_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v011_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v011_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v011_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v011_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v011_init_default to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v011_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v011_write._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calc_fps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v011_s_frame_interval._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v011_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v011_read._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v011_read._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v011_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9v011_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @mt9v011_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt9v011_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @mt9v011_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9v011_probe(ptr noundef %c, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #7
  %and.i = and i32 %call.i.i, 1179648
  call void @__sanitizer_cov_trace_const_cmp4(i32 1179648, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1179648
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 436, i32 noundef 3520) #7
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %c, ptr noundef nonnull @mt9v011_ops) #7
  %pad = getelementptr inbounds %struct.mt9v011, ptr %call.i, i32 0, i32 1
  %flags = getelementptr inbounds %struct.mt9v011, ptr %call.i, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %flags, align 4
  %function = getelementptr inbounds %struct.media_entity, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 131073, ptr %function, align 4
  %call8 = tail call i32 @media_entity_pads_init(ptr noundef nonnull %call.i, i16 noundef zeroext 1, ptr noundef %pad) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %if.end10

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %call11 = tail call fastcc i32 @mt9v011_read(ptr noundef nonnull %call.i, i8 noundef zeroext 0)
  %conv12 = and i32 %call11, 65535
  %trunc = trunc i32 %call11 to i16
  %8 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %do.end [
    i16 -32206, label %if.end10.if.end21_crit_edge
    i16 -32189, label %if.end10.if.end21_crit_edge141
  ]

if.end10.if.end21_crit_edge141:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.end10.if.end21_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %name, i32 noundef %conv12) #10
  br label %cleanup

if.end21:                                         ; preds = %if.end10.if.end21_crit_edge, %if.end10.if.end21_crit_edge141
  %ctrls = getelementptr inbounds %struct.mt9v011, ptr %call.i, i32 0, i32 2
  %call23 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrls, i32 noundef 5, ptr noundef nonnull @mt9v011_probe._key, ptr noundef nonnull @.str.4) #7
  %call25 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @mt9v011_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 4063, i64 noundef 1, i64 noundef 32) #7
  %call27 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @mt9v011_ctrl_ops, i32 noundef 9963793, i64 noundef 0, i64 noundef 2047, i64 noundef 1, i64 noundef 508) #7
  %call29 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @mt9v011_ctrl_ops, i32 noundef 9963790, i64 noundef -512, i64 noundef 511, i64 noundef 1, i64 noundef 0) #7
  %call31 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @mt9v011_ctrl_ops, i32 noundef 9963791, i64 noundef -512, i64 noundef 511, i64 noundef 1, i64 noundef 0) #7
  %call33 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @mt9v011_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %call35 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @mt9v011_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %error = getelementptr inbounds %struct.mt9v011, ptr %call.i, i32 0, i32 2, i32 9
  %9 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool37.not = icmp eq i32 %10, 0
  br i1 %tobool37.not, label %if.end50, label %if.then38

if.then38:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %name46 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name46, i32 noundef %10) #10
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls) #7
  br label %cleanup

if.end50:                                         ; preds = %if.end21
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %11 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %ctrls, ptr %ctrl_handler, align 4
  %global_gain = getelementptr inbounds %struct.mt9v011, ptr %call.i, i32 0, i32 7
  %12 = ptrtoint ptr %global_gain to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 36, ptr %global_gain, align 2
  %exposure = getelementptr inbounds %struct.mt9v011, ptr %call.i, i32 0, i32 8
  %13 = ptrtoint ptr %exposure to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 508, ptr %exposure, align 4
  %width = getelementptr inbounds %struct.mt9v011, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 640, ptr %width, align 4
  %height = getelementptr inbounds %struct.mt9v011, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 480, ptr %height, align 4
  %xtal = getelementptr inbounds %struct.mt9v011, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %xtal to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 27000000, ptr %xtal, align 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 4, i32 7
  %17 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %platform_data, align 8
  %tobool54.not = icmp eq ptr %18, null
  br i1 %tobool54.not, label %if.end50.do.end80_crit_edge, label %if.then55

if.end50.do.end80_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end80

if.then55:                                        ; preds = %if.end50
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %21 = ptrtoint ptr %xtal to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %xtal, align 4
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp61 = icmp sgt i32 %22, 0
  br i1 %cmp61, label %do.end66, label %if.then55.do.end80_crit_edge

if.then55.do.end80_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end80

do.end66:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  %name68 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %div = udiv i32 %20, 1000000
  %div72 = udiv i32 %20, 1000
  %rem = urem i32 %div72, 1000
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name68, i32 noundef %div, i32 noundef %rem) #10
  br label %do.end80

do.end80:                                         ; preds = %do.end66, %if.then55.do.end80_crit_edge, %if.end50.do.end80_crit_edge
  %driver = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 4, i32 6
  %23 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %driver, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %27 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %28, i32 0, i32 11
  %29 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 1
  %31 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %addr, align 2
  %conv86 = zext i16 %32 to i32
  %shl = shl nuw nsw i32 %conv86, 1
  %name90 = getelementptr inbounds %struct.i2c_adapter, ptr %28, i32 0, i32 12
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %26, i32 noundef %30, i32 noundef %conv86, i32 noundef %shl, ptr noundef %name90, i32 noundef %conv12) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end80, %if.then38, %do.end, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %10, %if.then38 ], [ 0, %do.end80 ], [ -5, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call8, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9v011_remove(ptr nocapture noundef readonly %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 9
  %addr = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 1
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %addr, align 2
  %conv = zext i16 %4 to i32
  %shl = shl nuw nsw i32 %conv, 1
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name, i32 noundef %shl) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #7
  %ctrls = getelementptr inbounds %struct.mt9v011, ptr %1, i32 0, i32 2
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt9v011_read(ptr noundef %sd, i8 noundef zeroext %addr) unnamed_addr #2 align 64 {
entry:
  %addr.addr = alloca i8, align 1
  %buffer = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %addr, ptr %addr.addr, align 1
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %1 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer) #7
  %3 = ptrtoint ptr %buffer to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %buffer, align 2, !annotation !103
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %2, ptr noundef nonnull %addr.addr, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 1
  br i1 %cmp.not, label %entry.if.end8_crit_edge, label %do.body

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

do.body:                                          ; preds = %entry
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp2 = icmp sgt i32 %4, -1
  br i1 %cmp2, label %do.end, label %do.body.if.end8_crit_edge

do.body.if.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name, i32 noundef %call.i) #10
  br label %if.end8

if.end8:                                          ; preds = %do.end, %do.body.if.end8_crit_edge, %entry.if.end8_crit_edge
  call void @msleep(i32 noundef 10) #7
  %call.i49 = call i32 @i2c_transfer_buffer_flags(ptr noundef %2, ptr noundef nonnull %buffer, i32 noundef 2, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i49)
  %cmp10.not = icmp eq i32 %call.i49, 2
  br i1 %cmp10.not, label %if.end8.if.end25_crit_edge, label %do.body12

if.end8.if.end25_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

do.body12:                                        ; preds = %if.end8
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp13 = icmp sgt i32 %5, -1
  br i1 %cmp13, label %do.end17, label %if.end25.thread

if.end25.thread:                                  ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %buffer, align 2
  %conv50 = zext i16 %7 to i32
  br label %do.end40

do.end17:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  %name19 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name19, i32 noundef %call.i49) #10
  br label %if.end25

if.end25:                                         ; preds = %do.end17, %if.end8.if.end25_crit_edge
  %.pr = load i32, ptr @debug, align 4
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %buffer, align 2
  %conv = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp27 = icmp sgt i32 %.pr, 1
  br i1 %cmp27, label %do.end32, label %if.end25.do.end40_crit_edge

if.end25.do.end40_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end40

do.end32:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %name34 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %10 = ptrtoint ptr %addr.addr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %addr.addr, align 1
  %conv36 = zext i8 %11 to i32
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name34, i32 noundef %conv36, i32 noundef %conv) #10
  br label %do.end40

do.end40:                                         ; preds = %do.end32, %if.end25.do.end40_crit_edge, %if.end25.thread
  %conv52 = phi i32 [ %conv50, %if.end25.thread ], [ %conv, %do.end32 ], [ %conv, %if.end25.do.end40_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer) #7
  ret i32 %conv52
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9v011_reset(ptr noundef %sd, i32 noundef %val) #2 align 64 {
entry:
  %buffer.i.i = alloca [3 x i8], align 1
  %buffer.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = getelementptr inbounds [3 x i8], ptr %buffer.i, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %buffer.i, i32 0, i32 2
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %mt9v011_write.exit.for.body_crit_edge, %entry
  %i.08 = phi i32 [ 0, %entry ], [ %inc, %mt9v011_write.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [7 x %struct.i2c_reg_value], ptr @mt9v011_init_default, i32 0, i32 %i.08
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 2
  %value = getelementptr [7 x %struct.i2c_reg_value], ptr @mt9v011_init_default, i32 0, i32 %i.08, i32 1
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %value, align 2
  %6 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buffer.i) #7
  %8 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %3, ptr %buffer.i, align 1
  %9 = lshr i16 %5, 8
  %conv1.i = trunc i16 %9 to i8
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv1.i, ptr %0, align 1
  %conv4.i = trunc i16 %5 to i8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv4.i, ptr %1, align 1
  %12 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i = icmp sgt i32 %12, 1
  br i1 %cmp.i, label %do.end.i, label %for.body.do.end13.i_crit_edge

for.body.do.end13.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13.i

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i16 %5 to i32
  %conv9.i = zext i8 %3 to i32
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name.i, i32 noundef %conv9.i, i32 noundef %conv.i) #10
  br label %do.end13.i

do.end13.i:                                       ; preds = %do.end.i, %for.body.do.end13.i_crit_edge
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %7, ptr noundef nonnull %buffer.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp16.not.i = icmp eq i32 %call.i.i, 3
  br i1 %cmp16.not.i, label %do.end13.i.mt9v011_write.exit_crit_edge, label %do.body19.i

do.end13.i.mt9v011_write.exit_crit_edge:          ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt9v011_write.exit

do.body19.i:                                      ; preds = %do.end13.i
  %13 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp20.i = icmp sgt i32 %13, -1
  br i1 %cmp20.i, label %do.end25.i, label %do.body19.i.mt9v011_write.exit_crit_edge

do.body19.i.mt9v011_write.exit_crit_edge:         ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt9v011_write.exit

do.end25.i:                                       ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #9
  %call29.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i, i32 noundef %call.i.i) #10
  br label %mt9v011_write.exit

mt9v011_write.exit:                               ; preds = %do.end25.i, %do.body19.i.mt9v011_write.exit_crit_edge, %do.end13.i.mt9v011_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buffer.i) #7
  %inc = add nuw nsw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.end, label %mt9v011_write.exit.for.body_crit_edge

mt9v011_write.exit.for.body_crit_edge:            ; preds = %mt9v011_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %mt9v011_write.exit
  call fastcc void @set_balance(ptr noundef %sd)
  call fastcc void @set_res(ptr noundef %sd)
  %hflip.i = getelementptr inbounds %struct.mt9v011, ptr %sd, i32 0, i32 6
  %14 = ptrtoint ptr %hflip.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %hflip.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  %spec.select.i = select i1 %tobool.not.i, i16 4096, i16 20480
  %15 = and i8 %bf.load.i, 64
  %16 = zext i8 %15 to i16
  %17 = shl nuw i16 %16, 9
  %18 = or i16 %17, %spec.select.i
  %19 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buffer.i.i) #7
  %21 = getelementptr inbounds [3 x i8], ptr %buffer.i.i, i32 0, i32 1
  %22 = getelementptr inbounds [3 x i8], ptr %buffer.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 32, ptr %buffer.i.i, align 1
  %24 = lshr exact i16 %18, 8
  %conv1.i.i = trunc i16 %24 to i8
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv1.i.i, ptr %21, align 1
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %22, align 1
  %27 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp.i.i = icmp sgt i32 %27, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %for.end.do.end13.i.i_crit_edge

for.end.do.end13.i.i_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13.i.i

do.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i = zext i16 %18 to i32
  %call11.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name.i, i32 noundef 32, i32 noundef %conv.i.i) #10
  br label %do.end13.i.i

do.end13.i.i:                                     ; preds = %do.end.i.i, %for.end.do.end13.i.i_crit_edge
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %20, ptr noundef nonnull %buffer.i.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i)
  %cmp16.not.i.i = icmp eq i32 %call.i.i.i, 3
  br i1 %cmp16.not.i.i, label %do.end13.i.i.set_read_mode.exit_crit_edge, label %do.body19.i.i

do.end13.i.i.set_read_mode.exit_crit_edge:        ; preds = %do.end13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_read_mode.exit

do.body19.i.i:                                    ; preds = %do.end13.i.i
  %28 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %cmp20.i.i = icmp sgt i32 %28, -1
  br i1 %cmp20.i.i, label %do.end25.i.i, label %do.body19.i.i.set_read_mode.exit_crit_edge

do.body19.i.i.set_read_mode.exit_crit_edge:       ; preds = %do.body19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_read_mode.exit

do.end25.i.i:                                     ; preds = %do.body19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call29.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i, i32 noundef %call.i.i.i) #10
  br label %set_read_mode.exit

set_read_mode.exit:                               ; preds = %do.end25.i.i, %do.body19.i.i.set_read_mode.exit_crit_edge, %do.end13.i.i.set_read_mode.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buffer.i.i) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9v011_g_register(ptr noundef %sd, ptr nocapture noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %reg1, align 1
  %conv = trunc i64 %1 to i8
  %call = tail call fastcc i32 @mt9v011_read(ptr noundef %sd, i8 noundef zeroext %conv)
  %2 = zext i32 %call to i64
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %3 = ptrtoint ptr %val to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 %2, ptr %val, align 1
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %4 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 2, ptr %size, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9v011_s_register(ptr noundef %sd, ptr nocapture noundef readonly %reg) #2 align 64 {
entry:
  %buffer.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
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
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buffer.i) #7
  %6 = getelementptr inbounds [3 x i8], ptr %buffer.i, i32 0, i32 1
  %7 = getelementptr inbounds [3 x i8], ptr %buffer.i, i32 0, i32 2
  %8 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %buffer.i, align 1
  %9 = lshr i64 %3, 8
  %conv1.i = trunc i64 %9 to i8
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv1.i, ptr %6, align 1
  %conv4.i = trunc i64 %3 to i8
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv4.i, ptr %7, align 1
  %12 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i = icmp sgt i32 %12, 1
  br i1 %cmp.i, label %do.end.i, label %entry.do.end13.i_crit_edge

entry.do.end13.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv3 = trunc i64 %3 to i32
  %conv.i = and i32 %conv3, 65535
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %13 = trunc i64 %1 to i32
  %conv9.i = and i32 %13, 255
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name.i, i32 noundef %conv9.i, i32 noundef %conv.i) #10
  br label %do.end13.i

do.end13.i:                                       ; preds = %do.end.i, %entry.do.end13.i_crit_edge
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef nonnull %buffer.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp16.not.i = icmp eq i32 %call.i.i, 3
  br i1 %cmp16.not.i, label %do.end13.i.mt9v011_write.exit_crit_edge, label %do.body19.i

do.end13.i.mt9v011_write.exit_crit_edge:          ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt9v011_write.exit

do.body19.i:                                      ; preds = %do.end13.i
  %14 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp20.i = icmp sgt i32 %14, -1
  br i1 %cmp20.i, label %do.end25.i, label %do.body19.i.mt9v011_write.exit_crit_edge

do.body19.i.mt9v011_write.exit_crit_edge:         ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt9v011_write.exit

do.end25.i:                                       ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #9
  %name27.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call29.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name27.i, i32 noundef %call.i.i) #10
  br label %mt9v011_write.exit

mt9v011_write.exit:                               ; preds = %do.end25.i, %do.body19.i.mt9v011_write.exit_crit_edge, %do.end13.i.mt9v011_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buffer.i) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_balance(ptr noundef %sd) unnamed_addr #2 align 64 {
entry:
  %buffer.i137 = alloca [3 x i8], align 1
  %buffer.i119 = alloca [3 x i8], align 1
  %buffer.i101 = alloca [3 x i8], align 1
  %buffer.i83 = alloca [3 x i8], align 1
  %buffer.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %exposure1 = getelementptr inbounds %struct.mt9v011, ptr %sd, i32 0, i32 8
  %0 = ptrtoint ptr %exposure1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %exposure1, align 4
  %global_gain = getelementptr inbounds %struct.mt9v011, ptr %sd, i32 0, i32 7
  %2 = ptrtoint ptr %global_gain to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %global_gain, align 2
  %4 = tail call i16 @llvm.smax.i16(i16 %3, i16 0) #7
  %narrow.i = add nuw i16 %4, 32
  %5 = tail call i16 @llvm.smin.i16(i16 %narrow.i, i16 2047) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 1023, i16 %5)
  %cmp10.i = icmp sgt i16 %5, 1023
  br i1 %cmp10.i, label %if.then12.i, label %if.else.i

if.then12.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %div626772.i = lshr i16 %5, 4
  br label %calc_mt9v011_gain.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %5)
  %cmp16.i = icmp sgt i16 %5, 511
  br i1 %cmp16.i, label %if.then18.i, label %if.else22.i

if.then18.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %div20636871.i = lshr i16 %5, 3
  br label %calc_mt9v011_gain.exit

if.else22.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %5)
  %cmp24.i = icmp sgt i16 %5, 255
  br i1 %cmp24.i, label %if.then26.i, label %if.else30.i

if.then26.i:                                      ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #9
  %div28646970.i = lshr i16 %5, 2
  br label %calc_mt9v011_gain.exit

if.else30.i:                                      ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %5)
  %cmp32.i = icmp sgt i16 %5, 127
  %div3665.i = sdiv i16 %5, 2
  %spec.select.i = select i1 %cmp32.i, i16 128, i16 0
  %spec.select66.i = select i1 %cmp32.i, i16 %div3665.i, i16 %5
  br label %calc_mt9v011_gain.exit

calc_mt9v011_gain.exit:                           ; preds = %if.else30.i, %if.then26.i, %if.then18.i, %if.then12.i
  %digitalgain.0.i = phi i16 [ 1536, %if.then12.i ], [ 512, %if.then18.i ], [ 0, %if.then26.i ], [ 0, %if.else30.i ]
  %analogmult.0.i = phi i16 [ 384, %if.then12.i ], [ 384, %if.then18.i ], [ 384, %if.then26.i ], [ %spec.select.i, %if.else30.i ]
  %analoginit.0.i = phi i16 [ %div626772.i, %if.then12.i ], [ %div20636871.i, %if.then18.i ], [ %div28646970.i, %if.then26.i ], [ %spec.select66.i, %if.else30.i ]
  %add45.i = or i16 %analogmult.0.i, %digitalgain.0.i
  %add48.i = add i16 %add45.i, %analoginit.0.i
  %blue_bal = getelementptr inbounds %struct.mt9v011, ptr %sd, i32 0, i32 10
  %6 = ptrtoint ptr %blue_bal to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %blue_bal, align 4
  %conv = sext i16 %7 to i32
  %conv5 = zext i16 %3 to i32
  %mul = mul nsw i32 %conv, %conv5
  %div = sdiv i32 %mul, 128
  %8 = trunc i32 %div to i16
  %conv7 = add i16 %3, %8
  %9 = tail call i16 @llvm.smax.i16(i16 %conv7, i16 0) #7
  %narrow.i37 = add nuw i16 %9, 32
  %10 = tail call i16 @llvm.smin.i16(i16 %narrow.i37, i16 2047) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 1023, i16 %10)
  %cmp10.i38 = icmp sgt i16 %10, 1023
  br i1 %cmp10.i38, label %if.then12.i40, label %if.else.i42

if.then12.i40:                                    ; preds = %calc_mt9v011_gain.exit
  call void @__sanitizer_cov_trace_pc() #9
  %div626772.i39 = lshr i16 %10, 4
  br label %calc_mt9v011_gain.exit59

if.else.i42:                                      ; preds = %calc_mt9v011_gain.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %10)
  %cmp16.i41 = icmp sgt i16 %10, 511
  br i1 %cmp16.i41, label %if.then18.i44, label %if.else22.i46

if.then18.i44:                                    ; preds = %if.else.i42
  call void @__sanitizer_cov_trace_pc() #9
  %div20636871.i43 = lshr i16 %10, 3
  br label %calc_mt9v011_gain.exit59

if.else22.i46:                                    ; preds = %if.else.i42
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %10)
  %cmp24.i45 = icmp sgt i16 %10, 255
  br i1 %cmp24.i45, label %if.then26.i48, label %if.else30.i53

if.then26.i48:                                    ; preds = %if.else22.i46
  call void @__sanitizer_cov_trace_pc() #9
  %div28646970.i47 = lshr i16 %10, 2
  br label %calc_mt9v011_gain.exit59

if.else30.i53:                                    ; preds = %if.else22.i46
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %10)
  %cmp32.i49 = icmp sgt i16 %10, 127
  %div3665.i50 = sdiv i16 %10, 2
  %spec.select.i51 = select i1 %cmp32.i49, i16 128, i16 0
  %spec.select66.i52 = select i1 %cmp32.i49, i16 %div3665.i50, i16 %10
  br label %calc_mt9v011_gain.exit59

calc_mt9v011_gain.exit59:                         ; preds = %if.else30.i53, %if.then26.i48, %if.then18.i44, %if.then12.i40
  %digitalgain.0.i54 = phi i16 [ 1536, %if.then12.i40 ], [ 512, %if.then18.i44 ], [ 0, %if.then26.i48 ], [ 0, %if.else30.i53 ]
  %analogmult.0.i55 = phi i16 [ 384, %if.then12.i40 ], [ 384, %if.then18.i44 ], [ 384, %if.then26.i48 ], [ %spec.select.i51, %if.else30.i53 ]
  %analoginit.0.i56 = phi i16 [ %div626772.i39, %if.then12.i40 ], [ %div20636871.i43, %if.then18.i44 ], [ %div28646970.i47, %if.then26.i48 ], [ %spec.select66.i52, %if.else30.i53 ]
  %add45.i57 = or i16 %analogmult.0.i55, %digitalgain.0.i54
  %add48.i58 = add i16 %add45.i57, %analoginit.0.i56
  %red_bal = getelementptr inbounds %struct.mt9v011, ptr %sd, i32 0, i32 9
  %11 = ptrtoint ptr %red_bal to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %red_bal, align 2
  %conv10 = sext i16 %12 to i32
  %mul13 = mul nsw i32 %conv10, %conv5
  %div14 = sdiv i32 %mul13, 128
  %13 = trunc i32 %div14 to i16
  %conv17 = add i16 %3, %13
  %14 = tail call i16 @llvm.smax.i16(i16 %conv17, i16 0) #7
  %narrow.i60 = add nuw i16 %14, 32
  %15 = tail call i16 @llvm.smin.i16(i16 %narrow.i60, i16 2047) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 1023, i16 %15)
  %cmp10.i61 = icmp sgt i16 %15, 1023
  br i1 %cmp10.i61, label %if.then12.i63, label %if.else.i65

if.then12.i63:                                    ; preds = %calc_mt9v011_gain.exit59
  call void @__sanitizer_cov_trace_pc() #9
  %div626772.i62 = lshr i16 %15, 4
  br label %calc_mt9v011_gain.exit82

if.else.i65:                                      ; preds = %calc_mt9v011_gain.exit59
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %15)
  %cmp16.i64 = icmp sgt i16 %15, 511
  br i1 %cmp16.i64, label %if.then18.i67, label %if.else22.i69

if.then18.i67:                                    ; preds = %if.else.i65
  call void @__sanitizer_cov_trace_pc() #9
  %div20636871.i66 = lshr i16 %15, 3
  br label %calc_mt9v011_gain.exit82

if.else22.i69:                                    ; preds = %if.else.i65
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %15)
  %cmp24.i68 = icmp sgt i16 %15, 255
  br i1 %cmp24.i68, label %if.then26.i71, label %if.else30.i76

if.then26.i71:                                    ; preds = %if.else22.i69
  call void @__sanitizer_cov_trace_pc() #9
  %div28646970.i70 = lshr i16 %15, 2
  br label %calc_mt9v011_gain.exit82

if.else30.i76:                                    ; preds = %if.else22.i69
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %15)
  %cmp32.i72 = icmp sgt i16 %15, 127
  %div3665.i73 = sdiv i16 %15, 2
  %spec.select.i74 = select i1 %cmp32.i72, i16 128, i16 0
  %spec.select66.i75 = select i1 %cmp32.i72, i16 %div3665.i73, i16 %15
  br label %calc_mt9v011_gain.exit82

calc_mt9v011_gain.exit82:                         ; preds = %if.else30.i76, %if.then26.i71, %if.then18.i67, %if.then12.i63
  %digitalgain.0.i77 = phi i16 [ 1536, %if.then12.i63 ], [ 512, %if.then18.i67 ], [ 0, %if.then26.i71 ], [ 0, %if.else30.i76 ]
  %analogmult.0.i78 = phi i16 [ 384, %if.then12.i63 ], [ 384, %if.then18.i67 ], [ 384, %if.then26.i71 ], [ %spec.select.i74, %if.else30.i76 ]
  %analoginit.0.i79 = phi i16 [ %div626772.i62, %if.then12.i63 ], [ %div20636871.i66, %if.then18.i67 ], [ %div28646970.i70, %if.then26.i71 ], [ %spec.select66.i75, %if.else30.i76 ]
  %add45.i80 = or i16 %analogmult.0.i78, %digitalgain.0.i77
  %add48.i81 = add i16 %add45.i80, %analoginit.0.i79
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %16 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buffer.i) #7
  %18 = getelementptr inbounds [3 x i8], ptr %buffer.i, i32 0, i32 1
  %19 = getelementptr inbounds [3 x i8], ptr %buffer.i, i32 0, i32 2
  %20 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 43, ptr %buffer.i, align 1
  %21 = lshr i16 %add48.i, 8
  %conv1.i = trunc i16 %21 to i8
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv1.i, ptr %18, align 1
  %conv4.i = trunc i16 %add48.i to i8
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv4.i, ptr %19, align 1
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp.i = icmp sgt i32 %24, 1
  br i1 %cmp.i, label %do.end.i, label %calc_mt9v011_gain.exit82.do.end13.i_crit_edge

calc_mt9v011_gain.exit82.do.end13.i_crit_edge:    ; preds = %calc_mt9v011_gain.exit82
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13.i

do.end.i:                                         ; preds = %calc_mt9v011_gain.exit82
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i16 %add48.i to i32
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name.i, i32 noundef 43, i32 noundef %conv.i) #10
  br label %do.end13.i

do.end13.i:                                       ; preds = %do.end.i, %calc_mt9v011_gain.exit82.do.end13.i_crit_edge
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %17, ptr noundef nonnull %buffer.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp16.not.i = icmp eq i32 %call.i.i, 3
  br i1 %cmp16.not.i, label %do.end13.i.mt9v011_write.exit_crit_edge, label %do.body19.i

do.end13.i.mt9v011_write.exit_crit_edge:          ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt9v011_write.exit

do.body19.i:                                      ; preds = %do.end13.i
  %25 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp20.i = icmp sgt i32 %25, -1
  br i1 %cmp20.i, label %do.end25.i, label %do.body19.i.mt9v011_write.exit_crit_edge

do.body19.i.mt9v011_write.exit_crit_edge:         ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt9v011_write.exit

do.end25.i:                                       ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #9
  %name27.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call29.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name27.i, i32 noundef %call.i.i) #10
  br label %mt9v011_write.exit

mt9v011_write.exit:                               ; preds = %do.end25.i, %do.body19.i.mt9v011_write.exit_crit_edge, %do.end13.i.mt9v011_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buffer.i) #7
  %26 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buffer.i83) #7
  %28 = getelementptr inbounds [3 x i8], ptr %buffer.i83, i32 0, i32 1
  %29 = getelementptr inbounds [3 x i8], ptr %buffer.i83, i32 0, i32 2
  %30 = ptrtoint ptr %buffer.i83 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 46, ptr %buffer.i83, align 1
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv1.i, ptr %28, align 1
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv4.i, ptr %29, align 1
  %33 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp.i87 = icmp sgt i32 %33, 1
  br i1 %cmp.i87, label %do.end.i91, label %mt9v011_write.exit.do.end13.i94_crit_edge

mt9v011_write.exit.do.end13.i94_crit_edge:        ; preds = %mt9v011_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13.i94

do.end.i91:                                       ; preds = %mt9v011_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i88 = zext i16 %add48.i to i32
  %name.i89 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call11.i90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name.i89, i32 noundef 46, i32 noundef %conv.i88) #10
  br label %do.end13.i94

do.end13.i94:                                     ; preds = %do.end.i91, %mt9v011_write.exit.do.end13.i94_crit_edge
  %call.i.i92 = call i32 @i2c_transfer_buffer_flags(ptr noundef %27, ptr noundef nonnull %buffer.i83, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i92)
  %cmp16.not.i93 = icmp eq i32 %call.i.i92, 3
  br i1 %cmp16.not.i93, label %do.end13.i94.mt9v011_write.exit100_crit_edge, label %do.body19.i96

do.end13.i94.mt9v011_write.exit100_crit_edge:     ; preds = %do.end13.i94
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt9v011_write.exit100

do.body19.i96:                                    ; preds = %do.end13.i94
  %34 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp20.i95 = icmp sgt i32 %34, -1
  br i1 %cmp20.i95, label %do.end25.i99, label %do.body19.i96.mt9v011_write.exit100_crit_edge

do.body19.i96.mt9v011_write.exit100_crit_edge:    ; preds = %do.body19.i96
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt9v011_write.exit100

do.end25.i99:                                     ; preds = %do.body19.i96
  call void @__sanitizer_cov_trace_pc() #9
  %name27.i97 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call29.i98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name27.i97, i32 noundef %call.i.i92) #10
  br label %mt9v011_write.exit100

mt9v011_write.exit100:                            ; preds = %do.end25.i99, %do.body19.i96.mt9v011_write.exit100_crit_edge, %do.end13.i94.mt9v011_write.exit100_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buffer.i83) #7
  %35 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buffer.i101) #7
  %37 = getelementptr inbounds [3 x i8], ptr %buffer.i101, i32 0, i32 1
  %38 = getelementptr inbounds [3 x i8], ptr %buffer.i101, i32 0, i32 2
  %39 = ptrtoint ptr %buffer.i101 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 44, ptr %buffer.i101, align 1
  %40 = lshr i16 %add48.i58, 8
  %conv1.i103 = trunc i16 %40 to i8
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv1.i103, ptr %37, align 1
  %conv4.i104 = trunc i16 %add48.i58 to i8
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv4.i104, ptr %38, align 1
  %43 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp.i105 = icmp sgt i32 %43, 1
  br i1 %cmp.i105, label %do.end.i109, label %mt9v011_write.exit100.do.end13.i112_crit_edge

mt9v011_write.exit100.do.end13.i112_crit_edge:    ; preds = %mt9v011_write.exit100
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13.i112

do.end.i109:                                      ; preds = %mt9v011_write.exit100
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i106 = zext i16 %add48.i58 to i32
  %name.i107 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call11.i108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name.i107, i32 noundef 44, i32 noundef %conv.i106) #10
  br label %do.end13.i112

do.end13.i112:                                    ; preds = %do.end.i109, %mt9v011_write.exit100.do.end13.i112_crit_edge
  %call.i.i110 = call i32 @i2c_transfer_buffer_flags(ptr noundef %36, ptr noundef nonnull %buffer.i101, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i110)
  %cmp16.not.i111 = icmp eq i32 %call.i.i110, 3
  br i1 %cmp16.not.i111, label %do.end13.i112.mt9v011_write.exit118_crit_edge, label %do.body19.i114

do.end13.i112.mt9v011_write.exit118_crit_edge:    ; preds = %do.end13.i112
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt9v011_write.exit118

do.body19.i114:                                   ; preds = %do.end13.i112
  %44 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %cmp20.i113 = icmp sgt i32 %44, -1
  br i1 %cmp20.i113, label %do.end25.i117, label %do.body19.i114.mt9v011_write.exit118_crit_edge

do.body19.i114.mt9v011_write.exit118_crit_edge:   ; preds = %do.body19.i114
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt9v011_write.exit118

do.end25.i117:                                    ; preds = %do.body19.i114
  call void @__sanitizer_cov_trace_pc() #9
  %name27.i115 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call29.i116 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name27.i115, i32 noundef %call.i.i110) #10
  br label %mt9v011_write.exit118

mt9v011_write.exit118:                            ; preds = %do.end25.i117, %do.body19.i114.mt9v011_write.exit118_crit_edge, %do.end13.i112.mt9v011_write.exit118_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buffer.i101) #7
  %45 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buffer.i119) #7
  %47 = getelementptr inbounds [3 x i8], ptr %buffer.i119, i32 0, i32 1
  %48 = getelementptr inbounds [3 x i8], ptr %buffer.i119, i32 0, i32 2
  %49 = ptrtoint ptr %buffer.i119 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 45, ptr %buffer.i119, align 1
  %50 = lshr i16 %add48.i81, 8
  %conv1.i121 = trunc i16 %50 to i8
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv1.i121, ptr %47, align 1
  %conv4.i122 = trunc i16 %add48.i81 to i8
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv4.i122, ptr %48, align 1
  %53 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp.i123 = icmp sgt i32 %53, 1
  br i1 %cmp.i123, label %do.end.i127, label %mt9v011_write.exit118.do.end13.i130_crit_edge

mt9v011_write.exit118.do.end13.i130_crit_edge:    ; preds = %mt9v011_write.exit118
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13.i130

do.end.i127:                                      ; preds = %mt9v011_write.exit118
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i124 = zext i16 %add48.i81 to i32
  %name.i125 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call11.i126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name.i125, i32 noundef 45, i32 noundef %conv.i124) #10
  br label %do.end13.i130

do.end13.i130:                                    ; preds = %do.end.i127, %mt9v011_write.exit118.do.end13.i130_crit_edge
  %call.i.i128 = call i32 @i2c_transfer_buffer_flags(ptr noundef %46, ptr noundef nonnull %buffer.i119, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i128)
  %cmp16.not.i129 = icmp eq i32 %call.i.i128, 3
  br i1 %cmp16.not.i129, label %do.end13.i130.mt9v011_write.exit136_crit_edge, label %do.body19.i132

do.end13.i130.mt9v011_write.exit136_crit_edge:    ; preds = %do.end13.i130
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt9v011_write.exit136

do.body19.i132:                                   ; preds = %do.end13.i130
  %54 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %54)
  %cmp20.i131 = icmp sgt i32 %54, -1
  br i1 %cmp20.i131, label %do.end25.i135, label %do.body19.i132.mt9v011_write.exit136_crit_edge

do.body19.i132.mt9v011_write.exit136_crit_edge:   ; preds = %do.body19.i132
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt9v011_write.exit136

do.end25.i135:                                    ; preds = %do.body19.i132
  call void @__sanitizer_cov_trace_pc() #9
  %name27.i133 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call29.i134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name27.i133, i32 noundef %call.i.i128) #10
  br label %mt9v011_write.exit136

mt9v011_write.exit136:                            ; preds = %do.end25.i135, %do.body19.i132.mt9v011_write.exit136_crit_edge, %do.end13.i130.mt9v011_write.exit136_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buffer.i119) #7
  %55 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buffer.i137) #7
  %57 = getelementptr inbounds [3 x i8], ptr %buffer.i137, i32 0, i32 1
  %58 = getelementptr inbounds [3 x i8], ptr %buffer.i137, i32 0, i32 2
  %59 = ptrtoint ptr %buffer.i137 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 9, ptr %buffer.i137, align 1
  %60 = lshr i16 %1, 8
  %conv1.i139 = trunc i16 %60 to i8
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv1.i139, ptr %57, align 1
  %conv4.i140 = trunc i16 %1 to i8
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv4.i140, ptr %58, align 1
  %63 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp.i141 = icmp sgt i32 %63, 1
  br i1 %cmp.i141, label %do.end.i145, label %mt9v011_write.exit136.do.end13.i148_crit_edge

mt9v011_write.exit136.do.end13.i148_crit_edge:    ; preds = %mt9v011_write.exit136
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13.i148

do.end.i145:                                      ; preds = %mt9v011_write.exit136
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i142 = zext i16 %1 to i32
  %name.i143 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call11.i144 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name.i143, i32 noundef 9, i32 noundef %conv.i142) #10
  br label %do.end13.i148

do.end13.i148:                                    ; preds = %do.end.i145, %mt9v011_write.exit136.do.end13.i148_crit_edge
  %call.i.i146 = call i32 @i2c_transfer_buffer_flags(ptr noundef %56, ptr noundef nonnull %buffer.i137, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i146)
  %cmp16.not.i147 = icmp eq i32 %call.i.i146, 3
  br i1 %cmp16.not.i147, label %do.end13.i148.mt9v011_write.exit154_crit_edge, label %do.body19.i150

do.end13.i148.mt9v011_write.exit154_crit_edge:    ; preds = %do.end13.i148
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt9v011_write.exit154

do.body19.i150:                                   ; preds = %do.end13.i148
  %64 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %64)
  %cmp20.i149 = icmp sgt i32 %64, -1
  br i1 %cmp20.i149, label %do.end25.i153, label %do.body19.i150.mt9v011_write.exit154_crit_edge

do.body19.i150.mt9v011_write.exit154_crit_edge:   ; preds = %do.body19.i150
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt9v011_write.exit154

do.end25.i153:                                    ; preds = %do.body19.i150
  call void @__sanitizer_cov_trace_pc() #9
  %name27.i151 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call29.i152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name27.i151, i32 noundef %call.i.i146) #10
  br label %mt9v011_write.exit154

mt9v011_write.exit154:                            ; preds = %do.end25.i153, %do.body19.i150.mt9v011_write.exit154_crit_edge, %do.end13.i148.mt9v011_write.exit154_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buffer.i137) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_res(ptr noundef %sd) unnamed_addr #2 align 64 {
entry:
  %buffer.i101 = alloca [3 x i8], align 1
  %buffer.i83 = alloca [3 x i8], align 1
  %buffer.i65 = alloca [3 x i8], align 1
  %buffer.i47 = alloca [3 x i8], align 1
  %buffer.i29 = alloca [3 x i8], align 1
  %buffer.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %width = getelementptr inbounds %struct.mt9v011, ptr %sd, i32 0, i32 3
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width, align 4
  %sub = sub i32 640, %1
  %div27 = lshr i32 %sub, 1
  %2 = trunc i32 %div27 to i16
  %conv = add i16 %2, 20
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %3 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buffer.i) #7
  %5 = getelementptr inbounds [3 x i8], ptr %buffer.i, i32 0, i32 1
  %6 = getelementptr inbounds [3 x i8], ptr %buffer.i, i32 0, i32 2
  %7 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %buffer.i, align 1
  %8 = lshr i16 %conv, 8
  %conv1.i = trunc i16 %8 to i8
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv1.i, ptr %5, align 1
  %conv4.i = trunc i16 %conv to i8
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv4.i, ptr %6, align 1
  %11 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp sgt i32 %11, 1
  br i1 %cmp.i, label %do.end.i, label %entry.do.end13.i_crit_edge

entry.do.end13.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i16 %conv to i32
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name.i, i32 noundef 2, i32 noundef %conv.i) #10
  br label %do.end13.i

do.end13.i:                                       ; preds = %do.end.i, %entry.do.end13.i_crit_edge
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %4, ptr noundef nonnull %buffer.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp16.not.i = icmp eq i32 %call.i.i, 3
  br i1 %cmp16.not.i, label %do.end13.i.mt9v011_write.exit_crit_edge, label %do.body19.i

do.end13.i.mt9v011_write.exit_crit_edge:          ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt9v011_write.exit

do.body19.i:                                      ; preds = %do.end13.i
  %12 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp20.i = icmp sgt i32 %12, -1
  br i1 %cmp20.i, label %do.end25.i, label %do.body19.i.mt9v011_write.exit_crit_edge

do.body19.i.mt9v011_write.exit_crit_edge:         ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt9v011_write.exit

do.end25.i:                                       ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #9
  %name27.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call29.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name27.i, i32 noundef %call.i.i) #10
  br label %mt9v011_write.exit

mt9v011_write.exit:                               ; preds = %do.end25.i, %do.body19.i.mt9v011_write.exit_crit_edge, %do.end13.i.mt9v011_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buffer.i) #7
  %13 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %width, align 4
  %15 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buffer.i29) #7
  %17 = getelementptr inbounds [3 x i8], ptr %buffer.i29, i32 0, i32 1
  %18 = getelementptr inbounds [3 x i8], ptr %buffer.i29, i32 0, i32 2
  %19 = ptrtoint ptr %buffer.i29 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 4, ptr %buffer.i29, align 1
  %20 = lshr i32 %14, 8
  %conv1.i31 = trunc i32 %20 to i8
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv1.i31, ptr %17, align 1
  %conv4.i32 = trunc i32 %14 to i8
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv4.i32, ptr %18, align 1
  %23 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp.i33 = icmp sgt i32 %23, 1
  br i1 %cmp.i33, label %do.end.i37, label %mt9v011_write.exit.do.end13.i40_crit_edge

mt9v011_write.exit.do.end13.i40_crit_edge:        ; preds = %mt9v011_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13.i40

do.end.i37:                                       ; preds = %mt9v011_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i34 = and i32 %14, 65535
  %name.i35 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call11.i36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name.i35, i32 noundef 4, i32 noundef %conv.i34) #10
  br label %do.end13.i40

do.end13.i40:                                     ; preds = %do.end.i37, %mt9v011_write.exit.do.end13.i40_crit_edge
  %call.i.i38 = call i32 @i2c_transfer_buffer_flags(ptr noundef %16, ptr noundef nonnull %buffer.i29, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i38)
  %cmp16.not.i39 = icmp eq i32 %call.i.i38, 3
  br i1 %cmp16.not.i39, label %do.end13.i40.mt9v011_write.exit46_crit_edge, label %do.body19.i42

do.end13.i40.mt9v011_write.exit46_crit_edge:      ; preds = %do.end13.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt9v011_write.exit46

do.body19.i42:                                    ; preds = %do.end13.i40
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp20.i41 = icmp sgt i32 %24, -1
  br i1 %cmp20.i41, label %do.end25.i45, label %do.body19.i42.mt9v011_write.exit46_crit_edge

do.body19.i42.mt9v011_write.exit46_crit_edge:     ; preds = %do.body19.i42
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt9v011_write.exit46

do.end25.i45:                                     ; preds = %do.body19.i42
  call void @__sanitizer_cov_trace_pc() #9
  %name27.i43 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call29.i44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name27.i43, i32 noundef %call.i.i38) #10
  br label %mt9v011_write.exit46

mt9v011_write.exit46:                             ; preds = %do.end25.i45, %do.body19.i42.mt9v011_write.exit46_crit_edge, %do.end13.i40.mt9v011_write.exit46_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buffer.i29) #7
  %25 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %width, align 4
  %27 = trunc i32 %26 to i16
  %conv5 = sub i16 771, %27
  %28 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buffer.i47) #7
  %30 = getelementptr inbounds [3 x i8], ptr %buffer.i47, i32 0, i32 1
  %31 = getelementptr inbounds [3 x i8], ptr %buffer.i47, i32 0, i32 2
  %32 = ptrtoint ptr %buffer.i47 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 5, ptr %buffer.i47, align 1
  %33 = lshr i16 %conv5, 8
  %conv1.i49 = trunc i16 %33 to i8
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv1.i49, ptr %30, align 1
  %conv4.i50 = trunc i16 %conv5 to i8
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv4.i50, ptr %31, align 1
  %36 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp.i51 = icmp sgt i32 %36, 1
  br i1 %cmp.i51, label %do.end.i55, label %mt9v011_write.exit46.do.end13.i58_crit_edge

mt9v011_write.exit46.do.end13.i58_crit_edge:      ; preds = %mt9v011_write.exit46
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13.i58

do.end.i55:                                       ; preds = %mt9v011_write.exit46
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i52 = zext i16 %conv5 to i32
  %name.i53 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call11.i54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name.i53, i32 noundef 5, i32 noundef %conv.i52) #10
  br label %do.end13.i58

do.end13.i58:                                     ; preds = %do.end.i55, %mt9v011_write.exit46.do.end13.i58_crit_edge
  %call.i.i56 = call i32 @i2c_transfer_buffer_flags(ptr noundef %29, ptr noundef nonnull %buffer.i47, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i56)
  %cmp16.not.i57 = icmp eq i32 %call.i.i56, 3
  br i1 %cmp16.not.i57, label %do.end13.i58.mt9v011_write.exit64_crit_edge, label %do.body19.i60

do.end13.i58.mt9v011_write.exit64_crit_edge:      ; preds = %do.end13.i58
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt9v011_write.exit64

do.body19.i60:                                    ; preds = %do.end13.i58
  %37 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp20.i59 = icmp sgt i32 %37, -1
  br i1 %cmp20.i59, label %do.end25.i63, label %do.body19.i60.mt9v011_write.exit64_crit_edge

do.body19.i60.mt9v011_write.exit64_crit_edge:     ; preds = %do.body19.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt9v011_write.exit64

do.end25.i63:                                     ; preds = %do.body19.i60
  call void @__sanitizer_cov_trace_pc() #9
  %name27.i61 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call29.i62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name27.i61, i32 noundef %call.i.i56) #10
  br label %mt9v011_write.exit64

mt9v011_write.exit64:                             ; preds = %do.end25.i63, %do.body19.i60.mt9v011_write.exit64_crit_edge, %do.end13.i58.mt9v011_write.exit64_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buffer.i47) #7
  %height = getelementptr inbounds %struct.mt9v011, ptr %sd, i32 0, i32 4
  %38 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %height, align 4
  %sub6 = sub i32 480, %39
  %div728 = lshr i32 %sub6, 1
  %40 = trunc i32 %div728 to i16
  %conv9 = add i16 %40, 8
  %41 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buffer.i65) #7
  %43 = getelementptr inbounds [3 x i8], ptr %buffer.i65, i32 0, i32 1
  %44 = getelementptr inbounds [3 x i8], ptr %buffer.i65, i32 0, i32 2
  %45 = ptrtoint ptr %buffer.i65 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %buffer.i65, align 1
  %46 = lshr i16 %conv9, 8
  %conv1.i67 = trunc i16 %46 to i8
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv1.i67, ptr %43, align 1
  %conv4.i68 = trunc i16 %conv9 to i8
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv4.i68, ptr %44, align 1
  %49 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp.i69 = icmp sgt i32 %49, 1
  br i1 %cmp.i69, label %do.end.i73, label %mt9v011_write.exit64.do.end13.i76_crit_edge

mt9v011_write.exit64.do.end13.i76_crit_edge:      ; preds = %mt9v011_write.exit64
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13.i76

do.end.i73:                                       ; preds = %mt9v011_write.exit64
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i70 = zext i16 %conv9 to i32
  %name.i71 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call11.i72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name.i71, i32 noundef 1, i32 noundef %conv.i70) #10
  br label %do.end13.i76

do.end13.i76:                                     ; preds = %do.end.i73, %mt9v011_write.exit64.do.end13.i76_crit_edge
  %call.i.i74 = call i32 @i2c_transfer_buffer_flags(ptr noundef %42, ptr noundef nonnull %buffer.i65, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i74)
  %cmp16.not.i75 = icmp eq i32 %call.i.i74, 3
  br i1 %cmp16.not.i75, label %do.end13.i76.mt9v011_write.exit82_crit_edge, label %do.body19.i78

do.end13.i76.mt9v011_write.exit82_crit_edge:      ; preds = %do.end13.i76
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt9v011_write.exit82

do.body19.i78:                                    ; preds = %do.end13.i76
  %50 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %50)
  %cmp20.i77 = icmp sgt i32 %50, -1
  br i1 %cmp20.i77, label %do.end25.i81, label %do.body19.i78.mt9v011_write.exit82_crit_edge

do.body19.i78.mt9v011_write.exit82_crit_edge:     ; preds = %do.body19.i78
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt9v011_write.exit82

do.end25.i81:                                     ; preds = %do.body19.i78
  call void @__sanitizer_cov_trace_pc() #9
  %name27.i79 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call29.i80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name27.i79, i32 noundef %call.i.i74) #10
  br label %mt9v011_write.exit82

mt9v011_write.exit82:                             ; preds = %do.end25.i81, %do.body19.i78.mt9v011_write.exit82_crit_edge, %do.end13.i76.mt9v011_write.exit82_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buffer.i65) #7
  %51 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %height, align 4
  %53 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buffer.i83) #7
  %55 = getelementptr inbounds [3 x i8], ptr %buffer.i83, i32 0, i32 1
  %56 = getelementptr inbounds [3 x i8], ptr %buffer.i83, i32 0, i32 2
  %57 = ptrtoint ptr %buffer.i83 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 3, ptr %buffer.i83, align 1
  %58 = lshr i32 %52, 8
  %conv1.i85 = trunc i32 %58 to i8
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv1.i85, ptr %55, align 1
  %conv4.i86 = trunc i32 %52 to i8
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv4.i86, ptr %56, align 1
  %61 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp.i87 = icmp sgt i32 %61, 1
  br i1 %cmp.i87, label %do.end.i91, label %mt9v011_write.exit82.do.end13.i94_crit_edge

mt9v011_write.exit82.do.end13.i94_crit_edge:      ; preds = %mt9v011_write.exit82
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13.i94

do.end.i91:                                       ; preds = %mt9v011_write.exit82
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i88 = and i32 %52, 65535
  %name.i89 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call11.i90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name.i89, i32 noundef 3, i32 noundef %conv.i88) #10
  br label %do.end13.i94

do.end13.i94:                                     ; preds = %do.end.i91, %mt9v011_write.exit82.do.end13.i94_crit_edge
  %call.i.i92 = call i32 @i2c_transfer_buffer_flags(ptr noundef %54, ptr noundef nonnull %buffer.i83, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i92)
  %cmp16.not.i93 = icmp eq i32 %call.i.i92, 3
  br i1 %cmp16.not.i93, label %do.end13.i94.mt9v011_write.exit100_crit_edge, label %do.body19.i96

do.end13.i94.mt9v011_write.exit100_crit_edge:     ; preds = %do.end13.i94
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt9v011_write.exit100

do.body19.i96:                                    ; preds = %do.end13.i94
  %62 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %62)
  %cmp20.i95 = icmp sgt i32 %62, -1
  br i1 %cmp20.i95, label %do.end25.i99, label %do.body19.i96.mt9v011_write.exit100_crit_edge

do.body19.i96.mt9v011_write.exit100_crit_edge:    ; preds = %do.body19.i96
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt9v011_write.exit100

do.end25.i99:                                     ; preds = %do.body19.i96
  call void @__sanitizer_cov_trace_pc() #9
  %name27.i97 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call29.i98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name27.i97, i32 noundef %call.i.i92) #10
  br label %mt9v011_write.exit100

mt9v011_write.exit100:                            ; preds = %do.end25.i99, %do.body19.i96.mt9v011_write.exit100_crit_edge, %do.end13.i94.mt9v011_write.exit100_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buffer.i83) #7
  %63 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %height, align 4
  %65 = trunc i32 %64 to i16
  %conv14 = sub i16 508, %65
  %66 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buffer.i101) #7
  %68 = getelementptr inbounds [3 x i8], ptr %buffer.i101, i32 0, i32 1
  %69 = getelementptr inbounds [3 x i8], ptr %buffer.i101, i32 0, i32 2
  %70 = ptrtoint ptr %buffer.i101 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 6, ptr %buffer.i101, align 1
  %71 = lshr i16 %conv14, 8
  %conv1.i103 = trunc i16 %71 to i8
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv1.i103, ptr %68, align 1
  %conv4.i104 = trunc i16 %conv14 to i8
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv4.i104, ptr %69, align 1
  %74 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %74)
  %cmp.i105 = icmp sgt i32 %74, 1
  br i1 %cmp.i105, label %do.end.i109, label %mt9v011_write.exit100.do.end13.i112_crit_edge

mt9v011_write.exit100.do.end13.i112_crit_edge:    ; preds = %mt9v011_write.exit100
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13.i112

do.end.i109:                                      ; preds = %mt9v011_write.exit100
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i106 = zext i16 %conv14 to i32
  %name.i107 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call11.i108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name.i107, i32 noundef 6, i32 noundef %conv.i106) #10
  br label %do.end13.i112

do.end13.i112:                                    ; preds = %do.end.i109, %mt9v011_write.exit100.do.end13.i112_crit_edge
  %call.i.i110 = call i32 @i2c_transfer_buffer_flags(ptr noundef %67, ptr noundef nonnull %buffer.i101, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i110)
  %cmp16.not.i111 = icmp eq i32 %call.i.i110, 3
  br i1 %cmp16.not.i111, label %do.end13.i112.mt9v011_write.exit118_crit_edge, label %do.body19.i114

do.end13.i112.mt9v011_write.exit118_crit_edge:    ; preds = %do.end13.i112
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt9v011_write.exit118

do.body19.i114:                                   ; preds = %do.end13.i112
  %75 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %75)
  %cmp20.i113 = icmp sgt i32 %75, -1
  br i1 %cmp20.i113, label %do.end25.i117, label %do.body19.i114.mt9v011_write.exit118_crit_edge

do.body19.i114.mt9v011_write.exit118_crit_edge:   ; preds = %do.body19.i114
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt9v011_write.exit118

do.end25.i117:                                    ; preds = %do.body19.i114
  call void @__sanitizer_cov_trace_pc() #9
  %name27.i115 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call29.i116 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name27.i115, i32 noundef %call.i.i110) #10
  br label %mt9v011_write.exit118

mt9v011_write.exit118:                            ; preds = %do.end25.i117, %do.body19.i114.mt9v011_write.exit118_crit_edge, %do.end13.i112.mt9v011_write.exit118_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buffer.i101) #7
  call fastcc void @calc_fps(ptr noundef %sd, ptr noundef null, ptr noundef null)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @calc_fps(ptr noundef %sd, ptr noundef writeonly %numerator, ptr noundef writeonly %denominator) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call fastcc i32 @mt9v011_read(ptr noundef %sd, i8 noundef zeroext 3)
  %call2 = tail call fastcc i32 @mt9v011_read(ptr noundef %sd, i8 noundef zeroext 4)
  %call3 = tail call fastcc i32 @mt9v011_read(ptr noundef %sd, i8 noundef zeroext 5)
  %call4 = tail call fastcc i32 @mt9v011_read(ptr noundef %sd, i8 noundef zeroext 6)
  %call5 = tail call fastcc i32 @mt9v011_read(ptr noundef %sd, i8 noundef zeroext 10)
  %add = add i32 %call2, 113
  %add6 = add i32 %add, %call3
  %add7 = add i32 %call5, 2
  %add8 = add i32 %call1, 1
  %add9 = add i32 %add8, %call4
  %mul = mul i32 %add9, %add6
  %mul10 = mul i32 %mul, %add7
  %xtal = getelementptr inbounds %struct.mt9v011, ptr %sd, i32 0, i32 5
  %0 = ptrtoint ptr %xtal to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %xtal, align 4
  %mul11 = mul i32 %1, 1000
  %div189 = udiv i32 %mul11, %mul10
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp198 = icmp sgt i32 %2, 0
  br i1 %cmp198, label %do.end, label %entry.do.end208_crit_edge

entry.do.end208_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end208

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %div189.frozen = freeze i32 %div189
  %div203 = udiv i32 %div189.frozen, 1000
  %3 = mul i32 %div203, 1000
  %rem204.decomposed = sub i32 %div189.frozen, %3
  %call205 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name, i32 noundef %div203, i32 noundef %rem204.decomposed, i32 noundef %mul10) #10
  br label %do.end208

do.end208:                                        ; preds = %do.end, %entry.do.end208_crit_edge
  %tobool209.not = icmp eq ptr %numerator, null
  %tobool211.not = icmp eq ptr %denominator, null
  %or.cond = or i1 %tobool209.not, %tobool211.not
  br i1 %or.cond, label %do.end208.if.end214_crit_edge, label %if.then212

do.end208.if.end214_crit_edge:                    ; preds = %do.end208
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end214

if.then212:                                       ; preds = %do.end208
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %numerator to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1000, ptr %numerator, align 4
  %5 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div189, ptr %denominator, align 4
  br label %if.end214

if.end214:                                        ; preds = %if.then212, %do.end208.if.end214_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9v011_g_frame_interval(ptr noundef %sd, ptr noundef %ival) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %ival, i32 0, i32 1
  %denominator = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %ival, i32 0, i32 1, i32 1
  tail call fastcc void @calc_fps(ptr noundef %sd, ptr noundef %interval, ptr noundef %denominator)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9v011_s_frame_interval(ptr noundef %sd, ptr noundef %ival) #2 align 64 {
entry:
  %buffer.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %ival, i32 0, i32 1
  %0 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %interval, align 4
  %denominator = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %ival, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %denominator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not.i = icmp eq i32 %3, 0
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %entry.calc_speed.exit_crit_edge, label %if.end.i

entry.calc_speed.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %calc_speed.exit

if.end.i:                                         ; preds = %entry
  %call2.i = tail call fastcc i32 @mt9v011_read(ptr noundef %sd, i8 noundef zeroext 3) #7
  %call3.i = tail call fastcc i32 @mt9v011_read(ptr noundef %sd, i8 noundef zeroext 4) #7
  %call4.i = tail call fastcc i32 @mt9v011_read(ptr noundef %sd, i8 noundef zeroext 5) #7
  %call5.i = tail call fastcc i32 @mt9v011_read(ptr noundef %sd, i8 noundef zeroext 6) #7
  %add.i = add i32 %call3.i, 113
  %add6.i = add i32 %add.i, %call4.i
  %add7.i = add i32 %call2.i, 1
  %add8.i = add i32 %add7.i, %call5.i
  %xtal.i = getelementptr inbounds %struct.mt9v011, ptr %sd, i32 0, i32 5
  %4 = ptrtoint ptr %xtal.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xtal.i, align 4
  %conv.i = zext i32 %5 to i64
  %conv9.i = zext i32 %1 to i64
  %mul.i = mul nuw i64 %conv.i, %conv9.i
  %div607.i = lshr i32 %3, 1
  %conv10.i = zext i32 %div607.i to i64
  %add11.i = add nuw i64 %mul.i, %conv10.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add11.i)
  %cmp184.i = icmp ult i64 %add11.i, 4294967296
  br i1 %cmp184.i, label %if.then188.i, label %if.else194.i, !prof !104

if.then188.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv189.i = trunc i64 %add11.i to i32
  %div192.i = udiv i32 %conv189.i, %3
  %conv193.i = zext i32 %div192.i to i64
  br label %if.end198.i

if.else194.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %3, i64 %add11.i) #11, !srcloc !105
  %asmresult1.i.i = extractvalue { i64, i64 } %6, 1
  br label %if.end198.i

if.end198.i:                                      ; preds = %if.else194.i, %if.then188.i
  %t_time.0.i = phi i64 [ %conv193.i, %if.then188.i ], [ %asmresult1.i.i, %if.else194.i ]
  %mul201.i = mul i32 %add8.i, %add6.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %t_time.0.i)
  %cmp402.i = icmp ult i64 %t_time.0.i, 4294967296
  br i1 %cmp402.i, label %if.then410.i, label %if.else416.i, !prof !104

if.then410.i:                                     ; preds = %if.end198.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv411.i = trunc i64 %t_time.0.i to i32
  %div414.i = udiv i32 %conv411.i, %mul201.i
  %conv415.i = zext i32 %div414.i to i64
  br label %if.end420.i

if.else416.i:                                     ; preds = %if.end198.i
  call void @__sanitizer_cov_trace_pc() #9
  %7 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul201.i, i64 %t_time.0.i) #11, !srcloc !105
  %asmresult1.i635.i = extractvalue { i64, i64 } %7, 1
  br label %if.end420.i

if.end420.i:                                      ; preds = %if.else416.i, %if.then410.i
  %speed.0.i = phi i64 [ %conv415.i, %if.then410.i ], [ %asmresult1.i635.i, %if.else416.i ]
  %8 = tail call i64 @llvm.usub.sat.i64(i64 %speed.0.i, i64 2) #7
  %9 = tail call i64 @llvm.umin.i64(i64 %8, i64 15) #7
  %10 = trunc i64 %9 to i16
  br label %calc_speed.exit

calc_speed.exit:                                  ; preds = %if.end420.i, %entry.calc_speed.exit_crit_edge
  %retval.0.i = phi i16 [ 0, %entry.calc_speed.exit_crit_edge ], [ %10, %if.end420.i ]
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %11 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buffer.i) #7
  %13 = getelementptr inbounds [3 x i8], ptr %buffer.i, i32 0, i32 1
  %14 = getelementptr inbounds [3 x i8], ptr %buffer.i, i32 0, i32 2
  %15 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 10, ptr %buffer.i, align 1
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %13, align 1
  %conv4.i = trunc i16 %retval.0.i to i8
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv4.i, ptr %14, align 1
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.i14 = icmp sgt i32 %18, 1
  br i1 %cmp.i14, label %do.end.i, label %calc_speed.exit.do.end13.i_crit_edge

calc_speed.exit.do.end13.i_crit_edge:             ; preds = %calc_speed.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13.i

do.end.i:                                         ; preds = %calc_speed.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i15 = zext i16 %retval.0.i to i32
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name.i, i32 noundef 10, i32 noundef %conv.i15) #10
  br label %do.end13.i

do.end13.i:                                       ; preds = %do.end.i, %calc_speed.exit.do.end13.i_crit_edge
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %12, ptr noundef nonnull %buffer.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp16.not.i = icmp eq i32 %call.i.i, 3
  br i1 %cmp16.not.i, label %do.end13.i.mt9v011_write.exit_crit_edge, label %do.body19.i

do.end13.i.mt9v011_write.exit_crit_edge:          ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt9v011_write.exit

do.body19.i:                                      ; preds = %do.end13.i
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp20.i = icmp sgt i32 %19, -1
  br i1 %cmp20.i, label %do.end25.i, label %mt9v011_write.exit.thread

mt9v011_write.exit.thread:                        ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buffer.i) #7
  br label %do.end4

do.end25.i:                                       ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #9
  %name27.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call29.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name27.i, i32 noundef %call.i.i) #10
  br label %mt9v011_write.exit

mt9v011_write.exit:                               ; preds = %do.end25.i, %do.end13.i.mt9v011_write.exit_crit_edge
  %.pr = load i32, ptr @debug, align 4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buffer.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp = icmp sgt i32 %.pr, 0
  br i1 %cmp, label %do.end, label %mt9v011_write.exit.do.end4_crit_edge

mt9v011_write.exit.do.end4_crit_edge:             ; preds = %mt9v011_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %mt9v011_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv = zext i16 %retval.0.i to i32
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name, i32 noundef %conv) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %mt9v011_write.exit.do.end4_crit_edge, %mt9v011_write.exit.thread
  call fastcc void @calc_fps(ptr noundef %sd, ptr noundef %interval, ptr noundef %denominator)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt9v011_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %code1 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %4 = ptrtoint ptr %code1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 12290, ptr %code1, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9v011_set_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12290, i32 %3)
  %cmp.not = icmp eq i32 %3, 12290
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  tail call void @v4l_bound_align_image(ptr noundef %format1, i32 noundef 48, i32 noundef 639, i32 noundef 1, ptr noundef %height, i32 noundef 32, i32 noundef 480, i32 noundef 1, i32 noundef 0) #7
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %field, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %5 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8, ptr %colorspace, align 4
  %6 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp2 = icmp eq i32 %7, 1
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %format1, align 4
  %width5 = getelementptr inbounds %struct.mt9v011, ptr %sd, i32 0, i32 3
  %10 = ptrtoint ptr %width5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %width5, align 4
  %11 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height, align 4
  %height7 = getelementptr inbounds %struct.mt9v011, ptr %sd, i32 0, i32 4
  %13 = ptrtoint ptr %height7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %height7, align 4
  tail call fastcc void @set_res(ptr noundef %sd)
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sd_state, align 4
  %16 = call ptr @memcpy(ptr %15, ptr %format1, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then3, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9v011_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %buffer.i.i37 = alloca [3 x i8], align 1
  %buffer.i.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -228
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 9963795, label %sw.bb
    i32 9963793, label %sw.bb2
    i32 9963790, label %sw.bb5
    i32 9963791, label %sw.bb8
    i32 9963796, label %sw.bb11
    i32 9963797, label %sw.bb13
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i16
  %global_gain = getelementptr i8, ptr %1, i32 198
  %7 = ptrtoint ptr %global_gain to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %global_gain, align 2
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val3, align 4
  %conv4 = trunc i32 %9 to i16
  %exposure = getelementptr i8, ptr %1, i32 200
  %10 = ptrtoint ptr %exposure to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv4, ptr %exposure, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %11 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val6, align 4
  %conv7 = trunc i32 %12 to i16
  %red_bal = getelementptr i8, ptr %1, i32 202
  %13 = ptrtoint ptr %red_bal to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv7, ptr %red_bal, align 2
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val9 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %14 = ptrtoint ptr %val9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val9, align 4
  %conv10 = trunc i32 %15 to i16
  %blue_bal = getelementptr i8, ptr %1, i32 204
  %16 = ptrtoint ptr %blue_bal to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv10, ptr %blue_bal, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %val12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %17 = ptrtoint ptr %val12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val12, align 4
  %hflip = getelementptr i8, ptr %1, i32 196
  %19 = trunc i32 %18 to i8
  %20 = ptrtoint ptr %hflip to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %hflip, align 4
  %bf.shl = shl i8 %19, 7
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %hflip, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.set)
  %tobool.not.i = icmp sgt i8 %bf.set, -1
  %spec.select.i = select i1 %tobool.not.i, i16 4096, i16 20480
  %21 = and i8 %bf.load, 64
  %22 = zext i8 %21 to i16
  %23 = shl nuw i16 %22, 9
  %24 = or i16 %spec.select.i, %23
  %dev_priv.i.i.i = getelementptr i8, ptr %1, i32 -76
  %25 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buffer.i.i) #7
  %27 = getelementptr inbounds [3 x i8], ptr %buffer.i.i, i32 0, i32 1
  %28 = getelementptr inbounds [3 x i8], ptr %buffer.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 32, ptr %buffer.i.i, align 1
  %30 = lshr exact i16 %24, 8
  %conv1.i.i = trunc i16 %30 to i8
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv1.i.i, ptr %27, align 1
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %28, align 1
  %33 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp.i.i = icmp sgt i32 %33, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %sw.bb11.do.end13.i.i_crit_edge

sw.bb11.do.end13.i.i_crit_edge:                   ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13.i.i

do.end.i.i:                                       ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i = zext i16 %24 to i32
  %name.i.i = getelementptr i8, ptr %1, i32 -112
  %call11.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name.i.i, i32 noundef 32, i32 noundef %conv.i.i) #10
  br label %do.end13.i.i

do.end13.i.i:                                     ; preds = %do.end.i.i, %sw.bb11.do.end13.i.i_crit_edge
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %26, ptr noundef nonnull %buffer.i.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i)
  %cmp16.not.i.i = icmp eq i32 %call.i.i.i, 3
  br i1 %cmp16.not.i.i, label %do.end13.i.i.set_read_mode.exit_crit_edge, label %do.body19.i.i

do.end13.i.i.set_read_mode.exit_crit_edge:        ; preds = %do.end13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_read_mode.exit

do.body19.i.i:                                    ; preds = %do.end13.i.i
  %34 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp20.i.i = icmp sgt i32 %34, -1
  br i1 %cmp20.i.i, label %do.end25.i.i, label %do.body19.i.i.set_read_mode.exit_crit_edge

do.body19.i.i.set_read_mode.exit_crit_edge:       ; preds = %do.body19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_read_mode.exit

do.end25.i.i:                                     ; preds = %do.body19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %name27.i.i = getelementptr i8, ptr %1, i32 -112
  %call29.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name27.i.i, i32 noundef %call.i.i.i) #10
  br label %set_read_mode.exit

set_read_mode.exit:                               ; preds = %do.end25.i.i, %do.body19.i.i.set_read_mode.exit_crit_edge, %do.end13.i.i.set_read_mode.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buffer.i.i) #7
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  %val14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %35 = ptrtoint ptr %val14 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val14, align 4
  %vflip = getelementptr i8, ptr %1, i32 196
  %37 = trunc i32 %36 to i8
  %38 = ptrtoint ptr %vflip to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load15 = load i8, ptr %vflip, align 4
  %bf.value16 = shl i8 %37, 6
  %bf.shl17 = and i8 %bf.value16, 64
  %bf.clear18 = and i8 %bf.load15, -65
  %bf.set19 = or i8 %bf.shl17, %bf.clear18
  store i8 %bf.set19, ptr %vflip, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.set19)
  %tobool.not.i40 = icmp sgt i8 %bf.set19, -1
  %spec.select.i41 = select i1 %tobool.not.i40, i16 4096, i16 20480
  %39 = zext i8 %bf.shl17 to i16
  %40 = shl nuw i16 %39, 9
  %41 = or i16 %spec.select.i41, %40
  %dev_priv.i.i.i42 = getelementptr i8, ptr %1, i32 -76
  %42 = ptrtoint ptr %dev_priv.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev_priv.i.i.i42, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buffer.i.i37) #7
  %44 = getelementptr inbounds [3 x i8], ptr %buffer.i.i37, i32 0, i32 1
  %45 = getelementptr inbounds [3 x i8], ptr %buffer.i.i37, i32 0, i32 2
  %46 = ptrtoint ptr %buffer.i.i37 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 32, ptr %buffer.i.i37, align 1
  %47 = lshr exact i16 %41, 8
  %conv1.i.i43 = trunc i16 %47 to i8
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv1.i.i43, ptr %44, align 1
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %45, align 1
  %50 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp.i.i44 = icmp sgt i32 %50, 1
  br i1 %cmp.i.i44, label %do.end.i.i48, label %sw.bb13.do.end13.i.i51_crit_edge

sw.bb13.do.end13.i.i51_crit_edge:                 ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13.i.i51

do.end.i.i48:                                     ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i45 = zext i16 %41 to i32
  %name.i.i46 = getelementptr i8, ptr %1, i32 -112
  %call11.i.i47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name.i.i46, i32 noundef 32, i32 noundef %conv.i.i45) #10
  br label %do.end13.i.i51

do.end13.i.i51:                                   ; preds = %do.end.i.i48, %sw.bb13.do.end13.i.i51_crit_edge
  %call.i.i.i49 = call i32 @i2c_transfer_buffer_flags(ptr noundef %43, ptr noundef nonnull %buffer.i.i37, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i49)
  %cmp16.not.i.i50 = icmp eq i32 %call.i.i.i49, 3
  br i1 %cmp16.not.i.i50, label %do.end13.i.i51.set_read_mode.exit57_crit_edge, label %do.body19.i.i53

do.end13.i.i51.set_read_mode.exit57_crit_edge:    ; preds = %do.end13.i.i51
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_read_mode.exit57

do.body19.i.i53:                                  ; preds = %do.end13.i.i51
  %51 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %cmp20.i.i52 = icmp sgt i32 %51, -1
  br i1 %cmp20.i.i52, label %do.end25.i.i56, label %do.body19.i.i53.set_read_mode.exit57_crit_edge

do.body19.i.i53.set_read_mode.exit57_crit_edge:   ; preds = %do.body19.i.i53
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_read_mode.exit57

do.end25.i.i56:                                   ; preds = %do.body19.i.i53
  call void @__sanitizer_cov_trace_pc() #9
  %name27.i.i54 = getelementptr i8, ptr %1, i32 -112
  %call29.i.i55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name27.i.i54, i32 noundef %call.i.i.i49) #10
  br label %set_read_mode.exit57

set_read_mode.exit57:                             ; preds = %do.end25.i.i56, %do.body19.i.i53.set_read_mode.exit57_crit_edge, %do.end13.i.i51.set_read_mode.exit57_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buffer.i.i37) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb5, %sw.bb2, %sw.bb
  tail call fastcc void @set_balance(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %set_read_mode.exit57, %set_read_mode.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %set_read_mode.exit57 ], [ 0, %set_read_mode.exit ], [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smax.i16(i16, i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smin.i16(i16, i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
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
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !18, !20, !22, !24, !25, !26, !27, !28, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !47, !49, !50, !51, !52, !54, !55, !56, !58, !60, !61, !62, !63, !65, !67, !68, !69, !70, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !89, !90, !91, !92}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @__UNIQUE_ID_description292, !1, !"__UNIQUE_ID_description292", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/mt9v011.c", i32 17, i32 1}
!2 = !{ptr @__UNIQUE_ID_author293, !3, !"__UNIQUE_ID_author293", i1 false, i1 false}
!3 = !{!"../drivers/media/i2c/mt9v011.c", i32 18, i32 1}
!4 = !{ptr @__UNIQUE_ID_file294, !5, !"__UNIQUE_ID_file294", i1 false, i1 false}
!5 = !{!"../drivers/media/i2c/mt9v011.c", i32 19, i32 1}
!6 = !{ptr @__UNIQUE_ID_license295, !5, !"__UNIQUE_ID_license295", i1 false, i1 false}
!7 = !{ptr @__param_debug, !8, !"__param_debug", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/mt9v011.c", i32 22, i32 1}
!9 = !{ptr @__UNIQUE_ID_debugtype296, !8, !"__UNIQUE_ID_debugtype296", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_debug297, !11, !"__UNIQUE_ID_debug297", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/mt9v011.c", i32 23, i32 1}
!12 = !{ptr @__initcall__kmod_mt9v011__298_596_mt9v011_driver_init6, !13, !"__initcall__kmod_mt9v011__298_596_mt9v011_driver_init6", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/mt9v011.c", i32 596, i32 1}
!14 = !{ptr @__exitcall_mt9v011_driver_exit, !13, !"__exitcall_mt9v011_driver_exit", i1 false, i1 false}
!15 = !{ptr @debug, !16, !"debug", i1 false, i1 false}
!16 = !{!"../drivers/media/i2c/mt9v011.c", i32 21, i32 12}
!17 = !{ptr @__param_str_debug, !8, !"__param_str_debug", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/mt9v011.c", i32 589, i32 11}
!20 = !{ptr @mt9v011_driver, !21, !"mt9v011_driver", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/mt9v011.c", i32 587, i32 26}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/mt9v011.c", i32 516, i32 3}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mt9v011_probe._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @mt9v011_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @mt9v011_probe._key, !29, !"_key", i1 false, i1 false}
!29 = !{!"../drivers/media/i2c/mt9v011.c", i32 521, i32 2}
!30 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/i2c/mt9v011.c", i32 538, i32 3}
!33 = !{ptr @mt9v011_probe._entry.5, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @mt9v011_probe._entry_ptr.7, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/i2c/mt9v011.c", i32 554, i32 3}
!37 = !{ptr @mt9v011_probe._entry.8, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @mt9v011_probe._entry_ptr.10, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/mt9v011.c", i32 558, i32 2}
!41 = !{ptr @mt9v011_probe._entry.11, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @mt9v011_probe._entry_ptr.13, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @mt9v011_ops, !44, !"mt9v011_ops", i1 false, i1 false}
!44 = !{!"../drivers/media/i2c/mt9v011.c", i32 470, i32 37}
!45 = !{ptr @mt9v011_core_ops, !46, !"mt9v011_core_ops", i1 false, i1 false}
!46 = !{!"../drivers/media/i2c/mt9v011.c", i32 452, i32 42}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/i2c/mt9v011.c", i32 106, i32 2}
!49 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @mt9v011_write._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @mt9v011_write._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/i2c/mt9v011.c", i32 110, i32 3}
!54 = !{ptr @mt9v011_write._entry.16, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @mt9v011_write._entry_ptr.18, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @mt9v011_init_default, !57, !"mt9v011_init_default", i1 false, i1 false}
!57 = !{!"../drivers/media/i2c/mt9v011.c", i32 124, i32 35}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/i2c/mt9v011.c", i32 222, i32 2}
!60 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @calc_fps._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @calc_fps._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @mt9v011_video_ops, !64, !"mt9v011_video_ops", i1 false, i1 false}
!64 = !{!"../drivers/media/i2c/mt9v011.c", i32 460, i32 43}
!65 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/i2c/mt9v011.c", i32 386, i32 2}
!67 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @mt9v011_s_frame_interval._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @mt9v011_s_frame_interval._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @mt9v011_pad_ops, !71, !"mt9v011_pad_ops", i1 false, i1 false}
!71 = !{!"../drivers/media/i2c/mt9v011.c", i32 465, i32 41}
!72 = !{ptr @.str.23, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/i2c/mt9v011.c", i32 78, i32 3}
!74 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @mt9v011_read._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @mt9v011_read._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/i2c/mt9v011.c", i32 85, i32 3}
!79 = !{ptr @mt9v011_read._entry.25, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @mt9v011_read._entry_ptr.27, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.29, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/i2c/mt9v011.c", i32 90, i32 2}
!83 = !{ptr @mt9v011_read._entry.28, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @mt9v011_read._entry_ptr.30, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @mt9v011_ctrl_ops, !86, !"mt9v011_ctrl_ops", i1 false, i1 false}
!86 = !{!"../drivers/media/i2c/mt9v011.c", i32 448, i32 35}
!87 = !{ptr @.str.31, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/i2c/mt9v011.c", i32 569, i32 2}
!89 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @mt9v011_remove._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @mt9v011_remove._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @mt9v011_id, !93, !"mt9v011_id", i1 false, i1 false}
!93 = !{!"../drivers/media/i2c/mt9v011.c", i32 581, i32 35}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{!"auto-init"}
!104 = !{!"branch_weights", i32 2000, i32 1}
!105 = !{i64 2149025097, i64 2149025377, i64 2149025711, i64 2149026045}
