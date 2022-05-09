; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/saa7127.c_pt.bc'
source_filename = "../drivers/media/i2c/saa7127.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_reg_value = type { i8, i8 }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_vbi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.saa7127_state = type { %struct.v4l2_subdev, i64, i32, i32, i32, i32, i32, i16, i32, i16, i32, i16, i32, [5 x i8], i8, i8, i8, i8 }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.91 }
%union.anon.91 = type { i32, [28 x i8] }
%struct.v4l2_sliced_vbi_format = type { i16, [2 x [24 x i16]], i32, [2 x i32] }

@__UNIQUE_ID_description292 = internal constant [59 x i8] c"saa7127.description=Philips SAA7127/9 video encoder driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [57 x i8] c"saa7127.author=Kevin Thayer, Chris Kennedy, Hans Verkuil\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [39 x i8] c"saa7127.file=drivers/media/i2c/saa7127\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [20 x i8] c"saa7127.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [14 x i8] c"saa7127.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype296 = internal constant [27 x i8] c"saa7127.parmtype=debug:int\00", section ".modinfo", align 1
@__param_str_test_image = internal constant [19 x i8] c"saa7127.test_image\00", align 1
@test_image = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_test_image = internal constant %struct.kernel_param { ptr @__param_str_test_image, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @test_image } }, section "__param", align 4
@__UNIQUE_ID_test_imagetype297 = internal constant [32 x i8] c"saa7127.parmtype=test_image:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug298 = internal constant [37 x i8] c"saa7127.parm=debug:debug level (0-2)\00", section ".modinfo", align 1
@__UNIQUE_ID_test_image299 = internal constant [41 x i8] c"saa7127.parm=test_image:test_image (0-1)\00", section ".modinfo", align 1
@__initcall__kmod_saa7127__300_819_saa7127_driver_init6 = internal global ptr @saa7127_driver_init, section ".initcall6.init", align 4
@saa7127_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @saa7127_probe, ptr @saa7127_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @saa7127_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_saa7127_driver_exit = internal global ptr @saa7127_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"saa7127\00", [24 x i8] zeroinitializer }, align 32
@saa7127_id = internal constant { [6 x %struct.i2c_device_id], [48 x i8] } { [6 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"saa7127_auto\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"saa7126\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"saa7127\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"saa7128\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"saa7129\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@saa7127_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017%s %d-%04x: detecting saa7127 client on address 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"saa7127_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/i2c/saa7127.c\00", [36 x i8] zeroinitializer }, align 32
@saa7127_probe._entry_ptr = internal global ptr @saa7127_probe._entry, section ".printk_index", align 4
@saa7127_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @saa7127_core_ops, ptr null, ptr null, ptr @saa7127_video_ops, ptr @saa7127_vbi_ops, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@saa7127_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 739, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: saa7127 not found\0A\00", [39 x i8] zeroinitializer }, align 32
@saa7127_probe._entry_ptr.6 = internal global ptr @saa7127_probe._entry.4, section ".printk_index", align 4
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"saa7129\00", [24 x i8] zeroinitializer }, align 32
@saa7127_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 763, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s: %s found @ 0x%x (%s)\0A\00", [36 x i8] zeroinitializer }, align 32
@saa7127_probe._entry_ptr.10 = internal global ptr @saa7127_probe._entry.8, section ".printk_index", align 4
@saa7127_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 765, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: Configuring encoder\0A\00", [37 x i8] zeroinitializer }, align 32
@saa7127_probe._entry_ptr.13 = internal global ptr @saa7127_probe._entry.11, section ".printk_index", align 4
@saa7127_init_config_common = internal constant { [32 x %struct.i2c_reg_value], [32 x i8] } { [32 x %struct.i2c_reg_value] [%struct.i2c_reg_value { i8 38, i8 13 }, %struct.i2c_reg_value { i8 39, i8 0 }, %struct.i2c_reg_value { i8 42, i8 119 }, %struct.i2c_reg_value { i8 43, i8 65 }, %struct.i2c_reg_value { i8 44, i8 0 }, %struct.i2c_reg_value { i8 45, i8 -65 }, %struct.i2c_reg_value { i8 56, i8 0 }, %struct.i2c_reg_value { i8 57, i8 0 }, %struct.i2c_reg_value { i8 58, i8 -128 }, %struct.i2c_reg_value { i8 103, i8 119 }, %struct.i2c_reg_value { i8 104, i8 65 }, %struct.i2c_reg_value { i8 105, i8 -120 }, %struct.i2c_reg_value { i8 106, i8 65 }, %struct.i2c_reg_value { i8 107, i8 18 }, %struct.i2c_reg_value { i8 108, i8 -7 }, %struct.i2c_reg_value { i8 109, i8 0 }, %struct.i2c_reg_value { i8 112, i8 65 }, %struct.i2c_reg_value { i8 113, i8 -61 }, %struct.i2c_reg_value { i8 114, i8 0 }, %struct.i2c_reg_value { i8 115, i8 62 }, %struct.i2c_reg_value { i8 116, i8 -72 }, %struct.i2c_reg_value { i8 117, i8 3 }, %struct.i2c_reg_value { i8 118, i8 21 }, %struct.i2c_reg_value { i8 119, i8 22 }, %struct.i2c_reg_value { i8 120, i8 21 }, %struct.i2c_reg_value { i8 121, i8 22 }, %struct.i2c_reg_value { i8 122, i8 26 }, %struct.i2c_reg_value { i8 123, i8 1 }, %struct.i2c_reg_value { i8 124, i8 -64 }, %struct.i2c_reg_value { i8 126, i8 0 }, %struct.i2c_reg_value { i8 127, i8 0 }, %struct.i2c_reg_value zeroinitializer], [32 x i8] zeroinitializer }, align 32
@saa7129_init_config_extra = internal constant { [3 x %struct.i2c_reg_value], [26 x i8] } { [3 x %struct.i2c_reg_value] [%struct.i2c_reg_value { i8 45, i8 56 }, %struct.i2c_reg_value { i8 108, i8 -6 }, %struct.i2c_reg_value zeroinitializer], [26 x i8] zeroinitializer }, align 32
@saa7127_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @saa7127_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @saa7127_g_register, ptr @saa7127_s_register, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7127_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr @saa7127_s_routing, ptr null, ptr null, ptr null, ptr @saa7127_s_std_output, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @saa7127_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@saa7127_vbi_ops = internal constant { %struct.v4l2_subdev_vbi_ops, [36 x i8] } { %struct.v4l2_subdev_vbi_ops { ptr null, ptr @saa7127_s_vbi_data, ptr null, ptr null, ptr null, ptr @saa7127_g_sliced_fmt, ptr null }, [36 x i8] zeroinitializer }, align 32
@saa7127_log_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 671, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016%s: Standard: %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"saa7127_log_status\00", [45 x i8] zeroinitializer }, align 32
@saa7127_log_status._entry_ptr = internal global ptr @saa7127_log_status._entry, section ".printk_index", align 4
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"60 Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"50 Hz\00", [26 x i8] zeroinitializer }, align 32
@saa7127_log_status._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.15, ptr @.str.3, i32 672, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016%s: Input:    %s\0A\00", [44 x i8] zeroinitializer }, align 32
@saa7127_log_status._entry_ptr.20 = internal global ptr @saa7127_log_status._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"color bars\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"normal\00", [25 x i8] zeroinitializer }, align 32
@saa7127_log_status._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.15, ptr @.str.3, i32 674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016%s: Output:   %s\0A\00", [44 x i8] zeroinitializer }, align 32
@saa7127_log_status._entry_ptr.25 = internal global ptr @saa7127_log_status._entry.23, section ".printk_index", align 4
@output_strs = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@saa7127_log_status._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.15, ptr @.str.3, i32 676, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016%s: WSS:      %s\0A\00", [44 x i8] zeroinitializer }, align 32
@saa7127_log_status._entry_ptr.29 = internal global ptr @saa7127_log_status._entry.27, section ".printk_index", align 4
@wss_strs = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.43, ptr @.str.46, ptr @.str.43, ptr @.str.43, ptr @.str.47, ptr @.str.48, ptr @.str.43, ptr @.str.43, ptr @.str.49, ptr @.str.43, ptr @.str.50, ptr @.str.51, ptr @.str.43], [32 x i8] zeroinitializer }, align 32
@saa7127_log_status._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.15, ptr @.str.3, i32 677, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016%s: VPS:      %s\0A\00", [44 x i8] zeroinitializer }, align 32
@saa7127_log_status._entry_ptr.32 = internal global ptr @saa7127_log_status._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@saa7127_log_status._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.15, ptr @.str.3, i32 678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016%s: CC:       %s\0A\00", [44 x i8] zeroinitializer }, align 32
@saa7127_log_status._entry_ptr.36 = internal global ptr @saa7127_log_status._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"S-Video + Composite\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Composite\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"S-Video\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RGB\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"YUV C\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"YUV V\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"invalid\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"letterbox 14:9 center\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"letterbox 14:9 top\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"letterbox 16:9 top\00", [45 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"16:9 full format anamorphic\00", [36 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"4:3 full format\00", [16 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"letterbox 16:9 center\00", [42 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"letterbox >16:9 center\00", [41 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"14:9 full format center\00", [40 x i8] zeroinitializer }, align 32
@saa7127_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s: I2C Write Problem\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"saa7127_write\00", [18 x i8] zeroinitializer }, align 32
@saa7127_write._entry_ptr = internal global ptr @saa7127_write._entry, section ".printk_index", align 4
@saa7127_set_std._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: Selecting 60 Hz video Standard\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"saa7127_set_std\00", [16 x i8] zeroinitializer }, align 32
@saa7127_set_std._entry_ptr = internal global ptr @saa7127_set_std._entry, section ".printk_index", align 4
@saa7127_init_config_60hz = internal constant { [17 x %struct.i2c_reg_value], [62 x i8] } { [17 x %struct.i2c_reg_value] [%struct.i2c_reg_value { i8 40, i8 25 }, %struct.i2c_reg_value { i8 41, i8 29 }, %struct.i2c_reg_value { i8 90, i8 -93 }, %struct.i2c_reg_value { i8 91, i8 -104 }, %struct.i2c_reg_value { i8 92, i8 -45 }, %struct.i2c_reg_value { i8 93, i8 57 }, %struct.i2c_reg_value { i8 94, i8 46 }, %struct.i2c_reg_value { i8 95, i8 46 }, %struct.i2c_reg_value { i8 97, i8 21 }, %struct.i2c_reg_value { i8 98, i8 77 }, %struct.i2c_reg_value { i8 99, i8 31 }, %struct.i2c_reg_value { i8 100, i8 124 }, %struct.i2c_reg_value { i8 101, i8 -16 }, %struct.i2c_reg_value { i8 102, i8 33 }, %struct.i2c_reg_value { i8 110, i8 -112 }, %struct.i2c_reg_value { i8 111, i8 17 }, %struct.i2c_reg_value zeroinitializer], [62 x i8] zeroinitializer }, align 32
@saa7127_set_std._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.3, i32 482, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s: Selecting 50 Hz SECAM video Standard\0A\00", [52 x i8] zeroinitializer }, align 32
@saa7127_set_std._entry_ptr.58 = internal global ptr @saa7127_set_std._entry.56, section ".printk_index", align 4
@saa7127_init_config_50hz_secam = internal constant { [17 x %struct.i2c_reg_value], [62 x i8] } { [17 x %struct.i2c_reg_value] [%struct.i2c_reg_value { i8 40, i8 33 }, %struct.i2c_reg_value { i8 41, i8 29 }, %struct.i2c_reg_value { i8 90, i8 63 }, %struct.i2c_reg_value { i8 91, i8 106 }, %struct.i2c_reg_value { i8 92, i8 -127 }, %struct.i2c_reg_value { i8 93, i8 51 }, %struct.i2c_reg_value { i8 94, i8 53 }, %struct.i2c_reg_value { i8 95, i8 53 }, %struct.i2c_reg_value { i8 97, i8 8 }, %struct.i2c_reg_value { i8 98, i8 47 }, %struct.i2c_reg_value { i8 99, i8 -78 }, %struct.i2c_reg_value { i8 100, i8 59 }, %struct.i2c_reg_value { i8 101, i8 -93 }, %struct.i2c_reg_value { i8 102, i8 40 }, %struct.i2c_reg_value { i8 110, i8 -112 }, %struct.i2c_reg_value { i8 111, i8 0 }, %struct.i2c_reg_value zeroinitializer], [62 x i8] zeroinitializer }, align 32
@saa7127_set_std._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.55, ptr @.str.3, i32 487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s: Selecting 50 Hz PAL video Standard\0A\00", [54 x i8] zeroinitializer }, align 32
@saa7127_set_std._entry_ptr.61 = internal global ptr @saa7127_set_std._entry.59, section ".printk_index", align 4
@saa7127_init_config_50hz_pal = internal constant { [17 x %struct.i2c_reg_value], [62 x i8] } { [17 x %struct.i2c_reg_value] [%struct.i2c_reg_value { i8 40, i8 33 }, %struct.i2c_reg_value { i8 41, i8 29 }, %struct.i2c_reg_value { i8 90, i8 63 }, %struct.i2c_reg_value { i8 91, i8 125 }, %struct.i2c_reg_value { i8 92, i8 -81 }, %struct.i2c_reg_value { i8 93, i8 51 }, %struct.i2c_reg_value { i8 94, i8 53 }, %struct.i2c_reg_value { i8 95, i8 53 }, %struct.i2c_reg_value { i8 97, i8 2 }, %struct.i2c_reg_value { i8 98, i8 47 }, %struct.i2c_reg_value { i8 99, i8 -53 }, %struct.i2c_reg_value { i8 100, i8 -118 }, %struct.i2c_reg_value { i8 101, i8 9 }, %struct.i2c_reg_value { i8 102, i8 42 }, %struct.i2c_reg_value { i8 110, i8 -96 }, %struct.i2c_reg_value { i8 111, i8 0 }, %struct.i2c_reg_value zeroinitializer], [62 x i8] zeroinitializer }, align 32
@saa7127_set_output_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.3, i32 548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: Selecting %s output type\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"saa7127_set_output_type\00", [40 x i8] zeroinitializer }, align 32
@saa7127_set_output_type._entry_ptr = internal global ptr @saa7127_set_output_type._entry, section ".printk_index", align 4
@saa7127_set_vps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.3, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: Turn VPS Signal %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"saa7127_set_vps\00", [16 x i8] zeroinitializer }, align 32
@saa7127_set_vps._entry_ptr = internal global ptr @saa7127_set_vps._entry, section ".printk_index", align 4
@.str.66 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@saa7127_set_vps._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.65, ptr @.str.3, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: Set VPS data %*ph\0A\00", [39 x i8] zeroinitializer }, align 32
@saa7127_set_vps._entry_ptr.70 = internal global ptr @saa7127_set_vps._entry.68, section ".printk_index", align 4
@saa7127_set_wss._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.3, i32 430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s: Turn WSS %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"saa7127_set_wss\00", [16 x i8] zeroinitializer }, align 32
@saa7127_set_wss._entry_ptr = internal global ptr @saa7127_set_wss._entry, section ".printk_index", align 4
@saa7127_set_wss._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.3, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: WSS mode: %s\0A\00", [44 x i8] zeroinitializer }, align 32
@saa7127_set_wss._entry_ptr.75 = internal global ptr @saa7127_set_wss._entry.73, section ".printk_index", align 4
@saa7127_set_cc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.3, i32 379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: Turn CC %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"saa7127_set_cc\00", [17 x i8] zeroinitializer }, align 32
@saa7127_set_cc._entry_ptr = internal global ptr @saa7127_set_cc._entry, section ".printk_index", align 4
@saa7127_set_cc._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.3, i32 387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: CC data: %04x\0A\00", [43 x i8] zeroinitializer }, align 32
@saa7127_set_cc._entry_ptr.80 = internal global ptr @saa7127_set_cc._entry.78, section ".printk_index", align 4
@saa7127_set_xds._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.3, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s: Turn XDS %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"saa7127_set_xds\00", [16 x i8] zeroinitializer }, align 32
@saa7127_set_xds._entry_ptr = internal global ptr @saa7127_set_xds._entry, section ".printk_index", align 4
@saa7127_set_xds._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.82, ptr @.str.3, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: XDS data: %04x\0A\00", [42 x i8] zeroinitializer }, align 32
@saa7127_set_xds._entry_ptr.85 = internal global ptr @saa7127_set_xds._entry.83, section ".printk_index", align 4
@saa7127_set_input_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.3, i32 565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: Selecting Normal Encoder Input\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"saa7127_set_input_type\00", [41 x i8] zeroinitializer }, align 32
@saa7127_set_input_type._entry_ptr = internal global ptr @saa7127_set_input_type._entry, section ".printk_index", align 4
@saa7127_set_input_type._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.87, ptr @.str.3, i32 570, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: Selecting Color Bar generator\0A\00", [59 x i8] zeroinitializer }, align 32
@saa7127_set_input_type._entry_ptr.90 = internal global ptr @saa7127_set_input_type._entry.88, section ".printk_index", align 4
@saa7127_set_video_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.3, i32 452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: Enable Video Output\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"saa7127_set_video_enable\00", [39 x i8] zeroinitializer }, align 32
@saa7127_set_video_enable._entry_ptr = internal global ptr @saa7127_set_video_enable._entry, section ".printk_index", align 4
@saa7127_set_video_enable._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.3, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: Disable Video Output\0A\00", [36 x i8] zeroinitializer }, align 32
@saa7127_set_video_enable._entry_ptr.95 = internal global ptr @saa7127_set_video_enable._entry.93, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.97 = internal global [5 x i64] [i64 3, i64 32, i64 1024, i64 4096, i64 16384]
@___asan_gen_.98 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 46, i32 12 }
@___asan_gen_.101 = private unnamed_addr constant [11 x i8] c"test_image\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 47, i32 12 }
@___asan_gen_.104 = private unnamed_addr constant [15 x i8] c"saa7127_driver\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 810, i32 26 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 812, i32 11 }
@___asan_gen_.110 = private unnamed_addr constant [11 x i8] c"saa7127_id\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 800, i32 35 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 722, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [12 x i8] c"saa7127_ops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 703, i32 37 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 739, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 755, i32 26 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 762, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 765, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant [27 x i8] c"saa7127_init_config_common\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 131, i32 35 }
@___asan_gen_.152 = private unnamed_addr constant [26 x i8] c"saa7129_init_config_extra\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 125, i32 35 }
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"saa7127_core_ops\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 684, i32 42 }
@___asan_gen_.158 = private unnamed_addr constant [18 x i8] c"saa7127_video_ops\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 692, i32 43 }
@___asan_gen_.161 = private unnamed_addr constant [16 x i8] c"saa7127_vbi_ops\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 698, i32 41 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 671, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 672, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant [12 x i8] c"output_strs\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 271, i32 27 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 673, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 675, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant [9 x i8] c"wss_strs\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 281, i32 27 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 677, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 678, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 273, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 274, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 275, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 276, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 277, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 278, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 282, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 283, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 284, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 286, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 289, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 290, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 293, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 295, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 296, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 320, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 472, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant [25 x i8] c"saa7127_init_config_60hz\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 167, i32 35 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 481, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant [31 x i8] c"saa7127_init_config_50hz_secam\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 211, i32 29 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 487, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant [29 x i8] c"saa7127_init_config_50hz_pal\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 189, i32 29 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 547, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 346, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 358, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 430, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 439, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 378, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 387, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 405, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 413, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 565, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 570, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 452, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.413 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.414 = private constant [31 x i8] c"../drivers/media/i2c/saa7127.c\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 456, i32 3 }
@llvm.compiler.used = appending global [146 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug298, ptr @__UNIQUE_ID_debugtype296, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__UNIQUE_ID_test_image299, ptr @__UNIQUE_ID_test_imagetype297, ptr @__exitcall_saa7127_driver_exit, ptr @__initcall__kmod_saa7127__300_819_saa7127_driver_init6, ptr @__param_debug, ptr @__param_test_image, ptr @saa7127_driver_exit, ptr @saa7127_log_status._entry, ptr @saa7127_log_status._entry.18, ptr @saa7127_log_status._entry.23, ptr @saa7127_log_status._entry.27, ptr @saa7127_log_status._entry.30, ptr @saa7127_log_status._entry.34, ptr @saa7127_log_status._entry_ptr, ptr @saa7127_log_status._entry_ptr.20, ptr @saa7127_log_status._entry_ptr.25, ptr @saa7127_log_status._entry_ptr.29, ptr @saa7127_log_status._entry_ptr.32, ptr @saa7127_log_status._entry_ptr.36, ptr @saa7127_probe._entry, ptr @saa7127_probe._entry.11, ptr @saa7127_probe._entry.4, ptr @saa7127_probe._entry.8, ptr @saa7127_probe._entry_ptr, ptr @saa7127_probe._entry_ptr.10, ptr @saa7127_probe._entry_ptr.13, ptr @saa7127_probe._entry_ptr.6, ptr @saa7127_set_cc._entry, ptr @saa7127_set_cc._entry.78, ptr @saa7127_set_cc._entry_ptr, ptr @saa7127_set_cc._entry_ptr.80, ptr @saa7127_set_input_type._entry, ptr @saa7127_set_input_type._entry.88, ptr @saa7127_set_input_type._entry_ptr, ptr @saa7127_set_input_type._entry_ptr.90, ptr @saa7127_set_output_type._entry, ptr @saa7127_set_output_type._entry_ptr, ptr @saa7127_set_std._entry, ptr @saa7127_set_std._entry.56, ptr @saa7127_set_std._entry.59, ptr @saa7127_set_std._entry_ptr, ptr @saa7127_set_std._entry_ptr.58, ptr @saa7127_set_std._entry_ptr.61, ptr @saa7127_set_video_enable._entry, ptr @saa7127_set_video_enable._entry.93, ptr @saa7127_set_video_enable._entry_ptr, ptr @saa7127_set_video_enable._entry_ptr.95, ptr @saa7127_set_vps._entry, ptr @saa7127_set_vps._entry.68, ptr @saa7127_set_vps._entry_ptr, ptr @saa7127_set_vps._entry_ptr.70, ptr @saa7127_set_wss._entry, ptr @saa7127_set_wss._entry.73, ptr @saa7127_set_wss._entry_ptr, ptr @saa7127_set_wss._entry_ptr.75, ptr @saa7127_set_xds._entry, ptr @saa7127_set_xds._entry.83, ptr @saa7127_set_xds._entry_ptr, ptr @saa7127_set_xds._entry_ptr.85, ptr @saa7127_write._entry, ptr @saa7127_write._entry_ptr, ptr @debug, ptr @test_image, ptr @saa7127_driver, ptr @.str, ptr @saa7127_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @saa7127_ops, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @saa7127_init_config_common, ptr @saa7129_init_config_extra, ptr @saa7127_core_ops, ptr @saa7127_video_ops, ptr @saa7127_vbi_ops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @output_strs, ptr @.str.26, ptr @.str.28, ptr @wss_strs, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @saa7127_init_config_60hz, ptr @.str.57, ptr @saa7127_init_config_50hz_secam, ptr @.str.60, ptr @saa7127_init_config_50hz_pal, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @.str.91, ptr @.str.92, ptr @.str.94], section "llvm.metadata"
@0 = internal global [106 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_image to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7127_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7127_id to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7127_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7127_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7127_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7127_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7127_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7127_init_config_common to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7129_init_config_extra to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7127_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7127_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7127_vbi_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7127_log_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7127_log_status._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7127_log_status._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @output_strs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7127_log_status._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wss_strs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7127_log_status._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7127_log_status._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7127_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7127_set_std._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7127_init_config_60hz to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7127_set_std._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7127_init_config_50hz_secam to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7127_set_std._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7127_init_config_50hz_pal to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7127_set_output_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7127_set_vps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7127_set_vps._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7127_set_wss._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7127_set_wss._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7127_set_cc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7127_set_cc._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7127_set_xds._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7127_set_xds._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7127_set_input_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7127_set_input_type._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7127_set_video_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7127_set_video_enable._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7127_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @saa7127_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @saa7127_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @saa7127_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7127_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %vbi = alloca %struct.v4l2_sliced_vbi_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %vbi) #6
  %0 = call ptr @memset(ptr %vbi, i32 0, i32 64)
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %6(ptr noundef %2) #6
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp sgt i32 %7, 0
  br i1 %cmp, label %do.end, label %do.body.do.end10_crit_edge

do.body.do.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %driver = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %8 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %16 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %addr, align 2
  %conv = zext i16 %17 to i32
  %shl = shl nuw nsw i32 %conv, 1
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %11, i32 noundef %15, i32 noundef %conv, i32 noundef %shl) #9
  br label %do.end10

do.end10:                                         ; preds = %do.end, %do.body.do.end10_crit_edge
  %dev11 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev11, i32 noundef 264, i32 noundef 3520) #6
  %cmp13 = icmp eq ptr %call.i, null
  br i1 %cmp13, label %do.end10.cleanup_crit_edge, label %if.end16

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %do.end10
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @saa7127_ops) #6
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 11
  %18 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %19, i8 noundef zeroext 0) #6
  %and = and i32 %call1.i, 228
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp19.not = icmp eq i32 %and, 0
  br i1 %cmp19.not, label %lor.lhs.false, label %if.end16.do.body26_crit_edge

if.end16.do.body26_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body26

lor.lhs.false:                                    ; preds = %if.end16
  %20 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i152 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %21, i8 noundef zeroext 41) #6
  %and22 = and i32 %call1.i152, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %and22)
  %cmp23.not = icmp eq i32 %and22, 29
  br i1 %cmp23.not, label %if.end39, label %lor.lhs.false.do.body26_crit_edge

lor.lhs.false.do.body26_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body26

do.body26:                                        ; preds = %lor.lhs.false.do.body26_crit_edge, %if.end16.do.body26_crit_edge
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp27 = icmp sgt i32 %22, 0
  br i1 %cmp27, label %do.end32, label %do.body26.cleanup_crit_edge

do.body26.cleanup_crit_edge:                      ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end32:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  %name34 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name34) #9
  br label %cleanup

if.end39:                                         ; preds = %lor.lhs.false
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %23 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool40.not = icmp eq i32 %24, 0
  br i1 %tobool40.not, label %if.else, label %if.then41

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %ident = getelementptr inbounds %struct.saa7127_state, ptr %call.i, i32 0, i32 2
  %25 = ptrtoint ptr %ident to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %ident, align 8
  br label %do.end64

if.else:                                          ; preds = %if.end39
  %26 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i154 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %27, i8 noundef zeroext 79) #6
  tail call fastcc void @saa7127_write(ptr noundef nonnull %call.i, i8 noundef zeroext 79, i8 noundef zeroext -86)
  %28 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i156 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %29, i8 noundef zeroext 79) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 170, i32 %call1.i156)
  %cmp46 = icmp eq i32 %call1.i156, 170
  br i1 %cmp46, label %if.then48, label %if.else55

if.then48:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %conv49 = trunc i32 %call1.i154 to i8
  tail call fastcc void @saa7127_write(ptr noundef nonnull %call.i, i8 noundef zeroext 79, i8 noundef zeroext %conv49)
  %ident51 = getelementptr inbounds %struct.saa7127_state, ptr %call.i, i32 0, i32 2
  %30 = ptrtoint ptr %ident51 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %ident51, align 8
  %name52 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call54 = tail call i32 @strscpy(ptr noundef %name52, ptr noundef nonnull @.str.7, i32 noundef 20) #6
  br label %do.end64

if.else55:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %ident56 = getelementptr inbounds %struct.saa7127_state, ptr %call.i, i32 0, i32 2
  %31 = ptrtoint ptr %ident56 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %ident56, align 8
  %name57 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call59 = tail call i32 @strscpy(ptr noundef %name57, ptr noundef nonnull @.str, i32 noundef 20) #6
  br label %do.end64

do.end64:                                         ; preds = %if.else55, %if.then48, %if.then41
  %name66 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %name68 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %addr70 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %32 = ptrtoint ptr %addr70 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %addr70, align 2
  %conv71 = zext i16 %33 to i32
  %shl72 = shl nuw nsw i32 %conv71, 1
  %34 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adapter, align 8
  %name74 = getelementptr inbounds %struct.i2c_adapter, ptr %35, i32 0, i32 12
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name66, ptr noundef %name68, i32 noundef %shl72, ptr noundef %name74) #9
  %36 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp78 = icmp sgt i32 %36, 0
  br i1 %cmp78, label %do.end83, label %do.end64.do.end90_crit_edge

do.end64.do.end90_crit_edge:                      ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end90

do.end83:                                         ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #8
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name66) #9
  br label %do.end90

do.end90:                                         ; preds = %do.end83, %do.end64.do.end90_crit_edge
  tail call fastcc void @saa7127_write_inittab(ptr noundef nonnull %call.i, ptr noundef nonnull @saa7127_init_config_common)
  tail call fastcc void @saa7127_set_std(ptr noundef nonnull %call.i, i64 noundef 45056)
  %call93 = tail call fastcc i32 @saa7127_set_output_type(ptr noundef nonnull %call.i, i32 noundef 0)
  %call94 = call fastcc i32 @saa7127_set_vps(ptr noundef nonnull %call.i, ptr noundef nonnull %vbi)
  %call95 = call fastcc i32 @saa7127_set_wss(ptr noundef nonnull %call.i, ptr noundef nonnull %vbi)
  %call96 = call fastcc i32 @saa7127_set_cc(ptr noundef nonnull %call.i, ptr noundef nonnull %vbi)
  %call97 = call fastcc i32 @saa7127_set_xds(ptr noundef nonnull %call.i, ptr noundef nonnull %vbi)
  %37 = load i32, ptr @test_image, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp98 = icmp eq i32 %37, 1
  %. = zext i1 %cmp98 to i32
  %call103 = tail call fastcc i32 @saa7127_set_input_type(ptr noundef nonnull %call.i, i32 noundef %.)
  tail call fastcc void @saa7127_set_video_enable(ptr noundef nonnull %call.i, i32 noundef 1)
  %ident106 = getelementptr inbounds %struct.saa7127_state, ptr %call.i, i32 0, i32 2
  %38 = ptrtoint ptr %ident106 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ident106, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp107 = icmp eq i32 %39, 1
  br i1 %cmp107, label %if.then109, label %do.end90.cleanup_crit_edge

do.end90.cleanup_crit_edge:                       ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then109:                                       ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @saa7127_write_inittab(ptr noundef nonnull %call.i, ptr noundef nonnull @saa7129_init_config_extra)
  br label %cleanup

cleanup:                                          ; preds = %if.then109, %do.end90.cleanup_crit_edge, %do.end32, %do.body26.cleanup_crit_edge, %do.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ -12, %do.end10.cleanup_crit_edge ], [ -19, %do.end32 ], [ -19, %do.body26.cleanup_crit_edge ], [ 0, %if.then109 ], [ 0, %do.end90.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %vbi) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7127_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #6
  tail call fastcc void @saa7127_set_video_enable(ptr noundef %1, i32 noundef 0)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @saa7127_write(ptr noundef %sd, i8 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %call1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %reg, i8 noundef zeroext %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %entry.cleanup_crit_edge, label %for.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond:                                         ; preds = %entry
  %call1.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %reg, i8 noundef zeroext %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1)
  %cmp2.1 = icmp eq i32 %call1.1, 0
  br i1 %cmp2.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %call1.2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %reg, i8 noundef zeroext %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2)
  %cmp2.2 = icmp eq i32 %call1.2, 0
  br i1 %cmp2.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name) #9
  br label %cleanup

cleanup:                                          ; preds = %for.cond.2, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @saa7127_write_inittab(ptr noundef %sd, ptr nocapture noundef readonly %regs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %regs, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not1 = icmp eq i8 %1, 0
  br i1 %cmp.not1, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %saa7127_write.exit.while.body_crit_edge, %while.body.lr.ph
  %2 = phi i8 [ %1, %while.body.lr.ph ], [ %8, %saa7127_write.exit.while.body_crit_edge ]
  %regs.addr.02 = phi ptr [ %regs, %while.body.lr.ph ], [ %incdec.ptr, %saa7127_write.exit.while.body_crit_edge ]
  %value = getelementptr inbounds %struct.i2c_reg_value, ptr %regs.addr.02, i32 0, i32 1
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %value, align 1
  %5 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext %2, i8 noundef zeroext %4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %while.body.saa7127_write.exit_crit_edge, label %for.cond.i

while.body.saa7127_write.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit

for.cond.i:                                       ; preds = %while.body
  %call1.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext %2, i8 noundef zeroext %4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %cmp2.1.i = icmp eq i32 %call1.1.i, 0
  br i1 %cmp2.1.i, label %for.cond.i.saa7127_write.exit_crit_edge, label %for.cond.1.i

for.cond.i.saa7127_write.exit_crit_edge:          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %call1.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext %2, i8 noundef zeroext %4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i)
  %cmp2.2.i = icmp eq i32 %call1.2.i, 0
  br i1 %cmp2.2.i, label %for.cond.1.i.saa7127_write.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.saa7127_write.exit_crit_edge:        ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i) #9
  br label %saa7127_write.exit

saa7127_write.exit:                               ; preds = %for.cond.2.i, %for.cond.1.i.saa7127_write.exit_crit_edge, %for.cond.i.saa7127_write.exit_crit_edge, %while.body.saa7127_write.exit_crit_edge
  %incdec.ptr = getelementptr %struct.i2c_reg_value, ptr %regs.addr.02, i32 1
  %7 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %incdec.ptr, align 1
  %cmp.not = icmp eq i8 %8, 0
  br i1 %cmp.not, label %saa7127_write.exit.while.end_crit_edge, label %saa7127_write.exit.while.body_crit_edge

saa7127_write.exit.while.body_crit_edge:          ; preds = %saa7127_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

saa7127_write.exit.while.end_crit_edge:           ; preds = %saa7127_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %saa7127_write.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @saa7127_set_std(ptr noundef %sd, i64 noundef %std) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i64 %std, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.body.if.end43.sink.split_crit_edge, label %do.body.if.end43_crit_edge

do.body.if.end43_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

do.body.if.end43.sink.split_crit_edge:            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.sink.split

if.else:                                          ; preds = %entry
  %ident = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 2
  %1 = ptrtoint ptr %ident to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ident, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp6 = icmp eq i32 %2, 1
  %and7 = and i64 %std, 16711680
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7)
  %tobool8.not = icmp ne i64 %and7, 0
  %or.cond.not = and i1 %tobool8.not, %cmp6
  %and10 = and i64 %std, 1791
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and10)
  %tobool11.not = icmp eq i64 %and10, 0
  %or.cond1 = and i1 %tobool11.not, %or.cond.not
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp14 = icmp sgt i32 %3, 0
  %.str.57..str.60 = select i1 %or.cond1, ptr @.str.57, ptr @.str.60
  %. = select i1 %or.cond1, i8 8, i8 2
  %saa7127_init_config_50hz_secam.saa7127_init_config_50hz_pal = select i1 %or.cond1, ptr @saa7127_init_config_50hz_secam, ptr @saa7127_init_config_50hz_pal
  br i1 %cmp14, label %if.else.if.end43.sink.split_crit_edge, label %if.else.if.end43_crit_edge

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.else.if.end43.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.sink.split

if.end43.sink.split:                              ; preds = %if.else.if.end43.sink.split_crit_edge, %do.body.if.end43.sink.split_crit_edge
  %.str.60.sink = phi ptr [ @.str.54, %do.body.if.end43.sink.split_crit_edge ], [ %.str.57..str.60, %if.else.if.end43.sink.split_crit_edge ]
  %.sink.ph = phi i8 [ 21, %do.body.if.end43.sink.split_crit_edge ], [ %., %if.else.if.end43.sink.split_crit_edge ]
  %inittab.0.ph = phi ptr [ @saa7127_init_config_60hz, %do.body.if.end43.sink.split_crit_edge ], [ %saa7127_init_config_50hz_secam.saa7127_init_config_50hz_pal, %if.else.if.end43.sink.split_crit_edge ]
  %name35 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.60.sink, ptr noundef %name35) #9
  br label %if.end43

if.end43:                                         ; preds = %if.end43.sink.split, %if.else.if.end43_crit_edge, %do.body.if.end43_crit_edge
  %.sink = phi i8 [ 21, %do.body.if.end43_crit_edge ], [ %.sink.ph, %if.end43.sink.split ], [ %., %if.else.if.end43_crit_edge ]
  %inittab.0 = phi ptr [ @saa7127_init_config_60hz, %do.body.if.end43_crit_edge ], [ %inittab.0.ph, %if.end43.sink.split ], [ %saa7127_init_config_50hz_secam.saa7127_init_config_50hz_pal, %if.else.if.end43_crit_edge ]
  %reg_6126 = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 17
  %4 = ptrtoint ptr %reg_6126 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %.sink, ptr %reg_6126, align 4
  %5 = ptrtoint ptr %inittab.0 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %inittab.0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.not1.i = icmp eq i8 %6, 0
  br i1 %cmp.not1.i, label %if.end43.saa7127_write_inittab.exit_crit_edge, label %while.body.lr.ph.i

if.end43.saa7127_write_inittab.exit_crit_edge:    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write_inittab.exit

while.body.lr.ph.i:                               ; preds = %if.end43
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %name.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  br label %while.body.i

while.body.i:                                     ; preds = %saa7127_write.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %7 = phi i8 [ %6, %while.body.lr.ph.i ], [ %13, %saa7127_write.exit.i.while.body.i_crit_edge ]
  %regs.addr.02.i = phi ptr [ %inittab.0, %while.body.lr.ph.i ], [ %incdec.ptr.i, %saa7127_write.exit.i.while.body.i_crit_edge ]
  %value.i = getelementptr inbounds %struct.i2c_reg_value, ptr %regs.addr.02.i, i32 0, i32 1
  %8 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %value.i, align 1
  %10 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext %7, i8 noundef zeroext %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp2.i.i, label %while.body.i.saa7127_write.exit.i_crit_edge, label %for.cond.i.i

while.body.i.saa7127_write.exit.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit.i

for.cond.i.i:                                     ; preds = %while.body.i
  %call1.1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext %7, i8 noundef zeroext %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i)
  %cmp2.1.i.i = icmp eq i32 %call1.1.i.i, 0
  br i1 %cmp2.1.i.i, label %for.cond.i.i.saa7127_write.exit.i_crit_edge, label %for.cond.1.i.i

for.cond.i.i.saa7127_write.exit.i_crit_edge:      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %call1.2.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext %7, i8 noundef zeroext %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i)
  %cmp2.2.i.i = icmp eq i32 %call1.2.i.i, 0
  br i1 %cmp2.2.i.i, label %for.cond.1.i.i.saa7127_write.exit.i_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.saa7127_write.exit.i_crit_edge:    ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i.i) #9
  br label %saa7127_write.exit.i

saa7127_write.exit.i:                             ; preds = %for.cond.2.i.i, %for.cond.1.i.i.saa7127_write.exit.i_crit_edge, %for.cond.i.i.saa7127_write.exit.i_crit_edge, %while.body.i.saa7127_write.exit.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.i2c_reg_value, ptr %regs.addr.02.i, i32 1
  %12 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %incdec.ptr.i, align 1
  %cmp.not.i = icmp eq i8 %13, 0
  br i1 %cmp.not.i, label %saa7127_write.exit.i.saa7127_write_inittab.exit_crit_edge, label %saa7127_write.exit.i.while.body.i_crit_edge

saa7127_write.exit.i.while.body.i_crit_edge:      ; preds = %saa7127_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

saa7127_write.exit.i.saa7127_write_inittab.exit_crit_edge: ; preds = %saa7127_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write_inittab.exit

saa7127_write_inittab.exit:                       ; preds = %saa7127_write.exit.i.saa7127_write_inittab.exit_crit_edge, %if.end43.saa7127_write_inittab.exit_crit_edge
  %std45 = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 1
  %14 = ptrtoint ptr %std45 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %std, ptr %std45, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @saa7127_set_output_type(ptr noundef %sd, i32 noundef %output) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %output to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %output, label %entry.cleanup_crit_edge [
    i32 3, label %entry.do.body_crit_edge
    i32 1, label %sw.bb1
    i32 2, label %sw.bb5
    i32 5, label %sw.bb14
    i32 4, label %sw.bb17
    i32 0, label %sw.bb20
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ident = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 2
  %1 = ptrtoint ptr %ident to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ident, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp eq i32 %2, 1
  %spec.select = select i1 %cmp, i8 32, i8 8
  br label %do.body

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ident6 = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 2
  %3 = ptrtoint ptr %ident6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ident6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp7 = icmp eq i32 %4, 1
  %spec.select84 = select i1 %cmp7, i8 24, i8 -1
  br label %do.body

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ident21 = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 2
  %5 = ptrtoint ptr %ident21 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ident21, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp22 = icmp eq i32 %6, 1
  %spec.select85 = select i1 %cmp22, i8 56, i8 -65
  br label %do.body

do.body:                                          ; preds = %sw.bb20, %sw.bb17, %sw.bb14, %sw.bb5, %sw.bb1, %entry.do.body_crit_edge
  %.sink86 = phi i8 [ %spec.select, %sw.bb1 ], [ %spec.select84, %sw.bb5 ], [ 79, %sw.bb14 ], [ 15, %sw.bb17 ], [ %spec.select85, %sw.bb20 ], [ 15, %entry.do.body_crit_edge ]
  %.sink = phi i8 [ 19, %sw.bb1 ], [ 19, %sw.bb5 ], [ 11, %sw.bb14 ], [ 11, %sw.bb17 ], [ 19, %sw.bb20 ], [ 19, %entry.do.body_crit_edge ]
  %reg_2d = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 14
  %7 = ptrtoint ptr %reg_2d to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %.sink86, ptr %reg_2d, align 1
  %reg_3a = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 15
  %8 = ptrtoint ptr %reg_3a to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %.sink, ptr %reg_3a, align 2
  %9 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp29 = icmp sgt i32 %9, 0
  br i1 %cmp29, label %do.end, label %do.body.do.end35_crit_edge

do.body.do.end35_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end35

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %arrayidx = getelementptr [6 x ptr], ptr @output_strs, i32 0, i32 %output
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %name, ptr noundef %11) #9
  br label %do.end35

do.end35:                                         ; preds = %do.end, %do.body.do.end35_crit_edge
  %reg_2d36 = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 14
  %12 = ptrtoint ptr %reg_2d36 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %reg_2d36, align 1
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %14 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext 45, i8 noundef zeroext %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %do.end35.saa7127_write.exit_crit_edge, label %for.cond.i

do.end35.saa7127_write.exit_crit_edge:            ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit

for.cond.i:                                       ; preds = %do.end35
  %call1.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext 45, i8 noundef zeroext %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %cmp2.1.i = icmp eq i32 %call1.1.i, 0
  br i1 %cmp2.1.i, label %for.cond.i.saa7127_write.exit_crit_edge, label %for.cond.1.i

for.cond.i.saa7127_write.exit_crit_edge:          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %call1.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext 45, i8 noundef zeroext %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i)
  %cmp2.2.i = icmp eq i32 %call1.2.i, 0
  br i1 %cmp2.2.i, label %for.cond.1.i.saa7127_write.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.saa7127_write.exit_crit_edge:        ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i) #9
  br label %saa7127_write.exit

saa7127_write.exit:                               ; preds = %for.cond.2.i, %for.cond.1.i.saa7127_write.exit_crit_edge, %for.cond.i.saa7127_write.exit_crit_edge, %do.end35.saa7127_write.exit_crit_edge
  %reg_3a38 = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 15
  %16 = ptrtoint ptr %reg_3a38 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %reg_3a38, align 2
  %reg_3a_cb = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 16
  %18 = ptrtoint ptr %reg_3a_cb to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %reg_3a_cb, align 1
  %or68 = or i8 %19, %17
  %20 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i70 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 58, i8 noundef zeroext %or68) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i70)
  %cmp2.i71 = icmp eq i32 %call1.i70, 0
  br i1 %cmp2.i71, label %saa7127_write.exit.saa7127_write.exit81_crit_edge, label %for.cond.i74

saa7127_write.exit.saa7127_write.exit81_crit_edge: ; preds = %saa7127_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit81

for.cond.i74:                                     ; preds = %saa7127_write.exit
  %call1.1.i72 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 58, i8 noundef zeroext %or68) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i72)
  %cmp2.1.i73 = icmp eq i32 %call1.1.i72, 0
  br i1 %cmp2.1.i73, label %for.cond.i74.saa7127_write.exit81_crit_edge, label %for.cond.1.i77

for.cond.i74.saa7127_write.exit81_crit_edge:      ; preds = %for.cond.i74
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit81

for.cond.1.i77:                                   ; preds = %for.cond.i74
  %call1.2.i75 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 58, i8 noundef zeroext %or68) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i75)
  %cmp2.2.i76 = icmp eq i32 %call1.2.i75, 0
  br i1 %cmp2.2.i76, label %for.cond.1.i77.saa7127_write.exit81_crit_edge, label %for.cond.2.i80

for.cond.1.i77.saa7127_write.exit81_crit_edge:    ; preds = %for.cond.1.i77
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit81

for.cond.2.i80:                                   ; preds = %for.cond.1.i77
  call void @__sanitizer_cov_trace_pc() #8
  %name.i78 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i78) #9
  br label %saa7127_write.exit81

saa7127_write.exit81:                             ; preds = %for.cond.2.i80, %for.cond.1.i77.saa7127_write.exit81_crit_edge, %for.cond.i74.saa7127_write.exit81_crit_edge, %saa7127_write.exit.saa7127_write.exit81_crit_edge
  %output_type = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 4
  %22 = ptrtoint ptr %output_type to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %output, ptr %output_type, align 8
  br label %cleanup

cleanup:                                          ; preds = %saa7127_write.exit81, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %saa7127_write.exit81 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @saa7127_set_vps(ptr noundef %sd, ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %line = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp ne i32 %1, 0
  %conv = zext i1 %cmp to i32
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %field = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp4.not = icmp eq i32 %1, 16
  %or.cond = select i1 %cmp1.not, i1 %cmp4.not, i1 false
  br i1 %or.cond, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %vps_enable = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 12
  %4 = ptrtoint ptr %vps_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vps_enable, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp6.not = icmp eq i32 %5, %conv
  br i1 %cmp6.not, label %if.end.if.end21_crit_edge, label %do.body

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

do.body:                                          ; preds = %if.end
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp9 = icmp sgt i32 %6, 0
  br i1 %cmp9, label %do.end, label %do.body.do.end17_crit_edge

do.body.do.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %cond = select i1 %cmp, ptr @.str.66, ptr @.str.67
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name, ptr noundef nonnull %cond) #9
  br label %do.end17

do.end17:                                         ; preds = %do.end, %do.body.do.end17_crit_edge
  %conv18 = select i1 %cmp, i8 -128, i8 0
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %7 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 84, i8 noundef zeroext %conv18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %do.end17.saa7127_write.exit_crit_edge, label %for.cond.i

do.end17.saa7127_write.exit_crit_edge:            ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit

for.cond.i:                                       ; preds = %do.end17
  %call1.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 84, i8 noundef zeroext %conv18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %cmp2.1.i = icmp eq i32 %call1.1.i, 0
  br i1 %cmp2.1.i, label %for.cond.i.saa7127_write.exit_crit_edge, label %for.cond.1.i

for.cond.i.saa7127_write.exit_crit_edge:          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %call1.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 84, i8 noundef zeroext %conv18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i)
  %cmp2.2.i = icmp eq i32 %call1.2.i, 0
  br i1 %cmp2.2.i, label %for.cond.1.i.saa7127_write.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.saa7127_write.exit_crit_edge:        ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i) #9
  br label %saa7127_write.exit

saa7127_write.exit:                               ; preds = %for.cond.2.i, %for.cond.1.i.saa7127_write.exit_crit_edge, %for.cond.i.saa7127_write.exit_crit_edge, %do.end17.saa7127_write.exit_crit_edge
  %9 = ptrtoint ptr %vps_enable to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %vps_enable, align 8
  br label %if.end21

if.end21:                                         ; preds = %saa7127_write.exit, %if.end.if.end21_crit_edge
  br i1 %cmp, label %if.end24, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %if.end21
  %arrayidx = getelementptr %struct.v4l2_sliced_vbi_data, ptr %data, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 2
  %vps_data = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 13
  %12 = ptrtoint ptr %vps_data to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %vps_data, align 4
  %arrayidx28 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %data, i32 0, i32 4, i32 8
  %13 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx28, align 4
  %arrayidx30 = getelementptr %struct.saa7127_state, ptr %sd, i32 0, i32 13, i32 1
  %15 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %arrayidx30, align 1
  %arrayidx32 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %data, i32 0, i32 4, i32 9
  %16 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx32, align 1
  %arrayidx34 = getelementptr %struct.saa7127_state, ptr %sd, i32 0, i32 13, i32 2
  %18 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %arrayidx34, align 2
  %arrayidx36 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %data, i32 0, i32 4, i32 10
  %19 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx36, align 2
  %arrayidx38 = getelementptr %struct.saa7127_state, ptr %sd, i32 0, i32 13, i32 3
  %21 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx38, align 1
  %arrayidx40 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %data, i32 0, i32 4, i32 11
  %22 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx40, align 1
  %arrayidx42 = getelementptr %struct.saa7127_state, ptr %sd, i32 0, i32 13, i32 4
  %24 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx42, align 4
  %25 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp44 = icmp sgt i32 %25, 0
  br i1 %cmp44, label %do.end49, label %if.end24.do.end58_crit_edge

if.end24.do.end58_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end58

do.end49:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %name51 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %name51, i32 noundef 5, ptr noundef %vps_data) #9
  br label %do.end58

do.end58:                                         ; preds = %do.end49, %if.end24.do.end58_crit_edge
  %26 = ptrtoint ptr %vps_data to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %vps_data, align 4
  %dev_priv.i.i107 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %28 = ptrtoint ptr %dev_priv.i.i107 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_priv.i.i107, align 4
  %call1.i108 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %29, i8 noundef zeroext 85, i8 noundef zeroext %27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i108)
  %cmp2.i109 = icmp eq i32 %call1.i108, 0
  br i1 %cmp2.i109, label %do.end58.saa7127_write.exit119_crit_edge, label %for.cond.i112

do.end58.saa7127_write.exit119_crit_edge:         ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit119

for.cond.i112:                                    ; preds = %do.end58
  %call1.1.i110 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %29, i8 noundef zeroext 85, i8 noundef zeroext %27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i110)
  %cmp2.1.i111 = icmp eq i32 %call1.1.i110, 0
  br i1 %cmp2.1.i111, label %for.cond.i112.saa7127_write.exit119_crit_edge, label %for.cond.1.i115

for.cond.i112.saa7127_write.exit119_crit_edge:    ; preds = %for.cond.i112
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit119

for.cond.1.i115:                                  ; preds = %for.cond.i112
  %call1.2.i113 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %29, i8 noundef zeroext 85, i8 noundef zeroext %27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i113)
  %cmp2.2.i114 = icmp eq i32 %call1.2.i113, 0
  br i1 %cmp2.2.i114, label %for.cond.1.i115.saa7127_write.exit119_crit_edge, label %for.cond.2.i118

for.cond.1.i115.saa7127_write.exit119_crit_edge:  ; preds = %for.cond.1.i115
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit119

for.cond.2.i118:                                  ; preds = %for.cond.1.i115
  call void @__sanitizer_cov_trace_pc() #8
  %name.i116 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i116) #9
  br label %saa7127_write.exit119

saa7127_write.exit119:                            ; preds = %for.cond.2.i118, %for.cond.1.i115.saa7127_write.exit119_crit_edge, %for.cond.i112.saa7127_write.exit119_crit_edge, %do.end58.saa7127_write.exit119_crit_edge
  %30 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx30, align 1
  %32 = ptrtoint ptr %dev_priv.i.i107 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_priv.i.i107, align 4
  %call1.i121 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %33, i8 noundef zeroext 86, i8 noundef zeroext %31) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i121)
  %cmp2.i122 = icmp eq i32 %call1.i121, 0
  br i1 %cmp2.i122, label %saa7127_write.exit119.saa7127_write.exit132_crit_edge, label %for.cond.i125

saa7127_write.exit119.saa7127_write.exit132_crit_edge: ; preds = %saa7127_write.exit119
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit132

for.cond.i125:                                    ; preds = %saa7127_write.exit119
  %call1.1.i123 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %33, i8 noundef zeroext 86, i8 noundef zeroext %31) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i123)
  %cmp2.1.i124 = icmp eq i32 %call1.1.i123, 0
  br i1 %cmp2.1.i124, label %for.cond.i125.saa7127_write.exit132_crit_edge, label %for.cond.1.i128

for.cond.i125.saa7127_write.exit132_crit_edge:    ; preds = %for.cond.i125
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit132

for.cond.1.i128:                                  ; preds = %for.cond.i125
  %call1.2.i126 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %33, i8 noundef zeroext 86, i8 noundef zeroext %31) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i126)
  %cmp2.2.i127 = icmp eq i32 %call1.2.i126, 0
  br i1 %cmp2.2.i127, label %for.cond.1.i128.saa7127_write.exit132_crit_edge, label %for.cond.2.i131

for.cond.1.i128.saa7127_write.exit132_crit_edge:  ; preds = %for.cond.1.i128
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit132

for.cond.2.i131:                                  ; preds = %for.cond.1.i128
  call void @__sanitizer_cov_trace_pc() #8
  %name.i129 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i130 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i129) #9
  br label %saa7127_write.exit132

saa7127_write.exit132:                            ; preds = %for.cond.2.i131, %for.cond.1.i128.saa7127_write.exit132_crit_edge, %for.cond.i125.saa7127_write.exit132_crit_edge, %saa7127_write.exit119.saa7127_write.exit132_crit_edge
  %34 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx34, align 2
  %36 = ptrtoint ptr %dev_priv.i.i107 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_priv.i.i107, align 4
  %call1.i134 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %37, i8 noundef zeroext 87, i8 noundef zeroext %35) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i134)
  %cmp2.i135 = icmp eq i32 %call1.i134, 0
  br i1 %cmp2.i135, label %saa7127_write.exit132.saa7127_write.exit145_crit_edge, label %for.cond.i138

saa7127_write.exit132.saa7127_write.exit145_crit_edge: ; preds = %saa7127_write.exit132
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit145

for.cond.i138:                                    ; preds = %saa7127_write.exit132
  %call1.1.i136 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %37, i8 noundef zeroext 87, i8 noundef zeroext %35) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i136)
  %cmp2.1.i137 = icmp eq i32 %call1.1.i136, 0
  br i1 %cmp2.1.i137, label %for.cond.i138.saa7127_write.exit145_crit_edge, label %for.cond.1.i141

for.cond.i138.saa7127_write.exit145_crit_edge:    ; preds = %for.cond.i138
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit145

for.cond.1.i141:                                  ; preds = %for.cond.i138
  %call1.2.i139 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %37, i8 noundef zeroext 87, i8 noundef zeroext %35) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i139)
  %cmp2.2.i140 = icmp eq i32 %call1.2.i139, 0
  br i1 %cmp2.2.i140, label %for.cond.1.i141.saa7127_write.exit145_crit_edge, label %for.cond.2.i144

for.cond.1.i141.saa7127_write.exit145_crit_edge:  ; preds = %for.cond.1.i141
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit145

for.cond.2.i144:                                  ; preds = %for.cond.1.i141
  call void @__sanitizer_cov_trace_pc() #8
  %name.i142 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i142) #9
  br label %saa7127_write.exit145

saa7127_write.exit145:                            ; preds = %for.cond.2.i144, %for.cond.1.i141.saa7127_write.exit145_crit_edge, %for.cond.i138.saa7127_write.exit145_crit_edge, %saa7127_write.exit132.saa7127_write.exit145_crit_edge
  %38 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx38, align 1
  %40 = ptrtoint ptr %dev_priv.i.i107 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_priv.i.i107, align 4
  %call1.i147 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %41, i8 noundef zeroext 88, i8 noundef zeroext %39) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i147)
  %cmp2.i148 = icmp eq i32 %call1.i147, 0
  br i1 %cmp2.i148, label %saa7127_write.exit145.saa7127_write.exit158_crit_edge, label %for.cond.i151

saa7127_write.exit145.saa7127_write.exit158_crit_edge: ; preds = %saa7127_write.exit145
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit158

for.cond.i151:                                    ; preds = %saa7127_write.exit145
  %call1.1.i149 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %41, i8 noundef zeroext 88, i8 noundef zeroext %39) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i149)
  %cmp2.1.i150 = icmp eq i32 %call1.1.i149, 0
  br i1 %cmp2.1.i150, label %for.cond.i151.saa7127_write.exit158_crit_edge, label %for.cond.1.i154

for.cond.i151.saa7127_write.exit158_crit_edge:    ; preds = %for.cond.i151
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit158

for.cond.1.i154:                                  ; preds = %for.cond.i151
  %call1.2.i152 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %41, i8 noundef zeroext 88, i8 noundef zeroext %39) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i152)
  %cmp2.2.i153 = icmp eq i32 %call1.2.i152, 0
  br i1 %cmp2.2.i153, label %for.cond.1.i154.saa7127_write.exit158_crit_edge, label %for.cond.2.i157

for.cond.1.i154.saa7127_write.exit158_crit_edge:  ; preds = %for.cond.1.i154
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit158

for.cond.2.i157:                                  ; preds = %for.cond.1.i154
  call void @__sanitizer_cov_trace_pc() #8
  %name.i155 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i156 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i155) #9
  br label %saa7127_write.exit158

saa7127_write.exit158:                            ; preds = %for.cond.2.i157, %for.cond.1.i154.saa7127_write.exit158_crit_edge, %for.cond.i151.saa7127_write.exit158_crit_edge, %saa7127_write.exit145.saa7127_write.exit158_crit_edge
  %42 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx42, align 4
  %44 = ptrtoint ptr %dev_priv.i.i107 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_priv.i.i107, align 4
  %call1.i160 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %45, i8 noundef zeroext 89, i8 noundef zeroext %43) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i160)
  %cmp2.i161 = icmp eq i32 %call1.i160, 0
  br i1 %cmp2.i161, label %saa7127_write.exit158.cleanup_crit_edge, label %for.cond.i164

saa7127_write.exit158.cleanup_crit_edge:          ; preds = %saa7127_write.exit158
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.i164:                                    ; preds = %saa7127_write.exit158
  %call1.1.i162 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %45, i8 noundef zeroext 89, i8 noundef zeroext %43) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i162)
  %cmp2.1.i163 = icmp eq i32 %call1.1.i162, 0
  br i1 %cmp2.1.i163, label %for.cond.i164.cleanup_crit_edge, label %for.cond.1.i167

for.cond.i164.cleanup_crit_edge:                  ; preds = %for.cond.i164
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.1.i167:                                  ; preds = %for.cond.i164
  %call1.2.i165 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %45, i8 noundef zeroext 89, i8 noundef zeroext %43) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i165)
  %cmp2.2.i166 = icmp eq i32 %call1.2.i165, 0
  br i1 %cmp2.2.i166, label %for.cond.1.i167.cleanup_crit_edge, label %for.cond.2.i170

for.cond.1.i167.cleanup_crit_edge:                ; preds = %for.cond.1.i167
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.2.i170:                                  ; preds = %for.cond.1.i167
  call void @__sanitizer_cov_trace_pc() #8
  %name.i168 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i169 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i168) #9
  br label %cleanup

cleanup:                                          ; preds = %for.cond.2.i170, %for.cond.1.i167.cleanup_crit_edge, %for.cond.i164.cleanup_crit_edge, %saa7127_write.exit158.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge ], [ 0, %saa7127_write.exit158.cleanup_crit_edge ], [ 0, %for.cond.i164.cleanup_crit_edge ], [ 0, %for.cond.1.i167.cleanup_crit_edge ], [ 0, %for.cond.2.i170 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @saa7127_set_wss(ptr noundef %sd, ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %line = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp ne i32 %1, 0
  %conv = zext i1 %cmp to i32
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %field = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %1)
  %cmp4.not = icmp eq i32 %1, 23
  %or.cond = select i1 %cmp1.not, i1 %cmp4.not, i1 false
  br i1 %or.cond, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %wss_enable = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 6
  %4 = ptrtoint ptr %wss_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wss_enable, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp6.not = icmp eq i32 %5, %conv
  br i1 %cmp6.not, label %if.end.if.end21_crit_edge, label %do.body

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

do.body:                                          ; preds = %if.end
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp9 = icmp sgt i32 %6, 0
  br i1 %cmp9, label %do.end, label %do.body.do.end17_crit_edge

do.body.do.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %cond = select i1 %cmp, ptr @.str.66, ptr @.str.67
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %name, ptr noundef nonnull %cond) #9
  br label %do.end17

do.end17:                                         ; preds = %do.end, %do.body.do.end17_crit_edge
  %conv18 = select i1 %cmp, i8 -128, i8 0
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %7 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 39, i8 noundef zeroext %conv18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %do.end17.saa7127_write.exit_crit_edge, label %for.cond.i

do.end17.saa7127_write.exit_crit_edge:            ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit

for.cond.i:                                       ; preds = %do.end17
  %call1.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 39, i8 noundef zeroext %conv18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %cmp2.1.i = icmp eq i32 %call1.1.i, 0
  br i1 %cmp2.1.i, label %for.cond.i.saa7127_write.exit_crit_edge, label %for.cond.1.i

for.cond.i.saa7127_write.exit_crit_edge:          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %call1.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 39, i8 noundef zeroext %conv18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i)
  %cmp2.2.i = icmp eq i32 %call1.2.i, 0
  br i1 %cmp2.2.i, label %for.cond.1.i.saa7127_write.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.saa7127_write.exit_crit_edge:        ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i) #9
  br label %saa7127_write.exit

saa7127_write.exit:                               ; preds = %for.cond.2.i, %for.cond.1.i.saa7127_write.exit_crit_edge, %for.cond.i.saa7127_write.exit_crit_edge, %do.end17.saa7127_write.exit_crit_edge
  %9 = ptrtoint ptr %wss_enable to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %wss_enable, align 8
  br label %if.end21

if.end21:                                         ; preds = %saa7127_write.exit, %if.end.if.end21_crit_edge
  br i1 %cmp, label %if.end24, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %if.end21
  %data25 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data, i32 0, i32 4
  %10 = ptrtoint ptr %data25 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data25, align 4
  %dev_priv.i.i81 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %12 = ptrtoint ptr %dev_priv.i.i81 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_priv.i.i81, align 4
  %call1.i82 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 38, i8 noundef zeroext %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i82)
  %cmp2.i83 = icmp eq i32 %call1.i82, 0
  br i1 %cmp2.i83, label %if.end24.saa7127_write.exit93_crit_edge, label %for.cond.i86

if.end24.saa7127_write.exit93_crit_edge:          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit93

for.cond.i86:                                     ; preds = %if.end24
  %call1.1.i84 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 38, i8 noundef zeroext %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i84)
  %cmp2.1.i85 = icmp eq i32 %call1.1.i84, 0
  br i1 %cmp2.1.i85, label %for.cond.i86.saa7127_write.exit93_crit_edge, label %for.cond.1.i89

for.cond.i86.saa7127_write.exit93_crit_edge:      ; preds = %for.cond.i86
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit93

for.cond.1.i89:                                   ; preds = %for.cond.i86
  %call1.2.i87 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 38, i8 noundef zeroext %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i87)
  %cmp2.2.i88 = icmp eq i32 %call1.2.i87, 0
  br i1 %cmp2.2.i88, label %for.cond.1.i89.saa7127_write.exit93_crit_edge, label %for.cond.2.i92

for.cond.1.i89.saa7127_write.exit93_crit_edge:    ; preds = %for.cond.1.i89
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit93

for.cond.2.i92:                                   ; preds = %for.cond.1.i89
  call void @__sanitizer_cov_trace_pc() #8
  %name.i90 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i90) #9
  br label %saa7127_write.exit93

saa7127_write.exit93:                             ; preds = %for.cond.2.i92, %for.cond.1.i89.saa7127_write.exit93_crit_edge, %for.cond.i86.saa7127_write.exit93_crit_edge, %if.end24.saa7127_write.exit93_crit_edge
  %arrayidx28 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %data, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx28, align 1
  %16 = and i8 %15, 63
  %17 = or i8 %16, -128
  %18 = ptrtoint ptr %dev_priv.i.i81 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_priv.i.i81, align 4
  %call1.i95 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext 39, i8 noundef zeroext %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i95)
  %cmp2.i96 = icmp eq i32 %call1.i95, 0
  br i1 %cmp2.i96, label %saa7127_write.exit93.saa7127_write.exit106_crit_edge, label %for.cond.i99

saa7127_write.exit93.saa7127_write.exit106_crit_edge: ; preds = %saa7127_write.exit93
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit106

for.cond.i99:                                     ; preds = %saa7127_write.exit93
  %call1.1.i97 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext 39, i8 noundef zeroext %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i97)
  %cmp2.1.i98 = icmp eq i32 %call1.1.i97, 0
  br i1 %cmp2.1.i98, label %for.cond.i99.saa7127_write.exit106_crit_edge, label %for.cond.1.i102

for.cond.i99.saa7127_write.exit106_crit_edge:     ; preds = %for.cond.i99
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit106

for.cond.1.i102:                                  ; preds = %for.cond.i99
  %call1.2.i100 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext 39, i8 noundef zeroext %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i100)
  %cmp2.2.i101 = icmp eq i32 %call1.2.i100, 0
  br i1 %cmp2.2.i101, label %for.cond.1.i102.saa7127_write.exit106_crit_edge, label %for.cond.2.i105

for.cond.1.i102.saa7127_write.exit106_crit_edge:  ; preds = %for.cond.1.i102
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit106

for.cond.2.i105:                                  ; preds = %for.cond.1.i102
  call void @__sanitizer_cov_trace_pc() #8
  %name.i103 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i103) #9
  br label %saa7127_write.exit106

saa7127_write.exit106:                            ; preds = %for.cond.2.i105, %for.cond.1.i102.saa7127_write.exit106_crit_edge, %for.cond.i99.saa7127_write.exit106_crit_edge, %saa7127_write.exit93.saa7127_write.exit106_crit_edge
  %20 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp33 = icmp sgt i32 %20, 0
  br i1 %cmp33, label %do.end38, label %saa7127_write.exit106.do.end50_crit_edge

saa7127_write.exit106.do.end50_crit_edge:         ; preds = %saa7127_write.exit106
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end50

do.end38:                                         ; preds = %saa7127_write.exit106
  call void @__sanitizer_cov_trace_pc() #8
  %name40 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %21 = ptrtoint ptr %data25 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %data25, align 4
  %23 = and i8 %22, 15
  %and45 = zext i8 %23 to i32
  %arrayidx46 = getelementptr [16 x ptr], ptr @wss_strs, i32 0, i32 %and45
  %24 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx46, align 4
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %name40, ptr noundef %25) #9
  br label %do.end50

do.end50:                                         ; preds = %do.end38, %saa7127_write.exit106.do.end50_crit_edge
  %26 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx28, align 1
  %28 = and i8 %27, 63
  %and54 = zext i8 %28 to i16
  %shl55 = shl nuw nsw i16 %and54, 8
  %29 = ptrtoint ptr %data25 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %data25, align 4
  %conv58 = zext i8 %30 to i16
  %or59 = or i16 %shl55, %conv58
  %wss_mode = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 7
  %31 = ptrtoint ptr %wss_mode to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %or59, ptr %wss_mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end50, %if.end21.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end50 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @saa7127_set_cc(ptr noundef %sd, ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data, i32 0, i32 4
  %arrayidx = getelementptr %struct.v4l2_sliced_vbi_data, ptr %data, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i16
  %shl = shl nuw i16 %conv, 8
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data1, align 4
  %conv4 = zext i8 %3 to i16
  %or = or i16 %shl, %conv4
  %line = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp ne i32 %5, 0
  %conv6 = zext i1 %cmp to i32
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %field = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp7.not = icmp eq i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %5)
  %cmp10.not = icmp eq i32 %5, 21
  %or.cond = select i1 %cmp7.not, i1 %cmp10.not, i1 false
  br i1 %or.cond, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %cc_enable = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 8
  %8 = ptrtoint ptr %cc_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cc_enable, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv6)
  %cmp12.not = icmp eq i32 %9, %conv6
  br i1 %cmp12.not, label %if.end.if.end31_crit_edge, label %do.body

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

do.body:                                          ; preds = %if.end
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp15 = icmp sgt i32 %10, 0
  br i1 %cmp15, label %do.end, label %do.body.do.end23_crit_edge

do.body.do.end23_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %cond = select i1 %cmp, ptr @.str.66, ptr @.str.67
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef %name, ptr noundef nonnull %cond) #9
  br label %do.end23

do.end23:                                         ; preds = %do.end, %do.body.do.end23_crit_edge
  %xds_enable = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 10
  %11 = ptrtoint ptr %xds_enable to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %xds_enable, align 8
  %shl24 = shl i32 %12, 7
  %shl25 = select i1 %cmp, i32 64, i32 0
  %or26 = or i32 %shl24, %shl25
  %13 = trunc i32 %or26 to i8
  %conv28 = or i8 %13, 17
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %14 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext 111, i8 noundef zeroext %conv28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %do.end23.saa7127_write.exit_crit_edge, label %for.cond.i

do.end23.saa7127_write.exit_crit_edge:            ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit

for.cond.i:                                       ; preds = %do.end23
  %call1.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext 111, i8 noundef zeroext %conv28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %cmp2.1.i = icmp eq i32 %call1.1.i, 0
  br i1 %cmp2.1.i, label %for.cond.i.saa7127_write.exit_crit_edge, label %for.cond.1.i

for.cond.i.saa7127_write.exit_crit_edge:          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %call1.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext 111, i8 noundef zeroext %conv28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i)
  %cmp2.2.i = icmp eq i32 %call1.2.i, 0
  br i1 %cmp2.2.i, label %for.cond.1.i.saa7127_write.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.saa7127_write.exit_crit_edge:        ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i) #9
  br label %saa7127_write.exit

saa7127_write.exit:                               ; preds = %for.cond.2.i, %for.cond.1.i.saa7127_write.exit_crit_edge, %for.cond.i.saa7127_write.exit_crit_edge, %do.end23.saa7127_write.exit_crit_edge
  %16 = ptrtoint ptr %cc_enable to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv6, ptr %cc_enable, align 8
  br label %if.end31

if.end31:                                         ; preds = %saa7127_write.exit, %if.end.if.end31_crit_edge
  br i1 %cmp, label %do.body35, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body35:                                        ; preds = %if.end31
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp36 = icmp sgt i32 %17, 1
  br i1 %cmp36, label %do.end41, label %do.body35.do.end49_crit_edge

do.body35.do.end49_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end49

do.end41:                                         ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  %name43 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv45 = zext i16 %or to i32
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %name43, i32 noundef %conv45) #9
  br label %do.end49

do.end49:                                         ; preds = %do.end41, %do.body35.do.end49_crit_edge
  %dev_priv.i.i78 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %18 = ptrtoint ptr %dev_priv.i.i78 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_priv.i.i78, align 4
  %call1.i79 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext 103, i8 noundef zeroext %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i79)
  %cmp2.i80 = icmp eq i32 %call1.i79, 0
  br i1 %cmp2.i80, label %do.end49.saa7127_write.exit90_crit_edge, label %for.cond.i83

do.end49.saa7127_write.exit90_crit_edge:          ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit90

for.cond.i83:                                     ; preds = %do.end49
  %call1.1.i81 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext 103, i8 noundef zeroext %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i81)
  %cmp2.1.i82 = icmp eq i32 %call1.1.i81, 0
  br i1 %cmp2.1.i82, label %for.cond.i83.saa7127_write.exit90_crit_edge, label %for.cond.1.i86

for.cond.i83.saa7127_write.exit90_crit_edge:      ; preds = %for.cond.i83
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit90

for.cond.1.i86:                                   ; preds = %for.cond.i83
  %call1.2.i84 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext 103, i8 noundef zeroext %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i84)
  %cmp2.2.i85 = icmp eq i32 %call1.2.i84, 0
  br i1 %cmp2.2.i85, label %for.cond.1.i86.saa7127_write.exit90_crit_edge, label %for.cond.2.i89

for.cond.1.i86.saa7127_write.exit90_crit_edge:    ; preds = %for.cond.1.i86
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit90

for.cond.2.i89:                                   ; preds = %for.cond.1.i86
  call void @__sanitizer_cov_trace_pc() #8
  %name.i87 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i87) #9
  br label %saa7127_write.exit90

saa7127_write.exit90:                             ; preds = %for.cond.2.i89, %for.cond.1.i86.saa7127_write.exit90_crit_edge, %for.cond.i83.saa7127_write.exit90_crit_edge, %do.end49.saa7127_write.exit90_crit_edge
  %20 = ptrtoint ptr %dev_priv.i.i78 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_priv.i.i78, align 4
  %call1.i92 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 104, i8 noundef zeroext %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i92)
  %cmp2.i93 = icmp eq i32 %call1.i92, 0
  br i1 %cmp2.i93, label %saa7127_write.exit90.saa7127_write.exit103_crit_edge, label %for.cond.i96

saa7127_write.exit90.saa7127_write.exit103_crit_edge: ; preds = %saa7127_write.exit90
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit103

for.cond.i96:                                     ; preds = %saa7127_write.exit90
  %call1.1.i94 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 104, i8 noundef zeroext %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i94)
  %cmp2.1.i95 = icmp eq i32 %call1.1.i94, 0
  br i1 %cmp2.1.i95, label %for.cond.i96.saa7127_write.exit103_crit_edge, label %for.cond.1.i99

for.cond.i96.saa7127_write.exit103_crit_edge:     ; preds = %for.cond.i96
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit103

for.cond.1.i99:                                   ; preds = %for.cond.i96
  %call1.2.i97 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 104, i8 noundef zeroext %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i97)
  %cmp2.2.i98 = icmp eq i32 %call1.2.i97, 0
  br i1 %cmp2.2.i98, label %for.cond.1.i99.saa7127_write.exit103_crit_edge, label %for.cond.2.i102

for.cond.1.i99.saa7127_write.exit103_crit_edge:   ; preds = %for.cond.1.i99
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit103

for.cond.2.i102:                                  ; preds = %for.cond.1.i99
  call void @__sanitizer_cov_trace_pc() #8
  %name.i100 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i100) #9
  br label %saa7127_write.exit103

saa7127_write.exit103:                            ; preds = %for.cond.2.i102, %for.cond.1.i99.saa7127_write.exit103_crit_edge, %for.cond.i96.saa7127_write.exit103_crit_edge, %saa7127_write.exit90.saa7127_write.exit103_crit_edge
  %cc_data = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 9
  %22 = ptrtoint ptr %cc_data to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %or, ptr %cc_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %saa7127_write.exit103, %if.end31.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %saa7127_write.exit103 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @saa7127_set_xds(ptr noundef %sd, ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data, i32 0, i32 4
  %arrayidx = getelementptr %struct.v4l2_sliced_vbi_data, ptr %data, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i16
  %shl = shl nuw i16 %conv, 8
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data1, align 4
  %conv4 = zext i8 %3 to i16
  %or = or i16 %shl, %conv4
  %line = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp ne i32 %5, 0
  %conv6 = zext i1 %cmp to i32
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %field = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp7.not = icmp eq i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %5)
  %cmp10.not = icmp eq i32 %5, 21
  %or.cond = select i1 %cmp7.not, i1 %cmp10.not, i1 false
  br i1 %or.cond, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %xds_enable = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 10
  %8 = ptrtoint ptr %xds_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xds_enable, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv6)
  %cmp12.not = icmp eq i32 %9, %conv6
  br i1 %cmp12.not, label %if.end.if.end31_crit_edge, label %do.body

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

do.body:                                          ; preds = %if.end
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp15 = icmp sgt i32 %10, 0
  br i1 %cmp15, label %do.end, label %do.body.do.end23_crit_edge

do.body.do.end23_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %cond = select i1 %cmp, ptr @.str.66, ptr @.str.67
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef %name, ptr noundef nonnull %cond) #9
  br label %do.end23

do.end23:                                         ; preds = %do.end, %do.body.do.end23_crit_edge
  %shl24 = select i1 %cmp, i32 128, i32 0
  %cc_enable = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 8
  %11 = ptrtoint ptr %cc_enable to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cc_enable, align 8
  %shl25 = shl i32 %12, 6
  %or26 = or i32 %shl25, %shl24
  %13 = trunc i32 %or26 to i8
  %conv28 = or i8 %13, 17
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %14 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext 111, i8 noundef zeroext %conv28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %do.end23.saa7127_write.exit_crit_edge, label %for.cond.i

do.end23.saa7127_write.exit_crit_edge:            ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit

for.cond.i:                                       ; preds = %do.end23
  %call1.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext 111, i8 noundef zeroext %conv28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %cmp2.1.i = icmp eq i32 %call1.1.i, 0
  br i1 %cmp2.1.i, label %for.cond.i.saa7127_write.exit_crit_edge, label %for.cond.1.i

for.cond.i.saa7127_write.exit_crit_edge:          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %call1.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext 111, i8 noundef zeroext %conv28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i)
  %cmp2.2.i = icmp eq i32 %call1.2.i, 0
  br i1 %cmp2.2.i, label %for.cond.1.i.saa7127_write.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.saa7127_write.exit_crit_edge:        ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i) #9
  br label %saa7127_write.exit

saa7127_write.exit:                               ; preds = %for.cond.2.i, %for.cond.1.i.saa7127_write.exit_crit_edge, %for.cond.i.saa7127_write.exit_crit_edge, %do.end23.saa7127_write.exit_crit_edge
  %16 = ptrtoint ptr %xds_enable to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv6, ptr %xds_enable, align 8
  br label %if.end31

if.end31:                                         ; preds = %saa7127_write.exit, %if.end.if.end31_crit_edge
  br i1 %cmp, label %do.body35, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body35:                                        ; preds = %if.end31
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp36 = icmp sgt i32 %17, 1
  br i1 %cmp36, label %do.end41, label %do.body35.do.end49_crit_edge

do.body35.do.end49_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end49

do.end41:                                         ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  %name43 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv45 = zext i16 %or to i32
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef %name43, i32 noundef %conv45) #9
  br label %do.end49

do.end49:                                         ; preds = %do.end41, %do.body35.do.end49_crit_edge
  %dev_priv.i.i78 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %18 = ptrtoint ptr %dev_priv.i.i78 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_priv.i.i78, align 4
  %call1.i79 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext 105, i8 noundef zeroext %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i79)
  %cmp2.i80 = icmp eq i32 %call1.i79, 0
  br i1 %cmp2.i80, label %do.end49.saa7127_write.exit90_crit_edge, label %for.cond.i83

do.end49.saa7127_write.exit90_crit_edge:          ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit90

for.cond.i83:                                     ; preds = %do.end49
  %call1.1.i81 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext 105, i8 noundef zeroext %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i81)
  %cmp2.1.i82 = icmp eq i32 %call1.1.i81, 0
  br i1 %cmp2.1.i82, label %for.cond.i83.saa7127_write.exit90_crit_edge, label %for.cond.1.i86

for.cond.i83.saa7127_write.exit90_crit_edge:      ; preds = %for.cond.i83
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit90

for.cond.1.i86:                                   ; preds = %for.cond.i83
  %call1.2.i84 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext 105, i8 noundef zeroext %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i84)
  %cmp2.2.i85 = icmp eq i32 %call1.2.i84, 0
  br i1 %cmp2.2.i85, label %for.cond.1.i86.saa7127_write.exit90_crit_edge, label %for.cond.2.i89

for.cond.1.i86.saa7127_write.exit90_crit_edge:    ; preds = %for.cond.1.i86
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit90

for.cond.2.i89:                                   ; preds = %for.cond.1.i86
  call void @__sanitizer_cov_trace_pc() #8
  %name.i87 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i87) #9
  br label %saa7127_write.exit90

saa7127_write.exit90:                             ; preds = %for.cond.2.i89, %for.cond.1.i86.saa7127_write.exit90_crit_edge, %for.cond.i83.saa7127_write.exit90_crit_edge, %do.end49.saa7127_write.exit90_crit_edge
  %20 = ptrtoint ptr %dev_priv.i.i78 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_priv.i.i78, align 4
  %call1.i92 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 106, i8 noundef zeroext %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i92)
  %cmp2.i93 = icmp eq i32 %call1.i92, 0
  br i1 %cmp2.i93, label %saa7127_write.exit90.saa7127_write.exit103_crit_edge, label %for.cond.i96

saa7127_write.exit90.saa7127_write.exit103_crit_edge: ; preds = %saa7127_write.exit90
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit103

for.cond.i96:                                     ; preds = %saa7127_write.exit90
  %call1.1.i94 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 106, i8 noundef zeroext %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i94)
  %cmp2.1.i95 = icmp eq i32 %call1.1.i94, 0
  br i1 %cmp2.1.i95, label %for.cond.i96.saa7127_write.exit103_crit_edge, label %for.cond.1.i99

for.cond.i96.saa7127_write.exit103_crit_edge:     ; preds = %for.cond.i96
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit103

for.cond.1.i99:                                   ; preds = %for.cond.i96
  %call1.2.i97 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 106, i8 noundef zeroext %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i97)
  %cmp2.2.i98 = icmp eq i32 %call1.2.i97, 0
  br i1 %cmp2.2.i98, label %for.cond.1.i99.saa7127_write.exit103_crit_edge, label %for.cond.2.i102

for.cond.1.i99.saa7127_write.exit103_crit_edge:   ; preds = %for.cond.1.i99
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit103

for.cond.2.i102:                                  ; preds = %for.cond.1.i99
  call void @__sanitizer_cov_trace_pc() #8
  %name.i100 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i100) #9
  br label %saa7127_write.exit103

saa7127_write.exit103:                            ; preds = %for.cond.2.i102, %for.cond.1.i99.saa7127_write.exit103_crit_edge, %for.cond.i96.saa7127_write.exit103_crit_edge, %saa7127_write.exit90.saa7127_write.exit103_crit_edge
  %xds_data = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 11
  %22 = ptrtoint ptr %xds_data to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %or, ptr %xds_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %saa7127_write.exit103, %if.end31.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %saa7127_write.exit103 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @saa7127_set_input_type(ptr noundef %sd, i32 noundef %input) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %input to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %input, label %entry.cleanup_crit_edge [
    i32 0, label %do.body
    i32 1, label %do.body6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %1 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %do.body.sw.epilog.sink.split_crit_edge, label %do.body.sw.epilog_crit_edge

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body.sw.epilog.sink.split_crit_edge:           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

do.body6:                                         ; preds = %entry
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp7 = icmp sgt i32 %2, 0
  br i1 %cmp7, label %do.body6.sw.epilog.sink.split_crit_edge, label %do.body6.sw.epilog_crit_edge

do.body6.sw.epilog_crit_edge:                     ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body6.sw.epilog.sink.split_crit_edge:          ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %do.body6.sw.epilog.sink.split_crit_edge, %do.body.sw.epilog.sink.split_crit_edge
  %.str.89.sink = phi ptr [ @.str.86, %do.body.sw.epilog.sink.split_crit_edge ], [ @.str.89, %do.body6.sw.epilog.sink.split_crit_edge ]
  %.sink.ph = phi i8 [ 0, %do.body.sw.epilog.sink.split_crit_edge ], [ -128, %do.body6.sw.epilog.sink.split_crit_edge ]
  %name13 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.89.sink, ptr noundef %name13) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.body6.sw.epilog_crit_edge, %do.body.sw.epilog_crit_edge
  %.sink = phi i8 [ 0, %do.body.sw.epilog_crit_edge ], [ -128, %do.body6.sw.epilog_crit_edge ], [ %.sink.ph, %sw.epilog.sink.split ]
  %reg_3a_cb19 = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 16
  %3 = ptrtoint ptr %reg_3a_cb19 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %.sink, ptr %reg_3a_cb19, align 1
  %reg_3a = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 15
  %4 = ptrtoint ptr %reg_3a to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reg_3a, align 2
  %or32 = or i8 %.sink, %5
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %6 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 58, i8 noundef zeroext %or32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %sw.epilog.saa7127_write.exit_crit_edge, label %for.cond.i

sw.epilog.saa7127_write.exit_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit

for.cond.i:                                       ; preds = %sw.epilog
  %call1.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 58, i8 noundef zeroext %or32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %cmp2.1.i = icmp eq i32 %call1.1.i, 0
  br i1 %cmp2.1.i, label %for.cond.i.saa7127_write.exit_crit_edge, label %for.cond.1.i

for.cond.i.saa7127_write.exit_crit_edge:          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %call1.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 58, i8 noundef zeroext %or32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i)
  %cmp2.2.i = icmp eq i32 %call1.2.i, 0
  br i1 %cmp2.2.i, label %for.cond.1.i.saa7127_write.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.saa7127_write.exit_crit_edge:        ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i) #9
  br label %saa7127_write.exit

saa7127_write.exit:                               ; preds = %for.cond.2.i, %for.cond.1.i.saa7127_write.exit_crit_edge, %for.cond.i.saa7127_write.exit_crit_edge, %sw.epilog.saa7127_write.exit_crit_edge
  %input_type = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 3
  %8 = ptrtoint ptr %input_type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %input, ptr %input_type, align 4
  br label %cleanup

cleanup:                                          ; preds = %saa7127_write.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %saa7127_write.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @saa7127_set_video_enable(ptr noundef %sd, i32 noundef %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp9 = icmp sgt i32 %0, 0
  br i1 %tobool.not, label %do.body8, label %do.body

do.body:                                          ; preds = %entry
  br i1 %cmp9, label %do.end, label %do.body.do.end5_crit_edge

do.body.do.end5_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef %name) #9
  br label %do.end5

do.end5:                                          ; preds = %do.end, %do.body.do.end5_crit_edge
  %reg_2d = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 14
  %1 = ptrtoint ptr %reg_2d to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %reg_2d, align 1
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %3 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 45, i8 noundef zeroext %2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %do.end5.saa7127_write.exit_crit_edge, label %for.cond.i

do.end5.saa7127_write.exit_crit_edge:             ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit

for.cond.i:                                       ; preds = %do.end5
  %call1.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 45, i8 noundef zeroext %2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %cmp2.1.i = icmp eq i32 %call1.1.i, 0
  br i1 %cmp2.1.i, label %for.cond.i.saa7127_write.exit_crit_edge, label %for.cond.1.i

for.cond.i.saa7127_write.exit_crit_edge:          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %call1.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 45, i8 noundef zeroext %2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i)
  %cmp2.2.i = icmp eq i32 %call1.2.i, 0
  br i1 %cmp2.2.i, label %for.cond.1.i.saa7127_write.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.saa7127_write.exit_crit_edge:        ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i) #9
  br label %saa7127_write.exit

saa7127_write.exit:                               ; preds = %for.cond.2.i, %for.cond.1.i.saa7127_write.exit_crit_edge, %for.cond.i.saa7127_write.exit_crit_edge, %do.end5.saa7127_write.exit_crit_edge
  %reg_61 = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 17
  %5 = ptrtoint ptr %reg_61 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reg_61, align 4
  %7 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 97, i8 noundef zeroext %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2)
  %cmp2.i3 = icmp eq i32 %call1.i2, 0
  br i1 %cmp2.i3, label %saa7127_write.exit.if.end28_crit_edge, label %for.cond.i6

saa7127_write.exit.if.end28_crit_edge:            ; preds = %saa7127_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

for.cond.i6:                                      ; preds = %saa7127_write.exit
  %call1.1.i4 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 97, i8 noundef zeroext %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i4)
  %cmp2.1.i5 = icmp eq i32 %call1.1.i4, 0
  br i1 %cmp2.1.i5, label %for.cond.i6.if.end28_crit_edge, label %for.cond.1.i9

for.cond.i6.if.end28_crit_edge:                   ; preds = %for.cond.i6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

for.cond.1.i9:                                    ; preds = %for.cond.i6
  %call1.2.i7 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 97, i8 noundef zeroext %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i7)
  %cmp2.2.i8 = icmp eq i32 %call1.2.i7, 0
  br i1 %cmp2.2.i8, label %for.cond.1.i9.if.end28_crit_edge, label %for.cond.1.i9.if.end28.sink.split_crit_edge

for.cond.1.i9.if.end28.sink.split_crit_edge:      ; preds = %for.cond.1.i9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.sink.split

for.cond.1.i9.if.end28_crit_edge:                 ; preds = %for.cond.1.i9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

do.body8:                                         ; preds = %entry
  br i1 %cmp9, label %do.end13, label %do.body8.do.end20_crit_edge

do.body8.do.end20_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end20

do.end13:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  %name15 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef %name15) #9
  br label %do.end20

do.end20:                                         ; preds = %do.end13, %do.body8.do.end20_crit_edge
  %reg_2d21 = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 14
  %9 = ptrtoint ptr %reg_2d21 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %reg_2d21, align 1
  %11 = and i8 %10, -16
  %dev_priv.i.i14 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %12 = ptrtoint ptr %dev_priv.i.i14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_priv.i.i14, align 4
  %call1.i15 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 45, i8 noundef zeroext %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i15)
  %cmp2.i16 = icmp eq i32 %call1.i15, 0
  br i1 %cmp2.i16, label %do.end20.saa7127_write.exit26_crit_edge, label %for.cond.i19

do.end20.saa7127_write.exit26_crit_edge:          ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit26

for.cond.i19:                                     ; preds = %do.end20
  %call1.1.i17 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 45, i8 noundef zeroext %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i17)
  %cmp2.1.i18 = icmp eq i32 %call1.1.i17, 0
  br i1 %cmp2.1.i18, label %for.cond.i19.saa7127_write.exit26_crit_edge, label %for.cond.1.i22

for.cond.i19.saa7127_write.exit26_crit_edge:      ; preds = %for.cond.i19
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit26

for.cond.1.i22:                                   ; preds = %for.cond.i19
  %call1.2.i20 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 45, i8 noundef zeroext %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i20)
  %cmp2.2.i21 = icmp eq i32 %call1.2.i20, 0
  br i1 %cmp2.2.i21, label %for.cond.1.i22.saa7127_write.exit26_crit_edge, label %for.cond.2.i25

for.cond.1.i22.saa7127_write.exit26_crit_edge:    ; preds = %for.cond.1.i22
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit26

for.cond.2.i25:                                   ; preds = %for.cond.1.i22
  call void @__sanitizer_cov_trace_pc() #8
  %name.i23 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i23) #9
  br label %saa7127_write.exit26

saa7127_write.exit26:                             ; preds = %for.cond.2.i25, %for.cond.1.i22.saa7127_write.exit26_crit_edge, %for.cond.i19.saa7127_write.exit26_crit_edge, %do.end20.saa7127_write.exit26_crit_edge
  %reg_6124 = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 17
  %14 = ptrtoint ptr %reg_6124 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %reg_6124, align 4
  %16 = or i8 %15, -64
  %17 = ptrtoint ptr %dev_priv.i.i14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_priv.i.i14, align 4
  %call1.i28 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext 97, i8 noundef zeroext %16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i28)
  %cmp2.i29 = icmp eq i32 %call1.i28, 0
  br i1 %cmp2.i29, label %saa7127_write.exit26.if.end28_crit_edge, label %for.cond.i32

saa7127_write.exit26.if.end28_crit_edge:          ; preds = %saa7127_write.exit26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

for.cond.i32:                                     ; preds = %saa7127_write.exit26
  %call1.1.i30 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext 97, i8 noundef zeroext %16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i30)
  %cmp2.1.i31 = icmp eq i32 %call1.1.i30, 0
  br i1 %cmp2.1.i31, label %for.cond.i32.if.end28_crit_edge, label %for.cond.1.i35

for.cond.i32.if.end28_crit_edge:                  ; preds = %for.cond.i32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

for.cond.1.i35:                                   ; preds = %for.cond.i32
  %call1.2.i33 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext 97, i8 noundef zeroext %16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i33)
  %cmp2.2.i34 = icmp eq i32 %call1.2.i33, 0
  br i1 %cmp2.2.i34, label %for.cond.1.i35.if.end28_crit_edge, label %for.cond.1.i35.if.end28.sink.split_crit_edge

for.cond.1.i35.if.end28.sink.split_crit_edge:     ; preds = %for.cond.1.i35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.sink.split

for.cond.1.i35.if.end28_crit_edge:                ; preds = %for.cond.1.i35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.end28.sink.split:                              ; preds = %for.cond.1.i35.if.end28.sink.split_crit_edge, %for.cond.1.i9.if.end28.sink.split_crit_edge
  %name.i36 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i36) #9
  br label %if.end28

if.end28:                                         ; preds = %if.end28.sink.split, %for.cond.1.i35.if.end28_crit_edge, %for.cond.i32.if.end28_crit_edge, %saa7127_write.exit26.if.end28_crit_edge, %for.cond.1.i9.if.end28_crit_edge, %for.cond.i6.if.end28_crit_edge, %saa7127_write.exit.if.end28_crit_edge
  %video_enable = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 5
  %19 = ptrtoint ptr %video_enable to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %enable, ptr %video_enable, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7127_log_status(ptr noundef %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %std = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 1
  %0 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %std, align 8
  %and = and i64 %1, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.17, ptr @.str.16
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name, ptr noundef nonnull %cond) #9
  %input_type = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 3
  %2 = ptrtoint ptr %input_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool8.not = icmp eq i32 %3, 0
  %cond9 = select i1 %tobool8.not, ptr @.str.22, ptr @.str.21
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name, ptr noundef nonnull %cond9) #9
  %video_enable = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 5
  %4 = ptrtoint ptr %video_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %video_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool17.not = icmp eq i32 %5, 0
  br i1 %tobool17.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %output_type = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 4
  %6 = ptrtoint ptr %output_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %output_type, align 8
  %arrayidx = getelementptr [6 x ptr], ptr @output_strs, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond18 = phi ptr [ %9, %cond.true ], [ @.str.26, %entry.cond.end_crit_edge ]
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name, ptr noundef %cond18) #9
  %wss_enable = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 6
  %10 = ptrtoint ptr %wss_enable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wss_enable, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool26.not = icmp eq i32 %11, 0
  br i1 %tobool26.not, label %cond.end.cond.end30_crit_edge, label %cond.true27

cond.end.cond.end30_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end30

cond.true27:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %wss_mode = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 7
  %12 = ptrtoint ptr %wss_mode to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %wss_mode, align 4
  %idxprom = zext i16 %13 to i32
  %arrayidx28 = getelementptr [16 x ptr], ptr @wss_strs, i32 0, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx28, align 4
  br label %cond.end30

cond.end30:                                       ; preds = %cond.true27, %cond.end.cond.end30_crit_edge
  %cond31 = phi ptr [ %15, %cond.true27 ], [ @.str.26, %cond.end.cond.end30_crit_edge ]
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name, ptr noundef %cond31) #9
  %vps_enable = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 12
  %16 = ptrtoint ptr %vps_enable to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vps_enable, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool39.not = icmp eq i32 %17, 0
  %cond40 = select i1 %tobool39.not, ptr @.str.26, ptr @.str.33
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name, ptr noundef nonnull %cond40) #9
  %cc_enable = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 8
  %18 = ptrtoint ptr %cc_enable to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cc_enable, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool48.not = icmp eq i32 %19, 0
  %cond49 = select i1 %tobool48.not, ptr @.str.26, ptr @.str.33
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %name, ptr noundef nonnull %cond49) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7127_g_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %reg1, align 1
  %conv = trunc i64 %1 to i8
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv) #6
  %conv2 = sext i32 %call1.i to i64
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %4 = ptrtoint ptr %val to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 %conv2, ptr %val, align 1
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %5 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 1, ptr %size, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7127_s_register(ptr noundef %sd, ptr nocapture noundef readonly %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %conv, i8 noundef zeroext %conv3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %entry.saa7127_write.exit_crit_edge, label %for.cond.i

entry.saa7127_write.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit

for.cond.i:                                       ; preds = %entry
  %call1.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %conv, i8 noundef zeroext %conv3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %cmp2.1.i = icmp eq i32 %call1.1.i, 0
  br i1 %cmp2.1.i, label %for.cond.i.saa7127_write.exit_crit_edge, label %for.cond.1.i

for.cond.i.saa7127_write.exit_crit_edge:          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %call1.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %conv, i8 noundef zeroext %conv3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i)
  %cmp2.2.i = icmp eq i32 %call1.2.i, 0
  br i1 %cmp2.2.i, label %for.cond.1.i.saa7127_write.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.saa7127_write.exit_crit_edge:        ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7127_write.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i) #9
  br label %saa7127_write.exit

saa7127_write.exit:                               ; preds = %for.cond.2.i, %for.cond.1.i.saa7127_write.exit_crit_edge, %for.cond.i.saa7127_write.exit_crit_edge, %entry.saa7127_write.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7127_s_routing(ptr noundef %sd, i32 noundef %input, i32 noundef %output, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %input_type = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 3
  %0 = ptrtoint ptr %input_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %input_type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %input)
  %cmp.not = icmp eq i32 %1, %input
  br i1 %cmp.not, label %entry.land.lhs.true_crit_edge, label %if.end

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @saa7127_set_input_type(ptr noundef %sd, i32 noundef %input)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.end.land.lhs.true_crit_edge, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %output_type = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 4
  %2 = ptrtoint ptr %output_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %output_type, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %output)
  %cmp3.not = icmp eq i32 %3, %output
  br i1 %cmp3.not, label %land.lhs.true.if.end6_crit_edge, label %if.then4

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call fastcc i32 @saa7127_set_output_type(ptr noundef %sd, i32 noundef %output)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %rc.1 = phi i32 [ %call5, %if.then4 ], [ 0, %land.lhs.true.if.end6_crit_edge ], [ %call1, %if.end.if.end6_crit_edge ]
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7127_s_std_output(ptr noundef %sd, i64 noundef %std) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %std1 = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 1
  %0 = ptrtoint ptr %std1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %std1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %std)
  %cmp = icmp eq i64 %1, %std
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @saa7127_set_std(ptr noundef %sd, i64 noundef %std)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7127_s_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %video_enable = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 5
  %0 = ptrtoint ptr %video_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %video_enable, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %enable)
  %cmp = icmp eq i32 %1, %enable
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @saa7127_set_video_enable(ptr noundef %sd, i32 noundef %enable)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7127_s_vbi_data(ptr noundef %sd, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %1, label %entry.return_crit_edge [
    i32 16384, label %sw.bb
    i32 1024, label %sw.bb1
    i32 4096, label %sw.bb3
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call fastcc i32 @saa7127_set_wss(ptr noundef %sd, ptr noundef %data)
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call fastcc i32 @saa7127_set_vps(ptr noundef %sd, ptr noundef %data)
  br label %return

sw.bb3:                                           ; preds = %entry
  %field = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call fastcc i32 @saa7127_set_cc(ptr noundef %sd, ptr noundef %data)
  br label %return

if.end:                                           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call fastcc i32 @saa7127_set_xds(ptr noundef %sd, ptr noundef %data)
  br label %return

return:                                           ; preds = %if.end, %if.then, %sw.bb1, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then ], [ %call5, %if.end ], [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @saa7127_g_sliced_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef writeonly %fmt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %service_lines = getelementptr inbounds %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1
  %0 = call ptr @memset(ptr %service_lines, i32 0, i32 96)
  %vps_enable = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 12
  %1 = ptrtoint ptr %vps_enable to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vps_enable, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx2 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 16
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 1024, ptr %arrayidx2, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %wss_enable = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 6
  %4 = ptrtoint ptr %wss_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wss_enable, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx7 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 23
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 16384, ptr %arrayidx7, align 2
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  %cc_enable = getelementptr inbounds %struct.saa7127_state, ptr %sd, i32 0, i32 8
  %7 = ptrtoint ptr %cc_enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cc_enable, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool9.not = icmp eq i32 %8, 0
  br i1 %tobool9.not, label %if.end8.if.end17_crit_edge, label %if.then10

if.end8.if.end17_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx13 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 21
  %9 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 4096, ptr %arrayidx13, align 2
  %arrayidx16 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 21
  %10 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 4096, ptr %arrayidx16, align 2
  br label %if.end17

if.end17:                                         ; preds = %if.then10, %if.end8.if.end17_crit_edge
  %11 = ptrtoint ptr %vps_enable to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vps_enable, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool19.not = icmp eq i32 %12, 0
  %cond = select i1 %tobool19.not, i16 0, i16 1024
  %13 = ptrtoint ptr %wss_enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wss_enable, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool21.not = icmp eq i32 %14, 0
  %cond22 = select i1 %tobool21.not, i16 0, i16 16384
  %or = or i16 %cond22, %cond
  %15 = ptrtoint ptr %cc_enable to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cc_enable, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool24.not = icmp eq i32 %16, 0
  %cond25 = select i1 %tobool24.not, i16 0, i16 4096
  %or26 = or i16 %or, %cond25
  %17 = ptrtoint ptr %fmt to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %or26, ptr %fmt, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !17, !19, !20, !22, !24, !25, !26, !28, !30, !32, !33, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !48, !49, !50, !52, !54, !56, !57, !58, !59, !60, !61, !63, !64, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !126, !127, !128, !130, !132, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !147, !149, !151, !152, !153, !154, !156, !157, !158, !159, !160, !161, !163, !164, !165, !167, !168, !169, !170, !172, !173, !174, !176, !177, !178, !179, !181, !182, !183, !185, !186, !187, !188, !190, !191, !192, !194, !195, !196, !197, !199, !200, !201, !203, !204, !205, !206, !208, !209, !210, !212}
!llvm.module.flags = !{!214, !215, !216, !217, !218, !219, !220, !221}
!llvm.ident = !{!222}

!0 = !{ptr @__UNIQUE_ID_description292, !1, !"__UNIQUE_ID_description292", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/saa7127.c", i32 49, i32 1}
!2 = !{ptr @__UNIQUE_ID_author293, !3, !"__UNIQUE_ID_author293", i1 false, i1 false}
!3 = !{!"../drivers/media/i2c/saa7127.c", i32 50, i32 1}
!4 = !{ptr @__UNIQUE_ID_file294, !5, !"__UNIQUE_ID_file294", i1 false, i1 false}
!5 = !{!"../drivers/media/i2c/saa7127.c", i32 51, i32 1}
!6 = !{ptr @__UNIQUE_ID_license295, !5, !"__UNIQUE_ID_license295", i1 false, i1 false}
!7 = !{ptr @__param_debug, !8, !"__param_debug", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/saa7127.c", i32 52, i32 1}
!9 = !{ptr @__UNIQUE_ID_debugtype296, !8, !"__UNIQUE_ID_debugtype296", i1 false, i1 false}
!10 = !{ptr @__param_test_image, !11, !"__param_test_image", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/saa7127.c", i32 53, i32 1}
!12 = !{ptr @__UNIQUE_ID_test_imagetype297, !11, !"__UNIQUE_ID_test_imagetype297", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_debug298, !14, !"__UNIQUE_ID_debug298", i1 false, i1 false}
!14 = !{!"../drivers/media/i2c/saa7127.c", i32 54, i32 1}
!15 = !{ptr @__UNIQUE_ID_test_image299, !16, !"__UNIQUE_ID_test_image299", i1 false, i1 false}
!16 = !{!"../drivers/media/i2c/saa7127.c", i32 55, i32 1}
!17 = !{ptr @__initcall__kmod_saa7127__300_819_saa7127_driver_init6, !18, !"__initcall__kmod_saa7127__300_819_saa7127_driver_init6", i1 false, i1 false}
!18 = !{!"../drivers/media/i2c/saa7127.c", i32 819, i32 1}
!19 = !{ptr @__exitcall_saa7127_driver_exit, !18, !"__exitcall_saa7127_driver_exit", i1 false, i1 false}
!20 = !{ptr @debug, !21, !"debug", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/saa7127.c", i32 46, i32 12}
!22 = !{ptr @test_image, !23, !"test_image", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/saa7127.c", i32 47, i32 12}
!24 = !{ptr @__param_str_debug, !8, !"__param_str_debug", i1 false, i1 false}
!25 = !{ptr @__param_str_test_image, !11, !"__param_str_test_image", i1 false, i1 false}
!26 = !{ptr @.str, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/i2c/saa7127.c", i32 812, i32 11}
!28 = !{ptr @saa7127_driver, !29, !"saa7127_driver", i1 false, i1 false}
!29 = !{!"../drivers/media/i2c/saa7127.c", i32 810, i32 26}
!30 = !{ptr @.str.1, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/saa7127.c", i32 722, i32 2}
!32 = !{ptr @.str.2, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @saa7127_probe._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @saa7127_probe._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.5, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/i2c/saa7127.c", i32 739, i32 3}
!38 = !{ptr @saa7127_probe._entry.4, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @saa7127_probe._entry_ptr.6, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/i2c/saa7127.c", i32 755, i32 26}
!42 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/i2c/saa7127.c", i32 762, i32 2}
!44 = !{ptr @saa7127_probe._entry.8, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @saa7127_probe._entry_ptr.10, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/i2c/saa7127.c", i32 765, i32 2}
!48 = !{ptr @saa7127_probe._entry.11, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @saa7127_probe._entry_ptr.13, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @saa7127_ops, !51, !"saa7127_ops", i1 false, i1 false}
!51 = !{!"../drivers/media/i2c/saa7127.c", i32 703, i32 37}
!52 = !{ptr @saa7127_core_ops, !53, !"saa7127_core_ops", i1 false, i1 false}
!53 = !{!"../drivers/media/i2c/saa7127.c", i32 684, i32 42}
!54 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/i2c/saa7127.c", i32 671, i32 2}
!56 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @saa7127_log_status._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @saa7127_log_status._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/i2c/saa7127.c", i32 672, i32 2}
!63 = !{ptr @saa7127_log_status._entry.18, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @saa7127_log_status._entry_ptr.20, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/i2c/saa7127.c", i32 673, i32 2}
!69 = !{ptr @saa7127_log_status._entry.23, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @saa7127_log_status._entry_ptr.25, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/i2c/saa7127.c", i32 675, i32 2}
!74 = !{ptr @saa7127_log_status._entry.27, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @saa7127_log_status._entry_ptr.29, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/i2c/saa7127.c", i32 677, i32 2}
!78 = !{ptr @saa7127_log_status._entry.30, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @saa7127_log_status._entry_ptr.32, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/i2c/saa7127.c", i32 678, i32 2}
!83 = !{ptr @saa7127_log_status._entry.34, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @saa7127_log_status._entry_ptr.36, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/i2c/saa7127.c", i32 273, i32 2}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/i2c/saa7127.c", i32 274, i32 2}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/i2c/saa7127.c", i32 275, i32 2}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/i2c/saa7127.c", i32 276, i32 2}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/i2c/saa7127.c", i32 277, i32 2}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/i2c/saa7127.c", i32 278, i32 2}
!97 = !{ptr @output_strs, !98, !"output_strs", i1 false, i1 false}
!98 = !{!"../drivers/media/i2c/saa7127.c", i32 271, i32 27}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/i2c/saa7127.c", i32 282, i32 2}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/i2c/saa7127.c", i32 283, i32 2}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/i2c/saa7127.c", i32 284, i32 2}
!105 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/i2c/saa7127.c", i32 286, i32 2}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/i2c/saa7127.c", i32 289, i32 2}
!109 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/i2c/saa7127.c", i32 290, i32 2}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/i2c/saa7127.c", i32 293, i32 2}
!113 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/i2c/saa7127.c", i32 295, i32 2}
!115 = !{ptr @.str.51, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/i2c/saa7127.c", i32 296, i32 2}
!117 = !{ptr @wss_strs, !118, !"wss_strs", i1 false, i1 false}
!118 = !{!"../drivers/media/i2c/saa7127.c", i32 281, i32 27}
!119 = !{ptr @saa7127_video_ops, !120, !"saa7127_video_ops", i1 false, i1 false}
!120 = !{!"../drivers/media/i2c/saa7127.c", i32 692, i32 43}
!121 = !{ptr @saa7127_vbi_ops, !122, !"saa7127_vbi_ops", i1 false, i1 false}
!122 = !{!"../drivers/media/i2c/saa7127.c", i32 698, i32 41}
!123 = !{ptr @.str.52, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/i2c/saa7127.c", i32 320, i32 2}
!125 = !{ptr @.str.53, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @saa7127_write._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @saa7127_write._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @saa7127_init_config_common, !129, !"saa7127_init_config_common", i1 false, i1 false}
!129 = !{!"../drivers/media/i2c/saa7127.c", i32 131, i32 35}
!130 = !{ptr @.str.54, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/i2c/saa7127.c", i32 472, i32 3}
!132 = !{ptr @.str.55, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @saa7127_set_std._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @saa7127_set_std._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.57, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/i2c/saa7127.c", i32 481, i32 3}
!137 = !{ptr @saa7127_set_std._entry.56, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @saa7127_set_std._entry_ptr.58, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.60, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/i2c/saa7127.c", i32 487, i32 3}
!141 = !{ptr @saa7127_set_std._entry.59, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @saa7127_set_std._entry_ptr.61, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @saa7127_init_config_60hz, !144, !"saa7127_init_config_60hz", i1 false, i1 false}
!144 = !{!"../drivers/media/i2c/saa7127.c", i32 167, i32 35}
!145 = !{ptr @saa7127_init_config_50hz_secam, !146, !"saa7127_init_config_50hz_secam", i1 false, i1 false}
!146 = !{!"../drivers/media/i2c/saa7127.c", i32 211, i32 29}
!147 = !{ptr @saa7127_init_config_50hz_pal, !148, !"saa7127_init_config_50hz_pal", i1 false, i1 false}
!148 = !{!"../drivers/media/i2c/saa7127.c", i32 189, i32 29}
!149 = !{ptr @.str.62, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/i2c/saa7127.c", i32 547, i32 2}
!151 = !{ptr @.str.63, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @saa7127_set_output_type._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @saa7127_set_output_type._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.64, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/i2c/saa7127.c", i32 346, i32 3}
!156 = !{ptr @.str.65, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @saa7127_set_vps._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @saa7127_set_vps._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.66, !155, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.67, !155, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.69, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/i2c/saa7127.c", i32 358, i32 2}
!163 = !{ptr @saa7127_set_vps._entry.68, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @saa7127_set_vps._entry_ptr.70, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.71, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/i2c/saa7127.c", i32 430, i32 3}
!167 = !{ptr @.str.72, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @saa7127_set_wss._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @saa7127_set_wss._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.74, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/i2c/saa7127.c", i32 439, i32 2}
!172 = !{ptr @saa7127_set_wss._entry.73, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @saa7127_set_wss._entry_ptr.75, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.76, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/i2c/saa7127.c", i32 378, i32 3}
!176 = !{ptr @.str.77, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @saa7127_set_cc._entry, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @saa7127_set_cc._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.79, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/i2c/saa7127.c", i32 387, i32 2}
!181 = !{ptr @saa7127_set_cc._entry.78, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @saa7127_set_cc._entry_ptr.80, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.81, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/i2c/saa7127.c", i32 405, i32 3}
!185 = !{ptr @.str.82, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @saa7127_set_xds._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @saa7127_set_xds._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.84, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/i2c/saa7127.c", i32 413, i32 2}
!190 = !{ptr @saa7127_set_xds._entry.83, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @saa7127_set_xds._entry_ptr.85, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.86, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/i2c/saa7127.c", i32 565, i32 3}
!194 = !{ptr @.str.87, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @saa7127_set_input_type._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @saa7127_set_input_type._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.89, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/media/i2c/saa7127.c", i32 570, i32 3}
!199 = !{ptr @saa7127_set_input_type._entry.88, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @saa7127_set_input_type._entry_ptr.90, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.91, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/i2c/saa7127.c", i32 452, i32 3}
!203 = !{ptr @.str.92, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @saa7127_set_video_enable._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @saa7127_set_video_enable._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.94, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/i2c/saa7127.c", i32 456, i32 3}
!208 = !{ptr @saa7127_set_video_enable._entry.93, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @saa7127_set_video_enable._entry_ptr.95, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @saa7129_init_config_extra, !211, !"saa7129_init_config_extra", i1 false, i1 false}
!211 = !{!"../drivers/media/i2c/saa7127.c", i32 125, i32 35}
!212 = !{ptr @saa7127_id, !213, !"saa7127_id", i1 false, i1 false}
!213 = !{!"../drivers/media/i2c/saa7127.c", i32 800, i32 35}
!214 = !{i32 1, !"wchar_size", i32 2}
!215 = !{i32 1, !"min_enum_size", i32 4}
!216 = !{i32 8, !"branch-target-enforcement", i32 0}
!217 = !{i32 8, !"sign-return-address", i32 0}
!218 = !{i32 8, !"sign-return-address-all", i32 0}
!219 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!220 = !{i32 7, !"uwtable", i32 1}
!221 = !{i32 7, !"frame-pointer", i32 2}
!222 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
