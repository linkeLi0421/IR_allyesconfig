; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/tvp514x.c_pt.bc'
source_filename = "../drivers/media/i2c/tvp514x.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tvp514x_decoder = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, [64 x %struct.tvp514x_reg], ptr, i32, i32, %struct.v4l2_pix_format, i32, ptr, i32, i32, ptr, i32, i32, %struct.media_pad, %struct.v4l2_mbus_framefmt, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.tvp514x_reg = type { i8, i8, i32 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.100, i32, i32 }
%union.anon.100 = type { i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.tvp514x_std_info = type { i32, i32, i8, %struct.v4l2_standard }
%struct.v4l2_standard = type { i32, i64, [24 x i8], %struct.v4l2_fract, i32, [4 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.101, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.101 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.tvp514x_platform_data = type { i8, i8, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_frame_interval = type { i32, %struct.v4l2_fract, [9 x i32] }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__param_str_debug = internal constant [14 x i8] c"tvp514x.debug\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype292 = internal constant [28 x i8] c"tvp514x.parmtype=debug:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_debug293 = internal constant [37 x i8] c"tvp514x.parm=debug:Debug level (0-1)\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [33 x i8] c"tvp514x.author=Texas Instruments\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [49 x i8] c"tvp514x.description=TVP514X linux decoder driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [39 x i8] c"tvp514x.file=drivers/media/i2c/tvp514x\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [20 x i8] c"tvp514x.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_tvp514x__298_1217_tvp514x_driver_init6 = internal global ptr @tvp514x_driver_init, section ".initcall6.init", align 4
@tvp514x_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tvp514x_probe, ptr @tvp514x_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tvp514x_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tvp514x_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tvp514x_driver_exit = internal global ptr @tvp514x_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tvp514x\00", [24 x i8] zeroinitializer }, align 32
@tvp514x_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tvp5146\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tvp5146m2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tvp5147\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tvp5147m1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@tvp514x_id = internal constant { [5 x %struct.i2c_device_id], [40 x i8] } { [5 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tvp5146\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @tvp5146_init_reg_seq to i32) }, %struct.i2c_device_id { [20 x i8] c"tvp5146m2\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @tvp514xm_init_reg_seq to i32) }, %struct.i2c_device_id { [20 x i8] c"tvp5147\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @tvp5147_init_reg_seq to i32) }, %struct.i2c_device_id { [20 x i8] c"tvp5147m1\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @tvp514xm_init_reg_seq to i32) }, %struct.i2c_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@tvp514x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1034, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No platform data\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tvp514x_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/i2c/tvp514x.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tvp514x_probe._entry_ptr = internal global ptr @tvp514x_probe._entry, section ".printk_index", align 4
@tvp514x_dev = internal constant { %struct.tvp514x_decoder, [280 x i8] } { %struct.tvp514x_decoder { %struct.v4l2_subdev zeroinitializer, %struct.v4l2_ctrl_handler zeroinitializer, [64 x %struct.tvp514x_reg] zeroinitializer, ptr null, i32 0, i32 0, %struct.v4l2_pix_format { i32 720, i32 480, i32 1498831189, i32 4, i32 1440, i32 691200, i32 1, i32 0, i32 0, %union.anon.100 zeroinitializer, i32 0, i32 0 }, i32 1, ptr @tvp514x_fmt_list, i32 0, i32 2, ptr @tvp514x_std_list, i32 0, i32 0, %struct.media_pad zeroinitializer, %struct.v4l2_mbus_framefmt zeroinitializer, ptr null }, [280 x i8] zeroinitializer }, align 32
@tvp514x_reg_list_default = internal constant { [64 x %struct.tvp514x_reg], [128 x i8] } { [64 x %struct.tvp514x_reg] [%struct.tvp514x_reg { i8 0, i8 0, i32 5 }, %struct.tvp514x_reg { i8 0, i8 1, i32 15 }, %struct.tvp514x_reg { i8 0, i8 2, i32 0 }, %struct.tvp514x_reg { i8 0, i8 3, i32 0 }, %struct.tvp514x_reg { i8 3, i8 4, i32 63 }, %struct.tvp514x_reg { i8 0, i8 5, i32 16 }, %struct.tvp514x_reg { i8 0, i8 6, i32 0 }, %struct.tvp514x_reg { i8 0, i8 7, i32 0 }, %struct.tvp514x_reg { i8 0, i8 8, i32 2 }, %struct.tvp514x_reg { i8 0, i8 9, i32 128 }, %struct.tvp514x_reg { i8 0, i8 10, i32 128 }, %struct.tvp514x_reg { i8 0, i8 11, i32 128 }, %struct.tvp514x_reg { i8 0, i8 12, i32 0 }, %struct.tvp514x_reg { i8 0, i8 13, i32 0 }, %struct.tvp514x_reg { i8 0, i8 14, i32 14 }, %struct.tvp514x_reg { i8 3, i8 15, i32 0 }, %struct.tvp514x_reg { i8 0, i8 16, i32 128 }, %struct.tvp514x_reg { i8 0, i8 17, i32 128 }, %struct.tvp514x_reg { i8 0, i8 18, i32 128 }, %struct.tvp514x_reg { i8 3, i8 19, i32 0 }, %struct.tvp514x_reg { i8 0, i8 20, i32 128 }, %struct.tvp514x_reg { i8 3, i8 21, i32 0 }, %struct.tvp514x_reg { i8 3, i8 22, i32 85 }, %struct.tvp514x_reg { i8 3, i8 23, i32 0 }, %struct.tvp514x_reg { i8 3, i8 24, i32 37 }, %struct.tvp514x_reg { i8 3, i8 25, i32 3 }, %struct.tvp514x_reg { i8 3, i8 26, i32 0 }, %struct.tvp514x_reg { i8 3, i8 27, i32 0 }, %struct.tvp514x_reg { i8 3, i8 28, i32 64 }, %struct.tvp514x_reg { i8 3, i8 29, i32 0 }, %struct.tvp514x_reg { i8 3, i8 30, i32 4 }, %struct.tvp514x_reg { i8 3, i8 31, i32 0 }, %struct.tvp514x_reg { i8 3, i8 32, i32 7 }, %struct.tvp514x_reg { i8 3, i8 33, i32 0 }, %struct.tvp514x_reg { i8 3, i8 34, i32 1 }, %struct.tvp514x_reg { i8 3, i8 35, i32 0 }, %struct.tvp514x_reg { i8 3, i8 36, i32 21 }, %struct.tvp514x_reg { i8 3, i8 37, i32 0 }, %struct.tvp514x_reg { i8 3, i8 38, i32 0 }, %struct.tvp514x_reg { i8 3, i8 39, i32 0 }, %struct.tvp514x_reg { i8 3, i8 40, i32 204 }, %struct.tvp514x_reg { i8 3, i8 41, i32 0 }, %struct.tvp514x_reg { i8 3, i8 42, i32 0 }, %struct.tvp514x_reg { i8 3, i8 43, i32 0 }, %struct.tvp514x_reg { i8 3, i8 44, i32 0 }, %struct.tvp514x_reg { i8 3, i8 45, i32 0 }, %struct.tvp514x_reg { i8 3, i8 46, i32 0 }, %struct.tvp514x_reg { i8 3, i8 47, i32 0 }, %struct.tvp514x_reg { i8 3, i8 48, i32 0 }, %struct.tvp514x_reg { i8 3, i8 49, i32 0 }, %struct.tvp514x_reg { i8 0, i8 50, i32 0 }, %struct.tvp514x_reg { i8 0, i8 51, i32 0 }, %struct.tvp514x_reg { i8 0, i8 52, i32 17 }, %struct.tvp514x_reg { i8 0, i8 53, i32 238 }, %struct.tvp514x_reg { i8 0, i8 54, i32 175 }, %struct.tvp514x_reg { i8 0, i8 55, i32 255 }, %struct.tvp514x_reg { i8 0, i8 56, i32 255 }, %struct.tvp514x_reg { i8 0, i8 57, i32 1 }, %struct.tvp514x_reg { i8 1, i8 0, i32 0 }, %struct.tvp514x_reg zeroinitializer, %struct.tvp514x_reg zeroinitializer, %struct.tvp514x_reg zeroinitializer, %struct.tvp514x_reg zeroinitializer, %struct.tvp514x_reg zeroinitializer], [128 x i8] zeroinitializer }, align 32
@tvp514x_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @tvp514x_video_ops, ptr null, ptr null, ptr null, ptr @tvp514x_pad_ops }, [32 x i8] zeroinitializer }, align 32
@tvp514x_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1083, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: %s decoder driver failed to register !!\0A\00", [49 x i8] zeroinitializer }, align 32
@tvp514x_probe._entry_ptr.8 = internal global ptr @tvp514x_probe._entry.6, section ".printk_index", align 4
@tvp514x_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"tvp514x:1087:(&decoder->hdl)->_lock\00", [60 x i8] zeroinitializer }, align 32
@tvp514x_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @tvp514x_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@tvp514x_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s: %s decoder driver registered !!\0A\00", [57 x i8] zeroinitializer }, align 32
@tvp514x_probe._entry_ptr.12 = internal global ptr @tvp514x_probe._entry.10, section ".printk_index", align 4
@tvp514x_fmt_list = internal constant { [1 x %struct.v4l2_fmtdesc], [32 x i8] } { [1 x %struct.v4l2_fmtdesc] [%struct.v4l2_fmtdesc { i32 0, i32 1, i32 0, [32 x i8] c"8-bit UYVY 4:2:2 Format\00\00\00\00\00\00\00\00\00", i32 1498831189, i32 0, [3 x i32] zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@tvp514x_std_list = internal constant { [2 x %struct.tvp514x_std_info], [48 x i8] } { [2 x %struct.tvp514x_std_info] [%struct.tvp514x_std_info { i32 720, i32 480, i8 1, %struct.v4l2_standard { i32 0, i64 45056, [24 x i8] c"NTSC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.v4l2_fract { i32 1001, i32 30000 }, i32 525, [4 x i32] zeroinitializer } }, %struct.tvp514x_std_info { i32 720, i32 576, i8 2, %struct.v4l2_standard { i32 1, i64 255, [24 x i8] c"PAL\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.v4l2_fract { i32 1, i32 25 }, i32 625, [4 x i32] zeroinitializer } }], [48 x i8] zeroinitializer }, align 32
@tvp514x_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr @tvp514x_s_routing, ptr null, ptr null, ptr @tvp514x_s_std, ptr null, ptr null, ptr @tvp514x_querystd, ptr null, ptr null, ptr null, ptr @tvp514x_s_stream, ptr null, ptr @tvp514x_g_frame_interval, ptr @tvp514x_s_frame_interval, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@tvp514x_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @tvp514x_enum_mbus_code, ptr null, ptr null, ptr @tvp514x_get_pad_format, ptr @tvp514x_set_pad_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@tvp514x_s_routing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 683, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: Input set to: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tvp514x_s_routing\00", [46 x i8] zeroinitializer }, align 32
@tvp514x_s_routing._entry_ptr = internal global ptr @tvp514x_s_routing._entry, section ".printk_index", align 4
@tvp514x_write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014%s: Write: retry ... %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tvp514x_write_reg\00", [46 x i8] zeroinitializer }, align 32
@tvp514x_write_reg._entry_ptr = internal global ptr @tvp514x_write_reg._entry, section ".printk_index", align 4
@tvp514x_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014%s: Read: retry ... %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tvp514x_read_reg\00", [47 x i8] zeroinitializer }, align 32
@tvp514x_read_reg._entry_ptr = internal global ptr @tvp514x_read_reg._entry, section ".printk_index", align 4
@tvp514x_s_std._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 636, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: Standard set to: %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tvp514x_s_std\00", [18 x i8] zeroinitializer }, align 32
@tvp514x_s_std._entry_ptr = internal global ptr @tvp514x_s_std._entry, section ".printk_index", align 4
@tvp514x_querystd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: Current STD: %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tvp514x_querystd\00", [47 x i8] zeroinitializer }, align 32
@tvp514x_querystd._entry_ptr = internal global ptr @tvp514x_querystd._entry, section ".printk_index", align 4
@tvp514x_s_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 813, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: Unable to turn off decoder\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tvp514x_s_stream\00", [47 x i8] zeroinitializer }, align 32
@tvp514x_s_stream._entry_ptr = internal global ptr @tvp514x_s_stream._entry, section ".printk_index", align 4
@tvp514x_s_stream._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.3, i32 824, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: Unable to turn on decoder\0A\00", [63 x i8] zeroinitializer }, align 32
@tvp514x_s_stream._entry_ptr.27 = internal global ptr @tvp514x_s_stream._entry.25, section ".printk_index", align 4
@tvp514x_s_stream._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.3, i32 830, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: Unable to detect decoder\0A\00", [32 x i8] zeroinitializer }, align 32
@tvp514x_s_stream._entry_ptr.30 = internal global ptr @tvp514x_s_stream._entry.28, section ".printk_index", align 4
@tvp514x_s_stream._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.24, ptr @.str.3, i32 835, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Unable to configure decoder\0A\00", [61 x i8] zeroinitializer }, align 32
@tvp514x_s_stream._entry_ptr.33 = internal global ptr @tvp514x_s_stream._entry.31, section ".printk_index", align 4
@tvp514x_write_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: Write failed. Err[%d]\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tvp514x_write_regs\00", [45 x i8] zeroinitializer }, align 32
@tvp514x_write_regs._entry_ptr = internal global ptr @tvp514x_write_regs._entry, section ".printk_index", align 4
@tvp514x_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 504, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017%s: chip id detected msb:0x%x lsb:0x%x rom version:0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tvp514x_detect\00", [17 x i8] zeroinitializer }, align 32
@tvp514x_detect._entry_ptr = internal global ptr @tvp514x_detect._entry, section ".printk_index", align 4
@tvp514x_detect._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.3, i32 512, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: chip id mismatch msb:0x%x lsb:0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@tvp514x_detect._entry_ptr.40 = internal global ptr @tvp514x_detect._entry.38, section ".printk_index", align 4
@tvp514x_detect._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.3, i32 520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016%s: %s (Version - 0x%.2x) found at 0x%x (%s)\0A\00", [48 x i8] zeroinitializer }, align 32
@tvp514x_detect._entry_ptr.43 = internal global ptr @tvp514x_detect._entry.41, section ".printk_index", align 4
@dump_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: Reg(0x%.2X): 0x%.2X\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dump_reg\00", [23 x i8] zeroinitializer }, align 32
@dump_reg._entry_ptr = internal global ptr @dump_reg._entry, section ".printk_index", align 4
@tvp514x_s_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 736, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: Set Control: ID - %d - %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tvp514x_s_ctrl\00", [17 x i8] zeroinitializer }, align 32
@tvp514x_s_ctrl._entry_ptr = internal global ptr @tvp514x_s_ctrl._entry, section ".printk_index", align 4
@tvp5146_init_reg_seq = internal constant { [12 x %struct.tvp514x_reg], [32 x i8] } { [12 x %struct.tvp514x_reg] [%struct.tvp514x_reg { i8 0, i8 -24, i32 2 }, %struct.tvp514x_reg { i8 0, i8 -23, i32 0 }, %struct.tvp514x_reg { i8 0, i8 -22, i32 128 }, %struct.tvp514x_reg { i8 0, i8 -32, i32 1 }, %struct.tvp514x_reg { i8 0, i8 -24, i32 96 }, %struct.tvp514x_reg { i8 0, i8 -23, i32 0 }, %struct.tvp514x_reg { i8 0, i8 -22, i32 176 }, %struct.tvp514x_reg { i8 0, i8 -32, i32 1 }, %struct.tvp514x_reg { i8 0, i8 -32, i32 0 }, %struct.tvp514x_reg { i8 0, i8 3, i32 1 }, %struct.tvp514x_reg { i8 0, i8 3, i32 0 }, %struct.tvp514x_reg { i8 1, i8 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@tvp514xm_init_reg_seq = internal constant { [3 x %struct.tvp514x_reg], [40 x i8] } { [3 x %struct.tvp514x_reg] [%struct.tvp514x_reg { i8 0, i8 3, i32 1 }, %struct.tvp514x_reg { i8 0, i8 3, i32 0 }, %struct.tvp514x_reg { i8 1, i8 0, i32 0 }], [40 x i8] zeroinitializer }, align 32
@tvp5147_init_reg_seq = internal constant { [19 x %struct.tvp514x_reg], [40 x i8] } { [19 x %struct.tvp514x_reg] [%struct.tvp514x_reg { i8 0, i8 -24, i32 2 }, %struct.tvp514x_reg { i8 0, i8 -23, i32 0 }, %struct.tvp514x_reg { i8 0, i8 -22, i32 128 }, %struct.tvp514x_reg { i8 0, i8 -32, i32 1 }, %struct.tvp514x_reg { i8 0, i8 -24, i32 96 }, %struct.tvp514x_reg { i8 0, i8 -23, i32 0 }, %struct.tvp514x_reg { i8 0, i8 -22, i32 176 }, %struct.tvp514x_reg { i8 0, i8 -32, i32 1 }, %struct.tvp514x_reg { i8 0, i8 -24, i32 22 }, %struct.tvp514x_reg { i8 0, i8 -23, i32 0 }, %struct.tvp514x_reg { i8 0, i8 -22, i32 160 }, %struct.tvp514x_reg { i8 0, i8 -32, i32 22 }, %struct.tvp514x_reg { i8 0, i8 -24, i32 96 }, %struct.tvp514x_reg { i8 0, i8 -23, i32 0 }, %struct.tvp514x_reg { i8 0, i8 -22, i32 176 }, %struct.tvp514x_reg { i8 0, i8 -32, i32 0 }, %struct.tvp514x_reg { i8 0, i8 3, i32 1 }, %struct.tvp514x_reg { i8 0, i8 3, i32 0 }, %struct.tvp514x_reg { i8 1, i8 0, i32 0 }], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [24 x i64] [i64 22, i64 32, i64 0, i64 1, i64 2, i64 4, i64 5, i64 6, i64 8, i64 9, i64 10, i64 12, i64 68, i64 69, i64 70, i64 76, i64 77, i64 78, i64 84, i64 85, i64 86, i64 92, i64 93, i64 94]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.50 = internal global [7 x i64] [i64 5, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963779, i64 9963794]
@___asan_gen_.51 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 45, i32 13 }
@___asan_gen_.54 = private unnamed_addr constant [15 x i8] c"tvp514x_driver\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1207, i32 26 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1210, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"tvp514x_of_match\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1197, i32 34 }
@___asan_gen_.63 = private unnamed_addr constant [11 x i8] c"tvp514x_id\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1186, i32 35 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1034, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [12 x i8] c"tvp514x_dev\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 958, i32 37 }
@___asan_gen_.87 = private unnamed_addr constant [25 x i8] c"tvp514x_reg_list_default\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 125, i32 27 }
@___asan_gen_.90 = private unnamed_addr constant [12 x i8] c"tvp514x_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 953, i32 37 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1082, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1087, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"tvp514x_ctrl_ops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 849, i32 35 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1107, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"tvp514x_fmt_list\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 214, i32 34 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"tvp514x_std_list\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 230, i32 38 }
@___asan_gen_.120 = private unnamed_addr constant [18 x i8] c"tvp514x_video_ops\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 938, i32 43 }
@___asan_gen_.123 = private unnamed_addr constant [16 x i8] c"tvp514x_pad_ops\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 947, i32 41 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 683, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 331, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 289, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 635, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 601, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 813, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 824, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 830, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 835, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 370, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 502, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 511, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 518, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 309, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.243 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 735, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant [21 x i8] c"tvp5146_init_reg_seq\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1135, i32 33 }
@___asan_gen_.249 = private unnamed_addr constant [22 x i8] c"tvp514xm_init_reg_seq\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1174, i32 33 }
@___asan_gen_.252 = private unnamed_addr constant [21 x i8] c"tvp5147_init_reg_seq\00", align 1
@___asan_gen_.253 = private constant [31 x i8] c"../drivers/media/i2c/tvp514x.c\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1151, i32 33 }
@llvm.compiler.used = appending global [96 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_debug293, ptr @__UNIQUE_ID_debugtype292, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_tvp514x_driver_exit, ptr @__initcall__kmod_tvp514x__298_1217_tvp514x_driver_init6, ptr @__param_debug, ptr @dump_reg._entry, ptr @dump_reg._entry_ptr, ptr @tvp514x_detect._entry, ptr @tvp514x_detect._entry.38, ptr @tvp514x_detect._entry.41, ptr @tvp514x_detect._entry_ptr, ptr @tvp514x_detect._entry_ptr.40, ptr @tvp514x_detect._entry_ptr.43, ptr @tvp514x_driver_exit, ptr @tvp514x_probe._entry, ptr @tvp514x_probe._entry.10, ptr @tvp514x_probe._entry.6, ptr @tvp514x_probe._entry_ptr, ptr @tvp514x_probe._entry_ptr.12, ptr @tvp514x_probe._entry_ptr.8, ptr @tvp514x_querystd._entry, ptr @tvp514x_querystd._entry_ptr, ptr @tvp514x_read_reg._entry, ptr @tvp514x_read_reg._entry_ptr, ptr @tvp514x_s_ctrl._entry, ptr @tvp514x_s_ctrl._entry_ptr, ptr @tvp514x_s_routing._entry, ptr @tvp514x_s_routing._entry_ptr, ptr @tvp514x_s_std._entry, ptr @tvp514x_s_std._entry_ptr, ptr @tvp514x_s_stream._entry, ptr @tvp514x_s_stream._entry.25, ptr @tvp514x_s_stream._entry.28, ptr @tvp514x_s_stream._entry.31, ptr @tvp514x_s_stream._entry_ptr, ptr @tvp514x_s_stream._entry_ptr.27, ptr @tvp514x_s_stream._entry_ptr.30, ptr @tvp514x_s_stream._entry_ptr.33, ptr @tvp514x_write_reg._entry, ptr @tvp514x_write_reg._entry_ptr, ptr @tvp514x_write_regs._entry, ptr @tvp514x_write_regs._entry_ptr, ptr @debug, ptr @tvp514x_driver, ptr @.str, ptr @tvp514x_of_match, ptr @tvp514x_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @tvp514x_dev, ptr @tvp514x_reg_list_default, ptr @tvp514x_ops, ptr @.str.7, ptr @tvp514x_probe._key, ptr @.str.9, ptr @tvp514x_ctrl_ops, ptr @.str.11, ptr @tvp514x_fmt_list, ptr @tvp514x_std_list, ptr @tvp514x_video_ops, ptr @tvp514x_pad_ops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @tvp5146_init_reg_seq, ptr @tvp514xm_init_reg_seq, ptr @tvp5147_init_reg_seq], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp514x_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp514x_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp514x_id to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp514x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp514x_dev to i32), i32 1064, i32 1344, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp514x_reg_list_default to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp514x_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp514x_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp514x_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp514x_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp514x_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp514x_fmt_list to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp514x_std_list to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp514x_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp514x_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp514x_s_routing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp514x_write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp514x_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp514x_s_std._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp514x_querystd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp514x_s_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp514x_s_stream._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp514x_s_stream._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp514x_s_stream._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp514x_write_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp514x_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp514x_detect._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp514x_detect._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp514x_s_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5146_init_reg_seq to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp514xm_init_reg_seq to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5147_init_reg_seq to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp514x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tvp514x_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tvp514x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @tvp514x_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp514x_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %bus_cfg.i = alloca %struct.v4l2_fwnode_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %bus_cfg.i) #7
  %0 = call ptr @memset(ptr %bus_cfg.i, i32 0, i32 64)
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %1 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %3 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %platform_data.i, align 8
  br label %tvp514x_get_pdata.exit

if.end.i:                                         ; preds = %entry
  %call.i = tail call ptr @of_graph_get_next_endpoint(ptr noundef nonnull %2, ptr noundef null) #7
  %tobool4.not.i = icmp eq ptr %call.i, null
  br i1 %tobool4.not.i, label %tvp514x_get_pdata.exit.thread, label %cond.end.i

tvp514x_get_pdata.exit.thread:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #7
  br label %do.end

cond.end.i:                                       ; preds = %if.end.i
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %call.i, i32 0, i32 3
  %call8.i = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef %fwnode.i, ptr noundef nonnull %bus_cfg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %cond.end.i.done.i_crit_edge

cond.end.i.done.i_crit_edge:                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.i

if.end11.i:                                       ; preds = %cond.end.i
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 3, i32 noundef 3520) #7
  %tobool14.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool14.not.i, label %if.end11.i.done.i_crit_edge, label %if.end16.i

if.end11.i.done.i_crit_edge:                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.i

if.end16.i:                                       ; preds = %if.end11.i
  %bus.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg.i, i32 0, i32 2
  %5 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bus.i, align 4
  %and.i = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool18.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool18.not.i, label %if.end16.i.if.end20.i_crit_edge, label %if.then19.i

if.end16.i.if.end20.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %hs_polarity.i = getelementptr inbounds %struct.tvp514x_platform_data, ptr %call.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %hs_polarity.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %hs_polarity.i, align 1
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then19.i, %if.end16.i.if.end20.i_crit_edge
  %and21.i = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.end20.i.if.end24.i_crit_edge, label %if.then23.i

if.end20.i.if.end24.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

if.then23.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  %vs_polarity.i = getelementptr inbounds %struct.tvp514x_platform_data, ptr %call.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %vs_polarity.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %vs_polarity.i, align 1
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then23.i, %if.end20.i.if.end24.i_crit_edge
  %and25.i = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.end24.i.done.i_crit_edge, label %if.then27.i

if.end24.i.done.i_crit_edge:                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.i

if.then27.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %call.i.i, align 1
  br label %done.i

done.i:                                           ; preds = %if.then27.i, %if.end24.i.done.i_crit_edge, %if.end11.i.done.i_crit_edge, %cond.end.i.done.i_crit_edge
  %pdata.0.i = phi ptr [ null, %cond.end.i.done.i_crit_edge ], [ %call.i.i, %if.then27.i ], [ %call.i.i, %if.end24.i.done.i_crit_edge ], [ null, %if.end11.i.done.i_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %call.i) #7
  br label %tvp514x_get_pdata.exit

tvp514x_get_pdata.exit:                           ; preds = %done.i, %if.then.i
  %retval.0.i = phi ptr [ %pdata.0.i, %done.i ], [ %4, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #7
  %cmp = icmp eq ptr %retval.0.i, null
  br i1 %cmp, label %tvp514x_get_pdata.exit.do.end_crit_edge, label %if.end

tvp514x_get_pdata.exit.do.end_crit_edge:          ; preds = %tvp514x_get_pdata.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %tvp514x_get_pdata.exit.do.end_crit_edge, %tvp514x_get_pdata.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %tvp514x_get_pdata.exit
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i138 = call i32 %15(ptr noundef %11) #7
  %and.i139 = and i32 %call.i.i138, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i139)
  %cmp.i.not = icmp eq i32 %and.i139, 1572864
  br i1 %cmp.i.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call.i140 = call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 1064, i32 noundef 3520) #7
  %tobool6.not = icmp eq ptr %call.i140, null
  br i1 %tobool6.not, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %16 = call ptr @memcpy(ptr %call.i140, ptr @tvp514x_dev, i32 1060)
  %tvp514x_regs = getelementptr inbounds %struct.tvp514x_decoder, ptr %call.i140, i32 0, i32 2
  %17 = call ptr @memcpy(ptr %tvp514x_regs, ptr @tvp514x_reg_list_default, i32 512)
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %18 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %driver_data, align 4
  %20 = inttoptr i32 %19 to ptr
  %int_seq = getelementptr inbounds %struct.tvp514x_decoder, ptr %call.i140, i32 0, i32 16
  %21 = ptrtoint ptr %int_seq to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %int_seq, align 4
  %pdata9 = getelementptr inbounds %struct.tvp514x_decoder, ptr %call.i140, i32 0, i32 3
  %22 = ptrtoint ptr %pdata9 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %retval.0.i, ptr %pdata9, align 4
  %23 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %retval.0.i, align 1, !range !146
  %25 = shl nuw nsw i8 %24, 1
  %val = getelementptr %struct.tvp514x_decoder, ptr %call.i140, i32 0, i32 2, i32 52, i32 2
  %26 = or i8 %25, 17
  %or = zext i8 %26 to i32
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or, ptr %val, align 4
  %hs_polarity = getelementptr inbounds %struct.tvp514x_platform_data, ptr %retval.0.i, i32 0, i32 1
  %28 = ptrtoint ptr %hs_polarity to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %hs_polarity, align 1, !range !146
  %30 = shl nuw nsw i8 %29, 2
  %vs_polarity = getelementptr inbounds %struct.tvp514x_platform_data, ptr %retval.0.i, i32 0, i32 2
  %31 = ptrtoint ptr %vs_polarity to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %vs_polarity, align 1, !range !146
  %33 = shl nuw nsw i8 %32, 3
  %or21137 = or i8 %33, %30
  %or21 = zext i8 %or21137 to i32
  %val24 = getelementptr %struct.tvp514x_decoder, ptr %call.i140, i32 0, i32 2, i32 50, i32 2
  %34 = ptrtoint ptr %val24 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or21, ptr %val24, align 4
  %val28 = getelementptr %struct.tvp514x_decoder, ptr %call.i140, i32 0, i32 2, i32 2, i32 2
  %35 = ptrtoint ptr %val28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %val28, align 4
  call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i140, ptr noundef %client, ptr noundef nonnull @tvp514x_ops) #7
  %pad = getelementptr inbounds %struct.tvp514x_decoder, ptr %call.i140, i32 0, i32 14
  %flags = getelementptr inbounds %struct.tvp514x_decoder, ptr %call.i140, i32 0, i32 14, i32 4
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %flags, align 4
  %flags31 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i140, i32 0, i32 4
  %37 = ptrtoint ptr %flags31 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags31, align 4
  %or32 = or i32 %38, 4
  store i32 %or32, ptr %flags31, align 4
  %function = getelementptr inbounds %struct.media_entity, ptr %call.i140, i32 0, i32 3
  %39 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 131076, ptr %function, align 4
  %call37 = call i32 @media_entity_pads_init(ptr noundef nonnull %call.i140, i16 noundef zeroext 1, ptr noundef %pad) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %do.end43, label %if.end48

do.end43:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i140, i32 0, i32 9
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name, ptr noundef %name) #10
  br label %cleanup

if.end48:                                         ; preds = %if.end8
  %hdl = getelementptr inbounds %struct.tvp514x_decoder, ptr %call.i140, i32 0, i32 1
  %call50 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 5, ptr noundef nonnull @tvp514x_probe._key, ptr noundef nonnull @.str.9) #7
  %call52 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @tvp514x_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #7
  %call54 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @tvp514x_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #7
  %call56 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @tvp514x_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #7
  %call58 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @tvp514x_ctrl_ops, i32 noundef 9963779, i64 noundef -180, i64 noundef 180, i64 noundef 180, i64 noundef 0) #7
  %call60 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @tvp514x_ctrl_ops, i32 noundef 9963794, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #7
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i140, i32 0, i32 8
  %40 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %hdl, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.tvp514x_decoder, ptr %call.i140, i32 0, i32 1, i32 9
  %41 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool63.not = icmp eq i32 %42, 0
  br i1 %tobool63.not, label %if.end67, label %if.end48.done_crit_edge

if.end48.done_crit_edge:                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end67:                                         ; preds = %if.end48
  %call69 = call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl) #7
  %call71 = call i32 @v4l2_async_register_subdev(ptr noundef nonnull %call.i140) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %done.thread, label %if.end67.done_crit_edge

if.end67.done_crit_edge:                          ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

done.thread:                                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  %name78 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i140, i32 0, i32 9
  %call82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name78, ptr noundef %name78) #10
  br label %cleanup

done:                                             ; preds = %if.end67.done_crit_edge, %if.end48.done_crit_edge
  %ret.0 = phi i32 [ %call71, %if.end67.done_crit_edge ], [ %42, %if.end48.done_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp84 = icmp slt i32 %ret.0, 0
  br i1 %cmp84, label %if.then86, label %done.cleanup_crit_edge

done.cleanup_crit_edge:                           ; preds = %done
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then86:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #9
  call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then86, %done.cleanup_crit_edge, %done.thread, %do.end43, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call37, %do.end43 ], [ -5, %if.end.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ], [ %ret.0, %if.then86 ], [ %ret.0, %done.cleanup_crit_edge ], [ 0, %done.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp514x_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #7
  %hdl = getelementptr inbounds %struct.tvp514x_decoder, ptr %1, i32 0, i32 1
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp514x_s_routing(ptr noundef %sd, i32 noundef %input, i32 noundef %output, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 94, i32 %input)
  %cmp = icmp ugt i32 %input, 94
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %output)
  %cmp1 = icmp ugt i32 %output, 3
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %input to i8
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %call110.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110.i)
  %tobool.not11.not.i = icmp eq i32 %call110.i, 0
  br i1 %tobool.not11.not.i, label %if.end.if.end4_crit_edge, label %do.end.lr.ph.i

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

do.end.lr.ph.i:                                   ; preds = %if.end
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i, i32 noundef 0) #10
  %call4.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i.not, label %do.end.lr.ph.i.tvp514x_write_reg.exit_crit_edge, label %do.end.i.1

do.end.lr.ph.i.tvp514x_write_reg.exit_crit_edge:  ; preds = %do.end.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit

do.end.i.1:                                       ; preds = %do.end.lr.ph.i
  %call3.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i, i32 noundef 1) #10
  %call4.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.1)
  %tobool.not.i.1.not = icmp eq i32 %call1.i.1, 0
  br i1 %tobool.not.i.1.not, label %do.end.i.1.tvp514x_write_reg.exit_crit_edge, label %do.end.i.2

do.end.i.1.tvp514x_write_reg.exit_crit_edge:      ; preds = %do.end.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit

do.end.i.2:                                       ; preds = %do.end.i.1
  %call3.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i, i32 noundef 2) #10
  %call4.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.2)
  %tobool.not.i.2.not = icmp eq i32 %call1.i.2, 0
  br i1 %tobool.not.i.2.not, label %do.end.i.2.tvp514x_write_reg.exit_crit_edge, label %do.end.i.3

do.end.i.2.tvp514x_write_reg.exit_crit_edge:      ; preds = %do.end.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit

do.end.i.3:                                       ; preds = %do.end.i.2
  %call3.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i, i32 noundef 3) #10
  %call4.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.3)
  %tobool.not.i.3.not = icmp eq i32 %call1.i.3, 0
  br i1 %tobool.not.i.3.not, label %do.end.i.3.tvp514x_write_reg.exit_crit_edge, label %do.end.i.4

do.end.i.3.tvp514x_write_reg.exit_crit_edge:      ; preds = %do.end.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit

do.end.i.4:                                       ; preds = %do.end.i.3
  %call3.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i, i32 noundef 4) #10
  %call4.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.4 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.4)
  %tobool.not.i.4.not = icmp eq i32 %call1.i.4, 0
  br i1 %tobool.not.i.4.not, label %do.end.i.4.tvp514x_write_reg.exit_crit_edge, label %do.end.i.5

do.end.i.4.tvp514x_write_reg.exit_crit_edge:      ; preds = %do.end.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit

do.end.i.5:                                       ; preds = %do.end.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i, i32 noundef 5) #10
  %call4.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.5 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext %conv) #7
  br label %tvp514x_write_reg.exit

tvp514x_write_reg.exit:                           ; preds = %do.end.i.5, %do.end.i.4.tvp514x_write_reg.exit_crit_edge, %do.end.i.3.tvp514x_write_reg.exit_crit_edge, %do.end.i.2.tvp514x_write_reg.exit_crit_edge, %do.end.i.1.tvp514x_write_reg.exit_crit_edge, %do.end.lr.ph.i.tvp514x_write_reg.exit_crit_edge
  %call1.i.lcssa = phi i32 [ %call1.i, %do.end.lr.ph.i.tvp514x_write_reg.exit_crit_edge ], [ %call1.i.1, %do.end.i.1.tvp514x_write_reg.exit_crit_edge ], [ %call1.i.2, %do.end.i.2.tvp514x_write_reg.exit_crit_edge ], [ %call1.i.3, %do.end.i.3.tvp514x_write_reg.exit_crit_edge ], [ %call1.i.4, %do.end.i.4.tvp514x_write_reg.exit_crit_edge ], [ %call1.i.5, %do.end.i.5 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.lcssa)
  %tobool.not = icmp eq i32 %call1.i.lcssa, 0
  br i1 %tobool.not, label %tvp514x_write_reg.exit.if.end4_crit_edge, label %tvp514x_write_reg.exit.cleanup_crit_edge

tvp514x_write_reg.exit.cleanup_crit_edge:         ; preds = %tvp514x_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

tvp514x_write_reg.exit.if.end4_crit_edge:         ; preds = %tvp514x_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end4:                                          ; preds = %tvp514x_write_reg.exit.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %2 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i, align 4
  %call111.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 51) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i)
  %cmp12.i = icmp slt i32 %call111.i, 0
  br i1 %cmp12.i, label %do.end.lr.ph.i49, label %if.end4.tvp514x_read_reg.exit_crit_edge

if.end4.tvp514x_read_reg.exit_crit_edge:          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_read_reg.exit

do.end.lr.ph.i49:                                 ; preds = %if.end4
  %name.i48 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call4.i50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i48, i32 noundef 0) #10
  %call5.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i52 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 51) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i52)
  %cmp.i53 = icmp slt i32 %call1.i52, 0
  br i1 %cmp.i53, label %do.end.i55.1, label %do.end.lr.ph.i49.tvp514x_read_reg.exit_crit_edge

do.end.lr.ph.i49.tvp514x_read_reg.exit_crit_edge: ; preds = %do.end.lr.ph.i49
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_read_reg.exit

do.end.i55.1:                                     ; preds = %do.end.lr.ph.i49
  %call4.i50.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i48, i32 noundef 1) #10
  %call5.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i52.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 51) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i52.1)
  %cmp.i53.1 = icmp slt i32 %call1.i52.1, 0
  br i1 %cmp.i53.1, label %do.end.i55.2, label %do.end.i55.1.tvp514x_read_reg.exit_crit_edge

do.end.i55.1.tvp514x_read_reg.exit_crit_edge:     ; preds = %do.end.i55.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_read_reg.exit

do.end.i55.2:                                     ; preds = %do.end.i55.1
  %call4.i50.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i48, i32 noundef 2) #10
  %call5.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i52.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 51) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i52.2)
  %cmp.i53.2 = icmp slt i32 %call1.i52.2, 0
  br i1 %cmp.i53.2, label %do.end.i55.3, label %do.end.i55.2.tvp514x_read_reg.exit_crit_edge

do.end.i55.2.tvp514x_read_reg.exit_crit_edge:     ; preds = %do.end.i55.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_read_reg.exit

do.end.i55.3:                                     ; preds = %do.end.i55.2
  %call4.i50.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i48, i32 noundef 3) #10
  %call5.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i52.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 51) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i52.3)
  %cmp.i53.3 = icmp slt i32 %call1.i52.3, 0
  br i1 %cmp.i53.3, label %do.end.i55.4, label %do.end.i55.3.tvp514x_read_reg.exit_crit_edge

do.end.i55.3.tvp514x_read_reg.exit_crit_edge:     ; preds = %do.end.i55.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_read_reg.exit

do.end.i55.4:                                     ; preds = %do.end.i55.3
  %call4.i50.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i48, i32 noundef 4) #10
  %call5.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i52.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 51) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i52.4)
  %cmp.i53.4 = icmp slt i32 %call1.i52.4, 0
  br i1 %cmp.i53.4, label %do.end.i55.5, label %do.end.i55.4.tvp514x_read_reg.exit_crit_edge

do.end.i55.4.tvp514x_read_reg.exit_crit_edge:     ; preds = %do.end.i55.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_read_reg.exit

do.end.i55.5:                                     ; preds = %do.end.i55.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i50.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i48, i32 noundef 5) #10
  %call5.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i52.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 51) #7
  br label %tvp514x_read_reg.exit

tvp514x_read_reg.exit:                            ; preds = %do.end.i55.5, %do.end.i55.4.tvp514x_read_reg.exit_crit_edge, %do.end.i55.3.tvp514x_read_reg.exit_crit_edge, %do.end.i55.2.tvp514x_read_reg.exit_crit_edge, %do.end.i55.1.tvp514x_read_reg.exit_crit_edge, %do.end.lr.ph.i49.tvp514x_read_reg.exit_crit_edge, %if.end4.tvp514x_read_reg.exit_crit_edge
  %call1.lcssa.i56 = phi i32 [ %call111.i, %if.end4.tvp514x_read_reg.exit_crit_edge ], [ %call1.i52, %do.end.lr.ph.i49.tvp514x_read_reg.exit_crit_edge ], [ %call1.i52.1, %do.end.i55.1.tvp514x_read_reg.exit_crit_edge ], [ %call1.i52.2, %do.end.i55.2.tvp514x_read_reg.exit_crit_edge ], [ %call1.i52.3, %do.end.i55.3.tvp514x_read_reg.exit_crit_edge ], [ %call1.i52.4, %do.end.i55.4.tvp514x_read_reg.exit_crit_edge ], [ %call1.i52.5, %do.end.i55.5 ]
  %and = and i32 %call1.lcssa.i56, 7
  %or = or i32 %and, %output
  %conv6 = trunc i32 %or to i8
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i, align 4
  %call110.i58 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 51, i8 noundef zeroext %conv6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110.i58)
  %tobool.not11.not.i59 = icmp eq i32 %call110.i58, 0
  br i1 %tobool.not11.not.i59, label %tvp514x_read_reg.exit.if.end10_crit_edge, label %do.end.lr.ph.i61

tvp514x_read_reg.exit.if.end10_crit_edge:         ; preds = %tvp514x_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

do.end.lr.ph.i61:                                 ; preds = %tvp514x_read_reg.exit
  %name.i60 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i60, i32 noundef 0) #10
  %call4.i65 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i66 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 51, i8 noundef zeroext %conv6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i66)
  %tobool.not.i67.not = icmp eq i32 %call1.i66, 0
  br i1 %tobool.not.i67.not, label %do.end.lr.ph.i61.tvp514x_write_reg.exit72_crit_edge, label %do.end.i70.1

do.end.lr.ph.i61.tvp514x_write_reg.exit72_crit_edge: ; preds = %do.end.lr.ph.i61
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit72

do.end.i70.1:                                     ; preds = %do.end.lr.ph.i61
  %call3.i63.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i60, i32 noundef 1) #10
  %call4.i65.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i66.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 51, i8 noundef zeroext %conv6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i66.1)
  %tobool.not.i67.1.not = icmp eq i32 %call1.i66.1, 0
  br i1 %tobool.not.i67.1.not, label %do.end.i70.1.tvp514x_write_reg.exit72_crit_edge, label %do.end.i70.2

do.end.i70.1.tvp514x_write_reg.exit72_crit_edge:  ; preds = %do.end.i70.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit72

do.end.i70.2:                                     ; preds = %do.end.i70.1
  %call3.i63.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i60, i32 noundef 2) #10
  %call4.i65.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i66.2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 51, i8 noundef zeroext %conv6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i66.2)
  %tobool.not.i67.2.not = icmp eq i32 %call1.i66.2, 0
  br i1 %tobool.not.i67.2.not, label %do.end.i70.2.tvp514x_write_reg.exit72_crit_edge, label %do.end.i70.3

do.end.i70.2.tvp514x_write_reg.exit72_crit_edge:  ; preds = %do.end.i70.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit72

do.end.i70.3:                                     ; preds = %do.end.i70.2
  %call3.i63.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i60, i32 noundef 3) #10
  %call4.i65.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i66.3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 51, i8 noundef zeroext %conv6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i66.3)
  %tobool.not.i67.3.not = icmp eq i32 %call1.i66.3, 0
  br i1 %tobool.not.i67.3.not, label %do.end.i70.3.tvp514x_write_reg.exit72_crit_edge, label %do.end.i70.4

do.end.i70.3.tvp514x_write_reg.exit72_crit_edge:  ; preds = %do.end.i70.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit72

do.end.i70.4:                                     ; preds = %do.end.i70.3
  %call3.i63.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i60, i32 noundef 4) #10
  %call4.i65.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i66.4 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 51, i8 noundef zeroext %conv6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i66.4)
  %tobool.not.i67.4.not = icmp eq i32 %call1.i66.4, 0
  br i1 %tobool.not.i67.4.not, label %do.end.i70.4.tvp514x_write_reg.exit72_crit_edge, label %do.end.i70.5

do.end.i70.4.tvp514x_write_reg.exit72_crit_edge:  ; preds = %do.end.i70.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit72

do.end.i70.5:                                     ; preds = %do.end.i70.4
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i63.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i60, i32 noundef 5) #10
  %call4.i65.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i66.5 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 51, i8 noundef zeroext %conv6) #7
  br label %tvp514x_write_reg.exit72

tvp514x_write_reg.exit72:                         ; preds = %do.end.i70.5, %do.end.i70.4.tvp514x_write_reg.exit72_crit_edge, %do.end.i70.3.tvp514x_write_reg.exit72_crit_edge, %do.end.i70.2.tvp514x_write_reg.exit72_crit_edge, %do.end.i70.1.tvp514x_write_reg.exit72_crit_edge, %do.end.lr.ph.i61.tvp514x_write_reg.exit72_crit_edge
  %call1.i66.lcssa = phi i32 [ %call1.i66, %do.end.lr.ph.i61.tvp514x_write_reg.exit72_crit_edge ], [ %call1.i66.1, %do.end.i70.1.tvp514x_write_reg.exit72_crit_edge ], [ %call1.i66.2, %do.end.i70.2.tvp514x_write_reg.exit72_crit_edge ], [ %call1.i66.3, %do.end.i70.3.tvp514x_write_reg.exit72_crit_edge ], [ %call1.i66.4, %do.end.i70.4.tvp514x_write_reg.exit72_crit_edge ], [ %call1.i66.5, %do.end.i70.5 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i66.lcssa)
  %tobool8.not = icmp eq i32 %call1.i66.lcssa, 0
  br i1 %tobool8.not, label %tvp514x_write_reg.exit72.if.end10_crit_edge, label %tvp514x_write_reg.exit72.cleanup_crit_edge

tvp514x_write_reg.exit72.cleanup_crit_edge:       ; preds = %tvp514x_write_reg.exit72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

tvp514x_write_reg.exit72.if.end10_crit_edge:      ; preds = %tvp514x_write_reg.exit72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.end10:                                         ; preds = %tvp514x_write_reg.exit72.if.end10_crit_edge, %tvp514x_read_reg.exit.if.end10_crit_edge
  %val = getelementptr inbounds %struct.tvp514x_decoder, ptr %sd, i32 0, i32 2, i32 0, i32 2
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %input, ptr %val, align 4
  %val13 = getelementptr %struct.tvp514x_decoder, ptr %sd, i32 0, i32 2, i32 51, i32 2
  %7 = ptrtoint ptr %val13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or, ptr %val13, align 4
  %input14 = getelementptr inbounds %struct.tvp514x_decoder, ptr %sd, i32 0, i32 12
  %8 = ptrtoint ptr %input14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %input, ptr %input14, align 4
  %output15 = getelementptr inbounds %struct.tvp514x_decoder, ptr %sd, i32 0, i32 13
  %9 = ptrtoint ptr %output15 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %output, ptr %output15, align 4
  %10 = load i8, ptr @debug, align 1, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool16.not = icmp eq i8 %10, 0
  br i1 %tobool16.not, label %if.end10.cleanup_crit_edge, label %do.end

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name, i32 noundef %input) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end10.cleanup_crit_edge, %tvp514x_write_reg.exit72.cleanup_crit_edge, %tvp514x_write_reg.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call1.i.lcssa, %tvp514x_write_reg.exit.cleanup_crit_edge ], [ %call1.i66.lcssa, %tvp514x_write_reg.exit72.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp514x_s_std(ptr noundef %sd, i64 noundef %std_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_stds = getelementptr inbounds %struct.tvp514x_decoder, ptr %sd, i32 0, i32 10
  %0 = ptrtoint ptr %num_stds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_stds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp53 = icmp sgt i32 %1, 0
  br i1 %cmp53, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %std_list = getelementptr inbounds %struct.tvp514x_decoder, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %std_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %std_list, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.054 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %id = getelementptr %struct.tvp514x_std_info, ptr %3, i32 %i.054, i32 3, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %id, align 8
  %and = and i64 %5, %std_id
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.054, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %i.054, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %1)
  %cmp2 = icmp eq i32 %i.0.lcssa, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0.lcssa)
  %cmp3 = icmp eq i32 %i.0.lcssa, 2
  %or.cond = or i1 %cmp3, %cmp2
  br i1 %or.cond, label %for.end.cleanup_crit_edge, label %if.end5

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %for.end
  %std_list6 = getelementptr inbounds %struct.tvp514x_decoder, ptr %sd, i32 0, i32 11
  %6 = ptrtoint ptr %std_list6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %std_list6, align 4
  %video_std = getelementptr %struct.tvp514x_std_info, ptr %7, i32 %i.0.lcssa, i32 2
  %8 = ptrtoint ptr %video_std to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %video_std, align 8
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %10 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_priv.i.i, align 4
  %call110.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 2, i8 noundef zeroext %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110.i)
  %tobool.not11.not.i = icmp eq i32 %call110.i, 0
  br i1 %tobool.not11.not.i, label %if.end5.if.end11_crit_edge, label %do.end.lr.ph.i

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

do.end.lr.ph.i:                                   ; preds = %if.end5
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i, i32 noundef 0) #10
  %call4.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 2, i8 noundef zeroext %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i.not, label %do.end.lr.ph.i.tvp514x_write_reg.exit_crit_edge, label %do.end.i.1

do.end.lr.ph.i.tvp514x_write_reg.exit_crit_edge:  ; preds = %do.end.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit

do.end.i.1:                                       ; preds = %do.end.lr.ph.i
  %call3.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i, i32 noundef 1) #10
  %call4.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 2, i8 noundef zeroext %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.1)
  %tobool.not.i.1.not = icmp eq i32 %call1.i.1, 0
  br i1 %tobool.not.i.1.not, label %do.end.i.1.tvp514x_write_reg.exit_crit_edge, label %do.end.i.2

do.end.i.1.tvp514x_write_reg.exit_crit_edge:      ; preds = %do.end.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit

do.end.i.2:                                       ; preds = %do.end.i.1
  %call3.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i, i32 noundef 2) #10
  %call4.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 2, i8 noundef zeroext %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.2)
  %tobool.not.i.2.not = icmp eq i32 %call1.i.2, 0
  br i1 %tobool.not.i.2.not, label %do.end.i.2.tvp514x_write_reg.exit_crit_edge, label %do.end.i.3

do.end.i.2.tvp514x_write_reg.exit_crit_edge:      ; preds = %do.end.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit

do.end.i.3:                                       ; preds = %do.end.i.2
  %call3.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i, i32 noundef 3) #10
  %call4.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 2, i8 noundef zeroext %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.3)
  %tobool.not.i.3.not = icmp eq i32 %call1.i.3, 0
  br i1 %tobool.not.i.3.not, label %do.end.i.3.tvp514x_write_reg.exit_crit_edge, label %do.end.i.4

do.end.i.3.tvp514x_write_reg.exit_crit_edge:      ; preds = %do.end.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit

do.end.i.4:                                       ; preds = %do.end.i.3
  %call3.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i, i32 noundef 4) #10
  %call4.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.4 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 2, i8 noundef zeroext %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.4)
  %tobool.not.i.4.not = icmp eq i32 %call1.i.4, 0
  br i1 %tobool.not.i.4.not, label %do.end.i.4.tvp514x_write_reg.exit_crit_edge, label %do.end.i.5

do.end.i.4.tvp514x_write_reg.exit_crit_edge:      ; preds = %do.end.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit

do.end.i.5:                                       ; preds = %do.end.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i, i32 noundef 5) #10
  %call4.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.5 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 2, i8 noundef zeroext %9) #7
  br label %tvp514x_write_reg.exit

tvp514x_write_reg.exit:                           ; preds = %do.end.i.5, %do.end.i.4.tvp514x_write_reg.exit_crit_edge, %do.end.i.3.tvp514x_write_reg.exit_crit_edge, %do.end.i.2.tvp514x_write_reg.exit_crit_edge, %do.end.i.1.tvp514x_write_reg.exit_crit_edge, %do.end.lr.ph.i.tvp514x_write_reg.exit_crit_edge
  %call1.i.lcssa = phi i32 [ %call1.i, %do.end.lr.ph.i.tvp514x_write_reg.exit_crit_edge ], [ %call1.i.1, %do.end.i.1.tvp514x_write_reg.exit_crit_edge ], [ %call1.i.2, %do.end.i.2.tvp514x_write_reg.exit_crit_edge ], [ %call1.i.3, %do.end.i.3.tvp514x_write_reg.exit_crit_edge ], [ %call1.i.4, %do.end.i.4.tvp514x_write_reg.exit_crit_edge ], [ %call1.i.5, %do.end.i.5 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.lcssa)
  %tobool9.not = icmp eq i32 %call1.i.lcssa, 0
  br i1 %tobool9.not, label %tvp514x_write_reg.exit.if.end11_crit_edge, label %tvp514x_write_reg.exit.cleanup_crit_edge

tvp514x_write_reg.exit.cleanup_crit_edge:         ; preds = %tvp514x_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

tvp514x_write_reg.exit.if.end11_crit_edge:        ; preds = %tvp514x_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.end11:                                         ; preds = %tvp514x_write_reg.exit.if.end11_crit_edge, %if.end5.if.end11_crit_edge
  %current_std = getelementptr inbounds %struct.tvp514x_decoder, ptr %sd, i32 0, i32 9
  %12 = ptrtoint ptr %current_std to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %i.0.lcssa, ptr %current_std, align 4
  %13 = ptrtoint ptr %std_list6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %std_list6, align 4
  %video_std14 = getelementptr %struct.tvp514x_std_info, ptr %14, i32 %i.0.lcssa, i32 2
  %15 = ptrtoint ptr %video_std14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %video_std14, align 8
  %conv = zext i8 %16 to i32
  %val = getelementptr %struct.tvp514x_decoder, ptr %sd, i32 0, i32 2, i32 2, i32 2
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv, ptr %val, align 4
  %18 = load i8, ptr @debug, align 1, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool16.not = icmp eq i8 %18, 0
  br i1 %tobool16.not, label %if.end11.cleanup_crit_edge, label %do.end

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %name25 = getelementptr %struct.tvp514x_std_info, ptr %14, i32 %i.0.lcssa, i32 3, i32 2
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name, ptr noundef %name25) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end11.cleanup_crit_edge, %tvp514x_write_reg.exit.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.inc.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %for.end.cleanup_crit_edge ], [ %call1.i.lcssa, %tvp514x_write_reg.exit.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end11.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp514x_querystd(ptr noundef %sd, ptr noundef %std_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %std_id, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %streaming = getelementptr inbounds %struct.tvp514x_decoder, ptr %sd, i32 0, i32 5
  %0 = ptrtoint ptr %streaming to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then1, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 @tvp514x_s_stream(ptr noundef %sd, i32 noundef 1)
  tail call void @msleep(i32 noundef 200) #7
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end.if.end3_crit_edge
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call111.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i)
  %cmp12.i.i = icmp slt i32 %call111.i.i, 0
  br i1 %cmp12.i.i, label %do.end.lr.ph.i.i, label %if.end3.tvp514x_read_reg.exit.i_crit_edge

if.end3.tvp514x_read_reg.exit.i_crit_edge:        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_read_reg.exit.i

do.end.lr.ph.i.i:                                 ; preds = %if.end3
  %name.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i.i, i32 noundef 0) #10
  %call5.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i.1, label %do.end.lr.ph.i.i.tvp514x_read_reg.exit.i_crit_edge

do.end.lr.ph.i.i.tvp514x_read_reg.exit.i_crit_edge: ; preds = %do.end.lr.ph.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_read_reg.exit.i

do.end.i.i.1:                                     ; preds = %do.end.lr.ph.i.i
  %call4.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i.i, i32 noundef 1) #10
  %call5.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.1)
  %cmp.i.i.1 = icmp slt i32 %call1.i.i.1, 0
  br i1 %cmp.i.i.1, label %do.end.i.i.2, label %do.end.i.i.1.tvp514x_read_reg.exit.i_crit_edge

do.end.i.i.1.tvp514x_read_reg.exit.i_crit_edge:   ; preds = %do.end.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_read_reg.exit.i

do.end.i.i.2:                                     ; preds = %do.end.i.i.1
  %call4.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i.i, i32 noundef 2) #10
  %call5.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.2)
  %cmp.i.i.2 = icmp slt i32 %call1.i.i.2, 0
  br i1 %cmp.i.i.2, label %do.end.i.i.3, label %do.end.i.i.2.tvp514x_read_reg.exit.i_crit_edge

do.end.i.i.2.tvp514x_read_reg.exit.i_crit_edge:   ; preds = %do.end.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_read_reg.exit.i

do.end.i.i.3:                                     ; preds = %do.end.i.i.2
  %call4.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i.i, i32 noundef 3) #10
  %call5.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.3)
  %cmp.i.i.3 = icmp slt i32 %call1.i.i.3, 0
  br i1 %cmp.i.i.3, label %do.end.i.i.4, label %do.end.i.i.3.tvp514x_read_reg.exit.i_crit_edge

do.end.i.i.3.tvp514x_read_reg.exit.i_crit_edge:   ; preds = %do.end.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_read_reg.exit.i

do.end.i.i.4:                                     ; preds = %do.end.i.i.3
  %call4.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i.i, i32 noundef 4) #10
  %call5.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.4)
  %cmp.i.i.4 = icmp slt i32 %call1.i.i.4, 0
  br i1 %cmp.i.i.4, label %do.end.i.i.5, label %do.end.i.i.4.tvp514x_read_reg.exit.i_crit_edge

do.end.i.i.4.tvp514x_read_reg.exit.i_crit_edge:   ; preds = %do.end.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_read_reg.exit.i

do.end.i.i.5:                                     ; preds = %do.end.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i.i, i32 noundef 5) #10
  %call5.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 2) #7
  br label %tvp514x_read_reg.exit.i

tvp514x_read_reg.exit.i:                          ; preds = %do.end.i.i.5, %do.end.i.i.4.tvp514x_read_reg.exit.i_crit_edge, %do.end.i.i.3.tvp514x_read_reg.exit.i_crit_edge, %do.end.i.i.2.tvp514x_read_reg.exit.i_crit_edge, %do.end.i.i.1.tvp514x_read_reg.exit.i_crit_edge, %do.end.lr.ph.i.i.tvp514x_read_reg.exit.i_crit_edge, %if.end3.tvp514x_read_reg.exit.i_crit_edge
  %call1.lcssa.i.i = phi i32 [ %call111.i.i, %if.end3.tvp514x_read_reg.exit.i_crit_edge ], [ %call1.i.i, %do.end.lr.ph.i.i.tvp514x_read_reg.exit.i_crit_edge ], [ %call1.i.i.1, %do.end.i.i.1.tvp514x_read_reg.exit.i_crit_edge ], [ %call1.i.i.2, %do.end.i.i.2.tvp514x_read_reg.exit.i_crit_edge ], [ %call1.i.i.3, %do.end.i.i.3.tvp514x_read_reg.exit.i_crit_edge ], [ %call1.i.i.4, %do.end.i.i.4.tvp514x_read_reg.exit.i_crit_edge ], [ %call1.i.i.5, %do.end.i.i.5 ]
  %and.i = and i32 %call1.lcssa.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.then.i, label %tvp514x_read_reg.exit.i.tvp514x_query_current_std.exit_crit_edge

tvp514x_read_reg.exit.i.tvp514x_query_current_std.exit_crit_edge: ; preds = %tvp514x_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_query_current_std.exit

if.then.i:                                        ; preds = %tvp514x_read_reg.exit.i
  %4 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call111.i14.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 63) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i14.i)
  %cmp12.i15.i = icmp slt i32 %call111.i14.i, 0
  br i1 %cmp12.i15.i, label %do.end.lr.ph.i17.i, label %if.then.i.tvp514x_query_current_std.exit_crit_edge

if.then.i.tvp514x_query_current_std.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_query_current_std.exit

do.end.lr.ph.i17.i:                               ; preds = %if.then.i
  %name.i16.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call4.i19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i16.i, i32 noundef 0) #10
  %call5.i21.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i22.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 63) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22.i)
  %cmp.i23.i = icmp slt i32 %call1.i22.i, 0
  br i1 %cmp.i23.i, label %do.end.i26.i.1, label %do.end.lr.ph.i17.i.tvp514x_query_current_std.exit_crit_edge

do.end.lr.ph.i17.i.tvp514x_query_current_std.exit_crit_edge: ; preds = %do.end.lr.ph.i17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_query_current_std.exit

do.end.i26.i.1:                                   ; preds = %do.end.lr.ph.i17.i
  %call4.i19.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i16.i, i32 noundef 1) #10
  %call5.i21.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i22.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 63) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22.i.1)
  %cmp.i23.i.1 = icmp slt i32 %call1.i22.i.1, 0
  br i1 %cmp.i23.i.1, label %do.end.i26.i.2, label %do.end.i26.i.1.tvp514x_query_current_std.exit_crit_edge

do.end.i26.i.1.tvp514x_query_current_std.exit_crit_edge: ; preds = %do.end.i26.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_query_current_std.exit

do.end.i26.i.2:                                   ; preds = %do.end.i26.i.1
  %call4.i19.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i16.i, i32 noundef 2) #10
  %call5.i21.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i22.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 63) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22.i.2)
  %cmp.i23.i.2 = icmp slt i32 %call1.i22.i.2, 0
  br i1 %cmp.i23.i.2, label %do.end.i26.i.3, label %do.end.i26.i.2.tvp514x_query_current_std.exit_crit_edge

do.end.i26.i.2.tvp514x_query_current_std.exit_crit_edge: ; preds = %do.end.i26.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_query_current_std.exit

do.end.i26.i.3:                                   ; preds = %do.end.i26.i.2
  %call4.i19.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i16.i, i32 noundef 3) #10
  %call5.i21.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i22.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 63) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22.i.3)
  %cmp.i23.i.3 = icmp slt i32 %call1.i22.i.3, 0
  br i1 %cmp.i23.i.3, label %do.end.i26.i.4, label %do.end.i26.i.3.tvp514x_query_current_std.exit_crit_edge

do.end.i26.i.3.tvp514x_query_current_std.exit_crit_edge: ; preds = %do.end.i26.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_query_current_std.exit

do.end.i26.i.4:                                   ; preds = %do.end.i26.i.3
  %call4.i19.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i16.i, i32 noundef 4) #10
  %call5.i21.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i22.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 63) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22.i.4)
  %cmp.i23.i.4 = icmp slt i32 %call1.i22.i.4, 0
  br i1 %cmp.i23.i.4, label %do.end.i26.i.5, label %do.end.i26.i.4.tvp514x_query_current_std.exit_crit_edge

do.end.i26.i.4.tvp514x_query_current_std.exit_crit_edge: ; preds = %do.end.i26.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_query_current_std.exit

do.end.i26.i.5:                                   ; preds = %do.end.i26.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i19.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i16.i, i32 noundef 5) #10
  %call5.i21.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i22.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 63) #7
  br label %tvp514x_query_current_std.exit

tvp514x_query_current_std.exit:                   ; preds = %do.end.i26.i.5, %do.end.i26.i.4.tvp514x_query_current_std.exit_crit_edge, %do.end.i26.i.3.tvp514x_query_current_std.exit_crit_edge, %do.end.i26.i.2.tvp514x_query_current_std.exit_crit_edge, %do.end.i26.i.1.tvp514x_query_current_std.exit_crit_edge, %do.end.lr.ph.i17.i.tvp514x_query_current_std.exit_crit_edge, %if.then.i.tvp514x_query_current_std.exit_crit_edge, %tvp514x_read_reg.exit.i.tvp514x_query_current_std.exit_crit_edge
  %std_status.0.in.i = phi i32 [ %call1.lcssa.i.i, %tvp514x_read_reg.exit.i.tvp514x_query_current_std.exit_crit_edge ], [ %call111.i14.i, %if.then.i.tvp514x_query_current_std.exit_crit_edge ], [ %call1.i22.i, %do.end.lr.ph.i17.i.tvp514x_query_current_std.exit_crit_edge ], [ %call1.i22.i.1, %do.end.i26.i.1.tvp514x_query_current_std.exit_crit_edge ], [ %call1.i22.i.2, %do.end.i26.i.2.tvp514x_query_current_std.exit_crit_edge ], [ %call1.i22.i.3, %do.end.i26.i.3.tvp514x_query_current_std.exit_crit_edge ], [ %call1.i22.i.4, %do.end.i26.i.4.tvp514x_query_current_std.exit_crit_edge ], [ %call1.i22.i.5, %do.end.i26.i.5 ]
  %and6.i = and i32 %std_status.0.in.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and6.i)
  %switch.selectcmp.i = icmp eq i32 %and6.i, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 1, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and6.i)
  %switch.selectcmp11.i = icmp eq i32 %and6.i, 1
  %switch.select12.i = select i1 %switch.selectcmp11.i, i32 0, i32 %switch.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %switch.select12.i)
  %cmp5 = icmp eq i32 %switch.select12.i, 2
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %tvp514x_query_current_std.exit
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %std_id to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %std_id, align 8
  br label %cleanup

if.end7:                                          ; preds = %tvp514x_query_current_std.exit
  %input = getelementptr inbounds %struct.tvp514x_decoder, ptr %sd, i32 0, i32 12
  %7 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %input, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %if.end7.cleanup_crit_edge [
    i32 0, label %if.end7.sw.epilog_crit_edge
    i32 1, label %if.end7.sw.epilog_crit_edge51
    i32 2, label %if.end7.sw.epilog_crit_edge52
    i32 4, label %if.end7.sw.epilog_crit_edge53
    i32 5, label %if.end7.sw.epilog_crit_edge54
    i32 6, label %if.end7.sw.epilog_crit_edge55
    i32 8, label %if.end7.sw.epilog_crit_edge56
    i32 9, label %if.end7.sw.epilog_crit_edge57
    i32 10, label %if.end7.sw.epilog_crit_edge58
    i32 12, label %if.end7.sw.epilog_crit_edge59
    i32 68, label %if.end7.sw.bb8_crit_edge
    i32 69, label %if.end7.sw.bb8_crit_edge60
    i32 70, label %if.end7.sw.bb8_crit_edge61
    i32 84, label %if.end7.sw.bb8_crit_edge62
    i32 85, label %if.end7.sw.bb8_crit_edge63
    i32 86, label %if.end7.sw.bb8_crit_edge64
    i32 76, label %if.end7.sw.bb8_crit_edge65
    i32 77, label %if.end7.sw.bb8_crit_edge66
    i32 78, label %if.end7.sw.bb8_crit_edge67
    i32 92, label %if.end7.sw.bb8_crit_edge68
    i32 93, label %if.end7.sw.bb8_crit_edge69
    i32 94, label %if.end7.sw.bb8_crit_edge70
  ]

if.end7.sw.bb8_crit_edge70:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

if.end7.sw.bb8_crit_edge69:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

if.end7.sw.bb8_crit_edge68:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

if.end7.sw.bb8_crit_edge67:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

if.end7.sw.bb8_crit_edge66:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

if.end7.sw.bb8_crit_edge65:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

if.end7.sw.bb8_crit_edge64:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

if.end7.sw.bb8_crit_edge63:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

if.end7.sw.bb8_crit_edge62:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

if.end7.sw.bb8_crit_edge61:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

if.end7.sw.bb8_crit_edge60:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

if.end7.sw.bb8_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

if.end7.sw.epilog_crit_edge59:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end7.sw.epilog_crit_edge58:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end7.sw.epilog_crit_edge57:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end7.sw.epilog_crit_edge56:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end7.sw.epilog_crit_edge55:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end7.sw.epilog_crit_edge54:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end7.sw.epilog_crit_edge53:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end7.sw.epilog_crit_edge52:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end7.sw.epilog_crit_edge51:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb8:                                           ; preds = %if.end7.sw.bb8_crit_edge, %if.end7.sw.bb8_crit_edge60, %if.end7.sw.bb8_crit_edge61, %if.end7.sw.bb8_crit_edge62, %if.end7.sw.bb8_crit_edge63, %if.end7.sw.bb8_crit_edge64, %if.end7.sw.bb8_crit_edge65, %if.end7.sw.bb8_crit_edge66, %if.end7.sw.bb8_crit_edge67, %if.end7.sw.bb8_crit_edge68, %if.end7.sw.bb8_crit_edge69, %if.end7.sw.bb8_crit_edge70
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %if.end7.sw.epilog_crit_edge, %if.end7.sw.epilog_crit_edge51, %if.end7.sw.epilog_crit_edge52, %if.end7.sw.epilog_crit_edge53, %if.end7.sw.epilog_crit_edge54, %if.end7.sw.epilog_crit_edge55, %if.end7.sw.epilog_crit_edge56, %if.end7.sw.epilog_crit_edge57, %if.end7.sw.epilog_crit_edge58, %if.end7.sw.epilog_crit_edge59
  %lock_mask.0 = phi i32 [ 6, %sw.bb8 ], [ 14, %if.end7.sw.epilog_crit_edge ], [ 14, %if.end7.sw.epilog_crit_edge51 ], [ 14, %if.end7.sw.epilog_crit_edge52 ], [ 14, %if.end7.sw.epilog_crit_edge53 ], [ 14, %if.end7.sw.epilog_crit_edge54 ], [ 14, %if.end7.sw.epilog_crit_edge55 ], [ 14, %if.end7.sw.epilog_crit_edge56 ], [ 14, %if.end7.sw.epilog_crit_edge57 ], [ 14, %if.end7.sw.epilog_crit_edge58 ], [ 14, %if.end7.sw.epilog_crit_edge59 ]
  %10 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call111.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext 58) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i)
  %cmp12.i = icmp slt i32 %call111.i, 0
  br i1 %cmp12.i, label %do.end.lr.ph.i, label %sw.epilog.tvp514x_read_reg.exit_crit_edge

sw.epilog.tvp514x_read_reg.exit_crit_edge:        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_read_reg.exit

do.end.lr.ph.i:                                   ; preds = %sw.epilog
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i, i32 noundef 0) #10
  %call5.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext 58) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i50 = icmp slt i32 %call1.i, 0
  br i1 %cmp.i50, label %do.end.i.1, label %do.end.lr.ph.i.tvp514x_read_reg.exit_crit_edge

do.end.lr.ph.i.tvp514x_read_reg.exit_crit_edge:   ; preds = %do.end.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_read_reg.exit

do.end.i.1:                                       ; preds = %do.end.lr.ph.i
  %call4.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i, i32 noundef 1) #10
  %call5.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext 58) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.1)
  %cmp.i50.1 = icmp slt i32 %call1.i.1, 0
  br i1 %cmp.i50.1, label %do.end.i.2, label %do.end.i.1.tvp514x_read_reg.exit_crit_edge

do.end.i.1.tvp514x_read_reg.exit_crit_edge:       ; preds = %do.end.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_read_reg.exit

do.end.i.2:                                       ; preds = %do.end.i.1
  %call4.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i, i32 noundef 2) #10
  %call5.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext 58) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.2)
  %cmp.i50.2 = icmp slt i32 %call1.i.2, 0
  br i1 %cmp.i50.2, label %do.end.i.3, label %do.end.i.2.tvp514x_read_reg.exit_crit_edge

do.end.i.2.tvp514x_read_reg.exit_crit_edge:       ; preds = %do.end.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_read_reg.exit

do.end.i.3:                                       ; preds = %do.end.i.2
  %call4.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i, i32 noundef 3) #10
  %call5.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext 58) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.3)
  %cmp.i50.3 = icmp slt i32 %call1.i.3, 0
  br i1 %cmp.i50.3, label %do.end.i.4, label %do.end.i.3.tvp514x_read_reg.exit_crit_edge

do.end.i.3.tvp514x_read_reg.exit_crit_edge:       ; preds = %do.end.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_read_reg.exit

do.end.i.4:                                       ; preds = %do.end.i.3
  %call4.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i, i32 noundef 4) #10
  %call5.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext 58) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.4)
  %cmp.i50.4 = icmp slt i32 %call1.i.4, 0
  br i1 %cmp.i50.4, label %do.end.i.5, label %do.end.i.4.tvp514x_read_reg.exit_crit_edge

do.end.i.4.tvp514x_read_reg.exit_crit_edge:       ; preds = %do.end.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_read_reg.exit

do.end.i.5:                                       ; preds = %do.end.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i, i32 noundef 5) #10
  %call5.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext 58) #7
  br label %tvp514x_read_reg.exit

tvp514x_read_reg.exit:                            ; preds = %do.end.i.5, %do.end.i.4.tvp514x_read_reg.exit_crit_edge, %do.end.i.3.tvp514x_read_reg.exit_crit_edge, %do.end.i.2.tvp514x_read_reg.exit_crit_edge, %do.end.i.1.tvp514x_read_reg.exit_crit_edge, %do.end.lr.ph.i.tvp514x_read_reg.exit_crit_edge, %sw.epilog.tvp514x_read_reg.exit_crit_edge
  %call1.lcssa.i = phi i32 [ %call111.i, %sw.epilog.tvp514x_read_reg.exit_crit_edge ], [ %call1.i, %do.end.lr.ph.i.tvp514x_read_reg.exit_crit_edge ], [ %call1.i.1, %do.end.i.1.tvp514x_read_reg.exit_crit_edge ], [ %call1.i.2, %do.end.i.2.tvp514x_read_reg.exit_crit_edge ], [ %call1.i.3, %do.end.i.3.tvp514x_read_reg.exit_crit_edge ], [ %call1.i.4, %do.end.i.4.tvp514x_read_reg.exit_crit_edge ], [ %call1.i.5, %do.end.i.5 ]
  %and = and i32 %call1.lcssa.i, %lock_mask.0
  call void @__sanitizer_cov_trace_cmp4(i32 %lock_mask.0, i32 %and)
  %cmp13.not = icmp eq i32 %lock_mask.0, %and
  br i1 %cmp13.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %tvp514x_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %std_id to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %std_id, align 8
  br label %cleanup

if.end16:                                         ; preds = %tvp514x_read_reg.exit
  %std_list = getelementptr inbounds %struct.tvp514x_decoder, ptr %sd, i32 0, i32 11
  %13 = ptrtoint ptr %std_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %std_list, align 4
  %id = getelementptr %struct.tvp514x_std_info, ptr %14, i32 %switch.select12.i, i32 3, i32 1
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %id, align 8
  %17 = ptrtoint ptr %std_id to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %std_id, align 8
  %and17 = and i64 %18, %16
  store i64 %and17, ptr %std_id, align 8
  %19 = load i8, ptr @debug, align 1, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool18.not = icmp eq i8 %19, 0
  br i1 %tobool18.not, label %if.end16.cleanup_crit_edge, label %do.end

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %20 = ptrtoint ptr %std_list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %std_list, align 4
  %name27 = getelementptr %struct.tvp514x_std_info, ptr %21, i32 %switch.select12.i, i32 3, i32 2
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name, ptr noundef %name27) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end16.cleanup_crit_edge, %if.then15, %if.end7.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then6 ], [ 0, %if.then15 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp514x_s_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %streaming = getelementptr inbounds %struct.tvp514x_decoder, ptr %sd, i32 0, i32 5
  %0 = ptrtoint ptr %streaming to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %enable)
  %cmp = icmp eq i32 %1, %enable
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %enable to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %enable, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %3 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_priv.i.i, align 4
  %call110.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 3, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110.i)
  %tobool.not11.not.i = icmp eq i32 %call110.i, 0
  br i1 %tobool.not11.not.i, label %sw.bb.if.end4_crit_edge, label %do.end.lr.ph.i

sw.bb.if.end4_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

do.end.lr.ph.i:                                   ; preds = %sw.bb
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i, i32 noundef 0) #10
  %call4.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 3, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i.not, label %do.end.lr.ph.i.tvp514x_write_reg.exit_crit_edge, label %do.end.i.1

do.end.lr.ph.i.tvp514x_write_reg.exit_crit_edge:  ; preds = %do.end.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit

do.end.i.1:                                       ; preds = %do.end.lr.ph.i
  %call3.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i, i32 noundef 1) #10
  %call4.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 3, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.1)
  %tobool.not.i.1.not = icmp eq i32 %call1.i.1, 0
  br i1 %tobool.not.i.1.not, label %do.end.i.1.tvp514x_write_reg.exit_crit_edge, label %do.end.i.2

do.end.i.1.tvp514x_write_reg.exit_crit_edge:      ; preds = %do.end.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit

do.end.i.2:                                       ; preds = %do.end.i.1
  %call3.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i, i32 noundef 2) #10
  %call4.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 3, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.2)
  %tobool.not.i.2.not = icmp eq i32 %call1.i.2, 0
  br i1 %tobool.not.i.2.not, label %do.end.i.2.tvp514x_write_reg.exit_crit_edge, label %do.end.i.3

do.end.i.2.tvp514x_write_reg.exit_crit_edge:      ; preds = %do.end.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit

do.end.i.3:                                       ; preds = %do.end.i.2
  %call3.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i, i32 noundef 3) #10
  %call4.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 3, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.3)
  %tobool.not.i.3.not = icmp eq i32 %call1.i.3, 0
  br i1 %tobool.not.i.3.not, label %do.end.i.3.tvp514x_write_reg.exit_crit_edge, label %do.end.i.4

do.end.i.3.tvp514x_write_reg.exit_crit_edge:      ; preds = %do.end.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit

do.end.i.4:                                       ; preds = %do.end.i.3
  %call3.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i, i32 noundef 4) #10
  %call4.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.4 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 3, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.4)
  %tobool.not.i.4.not = icmp eq i32 %call1.i.4, 0
  br i1 %tobool.not.i.4.not, label %do.end.i.4.tvp514x_write_reg.exit_crit_edge, label %do.end.i.5

do.end.i.4.tvp514x_write_reg.exit_crit_edge:      ; preds = %do.end.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit

do.end.i.5:                                       ; preds = %do.end.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i, i32 noundef 5) #10
  %call4.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.5 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 3, i8 noundef zeroext 1) #7
  br label %tvp514x_write_reg.exit

tvp514x_write_reg.exit:                           ; preds = %do.end.i.5, %do.end.i.4.tvp514x_write_reg.exit_crit_edge, %do.end.i.3.tvp514x_write_reg.exit_crit_edge, %do.end.i.2.tvp514x_write_reg.exit_crit_edge, %do.end.i.1.tvp514x_write_reg.exit_crit_edge, %do.end.lr.ph.i.tvp514x_write_reg.exit_crit_edge
  %call1.i.lcssa = phi i32 [ %call1.i, %do.end.lr.ph.i.tvp514x_write_reg.exit_crit_edge ], [ %call1.i.1, %do.end.i.1.tvp514x_write_reg.exit_crit_edge ], [ %call1.i.2, %do.end.i.2.tvp514x_write_reg.exit_crit_edge ], [ %call1.i.3, %do.end.i.3.tvp514x_write_reg.exit_crit_edge ], [ %call1.i.4, %do.end.i.4.tvp514x_write_reg.exit_crit_edge ], [ %call1.i.5, %do.end.i.5 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.lcssa)
  %tobool.not = icmp eq i32 %call1.i.lcssa, 0
  br i1 %tobool.not, label %tvp514x_write_reg.exit.if.end4_crit_edge, label %do.end

tvp514x_write_reg.exit.if.end4_crit_edge:         ; preds = %tvp514x_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

do.end:                                           ; preds = %tvp514x_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name.i) #10
  br label %cleanup

if.end4:                                          ; preds = %tvp514x_write_reg.exit.if.end4_crit_edge, %sw.bb.if.end4_crit_edge
  %5 = ptrtoint ptr %streaming to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %streaming, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  %int_seq = getelementptr inbounds %struct.tvp514x_decoder, ptr %sd, i32 0, i32 16
  %6 = ptrtoint ptr %int_seq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %int_seq, align 4
  %call7 = tail call fastcc i32 @tvp514x_write_regs(ptr noundef %sd, ptr noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end17, label %do.end12

do.end12:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  %name14 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name14) #10
  br label %cleanup

if.end17:                                         ; preds = %sw.bb6
  %dev_priv.i.i66 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %8 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %9, i8 noundef zeroext -128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i)
  %cmp12.i.i = icmp slt i32 %call111.i.i, 0
  br i1 %cmp12.i.i, label %do.end.lr.ph.i.i, label %if.end17.tvp514x_read_reg.exit.i_crit_edge

if.end17.tvp514x_read_reg.exit.i_crit_edge:       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_read_reg.exit.i

do.end.lr.ph.i.i:                                 ; preds = %if.end17
  %name.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i.i, i32 noundef 0) #10
  %call5.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %9, i8 noundef zeroext -128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i.1, label %do.end.lr.ph.i.i.tvp514x_read_reg.exit.i_crit_edge

do.end.lr.ph.i.i.tvp514x_read_reg.exit.i_crit_edge: ; preds = %do.end.lr.ph.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_read_reg.exit.i

do.end.i.i.1:                                     ; preds = %do.end.lr.ph.i.i
  %call4.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i.i, i32 noundef 1) #10
  %call5.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %9, i8 noundef zeroext -128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.1)
  %cmp.i.i.1 = icmp slt i32 %call1.i.i.1, 0
  br i1 %cmp.i.i.1, label %do.end.i.i.2, label %do.end.i.i.1.tvp514x_read_reg.exit.i_crit_edge

do.end.i.i.1.tvp514x_read_reg.exit.i_crit_edge:   ; preds = %do.end.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_read_reg.exit.i

do.end.i.i.2:                                     ; preds = %do.end.i.i.1
  %call4.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i.i, i32 noundef 2) #10
  %call5.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %9, i8 noundef zeroext -128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.2)
  %cmp.i.i.2 = icmp slt i32 %call1.i.i.2, 0
  br i1 %cmp.i.i.2, label %do.end.i.i.3, label %do.end.i.i.2.tvp514x_read_reg.exit.i_crit_edge

do.end.i.i.2.tvp514x_read_reg.exit.i_crit_edge:   ; preds = %do.end.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_read_reg.exit.i

do.end.i.i.3:                                     ; preds = %do.end.i.i.2
  %call4.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i.i, i32 noundef 3) #10
  %call5.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %9, i8 noundef zeroext -128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.3)
  %cmp.i.i.3 = icmp slt i32 %call1.i.i.3, 0
  br i1 %cmp.i.i.3, label %do.end.i.i.4, label %do.end.i.i.3.tvp514x_read_reg.exit.i_crit_edge

do.end.i.i.3.tvp514x_read_reg.exit.i_crit_edge:   ; preds = %do.end.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_read_reg.exit.i

do.end.i.i.4:                                     ; preds = %do.end.i.i.3
  %call4.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i.i, i32 noundef 4) #10
  %call5.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %9, i8 noundef zeroext -128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.4)
  %cmp.i.i.4 = icmp slt i32 %call1.i.i.4, 0
  br i1 %cmp.i.i.4, label %do.end.i.i.5, label %do.end.i.i.4.tvp514x_read_reg.exit.i_crit_edge

do.end.i.i.4.tvp514x_read_reg.exit.i_crit_edge:   ; preds = %do.end.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_read_reg.exit.i

do.end.i.i.5:                                     ; preds = %do.end.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i.i, i32 noundef 5) #10
  %call5.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %9, i8 noundef zeroext -128) #7
  br label %tvp514x_read_reg.exit.i

tvp514x_read_reg.exit.i:                          ; preds = %do.end.i.i.5, %do.end.i.i.4.tvp514x_read_reg.exit.i_crit_edge, %do.end.i.i.3.tvp514x_read_reg.exit.i_crit_edge, %do.end.i.i.2.tvp514x_read_reg.exit.i_crit_edge, %do.end.i.i.1.tvp514x_read_reg.exit.i_crit_edge, %do.end.lr.ph.i.i.tvp514x_read_reg.exit.i_crit_edge, %if.end17.tvp514x_read_reg.exit.i_crit_edge
  %call1.lcssa.i.i = phi i32 [ %call111.i.i, %if.end17.tvp514x_read_reg.exit.i_crit_edge ], [ %call1.i.i, %do.end.lr.ph.i.i.tvp514x_read_reg.exit.i_crit_edge ], [ %call1.i.i.1, %do.end.i.i.1.tvp514x_read_reg.exit.i_crit_edge ], [ %call1.i.i.2, %do.end.i.i.2.tvp514x_read_reg.exit.i_crit_edge ], [ %call1.i.i.3, %do.end.i.i.3.tvp514x_read_reg.exit.i_crit_edge ], [ %call1.i.i.4, %do.end.i.i.4.tvp514x_read_reg.exit.i_crit_edge ], [ %call1.i.i.5, %do.end.i.i.5 ]
  %10 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i68.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext -127) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i68.i)
  %cmp12.i69.i = icmp slt i32 %call111.i68.i, 0
  br i1 %cmp12.i69.i, label %do.end.lr.ph.i71.i, label %tvp514x_read_reg.exit.i.tvp514x_read_reg.exit82.i_crit_edge

tvp514x_read_reg.exit.i.tvp514x_read_reg.exit82.i_crit_edge: ; preds = %tvp514x_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_read_reg.exit82.i

do.end.lr.ph.i71.i:                               ; preds = %tvp514x_read_reg.exit.i
  %name.i70.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call4.i73.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i70.i, i32 noundef 0) #10
  %call5.i75.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i76.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext -127) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i76.i)
  %cmp.i77.i = icmp slt i32 %call1.i76.i, 0
  br i1 %cmp.i77.i, label %do.end.i80.i.1, label %do.end.lr.ph.i71.i.tvp514x_read_reg.exit82.i_crit_edge

do.end.lr.ph.i71.i.tvp514x_read_reg.exit82.i_crit_edge: ; preds = %do.end.lr.ph.i71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_read_reg.exit82.i

do.end.i80.i.1:                                   ; preds = %do.end.lr.ph.i71.i
  %call4.i73.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i70.i, i32 noundef 1) #10
  %call5.i75.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i76.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext -127) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i76.i.1)
  %cmp.i77.i.1 = icmp slt i32 %call1.i76.i.1, 0
  br i1 %cmp.i77.i.1, label %do.end.i80.i.2, label %do.end.i80.i.1.tvp514x_read_reg.exit82.i_crit_edge

do.end.i80.i.1.tvp514x_read_reg.exit82.i_crit_edge: ; preds = %do.end.i80.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_read_reg.exit82.i

do.end.i80.i.2:                                   ; preds = %do.end.i80.i.1
  %call4.i73.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i70.i, i32 noundef 2) #10
  %call5.i75.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i76.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext -127) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i76.i.2)
  %cmp.i77.i.2 = icmp slt i32 %call1.i76.i.2, 0
  br i1 %cmp.i77.i.2, label %do.end.i80.i.3, label %do.end.i80.i.2.tvp514x_read_reg.exit82.i_crit_edge

do.end.i80.i.2.tvp514x_read_reg.exit82.i_crit_edge: ; preds = %do.end.i80.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_read_reg.exit82.i

do.end.i80.i.3:                                   ; preds = %do.end.i80.i.2
  %call4.i73.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i70.i, i32 noundef 3) #10
  %call5.i75.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i76.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext -127) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i76.i.3)
  %cmp.i77.i.3 = icmp slt i32 %call1.i76.i.3, 0
  br i1 %cmp.i77.i.3, label %do.end.i80.i.4, label %do.end.i80.i.3.tvp514x_read_reg.exit82.i_crit_edge

do.end.i80.i.3.tvp514x_read_reg.exit82.i_crit_edge: ; preds = %do.end.i80.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_read_reg.exit82.i

do.end.i80.i.4:                                   ; preds = %do.end.i80.i.3
  %call4.i73.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i70.i, i32 noundef 4) #10
  %call5.i75.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i76.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext -127) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i76.i.4)
  %cmp.i77.i.4 = icmp slt i32 %call1.i76.i.4, 0
  br i1 %cmp.i77.i.4, label %do.end.i80.i.5, label %do.end.i80.i.4.tvp514x_read_reg.exit82.i_crit_edge

do.end.i80.i.4.tvp514x_read_reg.exit82.i_crit_edge: ; preds = %do.end.i80.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_read_reg.exit82.i

do.end.i80.i.5:                                   ; preds = %do.end.i80.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i73.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i70.i, i32 noundef 5) #10
  %call5.i75.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i76.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext -127) #7
  br label %tvp514x_read_reg.exit82.i

tvp514x_read_reg.exit82.i:                        ; preds = %do.end.i80.i.5, %do.end.i80.i.4.tvp514x_read_reg.exit82.i_crit_edge, %do.end.i80.i.3.tvp514x_read_reg.exit82.i_crit_edge, %do.end.i80.i.2.tvp514x_read_reg.exit82.i_crit_edge, %do.end.i80.i.1.tvp514x_read_reg.exit82.i_crit_edge, %do.end.lr.ph.i71.i.tvp514x_read_reg.exit82.i_crit_edge, %tvp514x_read_reg.exit.i.tvp514x_read_reg.exit82.i_crit_edge
  %call1.lcssa.i81.i = phi i32 [ %call111.i68.i, %tvp514x_read_reg.exit.i.tvp514x_read_reg.exit82.i_crit_edge ], [ %call1.i76.i, %do.end.lr.ph.i71.i.tvp514x_read_reg.exit82.i_crit_edge ], [ %call1.i76.i.1, %do.end.i80.i.1.tvp514x_read_reg.exit82.i_crit_edge ], [ %call1.i76.i.2, %do.end.i80.i.2.tvp514x_read_reg.exit82.i_crit_edge ], [ %call1.i76.i.3, %do.end.i80.i.3.tvp514x_read_reg.exit82.i_crit_edge ], [ %call1.i76.i.4, %do.end.i80.i.4.tvp514x_read_reg.exit82.i_crit_edge ], [ %call1.i76.i.5, %do.end.i80.i.5 ]
  %12 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i84.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %13, i8 noundef zeroext 112) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i84.i)
  %cmp12.i85.i = icmp slt i32 %call111.i84.i, 0
  br i1 %cmp12.i85.i, label %do.end.lr.ph.i87.i, label %tvp514x_read_reg.exit82.i.tvp514x_read_reg.exit98.i_crit_edge

tvp514x_read_reg.exit82.i.tvp514x_read_reg.exit98.i_crit_edge: ; preds = %tvp514x_read_reg.exit82.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_read_reg.exit98.i

do.end.lr.ph.i87.i:                               ; preds = %tvp514x_read_reg.exit82.i
  %name.i86.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call4.i89.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i86.i, i32 noundef 0) #10
  %call5.i91.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i92.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %13, i8 noundef zeroext 112) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i92.i)
  %cmp.i93.i = icmp slt i32 %call1.i92.i, 0
  br i1 %cmp.i93.i, label %do.end.i96.i.1, label %do.end.lr.ph.i87.i.tvp514x_read_reg.exit98.i_crit_edge

do.end.lr.ph.i87.i.tvp514x_read_reg.exit98.i_crit_edge: ; preds = %do.end.lr.ph.i87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_read_reg.exit98.i

do.end.i96.i.1:                                   ; preds = %do.end.lr.ph.i87.i
  %call4.i89.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i86.i, i32 noundef 1) #10
  %call5.i91.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i92.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %13, i8 noundef zeroext 112) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i92.i.1)
  %cmp.i93.i.1 = icmp slt i32 %call1.i92.i.1, 0
  br i1 %cmp.i93.i.1, label %do.end.i96.i.2, label %do.end.i96.i.1.tvp514x_read_reg.exit98.i_crit_edge

do.end.i96.i.1.tvp514x_read_reg.exit98.i_crit_edge: ; preds = %do.end.i96.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_read_reg.exit98.i

do.end.i96.i.2:                                   ; preds = %do.end.i96.i.1
  %call4.i89.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i86.i, i32 noundef 2) #10
  %call5.i91.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i92.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %13, i8 noundef zeroext 112) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i92.i.2)
  %cmp.i93.i.2 = icmp slt i32 %call1.i92.i.2, 0
  br i1 %cmp.i93.i.2, label %do.end.i96.i.3, label %do.end.i96.i.2.tvp514x_read_reg.exit98.i_crit_edge

do.end.i96.i.2.tvp514x_read_reg.exit98.i_crit_edge: ; preds = %do.end.i96.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_read_reg.exit98.i

do.end.i96.i.3:                                   ; preds = %do.end.i96.i.2
  %call4.i89.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i86.i, i32 noundef 3) #10
  %call5.i91.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i92.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %13, i8 noundef zeroext 112) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i92.i.3)
  %cmp.i93.i.3 = icmp slt i32 %call1.i92.i.3, 0
  br i1 %cmp.i93.i.3, label %do.end.i96.i.4, label %do.end.i96.i.3.tvp514x_read_reg.exit98.i_crit_edge

do.end.i96.i.3.tvp514x_read_reg.exit98.i_crit_edge: ; preds = %do.end.i96.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_read_reg.exit98.i

do.end.i96.i.4:                                   ; preds = %do.end.i96.i.3
  %call4.i89.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i86.i, i32 noundef 4) #10
  %call5.i91.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i92.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %13, i8 noundef zeroext 112) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i92.i.4)
  %cmp.i93.i.4 = icmp slt i32 %call1.i92.i.4, 0
  br i1 %cmp.i93.i.4, label %do.end.i96.i.5, label %do.end.i96.i.4.tvp514x_read_reg.exit98.i_crit_edge

do.end.i96.i.4.tvp514x_read_reg.exit98.i_crit_edge: ; preds = %do.end.i96.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_read_reg.exit98.i

do.end.i96.i.5:                                   ; preds = %do.end.i96.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i89.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i86.i, i32 noundef 5) #10
  %call5.i91.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i92.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %13, i8 noundef zeroext 112) #7
  br label %tvp514x_read_reg.exit98.i

tvp514x_read_reg.exit98.i:                        ; preds = %do.end.i96.i.5, %do.end.i96.i.4.tvp514x_read_reg.exit98.i_crit_edge, %do.end.i96.i.3.tvp514x_read_reg.exit98.i_crit_edge, %do.end.i96.i.2.tvp514x_read_reg.exit98.i_crit_edge, %do.end.i96.i.1.tvp514x_read_reg.exit98.i_crit_edge, %do.end.lr.ph.i87.i.tvp514x_read_reg.exit98.i_crit_edge, %tvp514x_read_reg.exit82.i.tvp514x_read_reg.exit98.i_crit_edge
  %call1.lcssa.i97.i = phi i32 [ %call111.i84.i, %tvp514x_read_reg.exit82.i.tvp514x_read_reg.exit98.i_crit_edge ], [ %call1.i92.i, %do.end.lr.ph.i87.i.tvp514x_read_reg.exit98.i_crit_edge ], [ %call1.i92.i.1, %do.end.i96.i.1.tvp514x_read_reg.exit98.i_crit_edge ], [ %call1.i92.i.2, %do.end.i96.i.2.tvp514x_read_reg.exit98.i_crit_edge ], [ %call1.i92.i.3, %do.end.i96.i.3.tvp514x_read_reg.exit98.i_crit_edge ], [ %call1.i92.i.4, %do.end.i96.i.4.tvp514x_read_reg.exit98.i_crit_edge ], [ %call1.i92.i.5, %do.end.i96.i.5 ]
  %14 = load i8, ptr @debug, align 1, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i67 = icmp eq i8 %14, 0
  br i1 %tobool.not.i67, label %tvp514x_read_reg.exit98.do.end14_crit_edge.i, label %do.end.i69

tvp514x_read_reg.exit98.do.end14_crit_edge.i:     ; preds = %tvp514x_read_reg.exit98.i
  call void @__sanitizer_cov_trace_pc() #9
  %.pre.i = and i32 %call1.lcssa.i.i, 255
  br label %do.end14.i

do.end.i69:                                       ; preds = %tvp514x_read_reg.exit98.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i68 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv9.i = and i32 %call1.lcssa.i.i, 255
  %conv10.i = and i32 %call1.lcssa.i81.i, 255
  %conv11.i = and i32 %call1.lcssa.i97.i, 255
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name.i68, i32 noundef %conv9.i, i32 noundef %conv10.i, i32 noundef %conv11.i) #10
  br label %do.end14.i

do.end14.i:                                       ; preds = %do.end.i69, %tvp514x_read_reg.exit98.do.end14_crit_edge.i
  %conv15.pre-phi.i = phi i32 [ %.pre.i, %tvp514x_read_reg.exit98.do.end14_crit_edge.i ], [ %conv9.i, %do.end.i69 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 81, i32 %conv15.pre-phi.i)
  %cmp16.not.i = icmp eq i32 %conv15.pre-phi.i, 81
  %15 = and i32 %call1.lcssa.i81.i, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 70, i32 %15)
  %switch.i = icmp eq i32 %15, 70
  %or.cond.i70 = select i1 %cmp16.not.i, i1 %switch.i, i1 false
  br i1 %or.cond.i70, label %if.end28, label %do.end23

do.end23:                                         ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %name29.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv32.i = and i32 %call1.lcssa.i81.i, 255
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name29.i, i32 noundef %conv15.pre-phi.i, i32 noundef %conv32.i) #10
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name29.i) #10
  br label %cleanup

if.end28:                                         ; preds = %do.end14.i
  %conv35.i = and i32 %call1.lcssa.i97.i, 255
  %ver.i = getelementptr inbounds %struct.tvp514x_decoder, ptr %sd, i32 0, i32 4
  %16 = ptrtoint ptr %ver.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv35.i, ptr %ver.i, align 4
  %name40.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %name42.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 2
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 1
  %17 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %addr.i, align 2
  %conv45.i = zext i16 %18 to i32
  %shl.i = shl nuw nsw i32 %conv45.i, 1
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 3
  %19 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter.i, align 8
  %name46.i = getelementptr inbounds %struct.i2c_adapter, ptr %20, i32 0, i32 12
  %call48.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name40.i, ptr noundef %name42.i, i32 noundef %conv35.i, i32 noundef %shl.i, ptr noundef %name46.i) #10
  %tvp514x_regs.i = getelementptr inbounds %struct.tvp514x_decoder, ptr %sd, i32 0, i32 2
  %call.i = tail call fastcc i32 @tvp514x_write_regs(ptr noundef %sd, ptr noundef %tvp514x_regs.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i71 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i71, label %if.end.i, label %do.end34

if.end.i:                                         ; preds = %if.end28
  %21 = load i8, ptr @debug, align 1, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool1.not.i = icmp eq i8 %21, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end39_crit_edge, label %if.then2.i

if.end.i.if.end39_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then2.i:                                       ; preds = %if.end.i
  %22 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i.i.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %23, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i.i.i)
  %cmp12.i.i.i.i = icmp slt i32 %call111.i.i.i.i, 0
  br i1 %cmp12.i.i.i.i, label %do.end.i.i.i.i, label %if.then2.i.dump_reg.exit.i.i_crit_edge

if.then2.i.dump_reg.exit.i.i_crit_edge:           ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit.i.i

do.end.i.i.i.i:                                   ; preds = %if.then2.i
  %call4.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 0) #10
  %call5.i.i.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %23, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call1.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i.1, label %do.end.i.i.i.i.dump_reg.exit.i.i_crit_edge

do.end.i.i.i.i.dump_reg.exit.i.i_crit_edge:       ; preds = %do.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit.i.i

do.end.i.i.i.i.1:                                 ; preds = %do.end.i.i.i.i
  %call4.i.i.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 1) #10
  %call5.i.i.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %23, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.1)
  %cmp.i.i.i.i.1 = icmp slt i32 %call1.i.i.i.i.1, 0
  br i1 %cmp.i.i.i.i.1, label %do.end.i.i.i.i.2, label %do.end.i.i.i.i.1.dump_reg.exit.i.i_crit_edge

do.end.i.i.i.i.1.dump_reg.exit.i.i_crit_edge:     ; preds = %do.end.i.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit.i.i

do.end.i.i.i.i.2:                                 ; preds = %do.end.i.i.i.i.1
  %call4.i.i.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 2) #10
  %call5.i.i.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %23, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.2)
  %cmp.i.i.i.i.2 = icmp slt i32 %call1.i.i.i.i.2, 0
  br i1 %cmp.i.i.i.i.2, label %do.end.i.i.i.i.3, label %do.end.i.i.i.i.2.dump_reg.exit.i.i_crit_edge

do.end.i.i.i.i.2.dump_reg.exit.i.i_crit_edge:     ; preds = %do.end.i.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit.i.i

do.end.i.i.i.i.3:                                 ; preds = %do.end.i.i.i.i.2
  %call4.i.i.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 3) #10
  %call5.i.i.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %23, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.3)
  %cmp.i.i.i.i.3 = icmp slt i32 %call1.i.i.i.i.3, 0
  br i1 %cmp.i.i.i.i.3, label %do.end.i.i.i.i.4, label %do.end.i.i.i.i.3.dump_reg.exit.i.i_crit_edge

do.end.i.i.i.i.3.dump_reg.exit.i.i_crit_edge:     ; preds = %do.end.i.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit.i.i

do.end.i.i.i.i.4:                                 ; preds = %do.end.i.i.i.i.3
  %call4.i.i.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 4) #10
  %call5.i.i.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %23, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.4)
  %cmp.i.i.i.i.4 = icmp slt i32 %call1.i.i.i.i.4, 0
  br i1 %cmp.i.i.i.i.4, label %do.end.i.i.i.i.5, label %do.end.i.i.i.i.4.dump_reg.exit.i.i_crit_edge

do.end.i.i.i.i.4.dump_reg.exit.i.i_crit_edge:     ; preds = %do.end.i.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit.i.i

do.end.i.i.i.i.5:                                 ; preds = %do.end.i.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 5) #10
  %call5.i.i.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %23, i8 noundef zeroext 0) #7
  br label %dump_reg.exit.i.i

dump_reg.exit.i.i:                                ; preds = %do.end.i.i.i.i.5, %do.end.i.i.i.i.4.dump_reg.exit.i.i_crit_edge, %do.end.i.i.i.i.3.dump_reg.exit.i.i_crit_edge, %do.end.i.i.i.i.2.dump_reg.exit.i.i_crit_edge, %do.end.i.i.i.i.1.dump_reg.exit.i.i_crit_edge, %do.end.i.i.i.i.dump_reg.exit.i.i_crit_edge, %if.then2.i.dump_reg.exit.i.i_crit_edge
  %call1.lcssa.i.i.i.i = phi i32 [ %call111.i.i.i.i, %if.then2.i.dump_reg.exit.i.i_crit_edge ], [ %call1.i.i.i.i, %do.end.i.i.i.i.dump_reg.exit.i.i_crit_edge ], [ %call1.i.i.i.i.1, %do.end.i.i.i.i.1.dump_reg.exit.i.i_crit_edge ], [ %call1.i.i.i.i.2, %do.end.i.i.i.i.2.dump_reg.exit.i.i_crit_edge ], [ %call1.i.i.i.i.3, %do.end.i.i.i.i.3.dump_reg.exit.i.i_crit_edge ], [ %call1.i.i.i.i.4, %do.end.i.i.i.i.4.dump_reg.exit.i.i_crit_edge ], [ %call1.i.i.i.i.5, %do.end.i.i.i.i.5 ]
  %call1.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name40.i, i32 noundef 0, i32 noundef %call1.lcssa.i.i.i.i) #10
  %24 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i.i43.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %25, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i43.i.i)
  %cmp12.i.i44.i.i = icmp slt i32 %call111.i.i43.i.i, 0
  br i1 %cmp12.i.i44.i.i, label %do.end.i.i55.i.i, label %dump_reg.exit.i.i.dump_reg.exit59.i.i_crit_edge

dump_reg.exit.i.i.dump_reg.exit59.i.i_crit_edge:  ; preds = %dump_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit59.i.i

do.end.i.i55.i.i:                                 ; preds = %dump_reg.exit.i.i
  %call4.i.i48.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 0) #10
  %call5.i.i50.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i51.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %25, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i51.i.i)
  %cmp.i.i52.i.i = icmp slt i32 %call1.i.i51.i.i, 0
  br i1 %cmp.i.i52.i.i, label %do.end.i.i55.i.i.1, label %do.end.i.i55.i.i.dump_reg.exit59.i.i_crit_edge

do.end.i.i55.i.i.dump_reg.exit59.i.i_crit_edge:   ; preds = %do.end.i.i55.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit59.i.i

do.end.i.i55.i.i.1:                               ; preds = %do.end.i.i55.i.i
  %call4.i.i48.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 1) #10
  %call5.i.i50.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i51.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %25, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i51.i.i.1)
  %cmp.i.i52.i.i.1 = icmp slt i32 %call1.i.i51.i.i.1, 0
  br i1 %cmp.i.i52.i.i.1, label %do.end.i.i55.i.i.2, label %do.end.i.i55.i.i.1.dump_reg.exit59.i.i_crit_edge

do.end.i.i55.i.i.1.dump_reg.exit59.i.i_crit_edge: ; preds = %do.end.i.i55.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit59.i.i

do.end.i.i55.i.i.2:                               ; preds = %do.end.i.i55.i.i.1
  %call4.i.i48.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 2) #10
  %call5.i.i50.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i51.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %25, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i51.i.i.2)
  %cmp.i.i52.i.i.2 = icmp slt i32 %call1.i.i51.i.i.2, 0
  br i1 %cmp.i.i52.i.i.2, label %do.end.i.i55.i.i.3, label %do.end.i.i55.i.i.2.dump_reg.exit59.i.i_crit_edge

do.end.i.i55.i.i.2.dump_reg.exit59.i.i_crit_edge: ; preds = %do.end.i.i55.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit59.i.i

do.end.i.i55.i.i.3:                               ; preds = %do.end.i.i55.i.i.2
  %call4.i.i48.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 3) #10
  %call5.i.i50.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i51.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %25, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i51.i.i.3)
  %cmp.i.i52.i.i.3 = icmp slt i32 %call1.i.i51.i.i.3, 0
  br i1 %cmp.i.i52.i.i.3, label %do.end.i.i55.i.i.4, label %do.end.i.i55.i.i.3.dump_reg.exit59.i.i_crit_edge

do.end.i.i55.i.i.3.dump_reg.exit59.i.i_crit_edge: ; preds = %do.end.i.i55.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit59.i.i

do.end.i.i55.i.i.4:                               ; preds = %do.end.i.i55.i.i.3
  %call4.i.i48.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 4) #10
  %call5.i.i50.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i51.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %25, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i51.i.i.4)
  %cmp.i.i52.i.i.4 = icmp slt i32 %call1.i.i51.i.i.4, 0
  br i1 %cmp.i.i52.i.i.4, label %do.end.i.i55.i.i.5, label %do.end.i.i55.i.i.4.dump_reg.exit59.i.i_crit_edge

do.end.i.i55.i.i.4.dump_reg.exit59.i.i_crit_edge: ; preds = %do.end.i.i55.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit59.i.i

do.end.i.i55.i.i.5:                               ; preds = %do.end.i.i55.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i48.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 5) #10
  %call5.i.i50.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i51.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %25, i8 noundef zeroext 1) #7
  br label %dump_reg.exit59.i.i

dump_reg.exit59.i.i:                              ; preds = %do.end.i.i55.i.i.5, %do.end.i.i55.i.i.4.dump_reg.exit59.i.i_crit_edge, %do.end.i.i55.i.i.3.dump_reg.exit59.i.i_crit_edge, %do.end.i.i55.i.i.2.dump_reg.exit59.i.i_crit_edge, %do.end.i.i55.i.i.1.dump_reg.exit59.i.i_crit_edge, %do.end.i.i55.i.i.dump_reg.exit59.i.i_crit_edge, %dump_reg.exit.i.i.dump_reg.exit59.i.i_crit_edge
  %call1.lcssa.i.i56.i.i = phi i32 [ %call111.i.i43.i.i, %dump_reg.exit.i.i.dump_reg.exit59.i.i_crit_edge ], [ %call1.i.i51.i.i, %do.end.i.i55.i.i.dump_reg.exit59.i.i_crit_edge ], [ %call1.i.i51.i.i.1, %do.end.i.i55.i.i.1.dump_reg.exit59.i.i_crit_edge ], [ %call1.i.i51.i.i.2, %do.end.i.i55.i.i.2.dump_reg.exit59.i.i_crit_edge ], [ %call1.i.i51.i.i.3, %do.end.i.i55.i.i.3.dump_reg.exit59.i.i_crit_edge ], [ %call1.i.i51.i.i.4, %do.end.i.i55.i.i.4.dump_reg.exit59.i.i_crit_edge ], [ %call1.i.i51.i.i.5, %do.end.i.i55.i.i.5 ]
  %call1.i58.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name40.i, i32 noundef 1, i32 noundef %call1.lcssa.i.i56.i.i) #10
  %26 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i.i61.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %27, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i61.i.i)
  %cmp12.i.i62.i.i = icmp slt i32 %call111.i.i61.i.i, 0
  br i1 %cmp12.i.i62.i.i, label %do.end.i.i73.i.i, label %dump_reg.exit59.i.i.dump_reg.exit77.i.i_crit_edge

dump_reg.exit59.i.i.dump_reg.exit77.i.i_crit_edge: ; preds = %dump_reg.exit59.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit77.i.i

do.end.i.i73.i.i:                                 ; preds = %dump_reg.exit59.i.i
  %call4.i.i66.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 0) #10
  %call5.i.i68.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i69.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %27, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i69.i.i)
  %cmp.i.i70.i.i = icmp slt i32 %call1.i.i69.i.i, 0
  br i1 %cmp.i.i70.i.i, label %do.end.i.i73.i.i.1, label %do.end.i.i73.i.i.dump_reg.exit77.i.i_crit_edge

do.end.i.i73.i.i.dump_reg.exit77.i.i_crit_edge:   ; preds = %do.end.i.i73.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit77.i.i

do.end.i.i73.i.i.1:                               ; preds = %do.end.i.i73.i.i
  %call4.i.i66.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 1) #10
  %call5.i.i68.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i69.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %27, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i69.i.i.1)
  %cmp.i.i70.i.i.1 = icmp slt i32 %call1.i.i69.i.i.1, 0
  br i1 %cmp.i.i70.i.i.1, label %do.end.i.i73.i.i.2, label %do.end.i.i73.i.i.1.dump_reg.exit77.i.i_crit_edge

do.end.i.i73.i.i.1.dump_reg.exit77.i.i_crit_edge: ; preds = %do.end.i.i73.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit77.i.i

do.end.i.i73.i.i.2:                               ; preds = %do.end.i.i73.i.i.1
  %call4.i.i66.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 2) #10
  %call5.i.i68.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i69.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %27, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i69.i.i.2)
  %cmp.i.i70.i.i.2 = icmp slt i32 %call1.i.i69.i.i.2, 0
  br i1 %cmp.i.i70.i.i.2, label %do.end.i.i73.i.i.3, label %do.end.i.i73.i.i.2.dump_reg.exit77.i.i_crit_edge

do.end.i.i73.i.i.2.dump_reg.exit77.i.i_crit_edge: ; preds = %do.end.i.i73.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit77.i.i

do.end.i.i73.i.i.3:                               ; preds = %do.end.i.i73.i.i.2
  %call4.i.i66.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 3) #10
  %call5.i.i68.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i69.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %27, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i69.i.i.3)
  %cmp.i.i70.i.i.3 = icmp slt i32 %call1.i.i69.i.i.3, 0
  br i1 %cmp.i.i70.i.i.3, label %do.end.i.i73.i.i.4, label %do.end.i.i73.i.i.3.dump_reg.exit77.i.i_crit_edge

do.end.i.i73.i.i.3.dump_reg.exit77.i.i_crit_edge: ; preds = %do.end.i.i73.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit77.i.i

do.end.i.i73.i.i.4:                               ; preds = %do.end.i.i73.i.i.3
  %call4.i.i66.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 4) #10
  %call5.i.i68.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i69.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %27, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i69.i.i.4)
  %cmp.i.i70.i.i.4 = icmp slt i32 %call1.i.i69.i.i.4, 0
  br i1 %cmp.i.i70.i.i.4, label %do.end.i.i73.i.i.5, label %do.end.i.i73.i.i.4.dump_reg.exit77.i.i_crit_edge

do.end.i.i73.i.i.4.dump_reg.exit77.i.i_crit_edge: ; preds = %do.end.i.i73.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit77.i.i

do.end.i.i73.i.i.5:                               ; preds = %do.end.i.i73.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i66.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 5) #10
  %call5.i.i68.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i69.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %27, i8 noundef zeroext 2) #7
  br label %dump_reg.exit77.i.i

dump_reg.exit77.i.i:                              ; preds = %do.end.i.i73.i.i.5, %do.end.i.i73.i.i.4.dump_reg.exit77.i.i_crit_edge, %do.end.i.i73.i.i.3.dump_reg.exit77.i.i_crit_edge, %do.end.i.i73.i.i.2.dump_reg.exit77.i.i_crit_edge, %do.end.i.i73.i.i.1.dump_reg.exit77.i.i_crit_edge, %do.end.i.i73.i.i.dump_reg.exit77.i.i_crit_edge, %dump_reg.exit59.i.i.dump_reg.exit77.i.i_crit_edge
  %call1.lcssa.i.i74.i.i = phi i32 [ %call111.i.i61.i.i, %dump_reg.exit59.i.i.dump_reg.exit77.i.i_crit_edge ], [ %call1.i.i69.i.i, %do.end.i.i73.i.i.dump_reg.exit77.i.i_crit_edge ], [ %call1.i.i69.i.i.1, %do.end.i.i73.i.i.1.dump_reg.exit77.i.i_crit_edge ], [ %call1.i.i69.i.i.2, %do.end.i.i73.i.i.2.dump_reg.exit77.i.i_crit_edge ], [ %call1.i.i69.i.i.3, %do.end.i.i73.i.i.3.dump_reg.exit77.i.i_crit_edge ], [ %call1.i.i69.i.i.4, %do.end.i.i73.i.i.4.dump_reg.exit77.i.i_crit_edge ], [ %call1.i.i69.i.i.5, %do.end.i.i73.i.i.5 ]
  %call1.i76.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name40.i, i32 noundef 2, i32 noundef %call1.lcssa.i.i74.i.i) #10
  %28 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i.i79.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %29, i8 noundef zeroext 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i79.i.i)
  %cmp12.i.i80.i.i = icmp slt i32 %call111.i.i79.i.i, 0
  br i1 %cmp12.i.i80.i.i, label %do.end.i.i91.i.i, label %dump_reg.exit77.i.i.dump_reg.exit95.i.i_crit_edge

dump_reg.exit77.i.i.dump_reg.exit95.i.i_crit_edge: ; preds = %dump_reg.exit77.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit95.i.i

do.end.i.i91.i.i:                                 ; preds = %dump_reg.exit77.i.i
  %call4.i.i84.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 0) #10
  %call5.i.i86.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i87.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %29, i8 noundef zeroext 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i87.i.i)
  %cmp.i.i88.i.i = icmp slt i32 %call1.i.i87.i.i, 0
  br i1 %cmp.i.i88.i.i, label %do.end.i.i91.i.i.1, label %do.end.i.i91.i.i.dump_reg.exit95.i.i_crit_edge

do.end.i.i91.i.i.dump_reg.exit95.i.i_crit_edge:   ; preds = %do.end.i.i91.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit95.i.i

do.end.i.i91.i.i.1:                               ; preds = %do.end.i.i91.i.i
  %call4.i.i84.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 1) #10
  %call5.i.i86.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i87.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %29, i8 noundef zeroext 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i87.i.i.1)
  %cmp.i.i88.i.i.1 = icmp slt i32 %call1.i.i87.i.i.1, 0
  br i1 %cmp.i.i88.i.i.1, label %do.end.i.i91.i.i.2, label %do.end.i.i91.i.i.1.dump_reg.exit95.i.i_crit_edge

do.end.i.i91.i.i.1.dump_reg.exit95.i.i_crit_edge: ; preds = %do.end.i.i91.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit95.i.i

do.end.i.i91.i.i.2:                               ; preds = %do.end.i.i91.i.i.1
  %call4.i.i84.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 2) #10
  %call5.i.i86.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i87.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %29, i8 noundef zeroext 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i87.i.i.2)
  %cmp.i.i88.i.i.2 = icmp slt i32 %call1.i.i87.i.i.2, 0
  br i1 %cmp.i.i88.i.i.2, label %do.end.i.i91.i.i.3, label %do.end.i.i91.i.i.2.dump_reg.exit95.i.i_crit_edge

do.end.i.i91.i.i.2.dump_reg.exit95.i.i_crit_edge: ; preds = %do.end.i.i91.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit95.i.i

do.end.i.i91.i.i.3:                               ; preds = %do.end.i.i91.i.i.2
  %call4.i.i84.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 3) #10
  %call5.i.i86.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i87.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %29, i8 noundef zeroext 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i87.i.i.3)
  %cmp.i.i88.i.i.3 = icmp slt i32 %call1.i.i87.i.i.3, 0
  br i1 %cmp.i.i88.i.i.3, label %do.end.i.i91.i.i.4, label %do.end.i.i91.i.i.3.dump_reg.exit95.i.i_crit_edge

do.end.i.i91.i.i.3.dump_reg.exit95.i.i_crit_edge: ; preds = %do.end.i.i91.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit95.i.i

do.end.i.i91.i.i.4:                               ; preds = %do.end.i.i91.i.i.3
  %call4.i.i84.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 4) #10
  %call5.i.i86.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i87.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %29, i8 noundef zeroext 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i87.i.i.4)
  %cmp.i.i88.i.i.4 = icmp slt i32 %call1.i.i87.i.i.4, 0
  br i1 %cmp.i.i88.i.i.4, label %do.end.i.i91.i.i.5, label %do.end.i.i91.i.i.4.dump_reg.exit95.i.i_crit_edge

do.end.i.i91.i.i.4.dump_reg.exit95.i.i_crit_edge: ; preds = %do.end.i.i91.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit95.i.i

do.end.i.i91.i.i.5:                               ; preds = %do.end.i.i91.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i84.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 5) #10
  %call5.i.i86.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i87.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %29, i8 noundef zeroext 3) #7
  br label %dump_reg.exit95.i.i

dump_reg.exit95.i.i:                              ; preds = %do.end.i.i91.i.i.5, %do.end.i.i91.i.i.4.dump_reg.exit95.i.i_crit_edge, %do.end.i.i91.i.i.3.dump_reg.exit95.i.i_crit_edge, %do.end.i.i91.i.i.2.dump_reg.exit95.i.i_crit_edge, %do.end.i.i91.i.i.1.dump_reg.exit95.i.i_crit_edge, %do.end.i.i91.i.i.dump_reg.exit95.i.i_crit_edge, %dump_reg.exit77.i.i.dump_reg.exit95.i.i_crit_edge
  %call1.lcssa.i.i92.i.i = phi i32 [ %call111.i.i79.i.i, %dump_reg.exit77.i.i.dump_reg.exit95.i.i_crit_edge ], [ %call1.i.i87.i.i, %do.end.i.i91.i.i.dump_reg.exit95.i.i_crit_edge ], [ %call1.i.i87.i.i.1, %do.end.i.i91.i.i.1.dump_reg.exit95.i.i_crit_edge ], [ %call1.i.i87.i.i.2, %do.end.i.i91.i.i.2.dump_reg.exit95.i.i_crit_edge ], [ %call1.i.i87.i.i.3, %do.end.i.i91.i.i.3.dump_reg.exit95.i.i_crit_edge ], [ %call1.i.i87.i.i.4, %do.end.i.i91.i.i.4.dump_reg.exit95.i.i_crit_edge ], [ %call1.i.i87.i.i.5, %do.end.i.i91.i.i.5 ]
  %call1.i94.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name40.i, i32 noundef 3, i32 noundef %call1.lcssa.i.i92.i.i) #10
  %30 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i.i97.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %31, i8 noundef zeroext 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i97.i.i)
  %cmp12.i.i98.i.i = icmp slt i32 %call111.i.i97.i.i, 0
  br i1 %cmp12.i.i98.i.i, label %do.end.i.i109.i.i, label %dump_reg.exit95.i.i.dump_reg.exit113.i.i_crit_edge

dump_reg.exit95.i.i.dump_reg.exit113.i.i_crit_edge: ; preds = %dump_reg.exit95.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit113.i.i

do.end.i.i109.i.i:                                ; preds = %dump_reg.exit95.i.i
  %call4.i.i102.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 0) #10
  %call5.i.i104.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i105.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %31, i8 noundef zeroext 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i105.i.i)
  %cmp.i.i106.i.i = icmp slt i32 %call1.i.i105.i.i, 0
  br i1 %cmp.i.i106.i.i, label %do.end.i.i109.i.i.1, label %do.end.i.i109.i.i.dump_reg.exit113.i.i_crit_edge

do.end.i.i109.i.i.dump_reg.exit113.i.i_crit_edge: ; preds = %do.end.i.i109.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit113.i.i

do.end.i.i109.i.i.1:                              ; preds = %do.end.i.i109.i.i
  %call4.i.i102.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 1) #10
  %call5.i.i104.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i105.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %31, i8 noundef zeroext 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i105.i.i.1)
  %cmp.i.i106.i.i.1 = icmp slt i32 %call1.i.i105.i.i.1, 0
  br i1 %cmp.i.i106.i.i.1, label %do.end.i.i109.i.i.2, label %do.end.i.i109.i.i.1.dump_reg.exit113.i.i_crit_edge

do.end.i.i109.i.i.1.dump_reg.exit113.i.i_crit_edge: ; preds = %do.end.i.i109.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit113.i.i

do.end.i.i109.i.i.2:                              ; preds = %do.end.i.i109.i.i.1
  %call4.i.i102.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 2) #10
  %call5.i.i104.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i105.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %31, i8 noundef zeroext 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i105.i.i.2)
  %cmp.i.i106.i.i.2 = icmp slt i32 %call1.i.i105.i.i.2, 0
  br i1 %cmp.i.i106.i.i.2, label %do.end.i.i109.i.i.3, label %do.end.i.i109.i.i.2.dump_reg.exit113.i.i_crit_edge

do.end.i.i109.i.i.2.dump_reg.exit113.i.i_crit_edge: ; preds = %do.end.i.i109.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit113.i.i

do.end.i.i109.i.i.3:                              ; preds = %do.end.i.i109.i.i.2
  %call4.i.i102.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 3) #10
  %call5.i.i104.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i105.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %31, i8 noundef zeroext 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i105.i.i.3)
  %cmp.i.i106.i.i.3 = icmp slt i32 %call1.i.i105.i.i.3, 0
  br i1 %cmp.i.i106.i.i.3, label %do.end.i.i109.i.i.4, label %do.end.i.i109.i.i.3.dump_reg.exit113.i.i_crit_edge

do.end.i.i109.i.i.3.dump_reg.exit113.i.i_crit_edge: ; preds = %do.end.i.i109.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit113.i.i

do.end.i.i109.i.i.4:                              ; preds = %do.end.i.i109.i.i.3
  %call4.i.i102.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 4) #10
  %call5.i.i104.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i105.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %31, i8 noundef zeroext 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i105.i.i.4)
  %cmp.i.i106.i.i.4 = icmp slt i32 %call1.i.i105.i.i.4, 0
  br i1 %cmp.i.i106.i.i.4, label %do.end.i.i109.i.i.5, label %do.end.i.i109.i.i.4.dump_reg.exit113.i.i_crit_edge

do.end.i.i109.i.i.4.dump_reg.exit113.i.i_crit_edge: ; preds = %do.end.i.i109.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit113.i.i

do.end.i.i109.i.i.5:                              ; preds = %do.end.i.i109.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i102.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 5) #10
  %call5.i.i104.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i105.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %31, i8 noundef zeroext 5) #7
  br label %dump_reg.exit113.i.i

dump_reg.exit113.i.i:                             ; preds = %do.end.i.i109.i.i.5, %do.end.i.i109.i.i.4.dump_reg.exit113.i.i_crit_edge, %do.end.i.i109.i.i.3.dump_reg.exit113.i.i_crit_edge, %do.end.i.i109.i.i.2.dump_reg.exit113.i.i_crit_edge, %do.end.i.i109.i.i.1.dump_reg.exit113.i.i_crit_edge, %do.end.i.i109.i.i.dump_reg.exit113.i.i_crit_edge, %dump_reg.exit95.i.i.dump_reg.exit113.i.i_crit_edge
  %call1.lcssa.i.i110.i.i = phi i32 [ %call111.i.i97.i.i, %dump_reg.exit95.i.i.dump_reg.exit113.i.i_crit_edge ], [ %call1.i.i105.i.i, %do.end.i.i109.i.i.dump_reg.exit113.i.i_crit_edge ], [ %call1.i.i105.i.i.1, %do.end.i.i109.i.i.1.dump_reg.exit113.i.i_crit_edge ], [ %call1.i.i105.i.i.2, %do.end.i.i109.i.i.2.dump_reg.exit113.i.i_crit_edge ], [ %call1.i.i105.i.i.3, %do.end.i.i109.i.i.3.dump_reg.exit113.i.i_crit_edge ], [ %call1.i.i105.i.i.4, %do.end.i.i109.i.i.4.dump_reg.exit113.i.i_crit_edge ], [ %call1.i.i105.i.i.5, %do.end.i.i109.i.i.5 ]
  %call1.i112.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name40.i, i32 noundef 5, i32 noundef %call1.lcssa.i.i110.i.i) #10
  %32 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i.i115.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %33, i8 noundef zeroext 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i115.i.i)
  %cmp12.i.i116.i.i = icmp slt i32 %call111.i.i115.i.i, 0
  br i1 %cmp12.i.i116.i.i, label %do.end.i.i127.i.i, label %dump_reg.exit113.i.i.dump_reg.exit131.i.i_crit_edge

dump_reg.exit113.i.i.dump_reg.exit131.i.i_crit_edge: ; preds = %dump_reg.exit113.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit131.i.i

do.end.i.i127.i.i:                                ; preds = %dump_reg.exit113.i.i
  %call4.i.i120.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 0) #10
  %call5.i.i122.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i123.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %33, i8 noundef zeroext 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i123.i.i)
  %cmp.i.i124.i.i = icmp slt i32 %call1.i.i123.i.i, 0
  br i1 %cmp.i.i124.i.i, label %do.end.i.i127.i.i.1, label %do.end.i.i127.i.i.dump_reg.exit131.i.i_crit_edge

do.end.i.i127.i.i.dump_reg.exit131.i.i_crit_edge: ; preds = %do.end.i.i127.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit131.i.i

do.end.i.i127.i.i.1:                              ; preds = %do.end.i.i127.i.i
  %call4.i.i120.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 1) #10
  %call5.i.i122.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i123.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %33, i8 noundef zeroext 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i123.i.i.1)
  %cmp.i.i124.i.i.1 = icmp slt i32 %call1.i.i123.i.i.1, 0
  br i1 %cmp.i.i124.i.i.1, label %do.end.i.i127.i.i.2, label %do.end.i.i127.i.i.1.dump_reg.exit131.i.i_crit_edge

do.end.i.i127.i.i.1.dump_reg.exit131.i.i_crit_edge: ; preds = %do.end.i.i127.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit131.i.i

do.end.i.i127.i.i.2:                              ; preds = %do.end.i.i127.i.i.1
  %call4.i.i120.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 2) #10
  %call5.i.i122.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i123.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %33, i8 noundef zeroext 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i123.i.i.2)
  %cmp.i.i124.i.i.2 = icmp slt i32 %call1.i.i123.i.i.2, 0
  br i1 %cmp.i.i124.i.i.2, label %do.end.i.i127.i.i.3, label %do.end.i.i127.i.i.2.dump_reg.exit131.i.i_crit_edge

do.end.i.i127.i.i.2.dump_reg.exit131.i.i_crit_edge: ; preds = %do.end.i.i127.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit131.i.i

do.end.i.i127.i.i.3:                              ; preds = %do.end.i.i127.i.i.2
  %call4.i.i120.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 3) #10
  %call5.i.i122.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i123.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %33, i8 noundef zeroext 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i123.i.i.3)
  %cmp.i.i124.i.i.3 = icmp slt i32 %call1.i.i123.i.i.3, 0
  br i1 %cmp.i.i124.i.i.3, label %do.end.i.i127.i.i.4, label %do.end.i.i127.i.i.3.dump_reg.exit131.i.i_crit_edge

do.end.i.i127.i.i.3.dump_reg.exit131.i.i_crit_edge: ; preds = %do.end.i.i127.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit131.i.i

do.end.i.i127.i.i.4:                              ; preds = %do.end.i.i127.i.i.3
  %call4.i.i120.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 4) #10
  %call5.i.i122.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i123.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %33, i8 noundef zeroext 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i123.i.i.4)
  %cmp.i.i124.i.i.4 = icmp slt i32 %call1.i.i123.i.i.4, 0
  br i1 %cmp.i.i124.i.i.4, label %do.end.i.i127.i.i.5, label %do.end.i.i127.i.i.4.dump_reg.exit131.i.i_crit_edge

do.end.i.i127.i.i.4.dump_reg.exit131.i.i_crit_edge: ; preds = %do.end.i.i127.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit131.i.i

do.end.i.i127.i.i.5:                              ; preds = %do.end.i.i127.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i120.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 5) #10
  %call5.i.i122.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i123.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %33, i8 noundef zeroext 6) #7
  br label %dump_reg.exit131.i.i

dump_reg.exit131.i.i:                             ; preds = %do.end.i.i127.i.i.5, %do.end.i.i127.i.i.4.dump_reg.exit131.i.i_crit_edge, %do.end.i.i127.i.i.3.dump_reg.exit131.i.i_crit_edge, %do.end.i.i127.i.i.2.dump_reg.exit131.i.i_crit_edge, %do.end.i.i127.i.i.1.dump_reg.exit131.i.i_crit_edge, %do.end.i.i127.i.i.dump_reg.exit131.i.i_crit_edge, %dump_reg.exit113.i.i.dump_reg.exit131.i.i_crit_edge
  %call1.lcssa.i.i128.i.i = phi i32 [ %call111.i.i115.i.i, %dump_reg.exit113.i.i.dump_reg.exit131.i.i_crit_edge ], [ %call1.i.i123.i.i, %do.end.i.i127.i.i.dump_reg.exit131.i.i_crit_edge ], [ %call1.i.i123.i.i.1, %do.end.i.i127.i.i.1.dump_reg.exit131.i.i_crit_edge ], [ %call1.i.i123.i.i.2, %do.end.i.i127.i.i.2.dump_reg.exit131.i.i_crit_edge ], [ %call1.i.i123.i.i.3, %do.end.i.i127.i.i.3.dump_reg.exit131.i.i_crit_edge ], [ %call1.i.i123.i.i.4, %do.end.i.i127.i.i.4.dump_reg.exit131.i.i_crit_edge ], [ %call1.i.i123.i.i.5, %do.end.i.i127.i.i.5 ]
  %call1.i130.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name40.i, i32 noundef 6, i32 noundef %call1.lcssa.i.i128.i.i) #10
  %34 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i.i133.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %35, i8 noundef zeroext 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i133.i.i)
  %cmp12.i.i134.i.i = icmp slt i32 %call111.i.i133.i.i, 0
  br i1 %cmp12.i.i134.i.i, label %do.end.i.i145.i.i, label %dump_reg.exit131.i.i.dump_reg.exit149.i.i_crit_edge

dump_reg.exit131.i.i.dump_reg.exit149.i.i_crit_edge: ; preds = %dump_reg.exit131.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit149.i.i

do.end.i.i145.i.i:                                ; preds = %dump_reg.exit131.i.i
  %call4.i.i138.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 0) #10
  %call5.i.i140.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i141.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %35, i8 noundef zeroext 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i141.i.i)
  %cmp.i.i142.i.i = icmp slt i32 %call1.i.i141.i.i, 0
  br i1 %cmp.i.i142.i.i, label %do.end.i.i145.i.i.1, label %do.end.i.i145.i.i.dump_reg.exit149.i.i_crit_edge

do.end.i.i145.i.i.dump_reg.exit149.i.i_crit_edge: ; preds = %do.end.i.i145.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit149.i.i

do.end.i.i145.i.i.1:                              ; preds = %do.end.i.i145.i.i
  %call4.i.i138.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 1) #10
  %call5.i.i140.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i141.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %35, i8 noundef zeroext 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i141.i.i.1)
  %cmp.i.i142.i.i.1 = icmp slt i32 %call1.i.i141.i.i.1, 0
  br i1 %cmp.i.i142.i.i.1, label %do.end.i.i145.i.i.2, label %do.end.i.i145.i.i.1.dump_reg.exit149.i.i_crit_edge

do.end.i.i145.i.i.1.dump_reg.exit149.i.i_crit_edge: ; preds = %do.end.i.i145.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit149.i.i

do.end.i.i145.i.i.2:                              ; preds = %do.end.i.i145.i.i.1
  %call4.i.i138.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 2) #10
  %call5.i.i140.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i141.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %35, i8 noundef zeroext 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i141.i.i.2)
  %cmp.i.i142.i.i.2 = icmp slt i32 %call1.i.i141.i.i.2, 0
  br i1 %cmp.i.i142.i.i.2, label %do.end.i.i145.i.i.3, label %do.end.i.i145.i.i.2.dump_reg.exit149.i.i_crit_edge

do.end.i.i145.i.i.2.dump_reg.exit149.i.i_crit_edge: ; preds = %do.end.i.i145.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit149.i.i

do.end.i.i145.i.i.3:                              ; preds = %do.end.i.i145.i.i.2
  %call4.i.i138.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 3) #10
  %call5.i.i140.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i141.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %35, i8 noundef zeroext 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i141.i.i.3)
  %cmp.i.i142.i.i.3 = icmp slt i32 %call1.i.i141.i.i.3, 0
  br i1 %cmp.i.i142.i.i.3, label %do.end.i.i145.i.i.4, label %do.end.i.i145.i.i.3.dump_reg.exit149.i.i_crit_edge

do.end.i.i145.i.i.3.dump_reg.exit149.i.i_crit_edge: ; preds = %do.end.i.i145.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit149.i.i

do.end.i.i145.i.i.4:                              ; preds = %do.end.i.i145.i.i.3
  %call4.i.i138.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 4) #10
  %call5.i.i140.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i141.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %35, i8 noundef zeroext 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i141.i.i.4)
  %cmp.i.i142.i.i.4 = icmp slt i32 %call1.i.i141.i.i.4, 0
  br i1 %cmp.i.i142.i.i.4, label %do.end.i.i145.i.i.5, label %do.end.i.i145.i.i.4.dump_reg.exit149.i.i_crit_edge

do.end.i.i145.i.i.4.dump_reg.exit149.i.i_crit_edge: ; preds = %do.end.i.i145.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit149.i.i

do.end.i.i145.i.i.5:                              ; preds = %do.end.i.i145.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i138.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 5) #10
  %call5.i.i140.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i141.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %35, i8 noundef zeroext 7) #7
  br label %dump_reg.exit149.i.i

dump_reg.exit149.i.i:                             ; preds = %do.end.i.i145.i.i.5, %do.end.i.i145.i.i.4.dump_reg.exit149.i.i_crit_edge, %do.end.i.i145.i.i.3.dump_reg.exit149.i.i_crit_edge, %do.end.i.i145.i.i.2.dump_reg.exit149.i.i_crit_edge, %do.end.i.i145.i.i.1.dump_reg.exit149.i.i_crit_edge, %do.end.i.i145.i.i.dump_reg.exit149.i.i_crit_edge, %dump_reg.exit131.i.i.dump_reg.exit149.i.i_crit_edge
  %call1.lcssa.i.i146.i.i = phi i32 [ %call111.i.i133.i.i, %dump_reg.exit131.i.i.dump_reg.exit149.i.i_crit_edge ], [ %call1.i.i141.i.i, %do.end.i.i145.i.i.dump_reg.exit149.i.i_crit_edge ], [ %call1.i.i141.i.i.1, %do.end.i.i145.i.i.1.dump_reg.exit149.i.i_crit_edge ], [ %call1.i.i141.i.i.2, %do.end.i.i145.i.i.2.dump_reg.exit149.i.i_crit_edge ], [ %call1.i.i141.i.i.3, %do.end.i.i145.i.i.3.dump_reg.exit149.i.i_crit_edge ], [ %call1.i.i141.i.i.4, %do.end.i.i145.i.i.4.dump_reg.exit149.i.i_crit_edge ], [ %call1.i.i141.i.i.5, %do.end.i.i145.i.i.5 ]
  %call1.i148.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name40.i, i32 noundef 7, i32 noundef %call1.lcssa.i.i146.i.i) #10
  %36 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i.i151.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %37, i8 noundef zeroext 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i151.i.i)
  %cmp12.i.i152.i.i = icmp slt i32 %call111.i.i151.i.i, 0
  br i1 %cmp12.i.i152.i.i, label %do.end.i.i163.i.i, label %dump_reg.exit149.i.i.dump_reg.exit167.i.i_crit_edge

dump_reg.exit149.i.i.dump_reg.exit167.i.i_crit_edge: ; preds = %dump_reg.exit149.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit167.i.i

do.end.i.i163.i.i:                                ; preds = %dump_reg.exit149.i.i
  %call4.i.i156.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 0) #10
  %call5.i.i158.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i159.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %37, i8 noundef zeroext 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i159.i.i)
  %cmp.i.i160.i.i = icmp slt i32 %call1.i.i159.i.i, 0
  br i1 %cmp.i.i160.i.i, label %do.end.i.i163.i.i.1, label %do.end.i.i163.i.i.dump_reg.exit167.i.i_crit_edge

do.end.i.i163.i.i.dump_reg.exit167.i.i_crit_edge: ; preds = %do.end.i.i163.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit167.i.i

do.end.i.i163.i.i.1:                              ; preds = %do.end.i.i163.i.i
  %call4.i.i156.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 1) #10
  %call5.i.i158.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i159.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %37, i8 noundef zeroext 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i159.i.i.1)
  %cmp.i.i160.i.i.1 = icmp slt i32 %call1.i.i159.i.i.1, 0
  br i1 %cmp.i.i160.i.i.1, label %do.end.i.i163.i.i.2, label %do.end.i.i163.i.i.1.dump_reg.exit167.i.i_crit_edge

do.end.i.i163.i.i.1.dump_reg.exit167.i.i_crit_edge: ; preds = %do.end.i.i163.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit167.i.i

do.end.i.i163.i.i.2:                              ; preds = %do.end.i.i163.i.i.1
  %call4.i.i156.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 2) #10
  %call5.i.i158.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i159.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %37, i8 noundef zeroext 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i159.i.i.2)
  %cmp.i.i160.i.i.2 = icmp slt i32 %call1.i.i159.i.i.2, 0
  br i1 %cmp.i.i160.i.i.2, label %do.end.i.i163.i.i.3, label %do.end.i.i163.i.i.2.dump_reg.exit167.i.i_crit_edge

do.end.i.i163.i.i.2.dump_reg.exit167.i.i_crit_edge: ; preds = %do.end.i.i163.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit167.i.i

do.end.i.i163.i.i.3:                              ; preds = %do.end.i.i163.i.i.2
  %call4.i.i156.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 3) #10
  %call5.i.i158.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i159.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %37, i8 noundef zeroext 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i159.i.i.3)
  %cmp.i.i160.i.i.3 = icmp slt i32 %call1.i.i159.i.i.3, 0
  br i1 %cmp.i.i160.i.i.3, label %do.end.i.i163.i.i.4, label %do.end.i.i163.i.i.3.dump_reg.exit167.i.i_crit_edge

do.end.i.i163.i.i.3.dump_reg.exit167.i.i_crit_edge: ; preds = %do.end.i.i163.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit167.i.i

do.end.i.i163.i.i.4:                              ; preds = %do.end.i.i163.i.i.3
  %call4.i.i156.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 4) #10
  %call5.i.i158.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i159.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %37, i8 noundef zeroext 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i159.i.i.4)
  %cmp.i.i160.i.i.4 = icmp slt i32 %call1.i.i159.i.i.4, 0
  br i1 %cmp.i.i160.i.i.4, label %do.end.i.i163.i.i.5, label %do.end.i.i163.i.i.4.dump_reg.exit167.i.i_crit_edge

do.end.i.i163.i.i.4.dump_reg.exit167.i.i_crit_edge: ; preds = %do.end.i.i163.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit167.i.i

do.end.i.i163.i.i.5:                              ; preds = %do.end.i.i163.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i156.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 5) #10
  %call5.i.i158.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i159.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %37, i8 noundef zeroext 8) #7
  br label %dump_reg.exit167.i.i

dump_reg.exit167.i.i:                             ; preds = %do.end.i.i163.i.i.5, %do.end.i.i163.i.i.4.dump_reg.exit167.i.i_crit_edge, %do.end.i.i163.i.i.3.dump_reg.exit167.i.i_crit_edge, %do.end.i.i163.i.i.2.dump_reg.exit167.i.i_crit_edge, %do.end.i.i163.i.i.1.dump_reg.exit167.i.i_crit_edge, %do.end.i.i163.i.i.dump_reg.exit167.i.i_crit_edge, %dump_reg.exit149.i.i.dump_reg.exit167.i.i_crit_edge
  %call1.lcssa.i.i164.i.i = phi i32 [ %call111.i.i151.i.i, %dump_reg.exit149.i.i.dump_reg.exit167.i.i_crit_edge ], [ %call1.i.i159.i.i, %do.end.i.i163.i.i.dump_reg.exit167.i.i_crit_edge ], [ %call1.i.i159.i.i.1, %do.end.i.i163.i.i.1.dump_reg.exit167.i.i_crit_edge ], [ %call1.i.i159.i.i.2, %do.end.i.i163.i.i.2.dump_reg.exit167.i.i_crit_edge ], [ %call1.i.i159.i.i.3, %do.end.i.i163.i.i.3.dump_reg.exit167.i.i_crit_edge ], [ %call1.i.i159.i.i.4, %do.end.i.i163.i.i.4.dump_reg.exit167.i.i_crit_edge ], [ %call1.i.i159.i.i.5, %do.end.i.i163.i.i.5 ]
  %call1.i166.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name40.i, i32 noundef 8, i32 noundef %call1.lcssa.i.i164.i.i) #10
  %38 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i.i169.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %39, i8 noundef zeroext 9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i169.i.i)
  %cmp12.i.i170.i.i = icmp slt i32 %call111.i.i169.i.i, 0
  br i1 %cmp12.i.i170.i.i, label %do.end.i.i181.i.i, label %dump_reg.exit167.i.i.dump_reg.exit185.i.i_crit_edge

dump_reg.exit167.i.i.dump_reg.exit185.i.i_crit_edge: ; preds = %dump_reg.exit167.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit185.i.i

do.end.i.i181.i.i:                                ; preds = %dump_reg.exit167.i.i
  %call4.i.i174.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 0) #10
  %call5.i.i176.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i177.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %39, i8 noundef zeroext 9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i177.i.i)
  %cmp.i.i178.i.i = icmp slt i32 %call1.i.i177.i.i, 0
  br i1 %cmp.i.i178.i.i, label %do.end.i.i181.i.i.1, label %do.end.i.i181.i.i.dump_reg.exit185.i.i_crit_edge

do.end.i.i181.i.i.dump_reg.exit185.i.i_crit_edge: ; preds = %do.end.i.i181.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit185.i.i

do.end.i.i181.i.i.1:                              ; preds = %do.end.i.i181.i.i
  %call4.i.i174.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 1) #10
  %call5.i.i176.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i177.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %39, i8 noundef zeroext 9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i177.i.i.1)
  %cmp.i.i178.i.i.1 = icmp slt i32 %call1.i.i177.i.i.1, 0
  br i1 %cmp.i.i178.i.i.1, label %do.end.i.i181.i.i.2, label %do.end.i.i181.i.i.1.dump_reg.exit185.i.i_crit_edge

do.end.i.i181.i.i.1.dump_reg.exit185.i.i_crit_edge: ; preds = %do.end.i.i181.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit185.i.i

do.end.i.i181.i.i.2:                              ; preds = %do.end.i.i181.i.i.1
  %call4.i.i174.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 2) #10
  %call5.i.i176.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i177.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %39, i8 noundef zeroext 9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i177.i.i.2)
  %cmp.i.i178.i.i.2 = icmp slt i32 %call1.i.i177.i.i.2, 0
  br i1 %cmp.i.i178.i.i.2, label %do.end.i.i181.i.i.3, label %do.end.i.i181.i.i.2.dump_reg.exit185.i.i_crit_edge

do.end.i.i181.i.i.2.dump_reg.exit185.i.i_crit_edge: ; preds = %do.end.i.i181.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit185.i.i

do.end.i.i181.i.i.3:                              ; preds = %do.end.i.i181.i.i.2
  %call4.i.i174.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 3) #10
  %call5.i.i176.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i177.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %39, i8 noundef zeroext 9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i177.i.i.3)
  %cmp.i.i178.i.i.3 = icmp slt i32 %call1.i.i177.i.i.3, 0
  br i1 %cmp.i.i178.i.i.3, label %do.end.i.i181.i.i.4, label %do.end.i.i181.i.i.3.dump_reg.exit185.i.i_crit_edge

do.end.i.i181.i.i.3.dump_reg.exit185.i.i_crit_edge: ; preds = %do.end.i.i181.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit185.i.i

do.end.i.i181.i.i.4:                              ; preds = %do.end.i.i181.i.i.3
  %call4.i.i174.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 4) #10
  %call5.i.i176.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i177.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %39, i8 noundef zeroext 9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i177.i.i.4)
  %cmp.i.i178.i.i.4 = icmp slt i32 %call1.i.i177.i.i.4, 0
  br i1 %cmp.i.i178.i.i.4, label %do.end.i.i181.i.i.5, label %do.end.i.i181.i.i.4.dump_reg.exit185.i.i_crit_edge

do.end.i.i181.i.i.4.dump_reg.exit185.i.i_crit_edge: ; preds = %do.end.i.i181.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit185.i.i

do.end.i.i181.i.i.5:                              ; preds = %do.end.i.i181.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i174.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 5) #10
  %call5.i.i176.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i177.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %39, i8 noundef zeroext 9) #7
  br label %dump_reg.exit185.i.i

dump_reg.exit185.i.i:                             ; preds = %do.end.i.i181.i.i.5, %do.end.i.i181.i.i.4.dump_reg.exit185.i.i_crit_edge, %do.end.i.i181.i.i.3.dump_reg.exit185.i.i_crit_edge, %do.end.i.i181.i.i.2.dump_reg.exit185.i.i_crit_edge, %do.end.i.i181.i.i.1.dump_reg.exit185.i.i_crit_edge, %do.end.i.i181.i.i.dump_reg.exit185.i.i_crit_edge, %dump_reg.exit167.i.i.dump_reg.exit185.i.i_crit_edge
  %call1.lcssa.i.i182.i.i = phi i32 [ %call111.i.i169.i.i, %dump_reg.exit167.i.i.dump_reg.exit185.i.i_crit_edge ], [ %call1.i.i177.i.i, %do.end.i.i181.i.i.dump_reg.exit185.i.i_crit_edge ], [ %call1.i.i177.i.i.1, %do.end.i.i181.i.i.1.dump_reg.exit185.i.i_crit_edge ], [ %call1.i.i177.i.i.2, %do.end.i.i181.i.i.2.dump_reg.exit185.i.i_crit_edge ], [ %call1.i.i177.i.i.3, %do.end.i.i181.i.i.3.dump_reg.exit185.i.i_crit_edge ], [ %call1.i.i177.i.i.4, %do.end.i.i181.i.i.4.dump_reg.exit185.i.i_crit_edge ], [ %call1.i.i177.i.i.5, %do.end.i.i181.i.i.5 ]
  %call1.i184.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name40.i, i32 noundef 9, i32 noundef %call1.lcssa.i.i182.i.i) #10
  %40 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i.i187.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %41, i8 noundef zeroext 10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i187.i.i)
  %cmp12.i.i188.i.i = icmp slt i32 %call111.i.i187.i.i, 0
  br i1 %cmp12.i.i188.i.i, label %do.end.i.i199.i.i, label %dump_reg.exit185.i.i.dump_reg.exit203.i.i_crit_edge

dump_reg.exit185.i.i.dump_reg.exit203.i.i_crit_edge: ; preds = %dump_reg.exit185.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit203.i.i

do.end.i.i199.i.i:                                ; preds = %dump_reg.exit185.i.i
  %call4.i.i192.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 0) #10
  %call5.i.i194.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i195.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %41, i8 noundef zeroext 10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i195.i.i)
  %cmp.i.i196.i.i = icmp slt i32 %call1.i.i195.i.i, 0
  br i1 %cmp.i.i196.i.i, label %do.end.i.i199.i.i.1, label %do.end.i.i199.i.i.dump_reg.exit203.i.i_crit_edge

do.end.i.i199.i.i.dump_reg.exit203.i.i_crit_edge: ; preds = %do.end.i.i199.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit203.i.i

do.end.i.i199.i.i.1:                              ; preds = %do.end.i.i199.i.i
  %call4.i.i192.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 1) #10
  %call5.i.i194.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i195.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %41, i8 noundef zeroext 10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i195.i.i.1)
  %cmp.i.i196.i.i.1 = icmp slt i32 %call1.i.i195.i.i.1, 0
  br i1 %cmp.i.i196.i.i.1, label %do.end.i.i199.i.i.2, label %do.end.i.i199.i.i.1.dump_reg.exit203.i.i_crit_edge

do.end.i.i199.i.i.1.dump_reg.exit203.i.i_crit_edge: ; preds = %do.end.i.i199.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit203.i.i

do.end.i.i199.i.i.2:                              ; preds = %do.end.i.i199.i.i.1
  %call4.i.i192.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 2) #10
  %call5.i.i194.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i195.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %41, i8 noundef zeroext 10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i195.i.i.2)
  %cmp.i.i196.i.i.2 = icmp slt i32 %call1.i.i195.i.i.2, 0
  br i1 %cmp.i.i196.i.i.2, label %do.end.i.i199.i.i.3, label %do.end.i.i199.i.i.2.dump_reg.exit203.i.i_crit_edge

do.end.i.i199.i.i.2.dump_reg.exit203.i.i_crit_edge: ; preds = %do.end.i.i199.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit203.i.i

do.end.i.i199.i.i.3:                              ; preds = %do.end.i.i199.i.i.2
  %call4.i.i192.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 3) #10
  %call5.i.i194.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i195.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %41, i8 noundef zeroext 10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i195.i.i.3)
  %cmp.i.i196.i.i.3 = icmp slt i32 %call1.i.i195.i.i.3, 0
  br i1 %cmp.i.i196.i.i.3, label %do.end.i.i199.i.i.4, label %do.end.i.i199.i.i.3.dump_reg.exit203.i.i_crit_edge

do.end.i.i199.i.i.3.dump_reg.exit203.i.i_crit_edge: ; preds = %do.end.i.i199.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit203.i.i

do.end.i.i199.i.i.4:                              ; preds = %do.end.i.i199.i.i.3
  %call4.i.i192.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 4) #10
  %call5.i.i194.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i195.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %41, i8 noundef zeroext 10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i195.i.i.4)
  %cmp.i.i196.i.i.4 = icmp slt i32 %call1.i.i195.i.i.4, 0
  br i1 %cmp.i.i196.i.i.4, label %do.end.i.i199.i.i.5, label %do.end.i.i199.i.i.4.dump_reg.exit203.i.i_crit_edge

do.end.i.i199.i.i.4.dump_reg.exit203.i.i_crit_edge: ; preds = %do.end.i.i199.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit203.i.i

do.end.i.i199.i.i.5:                              ; preds = %do.end.i.i199.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i192.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 5) #10
  %call5.i.i194.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i195.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %41, i8 noundef zeroext 10) #7
  br label %dump_reg.exit203.i.i

dump_reg.exit203.i.i:                             ; preds = %do.end.i.i199.i.i.5, %do.end.i.i199.i.i.4.dump_reg.exit203.i.i_crit_edge, %do.end.i.i199.i.i.3.dump_reg.exit203.i.i_crit_edge, %do.end.i.i199.i.i.2.dump_reg.exit203.i.i_crit_edge, %do.end.i.i199.i.i.1.dump_reg.exit203.i.i_crit_edge, %do.end.i.i199.i.i.dump_reg.exit203.i.i_crit_edge, %dump_reg.exit185.i.i.dump_reg.exit203.i.i_crit_edge
  %call1.lcssa.i.i200.i.i = phi i32 [ %call111.i.i187.i.i, %dump_reg.exit185.i.i.dump_reg.exit203.i.i_crit_edge ], [ %call1.i.i195.i.i, %do.end.i.i199.i.i.dump_reg.exit203.i.i_crit_edge ], [ %call1.i.i195.i.i.1, %do.end.i.i199.i.i.1.dump_reg.exit203.i.i_crit_edge ], [ %call1.i.i195.i.i.2, %do.end.i.i199.i.i.2.dump_reg.exit203.i.i_crit_edge ], [ %call1.i.i195.i.i.3, %do.end.i.i199.i.i.3.dump_reg.exit203.i.i_crit_edge ], [ %call1.i.i195.i.i.4, %do.end.i.i199.i.i.4.dump_reg.exit203.i.i_crit_edge ], [ %call1.i.i195.i.i.5, %do.end.i.i199.i.i.5 ]
  %call1.i202.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name40.i, i32 noundef 10, i32 noundef %call1.lcssa.i.i200.i.i) #10
  %42 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i.i205.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %43, i8 noundef zeroext 11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i205.i.i)
  %cmp12.i.i206.i.i = icmp slt i32 %call111.i.i205.i.i, 0
  br i1 %cmp12.i.i206.i.i, label %do.end.i.i217.i.i, label %dump_reg.exit203.i.i.dump_reg.exit221.i.i_crit_edge

dump_reg.exit203.i.i.dump_reg.exit221.i.i_crit_edge: ; preds = %dump_reg.exit203.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit221.i.i

do.end.i.i217.i.i:                                ; preds = %dump_reg.exit203.i.i
  %call4.i.i210.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 0) #10
  %call5.i.i212.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i213.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %43, i8 noundef zeroext 11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i213.i.i)
  %cmp.i.i214.i.i = icmp slt i32 %call1.i.i213.i.i, 0
  br i1 %cmp.i.i214.i.i, label %do.end.i.i217.i.i.1, label %do.end.i.i217.i.i.dump_reg.exit221.i.i_crit_edge

do.end.i.i217.i.i.dump_reg.exit221.i.i_crit_edge: ; preds = %do.end.i.i217.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit221.i.i

do.end.i.i217.i.i.1:                              ; preds = %do.end.i.i217.i.i
  %call4.i.i210.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 1) #10
  %call5.i.i212.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i213.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %43, i8 noundef zeroext 11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i213.i.i.1)
  %cmp.i.i214.i.i.1 = icmp slt i32 %call1.i.i213.i.i.1, 0
  br i1 %cmp.i.i214.i.i.1, label %do.end.i.i217.i.i.2, label %do.end.i.i217.i.i.1.dump_reg.exit221.i.i_crit_edge

do.end.i.i217.i.i.1.dump_reg.exit221.i.i_crit_edge: ; preds = %do.end.i.i217.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit221.i.i

do.end.i.i217.i.i.2:                              ; preds = %do.end.i.i217.i.i.1
  %call4.i.i210.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 2) #10
  %call5.i.i212.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i213.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %43, i8 noundef zeroext 11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i213.i.i.2)
  %cmp.i.i214.i.i.2 = icmp slt i32 %call1.i.i213.i.i.2, 0
  br i1 %cmp.i.i214.i.i.2, label %do.end.i.i217.i.i.3, label %do.end.i.i217.i.i.2.dump_reg.exit221.i.i_crit_edge

do.end.i.i217.i.i.2.dump_reg.exit221.i.i_crit_edge: ; preds = %do.end.i.i217.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit221.i.i

do.end.i.i217.i.i.3:                              ; preds = %do.end.i.i217.i.i.2
  %call4.i.i210.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 3) #10
  %call5.i.i212.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i213.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %43, i8 noundef zeroext 11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i213.i.i.3)
  %cmp.i.i214.i.i.3 = icmp slt i32 %call1.i.i213.i.i.3, 0
  br i1 %cmp.i.i214.i.i.3, label %do.end.i.i217.i.i.4, label %do.end.i.i217.i.i.3.dump_reg.exit221.i.i_crit_edge

do.end.i.i217.i.i.3.dump_reg.exit221.i.i_crit_edge: ; preds = %do.end.i.i217.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit221.i.i

do.end.i.i217.i.i.4:                              ; preds = %do.end.i.i217.i.i.3
  %call4.i.i210.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 4) #10
  %call5.i.i212.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i213.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %43, i8 noundef zeroext 11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i213.i.i.4)
  %cmp.i.i214.i.i.4 = icmp slt i32 %call1.i.i213.i.i.4, 0
  br i1 %cmp.i.i214.i.i.4, label %do.end.i.i217.i.i.5, label %do.end.i.i217.i.i.4.dump_reg.exit221.i.i_crit_edge

do.end.i.i217.i.i.4.dump_reg.exit221.i.i_crit_edge: ; preds = %do.end.i.i217.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit221.i.i

do.end.i.i217.i.i.5:                              ; preds = %do.end.i.i217.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i210.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 5) #10
  %call5.i.i212.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i213.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %43, i8 noundef zeroext 11) #7
  br label %dump_reg.exit221.i.i

dump_reg.exit221.i.i:                             ; preds = %do.end.i.i217.i.i.5, %do.end.i.i217.i.i.4.dump_reg.exit221.i.i_crit_edge, %do.end.i.i217.i.i.3.dump_reg.exit221.i.i_crit_edge, %do.end.i.i217.i.i.2.dump_reg.exit221.i.i_crit_edge, %do.end.i.i217.i.i.1.dump_reg.exit221.i.i_crit_edge, %do.end.i.i217.i.i.dump_reg.exit221.i.i_crit_edge, %dump_reg.exit203.i.i.dump_reg.exit221.i.i_crit_edge
  %call1.lcssa.i.i218.i.i = phi i32 [ %call111.i.i205.i.i, %dump_reg.exit203.i.i.dump_reg.exit221.i.i_crit_edge ], [ %call1.i.i213.i.i, %do.end.i.i217.i.i.dump_reg.exit221.i.i_crit_edge ], [ %call1.i.i213.i.i.1, %do.end.i.i217.i.i.1.dump_reg.exit221.i.i_crit_edge ], [ %call1.i.i213.i.i.2, %do.end.i.i217.i.i.2.dump_reg.exit221.i.i_crit_edge ], [ %call1.i.i213.i.i.3, %do.end.i.i217.i.i.3.dump_reg.exit221.i.i_crit_edge ], [ %call1.i.i213.i.i.4, %do.end.i.i217.i.i.4.dump_reg.exit221.i.i_crit_edge ], [ %call1.i.i213.i.i.5, %do.end.i.i217.i.i.5 ]
  %call1.i220.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name40.i, i32 noundef 11, i32 noundef %call1.lcssa.i.i218.i.i) #10
  %44 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i.i223.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %45, i8 noundef zeroext 12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i223.i.i)
  %cmp12.i.i224.i.i = icmp slt i32 %call111.i.i223.i.i, 0
  br i1 %cmp12.i.i224.i.i, label %do.end.i.i235.i.i, label %dump_reg.exit221.i.i.dump_reg.exit239.i.i_crit_edge

dump_reg.exit221.i.i.dump_reg.exit239.i.i_crit_edge: ; preds = %dump_reg.exit221.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit239.i.i

do.end.i.i235.i.i:                                ; preds = %dump_reg.exit221.i.i
  %call4.i.i228.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 0) #10
  %call5.i.i230.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i231.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %45, i8 noundef zeroext 12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i231.i.i)
  %cmp.i.i232.i.i = icmp slt i32 %call1.i.i231.i.i, 0
  br i1 %cmp.i.i232.i.i, label %do.end.i.i235.i.i.1, label %do.end.i.i235.i.i.dump_reg.exit239.i.i_crit_edge

do.end.i.i235.i.i.dump_reg.exit239.i.i_crit_edge: ; preds = %do.end.i.i235.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit239.i.i

do.end.i.i235.i.i.1:                              ; preds = %do.end.i.i235.i.i
  %call4.i.i228.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 1) #10
  %call5.i.i230.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i231.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %45, i8 noundef zeroext 12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i231.i.i.1)
  %cmp.i.i232.i.i.1 = icmp slt i32 %call1.i.i231.i.i.1, 0
  br i1 %cmp.i.i232.i.i.1, label %do.end.i.i235.i.i.2, label %do.end.i.i235.i.i.1.dump_reg.exit239.i.i_crit_edge

do.end.i.i235.i.i.1.dump_reg.exit239.i.i_crit_edge: ; preds = %do.end.i.i235.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit239.i.i

do.end.i.i235.i.i.2:                              ; preds = %do.end.i.i235.i.i.1
  %call4.i.i228.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 2) #10
  %call5.i.i230.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i231.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %45, i8 noundef zeroext 12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i231.i.i.2)
  %cmp.i.i232.i.i.2 = icmp slt i32 %call1.i.i231.i.i.2, 0
  br i1 %cmp.i.i232.i.i.2, label %do.end.i.i235.i.i.3, label %do.end.i.i235.i.i.2.dump_reg.exit239.i.i_crit_edge

do.end.i.i235.i.i.2.dump_reg.exit239.i.i_crit_edge: ; preds = %do.end.i.i235.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit239.i.i

do.end.i.i235.i.i.3:                              ; preds = %do.end.i.i235.i.i.2
  %call4.i.i228.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 3) #10
  %call5.i.i230.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i231.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %45, i8 noundef zeroext 12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i231.i.i.3)
  %cmp.i.i232.i.i.3 = icmp slt i32 %call1.i.i231.i.i.3, 0
  br i1 %cmp.i.i232.i.i.3, label %do.end.i.i235.i.i.4, label %do.end.i.i235.i.i.3.dump_reg.exit239.i.i_crit_edge

do.end.i.i235.i.i.3.dump_reg.exit239.i.i_crit_edge: ; preds = %do.end.i.i235.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit239.i.i

do.end.i.i235.i.i.4:                              ; preds = %do.end.i.i235.i.i.3
  %call4.i.i228.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 4) #10
  %call5.i.i230.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i231.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %45, i8 noundef zeroext 12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i231.i.i.4)
  %cmp.i.i232.i.i.4 = icmp slt i32 %call1.i.i231.i.i.4, 0
  br i1 %cmp.i.i232.i.i.4, label %do.end.i.i235.i.i.5, label %do.end.i.i235.i.i.4.dump_reg.exit239.i.i_crit_edge

do.end.i.i235.i.i.4.dump_reg.exit239.i.i_crit_edge: ; preds = %do.end.i.i235.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit239.i.i

do.end.i.i235.i.i.5:                              ; preds = %do.end.i.i235.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i228.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 5) #10
  %call5.i.i230.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i231.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %45, i8 noundef zeroext 12) #7
  br label %dump_reg.exit239.i.i

dump_reg.exit239.i.i:                             ; preds = %do.end.i.i235.i.i.5, %do.end.i.i235.i.i.4.dump_reg.exit239.i.i_crit_edge, %do.end.i.i235.i.i.3.dump_reg.exit239.i.i_crit_edge, %do.end.i.i235.i.i.2.dump_reg.exit239.i.i_crit_edge, %do.end.i.i235.i.i.1.dump_reg.exit239.i.i_crit_edge, %do.end.i.i235.i.i.dump_reg.exit239.i.i_crit_edge, %dump_reg.exit221.i.i.dump_reg.exit239.i.i_crit_edge
  %call1.lcssa.i.i236.i.i = phi i32 [ %call111.i.i223.i.i, %dump_reg.exit221.i.i.dump_reg.exit239.i.i_crit_edge ], [ %call1.i.i231.i.i, %do.end.i.i235.i.i.dump_reg.exit239.i.i_crit_edge ], [ %call1.i.i231.i.i.1, %do.end.i.i235.i.i.1.dump_reg.exit239.i.i_crit_edge ], [ %call1.i.i231.i.i.2, %do.end.i.i235.i.i.2.dump_reg.exit239.i.i_crit_edge ], [ %call1.i.i231.i.i.3, %do.end.i.i235.i.i.3.dump_reg.exit239.i.i_crit_edge ], [ %call1.i.i231.i.i.4, %do.end.i.i235.i.i.4.dump_reg.exit239.i.i_crit_edge ], [ %call1.i.i231.i.i.5, %do.end.i.i235.i.i.5 ]
  %call1.i238.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name40.i, i32 noundef 12, i32 noundef %call1.lcssa.i.i236.i.i) #10
  %46 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i.i241.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %47, i8 noundef zeroext 13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i241.i.i)
  %cmp12.i.i242.i.i = icmp slt i32 %call111.i.i241.i.i, 0
  br i1 %cmp12.i.i242.i.i, label %do.end.i.i253.i.i, label %dump_reg.exit239.i.i.dump_reg.exit257.i.i_crit_edge

dump_reg.exit239.i.i.dump_reg.exit257.i.i_crit_edge: ; preds = %dump_reg.exit239.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit257.i.i

do.end.i.i253.i.i:                                ; preds = %dump_reg.exit239.i.i
  %call4.i.i246.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 0) #10
  %call5.i.i248.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i249.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %47, i8 noundef zeroext 13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i249.i.i)
  %cmp.i.i250.i.i = icmp slt i32 %call1.i.i249.i.i, 0
  br i1 %cmp.i.i250.i.i, label %do.end.i.i253.i.i.1, label %do.end.i.i253.i.i.dump_reg.exit257.i.i_crit_edge

do.end.i.i253.i.i.dump_reg.exit257.i.i_crit_edge: ; preds = %do.end.i.i253.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit257.i.i

do.end.i.i253.i.i.1:                              ; preds = %do.end.i.i253.i.i
  %call4.i.i246.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 1) #10
  %call5.i.i248.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i249.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %47, i8 noundef zeroext 13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i249.i.i.1)
  %cmp.i.i250.i.i.1 = icmp slt i32 %call1.i.i249.i.i.1, 0
  br i1 %cmp.i.i250.i.i.1, label %do.end.i.i253.i.i.2, label %do.end.i.i253.i.i.1.dump_reg.exit257.i.i_crit_edge

do.end.i.i253.i.i.1.dump_reg.exit257.i.i_crit_edge: ; preds = %do.end.i.i253.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit257.i.i

do.end.i.i253.i.i.2:                              ; preds = %do.end.i.i253.i.i.1
  %call4.i.i246.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 2) #10
  %call5.i.i248.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i249.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %47, i8 noundef zeroext 13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i249.i.i.2)
  %cmp.i.i250.i.i.2 = icmp slt i32 %call1.i.i249.i.i.2, 0
  br i1 %cmp.i.i250.i.i.2, label %do.end.i.i253.i.i.3, label %do.end.i.i253.i.i.2.dump_reg.exit257.i.i_crit_edge

do.end.i.i253.i.i.2.dump_reg.exit257.i.i_crit_edge: ; preds = %do.end.i.i253.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit257.i.i

do.end.i.i253.i.i.3:                              ; preds = %do.end.i.i253.i.i.2
  %call4.i.i246.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 3) #10
  %call5.i.i248.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i249.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %47, i8 noundef zeroext 13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i249.i.i.3)
  %cmp.i.i250.i.i.3 = icmp slt i32 %call1.i.i249.i.i.3, 0
  br i1 %cmp.i.i250.i.i.3, label %do.end.i.i253.i.i.4, label %do.end.i.i253.i.i.3.dump_reg.exit257.i.i_crit_edge

do.end.i.i253.i.i.3.dump_reg.exit257.i.i_crit_edge: ; preds = %do.end.i.i253.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit257.i.i

do.end.i.i253.i.i.4:                              ; preds = %do.end.i.i253.i.i.3
  %call4.i.i246.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 4) #10
  %call5.i.i248.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i249.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %47, i8 noundef zeroext 13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i249.i.i.4)
  %cmp.i.i250.i.i.4 = icmp slt i32 %call1.i.i249.i.i.4, 0
  br i1 %cmp.i.i250.i.i.4, label %do.end.i.i253.i.i.5, label %do.end.i.i253.i.i.4.dump_reg.exit257.i.i_crit_edge

do.end.i.i253.i.i.4.dump_reg.exit257.i.i_crit_edge: ; preds = %do.end.i.i253.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit257.i.i

do.end.i.i253.i.i.5:                              ; preds = %do.end.i.i253.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i246.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 5) #10
  %call5.i.i248.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i249.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %47, i8 noundef zeroext 13) #7
  br label %dump_reg.exit257.i.i

dump_reg.exit257.i.i:                             ; preds = %do.end.i.i253.i.i.5, %do.end.i.i253.i.i.4.dump_reg.exit257.i.i_crit_edge, %do.end.i.i253.i.i.3.dump_reg.exit257.i.i_crit_edge, %do.end.i.i253.i.i.2.dump_reg.exit257.i.i_crit_edge, %do.end.i.i253.i.i.1.dump_reg.exit257.i.i_crit_edge, %do.end.i.i253.i.i.dump_reg.exit257.i.i_crit_edge, %dump_reg.exit239.i.i.dump_reg.exit257.i.i_crit_edge
  %call1.lcssa.i.i254.i.i = phi i32 [ %call111.i.i241.i.i, %dump_reg.exit239.i.i.dump_reg.exit257.i.i_crit_edge ], [ %call1.i.i249.i.i, %do.end.i.i253.i.i.dump_reg.exit257.i.i_crit_edge ], [ %call1.i.i249.i.i.1, %do.end.i.i253.i.i.1.dump_reg.exit257.i.i_crit_edge ], [ %call1.i.i249.i.i.2, %do.end.i.i253.i.i.2.dump_reg.exit257.i.i_crit_edge ], [ %call1.i.i249.i.i.3, %do.end.i.i253.i.i.3.dump_reg.exit257.i.i_crit_edge ], [ %call1.i.i249.i.i.4, %do.end.i.i253.i.i.4.dump_reg.exit257.i.i_crit_edge ], [ %call1.i.i249.i.i.5, %do.end.i.i253.i.i.5 ]
  %call1.i256.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name40.i, i32 noundef 13, i32 noundef %call1.lcssa.i.i254.i.i) #10
  %48 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i.i259.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %49, i8 noundef zeroext 14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i259.i.i)
  %cmp12.i.i260.i.i = icmp slt i32 %call111.i.i259.i.i, 0
  br i1 %cmp12.i.i260.i.i, label %do.end.i.i271.i.i, label %dump_reg.exit257.i.i.dump_reg.exit275.i.i_crit_edge

dump_reg.exit257.i.i.dump_reg.exit275.i.i_crit_edge: ; preds = %dump_reg.exit257.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit275.i.i

do.end.i.i271.i.i:                                ; preds = %dump_reg.exit257.i.i
  %call4.i.i264.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 0) #10
  %call5.i.i266.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i267.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %49, i8 noundef zeroext 14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i267.i.i)
  %cmp.i.i268.i.i = icmp slt i32 %call1.i.i267.i.i, 0
  br i1 %cmp.i.i268.i.i, label %do.end.i.i271.i.i.1, label %do.end.i.i271.i.i.dump_reg.exit275.i.i_crit_edge

do.end.i.i271.i.i.dump_reg.exit275.i.i_crit_edge: ; preds = %do.end.i.i271.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit275.i.i

do.end.i.i271.i.i.1:                              ; preds = %do.end.i.i271.i.i
  %call4.i.i264.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 1) #10
  %call5.i.i266.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i267.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %49, i8 noundef zeroext 14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i267.i.i.1)
  %cmp.i.i268.i.i.1 = icmp slt i32 %call1.i.i267.i.i.1, 0
  br i1 %cmp.i.i268.i.i.1, label %do.end.i.i271.i.i.2, label %do.end.i.i271.i.i.1.dump_reg.exit275.i.i_crit_edge

do.end.i.i271.i.i.1.dump_reg.exit275.i.i_crit_edge: ; preds = %do.end.i.i271.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit275.i.i

do.end.i.i271.i.i.2:                              ; preds = %do.end.i.i271.i.i.1
  %call4.i.i264.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 2) #10
  %call5.i.i266.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i267.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %49, i8 noundef zeroext 14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i267.i.i.2)
  %cmp.i.i268.i.i.2 = icmp slt i32 %call1.i.i267.i.i.2, 0
  br i1 %cmp.i.i268.i.i.2, label %do.end.i.i271.i.i.3, label %do.end.i.i271.i.i.2.dump_reg.exit275.i.i_crit_edge

do.end.i.i271.i.i.2.dump_reg.exit275.i.i_crit_edge: ; preds = %do.end.i.i271.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit275.i.i

do.end.i.i271.i.i.3:                              ; preds = %do.end.i.i271.i.i.2
  %call4.i.i264.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 3) #10
  %call5.i.i266.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i267.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %49, i8 noundef zeroext 14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i267.i.i.3)
  %cmp.i.i268.i.i.3 = icmp slt i32 %call1.i.i267.i.i.3, 0
  br i1 %cmp.i.i268.i.i.3, label %do.end.i.i271.i.i.4, label %do.end.i.i271.i.i.3.dump_reg.exit275.i.i_crit_edge

do.end.i.i271.i.i.3.dump_reg.exit275.i.i_crit_edge: ; preds = %do.end.i.i271.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit275.i.i

do.end.i.i271.i.i.4:                              ; preds = %do.end.i.i271.i.i.3
  %call4.i.i264.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 4) #10
  %call5.i.i266.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i267.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %49, i8 noundef zeroext 14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i267.i.i.4)
  %cmp.i.i268.i.i.4 = icmp slt i32 %call1.i.i267.i.i.4, 0
  br i1 %cmp.i.i268.i.i.4, label %do.end.i.i271.i.i.5, label %do.end.i.i271.i.i.4.dump_reg.exit275.i.i_crit_edge

do.end.i.i271.i.i.4.dump_reg.exit275.i.i_crit_edge: ; preds = %do.end.i.i271.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit275.i.i

do.end.i.i271.i.i.5:                              ; preds = %do.end.i.i271.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i264.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 5) #10
  %call5.i.i266.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i267.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %49, i8 noundef zeroext 14) #7
  br label %dump_reg.exit275.i.i

dump_reg.exit275.i.i:                             ; preds = %do.end.i.i271.i.i.5, %do.end.i.i271.i.i.4.dump_reg.exit275.i.i_crit_edge, %do.end.i.i271.i.i.3.dump_reg.exit275.i.i_crit_edge, %do.end.i.i271.i.i.2.dump_reg.exit275.i.i_crit_edge, %do.end.i.i271.i.i.1.dump_reg.exit275.i.i_crit_edge, %do.end.i.i271.i.i.dump_reg.exit275.i.i_crit_edge, %dump_reg.exit257.i.i.dump_reg.exit275.i.i_crit_edge
  %call1.lcssa.i.i272.i.i = phi i32 [ %call111.i.i259.i.i, %dump_reg.exit257.i.i.dump_reg.exit275.i.i_crit_edge ], [ %call1.i.i267.i.i, %do.end.i.i271.i.i.dump_reg.exit275.i.i_crit_edge ], [ %call1.i.i267.i.i.1, %do.end.i.i271.i.i.1.dump_reg.exit275.i.i_crit_edge ], [ %call1.i.i267.i.i.2, %do.end.i.i271.i.i.2.dump_reg.exit275.i.i_crit_edge ], [ %call1.i.i267.i.i.3, %do.end.i.i271.i.i.3.dump_reg.exit275.i.i_crit_edge ], [ %call1.i.i267.i.i.4, %do.end.i.i271.i.i.4.dump_reg.exit275.i.i_crit_edge ], [ %call1.i.i267.i.i.5, %do.end.i.i271.i.i.5 ]
  %call1.i274.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name40.i, i32 noundef 14, i32 noundef %call1.lcssa.i.i272.i.i) #10
  %50 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i.i277.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %51, i8 noundef zeroext 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i277.i.i)
  %cmp12.i.i278.i.i = icmp slt i32 %call111.i.i277.i.i, 0
  br i1 %cmp12.i.i278.i.i, label %do.end.i.i289.i.i, label %dump_reg.exit275.i.i.dump_reg.exit293.i.i_crit_edge

dump_reg.exit275.i.i.dump_reg.exit293.i.i_crit_edge: ; preds = %dump_reg.exit275.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit293.i.i

do.end.i.i289.i.i:                                ; preds = %dump_reg.exit275.i.i
  %call4.i.i282.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 0) #10
  %call5.i.i284.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i285.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %51, i8 noundef zeroext 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i285.i.i)
  %cmp.i.i286.i.i = icmp slt i32 %call1.i.i285.i.i, 0
  br i1 %cmp.i.i286.i.i, label %do.end.i.i289.i.i.1, label %do.end.i.i289.i.i.dump_reg.exit293.i.i_crit_edge

do.end.i.i289.i.i.dump_reg.exit293.i.i_crit_edge: ; preds = %do.end.i.i289.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit293.i.i

do.end.i.i289.i.i.1:                              ; preds = %do.end.i.i289.i.i
  %call4.i.i282.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 1) #10
  %call5.i.i284.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i285.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %51, i8 noundef zeroext 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i285.i.i.1)
  %cmp.i.i286.i.i.1 = icmp slt i32 %call1.i.i285.i.i.1, 0
  br i1 %cmp.i.i286.i.i.1, label %do.end.i.i289.i.i.2, label %do.end.i.i289.i.i.1.dump_reg.exit293.i.i_crit_edge

do.end.i.i289.i.i.1.dump_reg.exit293.i.i_crit_edge: ; preds = %do.end.i.i289.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit293.i.i

do.end.i.i289.i.i.2:                              ; preds = %do.end.i.i289.i.i.1
  %call4.i.i282.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 2) #10
  %call5.i.i284.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i285.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %51, i8 noundef zeroext 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i285.i.i.2)
  %cmp.i.i286.i.i.2 = icmp slt i32 %call1.i.i285.i.i.2, 0
  br i1 %cmp.i.i286.i.i.2, label %do.end.i.i289.i.i.3, label %do.end.i.i289.i.i.2.dump_reg.exit293.i.i_crit_edge

do.end.i.i289.i.i.2.dump_reg.exit293.i.i_crit_edge: ; preds = %do.end.i.i289.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit293.i.i

do.end.i.i289.i.i.3:                              ; preds = %do.end.i.i289.i.i.2
  %call4.i.i282.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 3) #10
  %call5.i.i284.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i285.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %51, i8 noundef zeroext 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i285.i.i.3)
  %cmp.i.i286.i.i.3 = icmp slt i32 %call1.i.i285.i.i.3, 0
  br i1 %cmp.i.i286.i.i.3, label %do.end.i.i289.i.i.4, label %do.end.i.i289.i.i.3.dump_reg.exit293.i.i_crit_edge

do.end.i.i289.i.i.3.dump_reg.exit293.i.i_crit_edge: ; preds = %do.end.i.i289.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit293.i.i

do.end.i.i289.i.i.4:                              ; preds = %do.end.i.i289.i.i.3
  %call4.i.i282.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 4) #10
  %call5.i.i284.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i285.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %51, i8 noundef zeroext 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i285.i.i.4)
  %cmp.i.i286.i.i.4 = icmp slt i32 %call1.i.i285.i.i.4, 0
  br i1 %cmp.i.i286.i.i.4, label %do.end.i.i289.i.i.5, label %do.end.i.i289.i.i.4.dump_reg.exit293.i.i_crit_edge

do.end.i.i289.i.i.4.dump_reg.exit293.i.i_crit_edge: ; preds = %do.end.i.i289.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit293.i.i

do.end.i.i289.i.i.5:                              ; preds = %do.end.i.i289.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i282.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 5) #10
  %call5.i.i284.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i285.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %51, i8 noundef zeroext 16) #7
  br label %dump_reg.exit293.i.i

dump_reg.exit293.i.i:                             ; preds = %do.end.i.i289.i.i.5, %do.end.i.i289.i.i.4.dump_reg.exit293.i.i_crit_edge, %do.end.i.i289.i.i.3.dump_reg.exit293.i.i_crit_edge, %do.end.i.i289.i.i.2.dump_reg.exit293.i.i_crit_edge, %do.end.i.i289.i.i.1.dump_reg.exit293.i.i_crit_edge, %do.end.i.i289.i.i.dump_reg.exit293.i.i_crit_edge, %dump_reg.exit275.i.i.dump_reg.exit293.i.i_crit_edge
  %call1.lcssa.i.i290.i.i = phi i32 [ %call111.i.i277.i.i, %dump_reg.exit275.i.i.dump_reg.exit293.i.i_crit_edge ], [ %call1.i.i285.i.i, %do.end.i.i289.i.i.dump_reg.exit293.i.i_crit_edge ], [ %call1.i.i285.i.i.1, %do.end.i.i289.i.i.1.dump_reg.exit293.i.i_crit_edge ], [ %call1.i.i285.i.i.2, %do.end.i.i289.i.i.2.dump_reg.exit293.i.i_crit_edge ], [ %call1.i.i285.i.i.3, %do.end.i.i289.i.i.3.dump_reg.exit293.i.i_crit_edge ], [ %call1.i.i285.i.i.4, %do.end.i.i289.i.i.4.dump_reg.exit293.i.i_crit_edge ], [ %call1.i.i285.i.i.5, %do.end.i.i289.i.i.5 ]
  %call1.i292.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name40.i, i32 noundef 16, i32 noundef %call1.lcssa.i.i290.i.i) #10
  %52 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i.i295.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %53, i8 noundef zeroext 17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i295.i.i)
  %cmp12.i.i296.i.i = icmp slt i32 %call111.i.i295.i.i, 0
  br i1 %cmp12.i.i296.i.i, label %do.end.i.i307.i.i, label %dump_reg.exit293.i.i.dump_reg.exit311.i.i_crit_edge

dump_reg.exit293.i.i.dump_reg.exit311.i.i_crit_edge: ; preds = %dump_reg.exit293.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit311.i.i

do.end.i.i307.i.i:                                ; preds = %dump_reg.exit293.i.i
  %call4.i.i300.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 0) #10
  %call5.i.i302.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i303.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %53, i8 noundef zeroext 17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i303.i.i)
  %cmp.i.i304.i.i = icmp slt i32 %call1.i.i303.i.i, 0
  br i1 %cmp.i.i304.i.i, label %do.end.i.i307.i.i.1, label %do.end.i.i307.i.i.dump_reg.exit311.i.i_crit_edge

do.end.i.i307.i.i.dump_reg.exit311.i.i_crit_edge: ; preds = %do.end.i.i307.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit311.i.i

do.end.i.i307.i.i.1:                              ; preds = %do.end.i.i307.i.i
  %call4.i.i300.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 1) #10
  %call5.i.i302.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i303.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %53, i8 noundef zeroext 17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i303.i.i.1)
  %cmp.i.i304.i.i.1 = icmp slt i32 %call1.i.i303.i.i.1, 0
  br i1 %cmp.i.i304.i.i.1, label %do.end.i.i307.i.i.2, label %do.end.i.i307.i.i.1.dump_reg.exit311.i.i_crit_edge

do.end.i.i307.i.i.1.dump_reg.exit311.i.i_crit_edge: ; preds = %do.end.i.i307.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit311.i.i

do.end.i.i307.i.i.2:                              ; preds = %do.end.i.i307.i.i.1
  %call4.i.i300.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 2) #10
  %call5.i.i302.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i303.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %53, i8 noundef zeroext 17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i303.i.i.2)
  %cmp.i.i304.i.i.2 = icmp slt i32 %call1.i.i303.i.i.2, 0
  br i1 %cmp.i.i304.i.i.2, label %do.end.i.i307.i.i.3, label %do.end.i.i307.i.i.2.dump_reg.exit311.i.i_crit_edge

do.end.i.i307.i.i.2.dump_reg.exit311.i.i_crit_edge: ; preds = %do.end.i.i307.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit311.i.i

do.end.i.i307.i.i.3:                              ; preds = %do.end.i.i307.i.i.2
  %call4.i.i300.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 3) #10
  %call5.i.i302.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i303.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %53, i8 noundef zeroext 17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i303.i.i.3)
  %cmp.i.i304.i.i.3 = icmp slt i32 %call1.i.i303.i.i.3, 0
  br i1 %cmp.i.i304.i.i.3, label %do.end.i.i307.i.i.4, label %do.end.i.i307.i.i.3.dump_reg.exit311.i.i_crit_edge

do.end.i.i307.i.i.3.dump_reg.exit311.i.i_crit_edge: ; preds = %do.end.i.i307.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit311.i.i

do.end.i.i307.i.i.4:                              ; preds = %do.end.i.i307.i.i.3
  %call4.i.i300.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 4) #10
  %call5.i.i302.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i303.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %53, i8 noundef zeroext 17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i303.i.i.4)
  %cmp.i.i304.i.i.4 = icmp slt i32 %call1.i.i303.i.i.4, 0
  br i1 %cmp.i.i304.i.i.4, label %do.end.i.i307.i.i.5, label %do.end.i.i307.i.i.4.dump_reg.exit311.i.i_crit_edge

do.end.i.i307.i.i.4.dump_reg.exit311.i.i_crit_edge: ; preds = %do.end.i.i307.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit311.i.i

do.end.i.i307.i.i.5:                              ; preds = %do.end.i.i307.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i300.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 5) #10
  %call5.i.i302.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i303.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %53, i8 noundef zeroext 17) #7
  br label %dump_reg.exit311.i.i

dump_reg.exit311.i.i:                             ; preds = %do.end.i.i307.i.i.5, %do.end.i.i307.i.i.4.dump_reg.exit311.i.i_crit_edge, %do.end.i.i307.i.i.3.dump_reg.exit311.i.i_crit_edge, %do.end.i.i307.i.i.2.dump_reg.exit311.i.i_crit_edge, %do.end.i.i307.i.i.1.dump_reg.exit311.i.i_crit_edge, %do.end.i.i307.i.i.dump_reg.exit311.i.i_crit_edge, %dump_reg.exit293.i.i.dump_reg.exit311.i.i_crit_edge
  %call1.lcssa.i.i308.i.i = phi i32 [ %call111.i.i295.i.i, %dump_reg.exit293.i.i.dump_reg.exit311.i.i_crit_edge ], [ %call1.i.i303.i.i, %do.end.i.i307.i.i.dump_reg.exit311.i.i_crit_edge ], [ %call1.i.i303.i.i.1, %do.end.i.i307.i.i.1.dump_reg.exit311.i.i_crit_edge ], [ %call1.i.i303.i.i.2, %do.end.i.i307.i.i.2.dump_reg.exit311.i.i_crit_edge ], [ %call1.i.i303.i.i.3, %do.end.i.i307.i.i.3.dump_reg.exit311.i.i_crit_edge ], [ %call1.i.i303.i.i.4, %do.end.i.i307.i.i.4.dump_reg.exit311.i.i_crit_edge ], [ %call1.i.i303.i.i.5, %do.end.i.i307.i.i.5 ]
  %call1.i310.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name40.i, i32 noundef 17, i32 noundef %call1.lcssa.i.i308.i.i) #10
  %54 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i.i313.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %55, i8 noundef zeroext 18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i313.i.i)
  %cmp12.i.i314.i.i = icmp slt i32 %call111.i.i313.i.i, 0
  br i1 %cmp12.i.i314.i.i, label %do.end.i.i325.i.i, label %dump_reg.exit311.i.i.dump_reg.exit329.i.i_crit_edge

dump_reg.exit311.i.i.dump_reg.exit329.i.i_crit_edge: ; preds = %dump_reg.exit311.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit329.i.i

do.end.i.i325.i.i:                                ; preds = %dump_reg.exit311.i.i
  %call4.i.i318.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 0) #10
  %call5.i.i320.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i321.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %55, i8 noundef zeroext 18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i321.i.i)
  %cmp.i.i322.i.i = icmp slt i32 %call1.i.i321.i.i, 0
  br i1 %cmp.i.i322.i.i, label %do.end.i.i325.i.i.1, label %do.end.i.i325.i.i.dump_reg.exit329.i.i_crit_edge

do.end.i.i325.i.i.dump_reg.exit329.i.i_crit_edge: ; preds = %do.end.i.i325.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit329.i.i

do.end.i.i325.i.i.1:                              ; preds = %do.end.i.i325.i.i
  %call4.i.i318.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 1) #10
  %call5.i.i320.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i321.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %55, i8 noundef zeroext 18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i321.i.i.1)
  %cmp.i.i322.i.i.1 = icmp slt i32 %call1.i.i321.i.i.1, 0
  br i1 %cmp.i.i322.i.i.1, label %do.end.i.i325.i.i.2, label %do.end.i.i325.i.i.1.dump_reg.exit329.i.i_crit_edge

do.end.i.i325.i.i.1.dump_reg.exit329.i.i_crit_edge: ; preds = %do.end.i.i325.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit329.i.i

do.end.i.i325.i.i.2:                              ; preds = %do.end.i.i325.i.i.1
  %call4.i.i318.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 2) #10
  %call5.i.i320.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i321.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %55, i8 noundef zeroext 18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i321.i.i.2)
  %cmp.i.i322.i.i.2 = icmp slt i32 %call1.i.i321.i.i.2, 0
  br i1 %cmp.i.i322.i.i.2, label %do.end.i.i325.i.i.3, label %do.end.i.i325.i.i.2.dump_reg.exit329.i.i_crit_edge

do.end.i.i325.i.i.2.dump_reg.exit329.i.i_crit_edge: ; preds = %do.end.i.i325.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit329.i.i

do.end.i.i325.i.i.3:                              ; preds = %do.end.i.i325.i.i.2
  %call4.i.i318.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 3) #10
  %call5.i.i320.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i321.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %55, i8 noundef zeroext 18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i321.i.i.3)
  %cmp.i.i322.i.i.3 = icmp slt i32 %call1.i.i321.i.i.3, 0
  br i1 %cmp.i.i322.i.i.3, label %do.end.i.i325.i.i.4, label %do.end.i.i325.i.i.3.dump_reg.exit329.i.i_crit_edge

do.end.i.i325.i.i.3.dump_reg.exit329.i.i_crit_edge: ; preds = %do.end.i.i325.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit329.i.i

do.end.i.i325.i.i.4:                              ; preds = %do.end.i.i325.i.i.3
  %call4.i.i318.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 4) #10
  %call5.i.i320.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i321.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %55, i8 noundef zeroext 18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i321.i.i.4)
  %cmp.i.i322.i.i.4 = icmp slt i32 %call1.i.i321.i.i.4, 0
  br i1 %cmp.i.i322.i.i.4, label %do.end.i.i325.i.i.5, label %do.end.i.i325.i.i.4.dump_reg.exit329.i.i_crit_edge

do.end.i.i325.i.i.4.dump_reg.exit329.i.i_crit_edge: ; preds = %do.end.i.i325.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit329.i.i

do.end.i.i325.i.i.5:                              ; preds = %do.end.i.i325.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i318.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 5) #10
  %call5.i.i320.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i321.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %55, i8 noundef zeroext 18) #7
  br label %dump_reg.exit329.i.i

dump_reg.exit329.i.i:                             ; preds = %do.end.i.i325.i.i.5, %do.end.i.i325.i.i.4.dump_reg.exit329.i.i_crit_edge, %do.end.i.i325.i.i.3.dump_reg.exit329.i.i_crit_edge, %do.end.i.i325.i.i.2.dump_reg.exit329.i.i_crit_edge, %do.end.i.i325.i.i.1.dump_reg.exit329.i.i_crit_edge, %do.end.i.i325.i.i.dump_reg.exit329.i.i_crit_edge, %dump_reg.exit311.i.i.dump_reg.exit329.i.i_crit_edge
  %call1.lcssa.i.i326.i.i = phi i32 [ %call111.i.i313.i.i, %dump_reg.exit311.i.i.dump_reg.exit329.i.i_crit_edge ], [ %call1.i.i321.i.i, %do.end.i.i325.i.i.dump_reg.exit329.i.i_crit_edge ], [ %call1.i.i321.i.i.1, %do.end.i.i325.i.i.1.dump_reg.exit329.i.i_crit_edge ], [ %call1.i.i321.i.i.2, %do.end.i.i325.i.i.2.dump_reg.exit329.i.i_crit_edge ], [ %call1.i.i321.i.i.3, %do.end.i.i325.i.i.3.dump_reg.exit329.i.i_crit_edge ], [ %call1.i.i321.i.i.4, %do.end.i.i325.i.i.4.dump_reg.exit329.i.i_crit_edge ], [ %call1.i.i321.i.i.5, %do.end.i.i325.i.i.5 ]
  %call1.i328.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name40.i, i32 noundef 18, i32 noundef %call1.lcssa.i.i326.i.i) #10
  %56 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i.i331.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %57, i8 noundef zeroext 20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i331.i.i)
  %cmp12.i.i332.i.i = icmp slt i32 %call111.i.i331.i.i, 0
  br i1 %cmp12.i.i332.i.i, label %do.end.i.i343.i.i, label %dump_reg.exit329.i.i.dump_reg.exit347.i.i_crit_edge

dump_reg.exit329.i.i.dump_reg.exit347.i.i_crit_edge: ; preds = %dump_reg.exit329.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit347.i.i

do.end.i.i343.i.i:                                ; preds = %dump_reg.exit329.i.i
  %call4.i.i336.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 0) #10
  %call5.i.i338.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i339.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %57, i8 noundef zeroext 20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i339.i.i)
  %cmp.i.i340.i.i = icmp slt i32 %call1.i.i339.i.i, 0
  br i1 %cmp.i.i340.i.i, label %do.end.i.i343.i.i.1, label %do.end.i.i343.i.i.dump_reg.exit347.i.i_crit_edge

do.end.i.i343.i.i.dump_reg.exit347.i.i_crit_edge: ; preds = %do.end.i.i343.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit347.i.i

do.end.i.i343.i.i.1:                              ; preds = %do.end.i.i343.i.i
  %call4.i.i336.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 1) #10
  %call5.i.i338.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i339.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %57, i8 noundef zeroext 20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i339.i.i.1)
  %cmp.i.i340.i.i.1 = icmp slt i32 %call1.i.i339.i.i.1, 0
  br i1 %cmp.i.i340.i.i.1, label %do.end.i.i343.i.i.2, label %do.end.i.i343.i.i.1.dump_reg.exit347.i.i_crit_edge

do.end.i.i343.i.i.1.dump_reg.exit347.i.i_crit_edge: ; preds = %do.end.i.i343.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit347.i.i

do.end.i.i343.i.i.2:                              ; preds = %do.end.i.i343.i.i.1
  %call4.i.i336.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 2) #10
  %call5.i.i338.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i339.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %57, i8 noundef zeroext 20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i339.i.i.2)
  %cmp.i.i340.i.i.2 = icmp slt i32 %call1.i.i339.i.i.2, 0
  br i1 %cmp.i.i340.i.i.2, label %do.end.i.i343.i.i.3, label %do.end.i.i343.i.i.2.dump_reg.exit347.i.i_crit_edge

do.end.i.i343.i.i.2.dump_reg.exit347.i.i_crit_edge: ; preds = %do.end.i.i343.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit347.i.i

do.end.i.i343.i.i.3:                              ; preds = %do.end.i.i343.i.i.2
  %call4.i.i336.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 3) #10
  %call5.i.i338.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i339.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %57, i8 noundef zeroext 20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i339.i.i.3)
  %cmp.i.i340.i.i.3 = icmp slt i32 %call1.i.i339.i.i.3, 0
  br i1 %cmp.i.i340.i.i.3, label %do.end.i.i343.i.i.4, label %do.end.i.i343.i.i.3.dump_reg.exit347.i.i_crit_edge

do.end.i.i343.i.i.3.dump_reg.exit347.i.i_crit_edge: ; preds = %do.end.i.i343.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit347.i.i

do.end.i.i343.i.i.4:                              ; preds = %do.end.i.i343.i.i.3
  %call4.i.i336.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 4) #10
  %call5.i.i338.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i339.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %57, i8 noundef zeroext 20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i339.i.i.4)
  %cmp.i.i340.i.i.4 = icmp slt i32 %call1.i.i339.i.i.4, 0
  br i1 %cmp.i.i340.i.i.4, label %do.end.i.i343.i.i.5, label %do.end.i.i343.i.i.4.dump_reg.exit347.i.i_crit_edge

do.end.i.i343.i.i.4.dump_reg.exit347.i.i_crit_edge: ; preds = %do.end.i.i343.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit347.i.i

do.end.i.i343.i.i.5:                              ; preds = %do.end.i.i343.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i336.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 5) #10
  %call5.i.i338.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i339.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %57, i8 noundef zeroext 20) #7
  br label %dump_reg.exit347.i.i

dump_reg.exit347.i.i:                             ; preds = %do.end.i.i343.i.i.5, %do.end.i.i343.i.i.4.dump_reg.exit347.i.i_crit_edge, %do.end.i.i343.i.i.3.dump_reg.exit347.i.i_crit_edge, %do.end.i.i343.i.i.2.dump_reg.exit347.i.i_crit_edge, %do.end.i.i343.i.i.1.dump_reg.exit347.i.i_crit_edge, %do.end.i.i343.i.i.dump_reg.exit347.i.i_crit_edge, %dump_reg.exit329.i.i.dump_reg.exit347.i.i_crit_edge
  %call1.lcssa.i.i344.i.i = phi i32 [ %call111.i.i331.i.i, %dump_reg.exit329.i.i.dump_reg.exit347.i.i_crit_edge ], [ %call1.i.i339.i.i, %do.end.i.i343.i.i.dump_reg.exit347.i.i_crit_edge ], [ %call1.i.i339.i.i.1, %do.end.i.i343.i.i.1.dump_reg.exit347.i.i_crit_edge ], [ %call1.i.i339.i.i.2, %do.end.i.i343.i.i.2.dump_reg.exit347.i.i_crit_edge ], [ %call1.i.i339.i.i.3, %do.end.i.i343.i.i.3.dump_reg.exit347.i.i_crit_edge ], [ %call1.i.i339.i.i.4, %do.end.i.i343.i.i.4.dump_reg.exit347.i.i_crit_edge ], [ %call1.i.i339.i.i.5, %do.end.i.i343.i.i.5 ]
  %call1.i346.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name40.i, i32 noundef 20, i32 noundef %call1.lcssa.i.i344.i.i) #10
  %58 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i.i349.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %59, i8 noundef zeroext 22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i349.i.i)
  %cmp12.i.i350.i.i = icmp slt i32 %call111.i.i349.i.i, 0
  br i1 %cmp12.i.i350.i.i, label %do.end.i.i361.i.i, label %dump_reg.exit347.i.i.dump_reg.exit365.i.i_crit_edge

dump_reg.exit347.i.i.dump_reg.exit365.i.i_crit_edge: ; preds = %dump_reg.exit347.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit365.i.i

do.end.i.i361.i.i:                                ; preds = %dump_reg.exit347.i.i
  %call4.i.i354.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 0) #10
  %call5.i.i356.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i357.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %59, i8 noundef zeroext 22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i357.i.i)
  %cmp.i.i358.i.i = icmp slt i32 %call1.i.i357.i.i, 0
  br i1 %cmp.i.i358.i.i, label %do.end.i.i361.i.i.1, label %do.end.i.i361.i.i.dump_reg.exit365.i.i_crit_edge

do.end.i.i361.i.i.dump_reg.exit365.i.i_crit_edge: ; preds = %do.end.i.i361.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit365.i.i

do.end.i.i361.i.i.1:                              ; preds = %do.end.i.i361.i.i
  %call4.i.i354.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 1) #10
  %call5.i.i356.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i357.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %59, i8 noundef zeroext 22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i357.i.i.1)
  %cmp.i.i358.i.i.1 = icmp slt i32 %call1.i.i357.i.i.1, 0
  br i1 %cmp.i.i358.i.i.1, label %do.end.i.i361.i.i.2, label %do.end.i.i361.i.i.1.dump_reg.exit365.i.i_crit_edge

do.end.i.i361.i.i.1.dump_reg.exit365.i.i_crit_edge: ; preds = %do.end.i.i361.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit365.i.i

do.end.i.i361.i.i.2:                              ; preds = %do.end.i.i361.i.i.1
  %call4.i.i354.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 2) #10
  %call5.i.i356.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i357.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %59, i8 noundef zeroext 22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i357.i.i.2)
  %cmp.i.i358.i.i.2 = icmp slt i32 %call1.i.i357.i.i.2, 0
  br i1 %cmp.i.i358.i.i.2, label %do.end.i.i361.i.i.3, label %do.end.i.i361.i.i.2.dump_reg.exit365.i.i_crit_edge

do.end.i.i361.i.i.2.dump_reg.exit365.i.i_crit_edge: ; preds = %do.end.i.i361.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit365.i.i

do.end.i.i361.i.i.3:                              ; preds = %do.end.i.i361.i.i.2
  %call4.i.i354.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 3) #10
  %call5.i.i356.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i357.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %59, i8 noundef zeroext 22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i357.i.i.3)
  %cmp.i.i358.i.i.3 = icmp slt i32 %call1.i.i357.i.i.3, 0
  br i1 %cmp.i.i358.i.i.3, label %do.end.i.i361.i.i.4, label %do.end.i.i361.i.i.3.dump_reg.exit365.i.i_crit_edge

do.end.i.i361.i.i.3.dump_reg.exit365.i.i_crit_edge: ; preds = %do.end.i.i361.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit365.i.i

do.end.i.i361.i.i.4:                              ; preds = %do.end.i.i361.i.i.3
  %call4.i.i354.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 4) #10
  %call5.i.i356.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i357.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %59, i8 noundef zeroext 22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i357.i.i.4)
  %cmp.i.i358.i.i.4 = icmp slt i32 %call1.i.i357.i.i.4, 0
  br i1 %cmp.i.i358.i.i.4, label %do.end.i.i361.i.i.5, label %do.end.i.i361.i.i.4.dump_reg.exit365.i.i_crit_edge

do.end.i.i361.i.i.4.dump_reg.exit365.i.i_crit_edge: ; preds = %do.end.i.i361.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit365.i.i

do.end.i.i361.i.i.5:                              ; preds = %do.end.i.i361.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i354.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 5) #10
  %call5.i.i356.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i357.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %59, i8 noundef zeroext 22) #7
  br label %dump_reg.exit365.i.i

dump_reg.exit365.i.i:                             ; preds = %do.end.i.i361.i.i.5, %do.end.i.i361.i.i.4.dump_reg.exit365.i.i_crit_edge, %do.end.i.i361.i.i.3.dump_reg.exit365.i.i_crit_edge, %do.end.i.i361.i.i.2.dump_reg.exit365.i.i_crit_edge, %do.end.i.i361.i.i.1.dump_reg.exit365.i.i_crit_edge, %do.end.i.i361.i.i.dump_reg.exit365.i.i_crit_edge, %dump_reg.exit347.i.i.dump_reg.exit365.i.i_crit_edge
  %call1.lcssa.i.i362.i.i = phi i32 [ %call111.i.i349.i.i, %dump_reg.exit347.i.i.dump_reg.exit365.i.i_crit_edge ], [ %call1.i.i357.i.i, %do.end.i.i361.i.i.dump_reg.exit365.i.i_crit_edge ], [ %call1.i.i357.i.i.1, %do.end.i.i361.i.i.1.dump_reg.exit365.i.i_crit_edge ], [ %call1.i.i357.i.i.2, %do.end.i.i361.i.i.2.dump_reg.exit365.i.i_crit_edge ], [ %call1.i.i357.i.i.3, %do.end.i.i361.i.i.3.dump_reg.exit365.i.i_crit_edge ], [ %call1.i.i357.i.i.4, %do.end.i.i361.i.i.4.dump_reg.exit365.i.i_crit_edge ], [ %call1.i.i357.i.i.5, %do.end.i.i361.i.i.5 ]
  %call1.i364.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name40.i, i32 noundef 22, i32 noundef %call1.lcssa.i.i362.i.i) #10
  %60 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i.i367.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %61, i8 noundef zeroext 23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i367.i.i)
  %cmp12.i.i368.i.i = icmp slt i32 %call111.i.i367.i.i, 0
  br i1 %cmp12.i.i368.i.i, label %do.end.i.i379.i.i, label %dump_reg.exit365.i.i.dump_reg.exit383.i.i_crit_edge

dump_reg.exit365.i.i.dump_reg.exit383.i.i_crit_edge: ; preds = %dump_reg.exit365.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit383.i.i

do.end.i.i379.i.i:                                ; preds = %dump_reg.exit365.i.i
  %call4.i.i372.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 0) #10
  %call5.i.i374.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i375.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %61, i8 noundef zeroext 23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i375.i.i)
  %cmp.i.i376.i.i = icmp slt i32 %call1.i.i375.i.i, 0
  br i1 %cmp.i.i376.i.i, label %do.end.i.i379.i.i.1, label %do.end.i.i379.i.i.dump_reg.exit383.i.i_crit_edge

do.end.i.i379.i.i.dump_reg.exit383.i.i_crit_edge: ; preds = %do.end.i.i379.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit383.i.i

do.end.i.i379.i.i.1:                              ; preds = %do.end.i.i379.i.i
  %call4.i.i372.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 1) #10
  %call5.i.i374.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i375.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %61, i8 noundef zeroext 23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i375.i.i.1)
  %cmp.i.i376.i.i.1 = icmp slt i32 %call1.i.i375.i.i.1, 0
  br i1 %cmp.i.i376.i.i.1, label %do.end.i.i379.i.i.2, label %do.end.i.i379.i.i.1.dump_reg.exit383.i.i_crit_edge

do.end.i.i379.i.i.1.dump_reg.exit383.i.i_crit_edge: ; preds = %do.end.i.i379.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit383.i.i

do.end.i.i379.i.i.2:                              ; preds = %do.end.i.i379.i.i.1
  %call4.i.i372.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 2) #10
  %call5.i.i374.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i375.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %61, i8 noundef zeroext 23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i375.i.i.2)
  %cmp.i.i376.i.i.2 = icmp slt i32 %call1.i.i375.i.i.2, 0
  br i1 %cmp.i.i376.i.i.2, label %do.end.i.i379.i.i.3, label %do.end.i.i379.i.i.2.dump_reg.exit383.i.i_crit_edge

do.end.i.i379.i.i.2.dump_reg.exit383.i.i_crit_edge: ; preds = %do.end.i.i379.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit383.i.i

do.end.i.i379.i.i.3:                              ; preds = %do.end.i.i379.i.i.2
  %call4.i.i372.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 3) #10
  %call5.i.i374.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i375.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %61, i8 noundef zeroext 23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i375.i.i.3)
  %cmp.i.i376.i.i.3 = icmp slt i32 %call1.i.i375.i.i.3, 0
  br i1 %cmp.i.i376.i.i.3, label %do.end.i.i379.i.i.4, label %do.end.i.i379.i.i.3.dump_reg.exit383.i.i_crit_edge

do.end.i.i379.i.i.3.dump_reg.exit383.i.i_crit_edge: ; preds = %do.end.i.i379.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit383.i.i

do.end.i.i379.i.i.4:                              ; preds = %do.end.i.i379.i.i.3
  %call4.i.i372.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 4) #10
  %call5.i.i374.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i375.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %61, i8 noundef zeroext 23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i375.i.i.4)
  %cmp.i.i376.i.i.4 = icmp slt i32 %call1.i.i375.i.i.4, 0
  br i1 %cmp.i.i376.i.i.4, label %do.end.i.i379.i.i.5, label %do.end.i.i379.i.i.4.dump_reg.exit383.i.i_crit_edge

do.end.i.i379.i.i.4.dump_reg.exit383.i.i_crit_edge: ; preds = %do.end.i.i379.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit383.i.i

do.end.i.i379.i.i.5:                              ; preds = %do.end.i.i379.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i372.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 5) #10
  %call5.i.i374.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i375.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %61, i8 noundef zeroext 23) #7
  br label %dump_reg.exit383.i.i

dump_reg.exit383.i.i:                             ; preds = %do.end.i.i379.i.i.5, %do.end.i.i379.i.i.4.dump_reg.exit383.i.i_crit_edge, %do.end.i.i379.i.i.3.dump_reg.exit383.i.i_crit_edge, %do.end.i.i379.i.i.2.dump_reg.exit383.i.i_crit_edge, %do.end.i.i379.i.i.1.dump_reg.exit383.i.i_crit_edge, %do.end.i.i379.i.i.dump_reg.exit383.i.i_crit_edge, %dump_reg.exit365.i.i.dump_reg.exit383.i.i_crit_edge
  %call1.lcssa.i.i380.i.i = phi i32 [ %call111.i.i367.i.i, %dump_reg.exit365.i.i.dump_reg.exit383.i.i_crit_edge ], [ %call1.i.i375.i.i, %do.end.i.i379.i.i.dump_reg.exit383.i.i_crit_edge ], [ %call1.i.i375.i.i.1, %do.end.i.i379.i.i.1.dump_reg.exit383.i.i_crit_edge ], [ %call1.i.i375.i.i.2, %do.end.i.i379.i.i.2.dump_reg.exit383.i.i_crit_edge ], [ %call1.i.i375.i.i.3, %do.end.i.i379.i.i.3.dump_reg.exit383.i.i_crit_edge ], [ %call1.i.i375.i.i.4, %do.end.i.i379.i.i.4.dump_reg.exit383.i.i_crit_edge ], [ %call1.i.i375.i.i.5, %do.end.i.i379.i.i.5 ]
  %call1.i382.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name40.i, i32 noundef 23, i32 noundef %call1.lcssa.i.i380.i.i) #10
  %62 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i.i385.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %63, i8 noundef zeroext 24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i385.i.i)
  %cmp12.i.i386.i.i = icmp slt i32 %call111.i.i385.i.i, 0
  br i1 %cmp12.i.i386.i.i, label %do.end.i.i397.i.i, label %dump_reg.exit383.i.i.dump_reg.exit401.i.i_crit_edge

dump_reg.exit383.i.i.dump_reg.exit401.i.i_crit_edge: ; preds = %dump_reg.exit383.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit401.i.i

do.end.i.i397.i.i:                                ; preds = %dump_reg.exit383.i.i
  %call4.i.i390.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 0) #10
  %call5.i.i392.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i393.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %63, i8 noundef zeroext 24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i393.i.i)
  %cmp.i.i394.i.i = icmp slt i32 %call1.i.i393.i.i, 0
  br i1 %cmp.i.i394.i.i, label %do.end.i.i397.i.i.1, label %do.end.i.i397.i.i.dump_reg.exit401.i.i_crit_edge

do.end.i.i397.i.i.dump_reg.exit401.i.i_crit_edge: ; preds = %do.end.i.i397.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit401.i.i

do.end.i.i397.i.i.1:                              ; preds = %do.end.i.i397.i.i
  %call4.i.i390.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 1) #10
  %call5.i.i392.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i393.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %63, i8 noundef zeroext 24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i393.i.i.1)
  %cmp.i.i394.i.i.1 = icmp slt i32 %call1.i.i393.i.i.1, 0
  br i1 %cmp.i.i394.i.i.1, label %do.end.i.i397.i.i.2, label %do.end.i.i397.i.i.1.dump_reg.exit401.i.i_crit_edge

do.end.i.i397.i.i.1.dump_reg.exit401.i.i_crit_edge: ; preds = %do.end.i.i397.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit401.i.i

do.end.i.i397.i.i.2:                              ; preds = %do.end.i.i397.i.i.1
  %call4.i.i390.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 2) #10
  %call5.i.i392.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i393.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %63, i8 noundef zeroext 24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i393.i.i.2)
  %cmp.i.i394.i.i.2 = icmp slt i32 %call1.i.i393.i.i.2, 0
  br i1 %cmp.i.i394.i.i.2, label %do.end.i.i397.i.i.3, label %do.end.i.i397.i.i.2.dump_reg.exit401.i.i_crit_edge

do.end.i.i397.i.i.2.dump_reg.exit401.i.i_crit_edge: ; preds = %do.end.i.i397.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit401.i.i

do.end.i.i397.i.i.3:                              ; preds = %do.end.i.i397.i.i.2
  %call4.i.i390.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 3) #10
  %call5.i.i392.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i393.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %63, i8 noundef zeroext 24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i393.i.i.3)
  %cmp.i.i394.i.i.3 = icmp slt i32 %call1.i.i393.i.i.3, 0
  br i1 %cmp.i.i394.i.i.3, label %do.end.i.i397.i.i.4, label %do.end.i.i397.i.i.3.dump_reg.exit401.i.i_crit_edge

do.end.i.i397.i.i.3.dump_reg.exit401.i.i_crit_edge: ; preds = %do.end.i.i397.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit401.i.i

do.end.i.i397.i.i.4:                              ; preds = %do.end.i.i397.i.i.3
  %call4.i.i390.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 4) #10
  %call5.i.i392.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i393.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %63, i8 noundef zeroext 24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i393.i.i.4)
  %cmp.i.i394.i.i.4 = icmp slt i32 %call1.i.i393.i.i.4, 0
  br i1 %cmp.i.i394.i.i.4, label %do.end.i.i397.i.i.5, label %do.end.i.i397.i.i.4.dump_reg.exit401.i.i_crit_edge

do.end.i.i397.i.i.4.dump_reg.exit401.i.i_crit_edge: ; preds = %do.end.i.i397.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit401.i.i

do.end.i.i397.i.i.5:                              ; preds = %do.end.i.i397.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i390.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 5) #10
  %call5.i.i392.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i393.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %63, i8 noundef zeroext 24) #7
  br label %dump_reg.exit401.i.i

dump_reg.exit401.i.i:                             ; preds = %do.end.i.i397.i.i.5, %do.end.i.i397.i.i.4.dump_reg.exit401.i.i_crit_edge, %do.end.i.i397.i.i.3.dump_reg.exit401.i.i_crit_edge, %do.end.i.i397.i.i.2.dump_reg.exit401.i.i_crit_edge, %do.end.i.i397.i.i.1.dump_reg.exit401.i.i_crit_edge, %do.end.i.i397.i.i.dump_reg.exit401.i.i_crit_edge, %dump_reg.exit383.i.i.dump_reg.exit401.i.i_crit_edge
  %call1.lcssa.i.i398.i.i = phi i32 [ %call111.i.i385.i.i, %dump_reg.exit383.i.i.dump_reg.exit401.i.i_crit_edge ], [ %call1.i.i393.i.i, %do.end.i.i397.i.i.dump_reg.exit401.i.i_crit_edge ], [ %call1.i.i393.i.i.1, %do.end.i.i397.i.i.1.dump_reg.exit401.i.i_crit_edge ], [ %call1.i.i393.i.i.2, %do.end.i.i397.i.i.2.dump_reg.exit401.i.i_crit_edge ], [ %call1.i.i393.i.i.3, %do.end.i.i397.i.i.3.dump_reg.exit401.i.i_crit_edge ], [ %call1.i.i393.i.i.4, %do.end.i.i397.i.i.4.dump_reg.exit401.i.i_crit_edge ], [ %call1.i.i393.i.i.5, %do.end.i.i397.i.i.5 ]
  %call1.i400.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name40.i, i32 noundef 24, i32 noundef %call1.lcssa.i.i398.i.i) #10
  %64 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i.i403.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %65, i8 noundef zeroext 25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i403.i.i)
  %cmp12.i.i404.i.i = icmp slt i32 %call111.i.i403.i.i, 0
  br i1 %cmp12.i.i404.i.i, label %do.end.i.i415.i.i, label %dump_reg.exit401.i.i.dump_reg.exit419.i.i_crit_edge

dump_reg.exit401.i.i.dump_reg.exit419.i.i_crit_edge: ; preds = %dump_reg.exit401.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit419.i.i

do.end.i.i415.i.i:                                ; preds = %dump_reg.exit401.i.i
  %call4.i.i408.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 0) #10
  %call5.i.i410.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i411.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %65, i8 noundef zeroext 25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i411.i.i)
  %cmp.i.i412.i.i = icmp slt i32 %call1.i.i411.i.i, 0
  br i1 %cmp.i.i412.i.i, label %do.end.i.i415.i.i.1, label %do.end.i.i415.i.i.dump_reg.exit419.i.i_crit_edge

do.end.i.i415.i.i.dump_reg.exit419.i.i_crit_edge: ; preds = %do.end.i.i415.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit419.i.i

do.end.i.i415.i.i.1:                              ; preds = %do.end.i.i415.i.i
  %call4.i.i408.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 1) #10
  %call5.i.i410.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i411.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %65, i8 noundef zeroext 25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i411.i.i.1)
  %cmp.i.i412.i.i.1 = icmp slt i32 %call1.i.i411.i.i.1, 0
  br i1 %cmp.i.i412.i.i.1, label %do.end.i.i415.i.i.2, label %do.end.i.i415.i.i.1.dump_reg.exit419.i.i_crit_edge

do.end.i.i415.i.i.1.dump_reg.exit419.i.i_crit_edge: ; preds = %do.end.i.i415.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit419.i.i

do.end.i.i415.i.i.2:                              ; preds = %do.end.i.i415.i.i.1
  %call4.i.i408.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 2) #10
  %call5.i.i410.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i411.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %65, i8 noundef zeroext 25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i411.i.i.2)
  %cmp.i.i412.i.i.2 = icmp slt i32 %call1.i.i411.i.i.2, 0
  br i1 %cmp.i.i412.i.i.2, label %do.end.i.i415.i.i.3, label %do.end.i.i415.i.i.2.dump_reg.exit419.i.i_crit_edge

do.end.i.i415.i.i.2.dump_reg.exit419.i.i_crit_edge: ; preds = %do.end.i.i415.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit419.i.i

do.end.i.i415.i.i.3:                              ; preds = %do.end.i.i415.i.i.2
  %call4.i.i408.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 3) #10
  %call5.i.i410.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i411.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %65, i8 noundef zeroext 25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i411.i.i.3)
  %cmp.i.i412.i.i.3 = icmp slt i32 %call1.i.i411.i.i.3, 0
  br i1 %cmp.i.i412.i.i.3, label %do.end.i.i415.i.i.4, label %do.end.i.i415.i.i.3.dump_reg.exit419.i.i_crit_edge

do.end.i.i415.i.i.3.dump_reg.exit419.i.i_crit_edge: ; preds = %do.end.i.i415.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit419.i.i

do.end.i.i415.i.i.4:                              ; preds = %do.end.i.i415.i.i.3
  %call4.i.i408.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 4) #10
  %call5.i.i410.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i411.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %65, i8 noundef zeroext 25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i411.i.i.4)
  %cmp.i.i412.i.i.4 = icmp slt i32 %call1.i.i411.i.i.4, 0
  br i1 %cmp.i.i412.i.i.4, label %do.end.i.i415.i.i.5, label %do.end.i.i415.i.i.4.dump_reg.exit419.i.i_crit_edge

do.end.i.i415.i.i.4.dump_reg.exit419.i.i_crit_edge: ; preds = %do.end.i.i415.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit419.i.i

do.end.i.i415.i.i.5:                              ; preds = %do.end.i.i415.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i408.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 5) #10
  %call5.i.i410.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i411.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %65, i8 noundef zeroext 25) #7
  br label %dump_reg.exit419.i.i

dump_reg.exit419.i.i:                             ; preds = %do.end.i.i415.i.i.5, %do.end.i.i415.i.i.4.dump_reg.exit419.i.i_crit_edge, %do.end.i.i415.i.i.3.dump_reg.exit419.i.i_crit_edge, %do.end.i.i415.i.i.2.dump_reg.exit419.i.i_crit_edge, %do.end.i.i415.i.i.1.dump_reg.exit419.i.i_crit_edge, %do.end.i.i415.i.i.dump_reg.exit419.i.i_crit_edge, %dump_reg.exit401.i.i.dump_reg.exit419.i.i_crit_edge
  %call1.lcssa.i.i416.i.i = phi i32 [ %call111.i.i403.i.i, %dump_reg.exit401.i.i.dump_reg.exit419.i.i_crit_edge ], [ %call1.i.i411.i.i, %do.end.i.i415.i.i.dump_reg.exit419.i.i_crit_edge ], [ %call1.i.i411.i.i.1, %do.end.i.i415.i.i.1.dump_reg.exit419.i.i_crit_edge ], [ %call1.i.i411.i.i.2, %do.end.i.i415.i.i.2.dump_reg.exit419.i.i_crit_edge ], [ %call1.i.i411.i.i.3, %do.end.i.i415.i.i.3.dump_reg.exit419.i.i_crit_edge ], [ %call1.i.i411.i.i.4, %do.end.i.i415.i.i.4.dump_reg.exit419.i.i_crit_edge ], [ %call1.i.i411.i.i.5, %do.end.i.i415.i.i.5 ]
  %call1.i418.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name40.i, i32 noundef 25, i32 noundef %call1.lcssa.i.i416.i.i) #10
  %66 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i.i421.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %67, i8 noundef zeroext 26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i421.i.i)
  %cmp12.i.i422.i.i = icmp slt i32 %call111.i.i421.i.i, 0
  br i1 %cmp12.i.i422.i.i, label %do.end.i.i433.i.i, label %dump_reg.exit419.i.i.dump_reg.exit437.i.i_crit_edge

dump_reg.exit419.i.i.dump_reg.exit437.i.i_crit_edge: ; preds = %dump_reg.exit419.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit437.i.i

do.end.i.i433.i.i:                                ; preds = %dump_reg.exit419.i.i
  %call4.i.i426.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 0) #10
  %call5.i.i428.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i429.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %67, i8 noundef zeroext 26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i429.i.i)
  %cmp.i.i430.i.i = icmp slt i32 %call1.i.i429.i.i, 0
  br i1 %cmp.i.i430.i.i, label %do.end.i.i433.i.i.1, label %do.end.i.i433.i.i.dump_reg.exit437.i.i_crit_edge

do.end.i.i433.i.i.dump_reg.exit437.i.i_crit_edge: ; preds = %do.end.i.i433.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit437.i.i

do.end.i.i433.i.i.1:                              ; preds = %do.end.i.i433.i.i
  %call4.i.i426.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 1) #10
  %call5.i.i428.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i429.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %67, i8 noundef zeroext 26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i429.i.i.1)
  %cmp.i.i430.i.i.1 = icmp slt i32 %call1.i.i429.i.i.1, 0
  br i1 %cmp.i.i430.i.i.1, label %do.end.i.i433.i.i.2, label %do.end.i.i433.i.i.1.dump_reg.exit437.i.i_crit_edge

do.end.i.i433.i.i.1.dump_reg.exit437.i.i_crit_edge: ; preds = %do.end.i.i433.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit437.i.i

do.end.i.i433.i.i.2:                              ; preds = %do.end.i.i433.i.i.1
  %call4.i.i426.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 2) #10
  %call5.i.i428.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i429.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %67, i8 noundef zeroext 26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i429.i.i.2)
  %cmp.i.i430.i.i.2 = icmp slt i32 %call1.i.i429.i.i.2, 0
  br i1 %cmp.i.i430.i.i.2, label %do.end.i.i433.i.i.3, label %do.end.i.i433.i.i.2.dump_reg.exit437.i.i_crit_edge

do.end.i.i433.i.i.2.dump_reg.exit437.i.i_crit_edge: ; preds = %do.end.i.i433.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit437.i.i

do.end.i.i433.i.i.3:                              ; preds = %do.end.i.i433.i.i.2
  %call4.i.i426.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 3) #10
  %call5.i.i428.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i429.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %67, i8 noundef zeroext 26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i429.i.i.3)
  %cmp.i.i430.i.i.3 = icmp slt i32 %call1.i.i429.i.i.3, 0
  br i1 %cmp.i.i430.i.i.3, label %do.end.i.i433.i.i.4, label %do.end.i.i433.i.i.3.dump_reg.exit437.i.i_crit_edge

do.end.i.i433.i.i.3.dump_reg.exit437.i.i_crit_edge: ; preds = %do.end.i.i433.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit437.i.i

do.end.i.i433.i.i.4:                              ; preds = %do.end.i.i433.i.i.3
  %call4.i.i426.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 4) #10
  %call5.i.i428.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i429.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %67, i8 noundef zeroext 26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i429.i.i.4)
  %cmp.i.i430.i.i.4 = icmp slt i32 %call1.i.i429.i.i.4, 0
  br i1 %cmp.i.i430.i.i.4, label %do.end.i.i433.i.i.5, label %do.end.i.i433.i.i.4.dump_reg.exit437.i.i_crit_edge

do.end.i.i433.i.i.4.dump_reg.exit437.i.i_crit_edge: ; preds = %do.end.i.i433.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit437.i.i

do.end.i.i433.i.i.5:                              ; preds = %do.end.i.i433.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i426.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 5) #10
  %call5.i.i428.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i429.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %67, i8 noundef zeroext 26) #7
  br label %dump_reg.exit437.i.i

dump_reg.exit437.i.i:                             ; preds = %do.end.i.i433.i.i.5, %do.end.i.i433.i.i.4.dump_reg.exit437.i.i_crit_edge, %do.end.i.i433.i.i.3.dump_reg.exit437.i.i_crit_edge, %do.end.i.i433.i.i.2.dump_reg.exit437.i.i_crit_edge, %do.end.i.i433.i.i.1.dump_reg.exit437.i.i_crit_edge, %do.end.i.i433.i.i.dump_reg.exit437.i.i_crit_edge, %dump_reg.exit419.i.i.dump_reg.exit437.i.i_crit_edge
  %call1.lcssa.i.i434.i.i = phi i32 [ %call111.i.i421.i.i, %dump_reg.exit419.i.i.dump_reg.exit437.i.i_crit_edge ], [ %call1.i.i429.i.i, %do.end.i.i433.i.i.dump_reg.exit437.i.i_crit_edge ], [ %call1.i.i429.i.i.1, %do.end.i.i433.i.i.1.dump_reg.exit437.i.i_crit_edge ], [ %call1.i.i429.i.i.2, %do.end.i.i433.i.i.2.dump_reg.exit437.i.i_crit_edge ], [ %call1.i.i429.i.i.3, %do.end.i.i433.i.i.3.dump_reg.exit437.i.i_crit_edge ], [ %call1.i.i429.i.i.4, %do.end.i.i433.i.i.4.dump_reg.exit437.i.i_crit_edge ], [ %call1.i.i429.i.i.5, %do.end.i.i433.i.i.5 ]
  %call1.i436.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name40.i, i32 noundef 26, i32 noundef %call1.lcssa.i.i434.i.i) #10
  %68 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i.i439.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %69, i8 noundef zeroext 27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i439.i.i)
  %cmp12.i.i440.i.i = icmp slt i32 %call111.i.i439.i.i, 0
  br i1 %cmp12.i.i440.i.i, label %do.end.i.i451.i.i, label %dump_reg.exit437.i.i.dump_reg.exit455.i.i_crit_edge

dump_reg.exit437.i.i.dump_reg.exit455.i.i_crit_edge: ; preds = %dump_reg.exit437.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit455.i.i

do.end.i.i451.i.i:                                ; preds = %dump_reg.exit437.i.i
  %call4.i.i444.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 0) #10
  %call5.i.i446.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i447.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %69, i8 noundef zeroext 27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i447.i.i)
  %cmp.i.i448.i.i = icmp slt i32 %call1.i.i447.i.i, 0
  br i1 %cmp.i.i448.i.i, label %do.end.i.i451.i.i.1, label %do.end.i.i451.i.i.dump_reg.exit455.i.i_crit_edge

do.end.i.i451.i.i.dump_reg.exit455.i.i_crit_edge: ; preds = %do.end.i.i451.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit455.i.i

do.end.i.i451.i.i.1:                              ; preds = %do.end.i.i451.i.i
  %call4.i.i444.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 1) #10
  %call5.i.i446.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i447.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %69, i8 noundef zeroext 27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i447.i.i.1)
  %cmp.i.i448.i.i.1 = icmp slt i32 %call1.i.i447.i.i.1, 0
  br i1 %cmp.i.i448.i.i.1, label %do.end.i.i451.i.i.2, label %do.end.i.i451.i.i.1.dump_reg.exit455.i.i_crit_edge

do.end.i.i451.i.i.1.dump_reg.exit455.i.i_crit_edge: ; preds = %do.end.i.i451.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit455.i.i

do.end.i.i451.i.i.2:                              ; preds = %do.end.i.i451.i.i.1
  %call4.i.i444.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 2) #10
  %call5.i.i446.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i447.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %69, i8 noundef zeroext 27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i447.i.i.2)
  %cmp.i.i448.i.i.2 = icmp slt i32 %call1.i.i447.i.i.2, 0
  br i1 %cmp.i.i448.i.i.2, label %do.end.i.i451.i.i.3, label %do.end.i.i451.i.i.2.dump_reg.exit455.i.i_crit_edge

do.end.i.i451.i.i.2.dump_reg.exit455.i.i_crit_edge: ; preds = %do.end.i.i451.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit455.i.i

do.end.i.i451.i.i.3:                              ; preds = %do.end.i.i451.i.i.2
  %call4.i.i444.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 3) #10
  %call5.i.i446.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i447.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %69, i8 noundef zeroext 27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i447.i.i.3)
  %cmp.i.i448.i.i.3 = icmp slt i32 %call1.i.i447.i.i.3, 0
  br i1 %cmp.i.i448.i.i.3, label %do.end.i.i451.i.i.4, label %do.end.i.i451.i.i.3.dump_reg.exit455.i.i_crit_edge

do.end.i.i451.i.i.3.dump_reg.exit455.i.i_crit_edge: ; preds = %do.end.i.i451.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit455.i.i

do.end.i.i451.i.i.4:                              ; preds = %do.end.i.i451.i.i.3
  %call4.i.i444.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 4) #10
  %call5.i.i446.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i447.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %69, i8 noundef zeroext 27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i447.i.i.4)
  %cmp.i.i448.i.i.4 = icmp slt i32 %call1.i.i447.i.i.4, 0
  br i1 %cmp.i.i448.i.i.4, label %do.end.i.i451.i.i.5, label %do.end.i.i451.i.i.4.dump_reg.exit455.i.i_crit_edge

do.end.i.i451.i.i.4.dump_reg.exit455.i.i_crit_edge: ; preds = %do.end.i.i451.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit455.i.i

do.end.i.i451.i.i.5:                              ; preds = %do.end.i.i451.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i444.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 5) #10
  %call5.i.i446.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i447.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %69, i8 noundef zeroext 27) #7
  br label %dump_reg.exit455.i.i

dump_reg.exit455.i.i:                             ; preds = %do.end.i.i451.i.i.5, %do.end.i.i451.i.i.4.dump_reg.exit455.i.i_crit_edge, %do.end.i.i451.i.i.3.dump_reg.exit455.i.i_crit_edge, %do.end.i.i451.i.i.2.dump_reg.exit455.i.i_crit_edge, %do.end.i.i451.i.i.1.dump_reg.exit455.i.i_crit_edge, %do.end.i.i451.i.i.dump_reg.exit455.i.i_crit_edge, %dump_reg.exit437.i.i.dump_reg.exit455.i.i_crit_edge
  %call1.lcssa.i.i452.i.i = phi i32 [ %call111.i.i439.i.i, %dump_reg.exit437.i.i.dump_reg.exit455.i.i_crit_edge ], [ %call1.i.i447.i.i, %do.end.i.i451.i.i.dump_reg.exit455.i.i_crit_edge ], [ %call1.i.i447.i.i.1, %do.end.i.i451.i.i.1.dump_reg.exit455.i.i_crit_edge ], [ %call1.i.i447.i.i.2, %do.end.i.i451.i.i.2.dump_reg.exit455.i.i_crit_edge ], [ %call1.i.i447.i.i.3, %do.end.i.i451.i.i.3.dump_reg.exit455.i.i_crit_edge ], [ %call1.i.i447.i.i.4, %do.end.i.i451.i.i.4.dump_reg.exit455.i.i_crit_edge ], [ %call1.i.i447.i.i.5, %do.end.i.i451.i.i.5 ]
  %call1.i454.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name40.i, i32 noundef 27, i32 noundef %call1.lcssa.i.i452.i.i) #10
  %70 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i.i457.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %71, i8 noundef zeroext 28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i457.i.i)
  %cmp12.i.i458.i.i = icmp slt i32 %call111.i.i457.i.i, 0
  br i1 %cmp12.i.i458.i.i, label %do.end.i.i469.i.i, label %dump_reg.exit455.i.i.dump_reg.exit473.i.i_crit_edge

dump_reg.exit455.i.i.dump_reg.exit473.i.i_crit_edge: ; preds = %dump_reg.exit455.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit473.i.i

do.end.i.i469.i.i:                                ; preds = %dump_reg.exit455.i.i
  %call4.i.i462.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 0) #10
  %call5.i.i464.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i465.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %71, i8 noundef zeroext 28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i465.i.i)
  %cmp.i.i466.i.i = icmp slt i32 %call1.i.i465.i.i, 0
  br i1 %cmp.i.i466.i.i, label %do.end.i.i469.i.i.1, label %do.end.i.i469.i.i.dump_reg.exit473.i.i_crit_edge

do.end.i.i469.i.i.dump_reg.exit473.i.i_crit_edge: ; preds = %do.end.i.i469.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit473.i.i

do.end.i.i469.i.i.1:                              ; preds = %do.end.i.i469.i.i
  %call4.i.i462.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 1) #10
  %call5.i.i464.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i465.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %71, i8 noundef zeroext 28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i465.i.i.1)
  %cmp.i.i466.i.i.1 = icmp slt i32 %call1.i.i465.i.i.1, 0
  br i1 %cmp.i.i466.i.i.1, label %do.end.i.i469.i.i.2, label %do.end.i.i469.i.i.1.dump_reg.exit473.i.i_crit_edge

do.end.i.i469.i.i.1.dump_reg.exit473.i.i_crit_edge: ; preds = %do.end.i.i469.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit473.i.i

do.end.i.i469.i.i.2:                              ; preds = %do.end.i.i469.i.i.1
  %call4.i.i462.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 2) #10
  %call5.i.i464.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i465.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %71, i8 noundef zeroext 28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i465.i.i.2)
  %cmp.i.i466.i.i.2 = icmp slt i32 %call1.i.i465.i.i.2, 0
  br i1 %cmp.i.i466.i.i.2, label %do.end.i.i469.i.i.3, label %do.end.i.i469.i.i.2.dump_reg.exit473.i.i_crit_edge

do.end.i.i469.i.i.2.dump_reg.exit473.i.i_crit_edge: ; preds = %do.end.i.i469.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit473.i.i

do.end.i.i469.i.i.3:                              ; preds = %do.end.i.i469.i.i.2
  %call4.i.i462.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 3) #10
  %call5.i.i464.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i465.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %71, i8 noundef zeroext 28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i465.i.i.3)
  %cmp.i.i466.i.i.3 = icmp slt i32 %call1.i.i465.i.i.3, 0
  br i1 %cmp.i.i466.i.i.3, label %do.end.i.i469.i.i.4, label %do.end.i.i469.i.i.3.dump_reg.exit473.i.i_crit_edge

do.end.i.i469.i.i.3.dump_reg.exit473.i.i_crit_edge: ; preds = %do.end.i.i469.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit473.i.i

do.end.i.i469.i.i.4:                              ; preds = %do.end.i.i469.i.i.3
  %call4.i.i462.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 4) #10
  %call5.i.i464.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i465.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %71, i8 noundef zeroext 28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i465.i.i.4)
  %cmp.i.i466.i.i.4 = icmp slt i32 %call1.i.i465.i.i.4, 0
  br i1 %cmp.i.i466.i.i.4, label %do.end.i.i469.i.i.5, label %do.end.i.i469.i.i.4.dump_reg.exit473.i.i_crit_edge

do.end.i.i469.i.i.4.dump_reg.exit473.i.i_crit_edge: ; preds = %do.end.i.i469.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit473.i.i

do.end.i.i469.i.i.5:                              ; preds = %do.end.i.i469.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i462.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 5) #10
  %call5.i.i464.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i465.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %71, i8 noundef zeroext 28) #7
  br label %dump_reg.exit473.i.i

dump_reg.exit473.i.i:                             ; preds = %do.end.i.i469.i.i.5, %do.end.i.i469.i.i.4.dump_reg.exit473.i.i_crit_edge, %do.end.i.i469.i.i.3.dump_reg.exit473.i.i_crit_edge, %do.end.i.i469.i.i.2.dump_reg.exit473.i.i_crit_edge, %do.end.i.i469.i.i.1.dump_reg.exit473.i.i_crit_edge, %do.end.i.i469.i.i.dump_reg.exit473.i.i_crit_edge, %dump_reg.exit455.i.i.dump_reg.exit473.i.i_crit_edge
  %call1.lcssa.i.i470.i.i = phi i32 [ %call111.i.i457.i.i, %dump_reg.exit455.i.i.dump_reg.exit473.i.i_crit_edge ], [ %call1.i.i465.i.i, %do.end.i.i469.i.i.dump_reg.exit473.i.i_crit_edge ], [ %call1.i.i465.i.i.1, %do.end.i.i469.i.i.1.dump_reg.exit473.i.i_crit_edge ], [ %call1.i.i465.i.i.2, %do.end.i.i469.i.i.2.dump_reg.exit473.i.i_crit_edge ], [ %call1.i.i465.i.i.3, %do.end.i.i469.i.i.3.dump_reg.exit473.i.i_crit_edge ], [ %call1.i.i465.i.i.4, %do.end.i.i469.i.i.4.dump_reg.exit473.i.i_crit_edge ], [ %call1.i.i465.i.i.5, %do.end.i.i469.i.i.5 ]
  %call1.i472.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name40.i, i32 noundef 28, i32 noundef %call1.lcssa.i.i470.i.i) #10
  %72 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i.i475.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %73, i8 noundef zeroext 29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i475.i.i)
  %cmp12.i.i476.i.i = icmp slt i32 %call111.i.i475.i.i, 0
  br i1 %cmp12.i.i476.i.i, label %do.end.i.i487.i.i, label %dump_reg.exit473.i.i.dump_reg.exit491.i.i_crit_edge

dump_reg.exit473.i.i.dump_reg.exit491.i.i_crit_edge: ; preds = %dump_reg.exit473.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit491.i.i

do.end.i.i487.i.i:                                ; preds = %dump_reg.exit473.i.i
  %call4.i.i480.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 0) #10
  %call5.i.i482.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i483.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %73, i8 noundef zeroext 29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i483.i.i)
  %cmp.i.i484.i.i = icmp slt i32 %call1.i.i483.i.i, 0
  br i1 %cmp.i.i484.i.i, label %do.end.i.i487.i.i.1, label %do.end.i.i487.i.i.dump_reg.exit491.i.i_crit_edge

do.end.i.i487.i.i.dump_reg.exit491.i.i_crit_edge: ; preds = %do.end.i.i487.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit491.i.i

do.end.i.i487.i.i.1:                              ; preds = %do.end.i.i487.i.i
  %call4.i.i480.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 1) #10
  %call5.i.i482.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i483.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %73, i8 noundef zeroext 29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i483.i.i.1)
  %cmp.i.i484.i.i.1 = icmp slt i32 %call1.i.i483.i.i.1, 0
  br i1 %cmp.i.i484.i.i.1, label %do.end.i.i487.i.i.2, label %do.end.i.i487.i.i.1.dump_reg.exit491.i.i_crit_edge

do.end.i.i487.i.i.1.dump_reg.exit491.i.i_crit_edge: ; preds = %do.end.i.i487.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit491.i.i

do.end.i.i487.i.i.2:                              ; preds = %do.end.i.i487.i.i.1
  %call4.i.i480.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 2) #10
  %call5.i.i482.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i483.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %73, i8 noundef zeroext 29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i483.i.i.2)
  %cmp.i.i484.i.i.2 = icmp slt i32 %call1.i.i483.i.i.2, 0
  br i1 %cmp.i.i484.i.i.2, label %do.end.i.i487.i.i.3, label %do.end.i.i487.i.i.2.dump_reg.exit491.i.i_crit_edge

do.end.i.i487.i.i.2.dump_reg.exit491.i.i_crit_edge: ; preds = %do.end.i.i487.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit491.i.i

do.end.i.i487.i.i.3:                              ; preds = %do.end.i.i487.i.i.2
  %call4.i.i480.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 3) #10
  %call5.i.i482.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i483.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %73, i8 noundef zeroext 29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i483.i.i.3)
  %cmp.i.i484.i.i.3 = icmp slt i32 %call1.i.i483.i.i.3, 0
  br i1 %cmp.i.i484.i.i.3, label %do.end.i.i487.i.i.4, label %do.end.i.i487.i.i.3.dump_reg.exit491.i.i_crit_edge

do.end.i.i487.i.i.3.dump_reg.exit491.i.i_crit_edge: ; preds = %do.end.i.i487.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit491.i.i

do.end.i.i487.i.i.4:                              ; preds = %do.end.i.i487.i.i.3
  %call4.i.i480.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 4) #10
  %call5.i.i482.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i483.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %73, i8 noundef zeroext 29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i483.i.i.4)
  %cmp.i.i484.i.i.4 = icmp slt i32 %call1.i.i483.i.i.4, 0
  br i1 %cmp.i.i484.i.i.4, label %do.end.i.i487.i.i.5, label %do.end.i.i487.i.i.4.dump_reg.exit491.i.i_crit_edge

do.end.i.i487.i.i.4.dump_reg.exit491.i.i_crit_edge: ; preds = %do.end.i.i487.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit491.i.i

do.end.i.i487.i.i.5:                              ; preds = %do.end.i.i487.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i480.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 5) #10
  %call5.i.i482.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i483.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %73, i8 noundef zeroext 29) #7
  br label %dump_reg.exit491.i.i

dump_reg.exit491.i.i:                             ; preds = %do.end.i.i487.i.i.5, %do.end.i.i487.i.i.4.dump_reg.exit491.i.i_crit_edge, %do.end.i.i487.i.i.3.dump_reg.exit491.i.i_crit_edge, %do.end.i.i487.i.i.2.dump_reg.exit491.i.i_crit_edge, %do.end.i.i487.i.i.1.dump_reg.exit491.i.i_crit_edge, %do.end.i.i487.i.i.dump_reg.exit491.i.i_crit_edge, %dump_reg.exit473.i.i.dump_reg.exit491.i.i_crit_edge
  %call1.lcssa.i.i488.i.i = phi i32 [ %call111.i.i475.i.i, %dump_reg.exit473.i.i.dump_reg.exit491.i.i_crit_edge ], [ %call1.i.i483.i.i, %do.end.i.i487.i.i.dump_reg.exit491.i.i_crit_edge ], [ %call1.i.i483.i.i.1, %do.end.i.i487.i.i.1.dump_reg.exit491.i.i_crit_edge ], [ %call1.i.i483.i.i.2, %do.end.i.i487.i.i.2.dump_reg.exit491.i.i_crit_edge ], [ %call1.i.i483.i.i.3, %do.end.i.i487.i.i.3.dump_reg.exit491.i.i_crit_edge ], [ %call1.i.i483.i.i.4, %do.end.i.i487.i.i.4.dump_reg.exit491.i.i_crit_edge ], [ %call1.i.i483.i.i.5, %do.end.i.i487.i.i.5 ]
  %call1.i490.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name40.i, i32 noundef 29, i32 noundef %call1.lcssa.i.i488.i.i) #10
  %74 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i.i493.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %75, i8 noundef zeroext 30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i493.i.i)
  %cmp12.i.i494.i.i = icmp slt i32 %call111.i.i493.i.i, 0
  br i1 %cmp12.i.i494.i.i, label %do.end.i.i505.i.i, label %dump_reg.exit491.i.i.dump_reg.exit509.i.i_crit_edge

dump_reg.exit491.i.i.dump_reg.exit509.i.i_crit_edge: ; preds = %dump_reg.exit491.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit509.i.i

do.end.i.i505.i.i:                                ; preds = %dump_reg.exit491.i.i
  %call4.i.i498.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 0) #10
  %call5.i.i500.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i501.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %75, i8 noundef zeroext 30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i501.i.i)
  %cmp.i.i502.i.i = icmp slt i32 %call1.i.i501.i.i, 0
  br i1 %cmp.i.i502.i.i, label %do.end.i.i505.i.i.1, label %do.end.i.i505.i.i.dump_reg.exit509.i.i_crit_edge

do.end.i.i505.i.i.dump_reg.exit509.i.i_crit_edge: ; preds = %do.end.i.i505.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit509.i.i

do.end.i.i505.i.i.1:                              ; preds = %do.end.i.i505.i.i
  %call4.i.i498.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 1) #10
  %call5.i.i500.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i501.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %75, i8 noundef zeroext 30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i501.i.i.1)
  %cmp.i.i502.i.i.1 = icmp slt i32 %call1.i.i501.i.i.1, 0
  br i1 %cmp.i.i502.i.i.1, label %do.end.i.i505.i.i.2, label %do.end.i.i505.i.i.1.dump_reg.exit509.i.i_crit_edge

do.end.i.i505.i.i.1.dump_reg.exit509.i.i_crit_edge: ; preds = %do.end.i.i505.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit509.i.i

do.end.i.i505.i.i.2:                              ; preds = %do.end.i.i505.i.i.1
  %call4.i.i498.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 2) #10
  %call5.i.i500.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i501.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %75, i8 noundef zeroext 30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i501.i.i.2)
  %cmp.i.i502.i.i.2 = icmp slt i32 %call1.i.i501.i.i.2, 0
  br i1 %cmp.i.i502.i.i.2, label %do.end.i.i505.i.i.3, label %do.end.i.i505.i.i.2.dump_reg.exit509.i.i_crit_edge

do.end.i.i505.i.i.2.dump_reg.exit509.i.i_crit_edge: ; preds = %do.end.i.i505.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit509.i.i

do.end.i.i505.i.i.3:                              ; preds = %do.end.i.i505.i.i.2
  %call4.i.i498.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 3) #10
  %call5.i.i500.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i501.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %75, i8 noundef zeroext 30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i501.i.i.3)
  %cmp.i.i502.i.i.3 = icmp slt i32 %call1.i.i501.i.i.3, 0
  br i1 %cmp.i.i502.i.i.3, label %do.end.i.i505.i.i.4, label %do.end.i.i505.i.i.3.dump_reg.exit509.i.i_crit_edge

do.end.i.i505.i.i.3.dump_reg.exit509.i.i_crit_edge: ; preds = %do.end.i.i505.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit509.i.i

do.end.i.i505.i.i.4:                              ; preds = %do.end.i.i505.i.i.3
  %call4.i.i498.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 4) #10
  %call5.i.i500.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i501.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %75, i8 noundef zeroext 30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i501.i.i.4)
  %cmp.i.i502.i.i.4 = icmp slt i32 %call1.i.i501.i.i.4, 0
  br i1 %cmp.i.i502.i.i.4, label %do.end.i.i505.i.i.5, label %do.end.i.i505.i.i.4.dump_reg.exit509.i.i_crit_edge

do.end.i.i505.i.i.4.dump_reg.exit509.i.i_crit_edge: ; preds = %do.end.i.i505.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit509.i.i

do.end.i.i505.i.i.5:                              ; preds = %do.end.i.i505.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i498.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 5) #10
  %call5.i.i500.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i501.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %75, i8 noundef zeroext 30) #7
  br label %dump_reg.exit509.i.i

dump_reg.exit509.i.i:                             ; preds = %do.end.i.i505.i.i.5, %do.end.i.i505.i.i.4.dump_reg.exit509.i.i_crit_edge, %do.end.i.i505.i.i.3.dump_reg.exit509.i.i_crit_edge, %do.end.i.i505.i.i.2.dump_reg.exit509.i.i_crit_edge, %do.end.i.i505.i.i.1.dump_reg.exit509.i.i_crit_edge, %do.end.i.i505.i.i.dump_reg.exit509.i.i_crit_edge, %dump_reg.exit491.i.i.dump_reg.exit509.i.i_crit_edge
  %call1.lcssa.i.i506.i.i = phi i32 [ %call111.i.i493.i.i, %dump_reg.exit491.i.i.dump_reg.exit509.i.i_crit_edge ], [ %call1.i.i501.i.i, %do.end.i.i505.i.i.dump_reg.exit509.i.i_crit_edge ], [ %call1.i.i501.i.i.1, %do.end.i.i505.i.i.1.dump_reg.exit509.i.i_crit_edge ], [ %call1.i.i501.i.i.2, %do.end.i.i505.i.i.2.dump_reg.exit509.i.i_crit_edge ], [ %call1.i.i501.i.i.3, %do.end.i.i505.i.i.3.dump_reg.exit509.i.i_crit_edge ], [ %call1.i.i501.i.i.4, %do.end.i.i505.i.i.4.dump_reg.exit509.i.i_crit_edge ], [ %call1.i.i501.i.i.5, %do.end.i.i505.i.i.5 ]
  %call1.i508.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name40.i, i32 noundef 30, i32 noundef %call1.lcssa.i.i506.i.i) #10
  %76 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i.i511.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %77, i8 noundef zeroext 31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i511.i.i)
  %cmp12.i.i512.i.i = icmp slt i32 %call111.i.i511.i.i, 0
  br i1 %cmp12.i.i512.i.i, label %do.end.i.i523.i.i, label %dump_reg.exit509.i.i.dump_reg.exit527.i.i_crit_edge

dump_reg.exit509.i.i.dump_reg.exit527.i.i_crit_edge: ; preds = %dump_reg.exit509.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit527.i.i

do.end.i.i523.i.i:                                ; preds = %dump_reg.exit509.i.i
  %call4.i.i516.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 0) #10
  %call5.i.i518.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i519.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %77, i8 noundef zeroext 31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i519.i.i)
  %cmp.i.i520.i.i = icmp slt i32 %call1.i.i519.i.i, 0
  br i1 %cmp.i.i520.i.i, label %do.end.i.i523.i.i.1, label %do.end.i.i523.i.i.dump_reg.exit527.i.i_crit_edge

do.end.i.i523.i.i.dump_reg.exit527.i.i_crit_edge: ; preds = %do.end.i.i523.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit527.i.i

do.end.i.i523.i.i.1:                              ; preds = %do.end.i.i523.i.i
  %call4.i.i516.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 1) #10
  %call5.i.i518.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i519.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %77, i8 noundef zeroext 31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i519.i.i.1)
  %cmp.i.i520.i.i.1 = icmp slt i32 %call1.i.i519.i.i.1, 0
  br i1 %cmp.i.i520.i.i.1, label %do.end.i.i523.i.i.2, label %do.end.i.i523.i.i.1.dump_reg.exit527.i.i_crit_edge

do.end.i.i523.i.i.1.dump_reg.exit527.i.i_crit_edge: ; preds = %do.end.i.i523.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit527.i.i

do.end.i.i523.i.i.2:                              ; preds = %do.end.i.i523.i.i.1
  %call4.i.i516.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 2) #10
  %call5.i.i518.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i519.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %77, i8 noundef zeroext 31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i519.i.i.2)
  %cmp.i.i520.i.i.2 = icmp slt i32 %call1.i.i519.i.i.2, 0
  br i1 %cmp.i.i520.i.i.2, label %do.end.i.i523.i.i.3, label %do.end.i.i523.i.i.2.dump_reg.exit527.i.i_crit_edge

do.end.i.i523.i.i.2.dump_reg.exit527.i.i_crit_edge: ; preds = %do.end.i.i523.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit527.i.i

do.end.i.i523.i.i.3:                              ; preds = %do.end.i.i523.i.i.2
  %call4.i.i516.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 3) #10
  %call5.i.i518.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i519.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %77, i8 noundef zeroext 31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i519.i.i.3)
  %cmp.i.i520.i.i.3 = icmp slt i32 %call1.i.i519.i.i.3, 0
  br i1 %cmp.i.i520.i.i.3, label %do.end.i.i523.i.i.4, label %do.end.i.i523.i.i.3.dump_reg.exit527.i.i_crit_edge

do.end.i.i523.i.i.3.dump_reg.exit527.i.i_crit_edge: ; preds = %do.end.i.i523.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit527.i.i

do.end.i.i523.i.i.4:                              ; preds = %do.end.i.i523.i.i.3
  %call4.i.i516.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 4) #10
  %call5.i.i518.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i519.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %77, i8 noundef zeroext 31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i519.i.i.4)
  %cmp.i.i520.i.i.4 = icmp slt i32 %call1.i.i519.i.i.4, 0
  br i1 %cmp.i.i520.i.i.4, label %do.end.i.i523.i.i.5, label %do.end.i.i523.i.i.4.dump_reg.exit527.i.i_crit_edge

do.end.i.i523.i.i.4.dump_reg.exit527.i.i_crit_edge: ; preds = %do.end.i.i523.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit527.i.i

do.end.i.i523.i.i.5:                              ; preds = %do.end.i.i523.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i516.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 5) #10
  %call5.i.i518.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i519.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %77, i8 noundef zeroext 31) #7
  br label %dump_reg.exit527.i.i

dump_reg.exit527.i.i:                             ; preds = %do.end.i.i523.i.i.5, %do.end.i.i523.i.i.4.dump_reg.exit527.i.i_crit_edge, %do.end.i.i523.i.i.3.dump_reg.exit527.i.i_crit_edge, %do.end.i.i523.i.i.2.dump_reg.exit527.i.i_crit_edge, %do.end.i.i523.i.i.1.dump_reg.exit527.i.i_crit_edge, %do.end.i.i523.i.i.dump_reg.exit527.i.i_crit_edge, %dump_reg.exit509.i.i.dump_reg.exit527.i.i_crit_edge
  %call1.lcssa.i.i524.i.i = phi i32 [ %call111.i.i511.i.i, %dump_reg.exit509.i.i.dump_reg.exit527.i.i_crit_edge ], [ %call1.i.i519.i.i, %do.end.i.i523.i.i.dump_reg.exit527.i.i_crit_edge ], [ %call1.i.i519.i.i.1, %do.end.i.i523.i.i.1.dump_reg.exit527.i.i_crit_edge ], [ %call1.i.i519.i.i.2, %do.end.i.i523.i.i.2.dump_reg.exit527.i.i_crit_edge ], [ %call1.i.i519.i.i.3, %do.end.i.i523.i.i.3.dump_reg.exit527.i.i_crit_edge ], [ %call1.i.i519.i.i.4, %do.end.i.i523.i.i.4.dump_reg.exit527.i.i_crit_edge ], [ %call1.i.i519.i.i.5, %do.end.i.i523.i.i.5 ]
  %call1.i526.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name40.i, i32 noundef 31, i32 noundef %call1.lcssa.i.i524.i.i) #10
  %78 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i.i529.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %79, i8 noundef zeroext 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i529.i.i)
  %cmp12.i.i530.i.i = icmp slt i32 %call111.i.i529.i.i, 0
  br i1 %cmp12.i.i530.i.i, label %do.end.i.i541.i.i, label %dump_reg.exit527.i.i.dump_reg.exit545.i.i_crit_edge

dump_reg.exit527.i.i.dump_reg.exit545.i.i_crit_edge: ; preds = %dump_reg.exit527.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit545.i.i

do.end.i.i541.i.i:                                ; preds = %dump_reg.exit527.i.i
  %call4.i.i534.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 0) #10
  %call5.i.i536.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i537.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %79, i8 noundef zeroext 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i537.i.i)
  %cmp.i.i538.i.i = icmp slt i32 %call1.i.i537.i.i, 0
  br i1 %cmp.i.i538.i.i, label %do.end.i.i541.i.i.1, label %do.end.i.i541.i.i.dump_reg.exit545.i.i_crit_edge

do.end.i.i541.i.i.dump_reg.exit545.i.i_crit_edge: ; preds = %do.end.i.i541.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit545.i.i

do.end.i.i541.i.i.1:                              ; preds = %do.end.i.i541.i.i
  %call4.i.i534.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 1) #10
  %call5.i.i536.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i537.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %79, i8 noundef zeroext 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i537.i.i.1)
  %cmp.i.i538.i.i.1 = icmp slt i32 %call1.i.i537.i.i.1, 0
  br i1 %cmp.i.i538.i.i.1, label %do.end.i.i541.i.i.2, label %do.end.i.i541.i.i.1.dump_reg.exit545.i.i_crit_edge

do.end.i.i541.i.i.1.dump_reg.exit545.i.i_crit_edge: ; preds = %do.end.i.i541.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit545.i.i

do.end.i.i541.i.i.2:                              ; preds = %do.end.i.i541.i.i.1
  %call4.i.i534.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 2) #10
  %call5.i.i536.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i537.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %79, i8 noundef zeroext 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i537.i.i.2)
  %cmp.i.i538.i.i.2 = icmp slt i32 %call1.i.i537.i.i.2, 0
  br i1 %cmp.i.i538.i.i.2, label %do.end.i.i541.i.i.3, label %do.end.i.i541.i.i.2.dump_reg.exit545.i.i_crit_edge

do.end.i.i541.i.i.2.dump_reg.exit545.i.i_crit_edge: ; preds = %do.end.i.i541.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit545.i.i

do.end.i.i541.i.i.3:                              ; preds = %do.end.i.i541.i.i.2
  %call4.i.i534.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 3) #10
  %call5.i.i536.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i537.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %79, i8 noundef zeroext 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i537.i.i.3)
  %cmp.i.i538.i.i.3 = icmp slt i32 %call1.i.i537.i.i.3, 0
  br i1 %cmp.i.i538.i.i.3, label %do.end.i.i541.i.i.4, label %do.end.i.i541.i.i.3.dump_reg.exit545.i.i_crit_edge

do.end.i.i541.i.i.3.dump_reg.exit545.i.i_crit_edge: ; preds = %do.end.i.i541.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit545.i.i

do.end.i.i541.i.i.4:                              ; preds = %do.end.i.i541.i.i.3
  %call4.i.i534.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 4) #10
  %call5.i.i536.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i537.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %79, i8 noundef zeroext 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i537.i.i.4)
  %cmp.i.i538.i.i.4 = icmp slt i32 %call1.i.i537.i.i.4, 0
  br i1 %cmp.i.i538.i.i.4, label %do.end.i.i541.i.i.5, label %do.end.i.i541.i.i.4.dump_reg.exit545.i.i_crit_edge

do.end.i.i541.i.i.4.dump_reg.exit545.i.i_crit_edge: ; preds = %do.end.i.i541.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit545.i.i

do.end.i.i541.i.i.5:                              ; preds = %do.end.i.i541.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i534.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 5) #10
  %call5.i.i536.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i537.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %79, i8 noundef zeroext 32) #7
  br label %dump_reg.exit545.i.i

dump_reg.exit545.i.i:                             ; preds = %do.end.i.i541.i.i.5, %do.end.i.i541.i.i.4.dump_reg.exit545.i.i_crit_edge, %do.end.i.i541.i.i.3.dump_reg.exit545.i.i_crit_edge, %do.end.i.i541.i.i.2.dump_reg.exit545.i.i_crit_edge, %do.end.i.i541.i.i.1.dump_reg.exit545.i.i_crit_edge, %do.end.i.i541.i.i.dump_reg.exit545.i.i_crit_edge, %dump_reg.exit527.i.i.dump_reg.exit545.i.i_crit_edge
  %call1.lcssa.i.i542.i.i = phi i32 [ %call111.i.i529.i.i, %dump_reg.exit527.i.i.dump_reg.exit545.i.i_crit_edge ], [ %call1.i.i537.i.i, %do.end.i.i541.i.i.dump_reg.exit545.i.i_crit_edge ], [ %call1.i.i537.i.i.1, %do.end.i.i541.i.i.1.dump_reg.exit545.i.i_crit_edge ], [ %call1.i.i537.i.i.2, %do.end.i.i541.i.i.2.dump_reg.exit545.i.i_crit_edge ], [ %call1.i.i537.i.i.3, %do.end.i.i541.i.i.3.dump_reg.exit545.i.i_crit_edge ], [ %call1.i.i537.i.i.4, %do.end.i.i541.i.i.4.dump_reg.exit545.i.i_crit_edge ], [ %call1.i.i537.i.i.5, %do.end.i.i541.i.i.5 ]
  %call1.i544.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name40.i, i32 noundef 32, i32 noundef %call1.lcssa.i.i542.i.i) #10
  %80 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i.i547.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %81, i8 noundef zeroext 33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i547.i.i)
  %cmp12.i.i548.i.i = icmp slt i32 %call111.i.i547.i.i, 0
  br i1 %cmp12.i.i548.i.i, label %do.end.i.i559.i.i, label %dump_reg.exit545.i.i.dump_reg.exit563.i.i_crit_edge

dump_reg.exit545.i.i.dump_reg.exit563.i.i_crit_edge: ; preds = %dump_reg.exit545.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit563.i.i

do.end.i.i559.i.i:                                ; preds = %dump_reg.exit545.i.i
  %call4.i.i552.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 0) #10
  %call5.i.i554.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i555.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %81, i8 noundef zeroext 33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i555.i.i)
  %cmp.i.i556.i.i = icmp slt i32 %call1.i.i555.i.i, 0
  br i1 %cmp.i.i556.i.i, label %do.end.i.i559.i.i.1, label %do.end.i.i559.i.i.dump_reg.exit563.i.i_crit_edge

do.end.i.i559.i.i.dump_reg.exit563.i.i_crit_edge: ; preds = %do.end.i.i559.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit563.i.i

do.end.i.i559.i.i.1:                              ; preds = %do.end.i.i559.i.i
  %call4.i.i552.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 1) #10
  %call5.i.i554.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i555.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %81, i8 noundef zeroext 33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i555.i.i.1)
  %cmp.i.i556.i.i.1 = icmp slt i32 %call1.i.i555.i.i.1, 0
  br i1 %cmp.i.i556.i.i.1, label %do.end.i.i559.i.i.2, label %do.end.i.i559.i.i.1.dump_reg.exit563.i.i_crit_edge

do.end.i.i559.i.i.1.dump_reg.exit563.i.i_crit_edge: ; preds = %do.end.i.i559.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit563.i.i

do.end.i.i559.i.i.2:                              ; preds = %do.end.i.i559.i.i.1
  %call4.i.i552.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 2) #10
  %call5.i.i554.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i555.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %81, i8 noundef zeroext 33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i555.i.i.2)
  %cmp.i.i556.i.i.2 = icmp slt i32 %call1.i.i555.i.i.2, 0
  br i1 %cmp.i.i556.i.i.2, label %do.end.i.i559.i.i.3, label %do.end.i.i559.i.i.2.dump_reg.exit563.i.i_crit_edge

do.end.i.i559.i.i.2.dump_reg.exit563.i.i_crit_edge: ; preds = %do.end.i.i559.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit563.i.i

do.end.i.i559.i.i.3:                              ; preds = %do.end.i.i559.i.i.2
  %call4.i.i552.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 3) #10
  %call5.i.i554.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i555.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %81, i8 noundef zeroext 33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i555.i.i.3)
  %cmp.i.i556.i.i.3 = icmp slt i32 %call1.i.i555.i.i.3, 0
  br i1 %cmp.i.i556.i.i.3, label %do.end.i.i559.i.i.4, label %do.end.i.i559.i.i.3.dump_reg.exit563.i.i_crit_edge

do.end.i.i559.i.i.3.dump_reg.exit563.i.i_crit_edge: ; preds = %do.end.i.i559.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit563.i.i

do.end.i.i559.i.i.4:                              ; preds = %do.end.i.i559.i.i.3
  %call4.i.i552.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 4) #10
  %call5.i.i554.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i555.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %81, i8 noundef zeroext 33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i555.i.i.4)
  %cmp.i.i556.i.i.4 = icmp slt i32 %call1.i.i555.i.i.4, 0
  br i1 %cmp.i.i556.i.i.4, label %do.end.i.i559.i.i.5, label %do.end.i.i559.i.i.4.dump_reg.exit563.i.i_crit_edge

do.end.i.i559.i.i.4.dump_reg.exit563.i.i_crit_edge: ; preds = %do.end.i.i559.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit563.i.i

do.end.i.i559.i.i.5:                              ; preds = %do.end.i.i559.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i552.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 5) #10
  %call5.i.i554.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i555.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %81, i8 noundef zeroext 33) #7
  br label %dump_reg.exit563.i.i

dump_reg.exit563.i.i:                             ; preds = %do.end.i.i559.i.i.5, %do.end.i.i559.i.i.4.dump_reg.exit563.i.i_crit_edge, %do.end.i.i559.i.i.3.dump_reg.exit563.i.i_crit_edge, %do.end.i.i559.i.i.2.dump_reg.exit563.i.i_crit_edge, %do.end.i.i559.i.i.1.dump_reg.exit563.i.i_crit_edge, %do.end.i.i559.i.i.dump_reg.exit563.i.i_crit_edge, %dump_reg.exit545.i.i.dump_reg.exit563.i.i_crit_edge
  %call1.lcssa.i.i560.i.i = phi i32 [ %call111.i.i547.i.i, %dump_reg.exit545.i.i.dump_reg.exit563.i.i_crit_edge ], [ %call1.i.i555.i.i, %do.end.i.i559.i.i.dump_reg.exit563.i.i_crit_edge ], [ %call1.i.i555.i.i.1, %do.end.i.i559.i.i.1.dump_reg.exit563.i.i_crit_edge ], [ %call1.i.i555.i.i.2, %do.end.i.i559.i.i.2.dump_reg.exit563.i.i_crit_edge ], [ %call1.i.i555.i.i.3, %do.end.i.i559.i.i.3.dump_reg.exit563.i.i_crit_edge ], [ %call1.i.i555.i.i.4, %do.end.i.i559.i.i.4.dump_reg.exit563.i.i_crit_edge ], [ %call1.i.i555.i.i.5, %do.end.i.i559.i.i.5 ]
  %call1.i562.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name40.i, i32 noundef 33, i32 noundef %call1.lcssa.i.i560.i.i) #10
  %82 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i.i565.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %83, i8 noundef zeroext 34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i565.i.i)
  %cmp12.i.i566.i.i = icmp slt i32 %call111.i.i565.i.i, 0
  br i1 %cmp12.i.i566.i.i, label %do.end.i.i577.i.i, label %dump_reg.exit563.i.i.dump_reg.exit581.i.i_crit_edge

dump_reg.exit563.i.i.dump_reg.exit581.i.i_crit_edge: ; preds = %dump_reg.exit563.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit581.i.i

do.end.i.i577.i.i:                                ; preds = %dump_reg.exit563.i.i
  %call4.i.i570.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 0) #10
  %call5.i.i572.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i573.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %83, i8 noundef zeroext 34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i573.i.i)
  %cmp.i.i574.i.i = icmp slt i32 %call1.i.i573.i.i, 0
  br i1 %cmp.i.i574.i.i, label %do.end.i.i577.i.i.1, label %do.end.i.i577.i.i.dump_reg.exit581.i.i_crit_edge

do.end.i.i577.i.i.dump_reg.exit581.i.i_crit_edge: ; preds = %do.end.i.i577.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit581.i.i

do.end.i.i577.i.i.1:                              ; preds = %do.end.i.i577.i.i
  %call4.i.i570.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 1) #10
  %call5.i.i572.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i573.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %83, i8 noundef zeroext 34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i573.i.i.1)
  %cmp.i.i574.i.i.1 = icmp slt i32 %call1.i.i573.i.i.1, 0
  br i1 %cmp.i.i574.i.i.1, label %do.end.i.i577.i.i.2, label %do.end.i.i577.i.i.1.dump_reg.exit581.i.i_crit_edge

do.end.i.i577.i.i.1.dump_reg.exit581.i.i_crit_edge: ; preds = %do.end.i.i577.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit581.i.i

do.end.i.i577.i.i.2:                              ; preds = %do.end.i.i577.i.i.1
  %call4.i.i570.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 2) #10
  %call5.i.i572.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i573.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %83, i8 noundef zeroext 34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i573.i.i.2)
  %cmp.i.i574.i.i.2 = icmp slt i32 %call1.i.i573.i.i.2, 0
  br i1 %cmp.i.i574.i.i.2, label %do.end.i.i577.i.i.3, label %do.end.i.i577.i.i.2.dump_reg.exit581.i.i_crit_edge

do.end.i.i577.i.i.2.dump_reg.exit581.i.i_crit_edge: ; preds = %do.end.i.i577.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit581.i.i

do.end.i.i577.i.i.3:                              ; preds = %do.end.i.i577.i.i.2
  %call4.i.i570.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 3) #10
  %call5.i.i572.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i573.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %83, i8 noundef zeroext 34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i573.i.i.3)
  %cmp.i.i574.i.i.3 = icmp slt i32 %call1.i.i573.i.i.3, 0
  br i1 %cmp.i.i574.i.i.3, label %do.end.i.i577.i.i.4, label %do.end.i.i577.i.i.3.dump_reg.exit581.i.i_crit_edge

do.end.i.i577.i.i.3.dump_reg.exit581.i.i_crit_edge: ; preds = %do.end.i.i577.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit581.i.i

do.end.i.i577.i.i.4:                              ; preds = %do.end.i.i577.i.i.3
  %call4.i.i570.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 4) #10
  %call5.i.i572.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i573.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %83, i8 noundef zeroext 34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i573.i.i.4)
  %cmp.i.i574.i.i.4 = icmp slt i32 %call1.i.i573.i.i.4, 0
  br i1 %cmp.i.i574.i.i.4, label %do.end.i.i577.i.i.5, label %do.end.i.i577.i.i.4.dump_reg.exit581.i.i_crit_edge

do.end.i.i577.i.i.4.dump_reg.exit581.i.i_crit_edge: ; preds = %do.end.i.i577.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit581.i.i

do.end.i.i577.i.i.5:                              ; preds = %do.end.i.i577.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i570.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 5) #10
  %call5.i.i572.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i573.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %83, i8 noundef zeroext 34) #7
  br label %dump_reg.exit581.i.i

dump_reg.exit581.i.i:                             ; preds = %do.end.i.i577.i.i.5, %do.end.i.i577.i.i.4.dump_reg.exit581.i.i_crit_edge, %do.end.i.i577.i.i.3.dump_reg.exit581.i.i_crit_edge, %do.end.i.i577.i.i.2.dump_reg.exit581.i.i_crit_edge, %do.end.i.i577.i.i.1.dump_reg.exit581.i.i_crit_edge, %do.end.i.i577.i.i.dump_reg.exit581.i.i_crit_edge, %dump_reg.exit563.i.i.dump_reg.exit581.i.i_crit_edge
  %call1.lcssa.i.i578.i.i = phi i32 [ %call111.i.i565.i.i, %dump_reg.exit563.i.i.dump_reg.exit581.i.i_crit_edge ], [ %call1.i.i573.i.i, %do.end.i.i577.i.i.dump_reg.exit581.i.i_crit_edge ], [ %call1.i.i573.i.i.1, %do.end.i.i577.i.i.1.dump_reg.exit581.i.i_crit_edge ], [ %call1.i.i573.i.i.2, %do.end.i.i577.i.i.2.dump_reg.exit581.i.i_crit_edge ], [ %call1.i.i573.i.i.3, %do.end.i.i577.i.i.3.dump_reg.exit581.i.i_crit_edge ], [ %call1.i.i573.i.i.4, %do.end.i.i577.i.i.4.dump_reg.exit581.i.i_crit_edge ], [ %call1.i.i573.i.i.5, %do.end.i.i577.i.i.5 ]
  %call1.i580.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name40.i, i32 noundef 34, i32 noundef %call1.lcssa.i.i578.i.i) #10
  %84 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i.i583.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %85, i8 noundef zeroext 35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i583.i.i)
  %cmp12.i.i584.i.i = icmp slt i32 %call111.i.i583.i.i, 0
  br i1 %cmp12.i.i584.i.i, label %do.end.i.i595.i.i, label %dump_reg.exit581.i.i.dump_reg.exit599.i.i_crit_edge

dump_reg.exit581.i.i.dump_reg.exit599.i.i_crit_edge: ; preds = %dump_reg.exit581.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit599.i.i

do.end.i.i595.i.i:                                ; preds = %dump_reg.exit581.i.i
  %call4.i.i588.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 0) #10
  %call5.i.i590.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i591.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %85, i8 noundef zeroext 35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i591.i.i)
  %cmp.i.i592.i.i = icmp slt i32 %call1.i.i591.i.i, 0
  br i1 %cmp.i.i592.i.i, label %do.end.i.i595.i.i.1, label %do.end.i.i595.i.i.dump_reg.exit599.i.i_crit_edge

do.end.i.i595.i.i.dump_reg.exit599.i.i_crit_edge: ; preds = %do.end.i.i595.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit599.i.i

do.end.i.i595.i.i.1:                              ; preds = %do.end.i.i595.i.i
  %call4.i.i588.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 1) #10
  %call5.i.i590.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i591.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %85, i8 noundef zeroext 35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i591.i.i.1)
  %cmp.i.i592.i.i.1 = icmp slt i32 %call1.i.i591.i.i.1, 0
  br i1 %cmp.i.i592.i.i.1, label %do.end.i.i595.i.i.2, label %do.end.i.i595.i.i.1.dump_reg.exit599.i.i_crit_edge

do.end.i.i595.i.i.1.dump_reg.exit599.i.i_crit_edge: ; preds = %do.end.i.i595.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit599.i.i

do.end.i.i595.i.i.2:                              ; preds = %do.end.i.i595.i.i.1
  %call4.i.i588.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 2) #10
  %call5.i.i590.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i591.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %85, i8 noundef zeroext 35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i591.i.i.2)
  %cmp.i.i592.i.i.2 = icmp slt i32 %call1.i.i591.i.i.2, 0
  br i1 %cmp.i.i592.i.i.2, label %do.end.i.i595.i.i.3, label %do.end.i.i595.i.i.2.dump_reg.exit599.i.i_crit_edge

do.end.i.i595.i.i.2.dump_reg.exit599.i.i_crit_edge: ; preds = %do.end.i.i595.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit599.i.i

do.end.i.i595.i.i.3:                              ; preds = %do.end.i.i595.i.i.2
  %call4.i.i588.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 3) #10
  %call5.i.i590.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i591.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %85, i8 noundef zeroext 35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i591.i.i.3)
  %cmp.i.i592.i.i.3 = icmp slt i32 %call1.i.i591.i.i.3, 0
  br i1 %cmp.i.i592.i.i.3, label %do.end.i.i595.i.i.4, label %do.end.i.i595.i.i.3.dump_reg.exit599.i.i_crit_edge

do.end.i.i595.i.i.3.dump_reg.exit599.i.i_crit_edge: ; preds = %do.end.i.i595.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit599.i.i

do.end.i.i595.i.i.4:                              ; preds = %do.end.i.i595.i.i.3
  %call4.i.i588.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 4) #10
  %call5.i.i590.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i591.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %85, i8 noundef zeroext 35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i591.i.i.4)
  %cmp.i.i592.i.i.4 = icmp slt i32 %call1.i.i591.i.i.4, 0
  br i1 %cmp.i.i592.i.i.4, label %do.end.i.i595.i.i.5, label %do.end.i.i595.i.i.4.dump_reg.exit599.i.i_crit_edge

do.end.i.i595.i.i.4.dump_reg.exit599.i.i_crit_edge: ; preds = %do.end.i.i595.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit599.i.i

do.end.i.i595.i.i.5:                              ; preds = %do.end.i.i595.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i588.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 5) #10
  %call5.i.i590.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i591.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %85, i8 noundef zeroext 35) #7
  br label %dump_reg.exit599.i.i

dump_reg.exit599.i.i:                             ; preds = %do.end.i.i595.i.i.5, %do.end.i.i595.i.i.4.dump_reg.exit599.i.i_crit_edge, %do.end.i.i595.i.i.3.dump_reg.exit599.i.i_crit_edge, %do.end.i.i595.i.i.2.dump_reg.exit599.i.i_crit_edge, %do.end.i.i595.i.i.1.dump_reg.exit599.i.i_crit_edge, %do.end.i.i595.i.i.dump_reg.exit599.i.i_crit_edge, %dump_reg.exit581.i.i.dump_reg.exit599.i.i_crit_edge
  %call1.lcssa.i.i596.i.i = phi i32 [ %call111.i.i583.i.i, %dump_reg.exit581.i.i.dump_reg.exit599.i.i_crit_edge ], [ %call1.i.i591.i.i, %do.end.i.i595.i.i.dump_reg.exit599.i.i_crit_edge ], [ %call1.i.i591.i.i.1, %do.end.i.i595.i.i.1.dump_reg.exit599.i.i_crit_edge ], [ %call1.i.i591.i.i.2, %do.end.i.i595.i.i.2.dump_reg.exit599.i.i_crit_edge ], [ %call1.i.i591.i.i.3, %do.end.i.i595.i.i.3.dump_reg.exit599.i.i_crit_edge ], [ %call1.i.i591.i.i.4, %do.end.i.i595.i.i.4.dump_reg.exit599.i.i_crit_edge ], [ %call1.i.i591.i.i.5, %do.end.i.i595.i.i.5 ]
  %call1.i598.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name40.i, i32 noundef 35, i32 noundef %call1.lcssa.i.i596.i.i) #10
  %86 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i.i601.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %87, i8 noundef zeroext 36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i601.i.i)
  %cmp12.i.i602.i.i = icmp slt i32 %call111.i.i601.i.i, 0
  br i1 %cmp12.i.i602.i.i, label %do.end.i.i613.i.i, label %dump_reg.exit599.i.i.dump_reg.exit617.i.i_crit_edge

dump_reg.exit599.i.i.dump_reg.exit617.i.i_crit_edge: ; preds = %dump_reg.exit599.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit617.i.i

do.end.i.i613.i.i:                                ; preds = %dump_reg.exit599.i.i
  %call4.i.i606.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 0) #10
  %call5.i.i608.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i609.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %87, i8 noundef zeroext 36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i609.i.i)
  %cmp.i.i610.i.i = icmp slt i32 %call1.i.i609.i.i, 0
  br i1 %cmp.i.i610.i.i, label %do.end.i.i613.i.i.1, label %do.end.i.i613.i.i.dump_reg.exit617.i.i_crit_edge

do.end.i.i613.i.i.dump_reg.exit617.i.i_crit_edge: ; preds = %do.end.i.i613.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit617.i.i

do.end.i.i613.i.i.1:                              ; preds = %do.end.i.i613.i.i
  %call4.i.i606.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 1) #10
  %call5.i.i608.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i609.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %87, i8 noundef zeroext 36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i609.i.i.1)
  %cmp.i.i610.i.i.1 = icmp slt i32 %call1.i.i609.i.i.1, 0
  br i1 %cmp.i.i610.i.i.1, label %do.end.i.i613.i.i.2, label %do.end.i.i613.i.i.1.dump_reg.exit617.i.i_crit_edge

do.end.i.i613.i.i.1.dump_reg.exit617.i.i_crit_edge: ; preds = %do.end.i.i613.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit617.i.i

do.end.i.i613.i.i.2:                              ; preds = %do.end.i.i613.i.i.1
  %call4.i.i606.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 2) #10
  %call5.i.i608.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i609.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %87, i8 noundef zeroext 36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i609.i.i.2)
  %cmp.i.i610.i.i.2 = icmp slt i32 %call1.i.i609.i.i.2, 0
  br i1 %cmp.i.i610.i.i.2, label %do.end.i.i613.i.i.3, label %do.end.i.i613.i.i.2.dump_reg.exit617.i.i_crit_edge

do.end.i.i613.i.i.2.dump_reg.exit617.i.i_crit_edge: ; preds = %do.end.i.i613.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit617.i.i

do.end.i.i613.i.i.3:                              ; preds = %do.end.i.i613.i.i.2
  %call4.i.i606.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 3) #10
  %call5.i.i608.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i609.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %87, i8 noundef zeroext 36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i609.i.i.3)
  %cmp.i.i610.i.i.3 = icmp slt i32 %call1.i.i609.i.i.3, 0
  br i1 %cmp.i.i610.i.i.3, label %do.end.i.i613.i.i.4, label %do.end.i.i613.i.i.3.dump_reg.exit617.i.i_crit_edge

do.end.i.i613.i.i.3.dump_reg.exit617.i.i_crit_edge: ; preds = %do.end.i.i613.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit617.i.i

do.end.i.i613.i.i.4:                              ; preds = %do.end.i.i613.i.i.3
  %call4.i.i606.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 4) #10
  %call5.i.i608.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i609.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %87, i8 noundef zeroext 36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i609.i.i.4)
  %cmp.i.i610.i.i.4 = icmp slt i32 %call1.i.i609.i.i.4, 0
  br i1 %cmp.i.i610.i.i.4, label %do.end.i.i613.i.i.5, label %do.end.i.i613.i.i.4.dump_reg.exit617.i.i_crit_edge

do.end.i.i613.i.i.4.dump_reg.exit617.i.i_crit_edge: ; preds = %do.end.i.i613.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit617.i.i

do.end.i.i613.i.i.5:                              ; preds = %do.end.i.i613.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i606.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 5) #10
  %call5.i.i608.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i609.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %87, i8 noundef zeroext 36) #7
  br label %dump_reg.exit617.i.i

dump_reg.exit617.i.i:                             ; preds = %do.end.i.i613.i.i.5, %do.end.i.i613.i.i.4.dump_reg.exit617.i.i_crit_edge, %do.end.i.i613.i.i.3.dump_reg.exit617.i.i_crit_edge, %do.end.i.i613.i.i.2.dump_reg.exit617.i.i_crit_edge, %do.end.i.i613.i.i.1.dump_reg.exit617.i.i_crit_edge, %do.end.i.i613.i.i.dump_reg.exit617.i.i_crit_edge, %dump_reg.exit599.i.i.dump_reg.exit617.i.i_crit_edge
  %call1.lcssa.i.i614.i.i = phi i32 [ %call111.i.i601.i.i, %dump_reg.exit599.i.i.dump_reg.exit617.i.i_crit_edge ], [ %call1.i.i609.i.i, %do.end.i.i613.i.i.dump_reg.exit617.i.i_crit_edge ], [ %call1.i.i609.i.i.1, %do.end.i.i613.i.i.1.dump_reg.exit617.i.i_crit_edge ], [ %call1.i.i609.i.i.2, %do.end.i.i613.i.i.2.dump_reg.exit617.i.i_crit_edge ], [ %call1.i.i609.i.i.3, %do.end.i.i613.i.i.3.dump_reg.exit617.i.i_crit_edge ], [ %call1.i.i609.i.i.4, %do.end.i.i613.i.i.4.dump_reg.exit617.i.i_crit_edge ], [ %call1.i.i609.i.i.5, %do.end.i.i613.i.i.5 ]
  %call1.i616.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name40.i, i32 noundef 36, i32 noundef %call1.lcssa.i.i614.i.i) #10
  %88 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i.i619.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %89, i8 noundef zeroext 37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i619.i.i)
  %cmp12.i.i620.i.i = icmp slt i32 %call111.i.i619.i.i, 0
  br i1 %cmp12.i.i620.i.i, label %do.end.i.i631.i.i, label %dump_reg.exit617.i.i.dump_reg.exit635.i.i_crit_edge

dump_reg.exit617.i.i.dump_reg.exit635.i.i_crit_edge: ; preds = %dump_reg.exit617.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit635.i.i

do.end.i.i631.i.i:                                ; preds = %dump_reg.exit617.i.i
  %call4.i.i624.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 0) #10
  %call5.i.i626.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i627.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %89, i8 noundef zeroext 37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i627.i.i)
  %cmp.i.i628.i.i = icmp slt i32 %call1.i.i627.i.i, 0
  br i1 %cmp.i.i628.i.i, label %do.end.i.i631.i.i.1, label %do.end.i.i631.i.i.dump_reg.exit635.i.i_crit_edge

do.end.i.i631.i.i.dump_reg.exit635.i.i_crit_edge: ; preds = %do.end.i.i631.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit635.i.i

do.end.i.i631.i.i.1:                              ; preds = %do.end.i.i631.i.i
  %call4.i.i624.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 1) #10
  %call5.i.i626.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i627.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %89, i8 noundef zeroext 37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i627.i.i.1)
  %cmp.i.i628.i.i.1 = icmp slt i32 %call1.i.i627.i.i.1, 0
  br i1 %cmp.i.i628.i.i.1, label %do.end.i.i631.i.i.2, label %do.end.i.i631.i.i.1.dump_reg.exit635.i.i_crit_edge

do.end.i.i631.i.i.1.dump_reg.exit635.i.i_crit_edge: ; preds = %do.end.i.i631.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit635.i.i

do.end.i.i631.i.i.2:                              ; preds = %do.end.i.i631.i.i.1
  %call4.i.i624.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 2) #10
  %call5.i.i626.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i627.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %89, i8 noundef zeroext 37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i627.i.i.2)
  %cmp.i.i628.i.i.2 = icmp slt i32 %call1.i.i627.i.i.2, 0
  br i1 %cmp.i.i628.i.i.2, label %do.end.i.i631.i.i.3, label %do.end.i.i631.i.i.2.dump_reg.exit635.i.i_crit_edge

do.end.i.i631.i.i.2.dump_reg.exit635.i.i_crit_edge: ; preds = %do.end.i.i631.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit635.i.i

do.end.i.i631.i.i.3:                              ; preds = %do.end.i.i631.i.i.2
  %call4.i.i624.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 3) #10
  %call5.i.i626.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i627.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %89, i8 noundef zeroext 37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i627.i.i.3)
  %cmp.i.i628.i.i.3 = icmp slt i32 %call1.i.i627.i.i.3, 0
  br i1 %cmp.i.i628.i.i.3, label %do.end.i.i631.i.i.4, label %do.end.i.i631.i.i.3.dump_reg.exit635.i.i_crit_edge

do.end.i.i631.i.i.3.dump_reg.exit635.i.i_crit_edge: ; preds = %do.end.i.i631.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit635.i.i

do.end.i.i631.i.i.4:                              ; preds = %do.end.i.i631.i.i.3
  %call4.i.i624.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 4) #10
  %call5.i.i626.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i627.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %89, i8 noundef zeroext 37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i627.i.i.4)
  %cmp.i.i628.i.i.4 = icmp slt i32 %call1.i.i627.i.i.4, 0
  br i1 %cmp.i.i628.i.i.4, label %do.end.i.i631.i.i.5, label %do.end.i.i631.i.i.4.dump_reg.exit635.i.i_crit_edge

do.end.i.i631.i.i.4.dump_reg.exit635.i.i_crit_edge: ; preds = %do.end.i.i631.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit635.i.i

do.end.i.i631.i.i.5:                              ; preds = %do.end.i.i631.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i624.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 5) #10
  %call5.i.i626.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i627.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %89, i8 noundef zeroext 37) #7
  br label %dump_reg.exit635.i.i

dump_reg.exit635.i.i:                             ; preds = %do.end.i.i631.i.i.5, %do.end.i.i631.i.i.4.dump_reg.exit635.i.i_crit_edge, %do.end.i.i631.i.i.3.dump_reg.exit635.i.i_crit_edge, %do.end.i.i631.i.i.2.dump_reg.exit635.i.i_crit_edge, %do.end.i.i631.i.i.1.dump_reg.exit635.i.i_crit_edge, %do.end.i.i631.i.i.dump_reg.exit635.i.i_crit_edge, %dump_reg.exit617.i.i.dump_reg.exit635.i.i_crit_edge
  %call1.lcssa.i.i632.i.i = phi i32 [ %call111.i.i619.i.i, %dump_reg.exit617.i.i.dump_reg.exit635.i.i_crit_edge ], [ %call1.i.i627.i.i, %do.end.i.i631.i.i.dump_reg.exit635.i.i_crit_edge ], [ %call1.i.i627.i.i.1, %do.end.i.i631.i.i.1.dump_reg.exit635.i.i_crit_edge ], [ %call1.i.i627.i.i.2, %do.end.i.i631.i.i.2.dump_reg.exit635.i.i_crit_edge ], [ %call1.i.i627.i.i.3, %do.end.i.i631.i.i.3.dump_reg.exit635.i.i_crit_edge ], [ %call1.i.i627.i.i.4, %do.end.i.i631.i.i.4.dump_reg.exit635.i.i_crit_edge ], [ %call1.i.i627.i.i.5, %do.end.i.i631.i.i.5 ]
  %call1.i634.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name40.i, i32 noundef 37, i32 noundef %call1.lcssa.i.i632.i.i) #10
  %90 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i.i637.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %91, i8 noundef zeroext 50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i637.i.i)
  %cmp12.i.i638.i.i = icmp slt i32 %call111.i.i637.i.i, 0
  br i1 %cmp12.i.i638.i.i, label %do.end.i.i649.i.i, label %dump_reg.exit635.i.i.dump_reg.exit653.i.i_crit_edge

dump_reg.exit635.i.i.dump_reg.exit653.i.i_crit_edge: ; preds = %dump_reg.exit635.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit653.i.i

do.end.i.i649.i.i:                                ; preds = %dump_reg.exit635.i.i
  %call4.i.i642.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 0) #10
  %call5.i.i644.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i645.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %91, i8 noundef zeroext 50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i645.i.i)
  %cmp.i.i646.i.i = icmp slt i32 %call1.i.i645.i.i, 0
  br i1 %cmp.i.i646.i.i, label %do.end.i.i649.i.i.1, label %do.end.i.i649.i.i.dump_reg.exit653.i.i_crit_edge

do.end.i.i649.i.i.dump_reg.exit653.i.i_crit_edge: ; preds = %do.end.i.i649.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit653.i.i

do.end.i.i649.i.i.1:                              ; preds = %do.end.i.i649.i.i
  %call4.i.i642.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 1) #10
  %call5.i.i644.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i645.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %91, i8 noundef zeroext 50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i645.i.i.1)
  %cmp.i.i646.i.i.1 = icmp slt i32 %call1.i.i645.i.i.1, 0
  br i1 %cmp.i.i646.i.i.1, label %do.end.i.i649.i.i.2, label %do.end.i.i649.i.i.1.dump_reg.exit653.i.i_crit_edge

do.end.i.i649.i.i.1.dump_reg.exit653.i.i_crit_edge: ; preds = %do.end.i.i649.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit653.i.i

do.end.i.i649.i.i.2:                              ; preds = %do.end.i.i649.i.i.1
  %call4.i.i642.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 2) #10
  %call5.i.i644.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i645.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %91, i8 noundef zeroext 50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i645.i.i.2)
  %cmp.i.i646.i.i.2 = icmp slt i32 %call1.i.i645.i.i.2, 0
  br i1 %cmp.i.i646.i.i.2, label %do.end.i.i649.i.i.3, label %do.end.i.i649.i.i.2.dump_reg.exit653.i.i_crit_edge

do.end.i.i649.i.i.2.dump_reg.exit653.i.i_crit_edge: ; preds = %do.end.i.i649.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit653.i.i

do.end.i.i649.i.i.3:                              ; preds = %do.end.i.i649.i.i.2
  %call4.i.i642.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 3) #10
  %call5.i.i644.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i645.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %91, i8 noundef zeroext 50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i645.i.i.3)
  %cmp.i.i646.i.i.3 = icmp slt i32 %call1.i.i645.i.i.3, 0
  br i1 %cmp.i.i646.i.i.3, label %do.end.i.i649.i.i.4, label %do.end.i.i649.i.i.3.dump_reg.exit653.i.i_crit_edge

do.end.i.i649.i.i.3.dump_reg.exit653.i.i_crit_edge: ; preds = %do.end.i.i649.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit653.i.i

do.end.i.i649.i.i.4:                              ; preds = %do.end.i.i649.i.i.3
  %call4.i.i642.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 4) #10
  %call5.i.i644.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i645.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %91, i8 noundef zeroext 50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i645.i.i.4)
  %cmp.i.i646.i.i.4 = icmp slt i32 %call1.i.i645.i.i.4, 0
  br i1 %cmp.i.i646.i.i.4, label %do.end.i.i649.i.i.5, label %do.end.i.i649.i.i.4.dump_reg.exit653.i.i_crit_edge

do.end.i.i649.i.i.4.dump_reg.exit653.i.i_crit_edge: ; preds = %do.end.i.i649.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit653.i.i

do.end.i.i649.i.i.5:                              ; preds = %do.end.i.i649.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i642.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 5) #10
  %call5.i.i644.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i645.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %91, i8 noundef zeroext 50) #7
  br label %dump_reg.exit653.i.i

dump_reg.exit653.i.i:                             ; preds = %do.end.i.i649.i.i.5, %do.end.i.i649.i.i.4.dump_reg.exit653.i.i_crit_edge, %do.end.i.i649.i.i.3.dump_reg.exit653.i.i_crit_edge, %do.end.i.i649.i.i.2.dump_reg.exit653.i.i_crit_edge, %do.end.i.i649.i.i.1.dump_reg.exit653.i.i_crit_edge, %do.end.i.i649.i.i.dump_reg.exit653.i.i_crit_edge, %dump_reg.exit635.i.i.dump_reg.exit653.i.i_crit_edge
  %call1.lcssa.i.i650.i.i = phi i32 [ %call111.i.i637.i.i, %dump_reg.exit635.i.i.dump_reg.exit653.i.i_crit_edge ], [ %call1.i.i645.i.i, %do.end.i.i649.i.i.dump_reg.exit653.i.i_crit_edge ], [ %call1.i.i645.i.i.1, %do.end.i.i649.i.i.1.dump_reg.exit653.i.i_crit_edge ], [ %call1.i.i645.i.i.2, %do.end.i.i649.i.i.2.dump_reg.exit653.i.i_crit_edge ], [ %call1.i.i645.i.i.3, %do.end.i.i649.i.i.3.dump_reg.exit653.i.i_crit_edge ], [ %call1.i.i645.i.i.4, %do.end.i.i649.i.i.4.dump_reg.exit653.i.i_crit_edge ], [ %call1.i.i645.i.i.5, %do.end.i.i649.i.i.5 ]
  %call1.i652.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name40.i, i32 noundef 50, i32 noundef %call1.lcssa.i.i650.i.i) #10
  %92 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i.i655.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %93, i8 noundef zeroext 51) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i655.i.i)
  %cmp12.i.i656.i.i = icmp slt i32 %call111.i.i655.i.i, 0
  br i1 %cmp12.i.i656.i.i, label %do.end.i.i667.i.i, label %dump_reg.exit653.i.i.dump_reg.exit671.i.i_crit_edge

dump_reg.exit653.i.i.dump_reg.exit671.i.i_crit_edge: ; preds = %dump_reg.exit653.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit671.i.i

do.end.i.i667.i.i:                                ; preds = %dump_reg.exit653.i.i
  %call4.i.i660.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 0) #10
  %call5.i.i662.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i663.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %93, i8 noundef zeroext 51) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i663.i.i)
  %cmp.i.i664.i.i = icmp slt i32 %call1.i.i663.i.i, 0
  br i1 %cmp.i.i664.i.i, label %do.end.i.i667.i.i.1, label %do.end.i.i667.i.i.dump_reg.exit671.i.i_crit_edge

do.end.i.i667.i.i.dump_reg.exit671.i.i_crit_edge: ; preds = %do.end.i.i667.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit671.i.i

do.end.i.i667.i.i.1:                              ; preds = %do.end.i.i667.i.i
  %call4.i.i660.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 1) #10
  %call5.i.i662.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i663.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %93, i8 noundef zeroext 51) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i663.i.i.1)
  %cmp.i.i664.i.i.1 = icmp slt i32 %call1.i.i663.i.i.1, 0
  br i1 %cmp.i.i664.i.i.1, label %do.end.i.i667.i.i.2, label %do.end.i.i667.i.i.1.dump_reg.exit671.i.i_crit_edge

do.end.i.i667.i.i.1.dump_reg.exit671.i.i_crit_edge: ; preds = %do.end.i.i667.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit671.i.i

do.end.i.i667.i.i.2:                              ; preds = %do.end.i.i667.i.i.1
  %call4.i.i660.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 2) #10
  %call5.i.i662.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i663.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %93, i8 noundef zeroext 51) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i663.i.i.2)
  %cmp.i.i664.i.i.2 = icmp slt i32 %call1.i.i663.i.i.2, 0
  br i1 %cmp.i.i664.i.i.2, label %do.end.i.i667.i.i.3, label %do.end.i.i667.i.i.2.dump_reg.exit671.i.i_crit_edge

do.end.i.i667.i.i.2.dump_reg.exit671.i.i_crit_edge: ; preds = %do.end.i.i667.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit671.i.i

do.end.i.i667.i.i.3:                              ; preds = %do.end.i.i667.i.i.2
  %call4.i.i660.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 3) #10
  %call5.i.i662.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i663.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %93, i8 noundef zeroext 51) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i663.i.i.3)
  %cmp.i.i664.i.i.3 = icmp slt i32 %call1.i.i663.i.i.3, 0
  br i1 %cmp.i.i664.i.i.3, label %do.end.i.i667.i.i.4, label %do.end.i.i667.i.i.3.dump_reg.exit671.i.i_crit_edge

do.end.i.i667.i.i.3.dump_reg.exit671.i.i_crit_edge: ; preds = %do.end.i.i667.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit671.i.i

do.end.i.i667.i.i.4:                              ; preds = %do.end.i.i667.i.i.3
  %call4.i.i660.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 4) #10
  %call5.i.i662.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i663.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %93, i8 noundef zeroext 51) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i663.i.i.4)
  %cmp.i.i664.i.i.4 = icmp slt i32 %call1.i.i663.i.i.4, 0
  br i1 %cmp.i.i664.i.i.4, label %do.end.i.i667.i.i.5, label %do.end.i.i667.i.i.4.dump_reg.exit671.i.i_crit_edge

do.end.i.i667.i.i.4.dump_reg.exit671.i.i_crit_edge: ; preds = %do.end.i.i667.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit671.i.i

do.end.i.i667.i.i.5:                              ; preds = %do.end.i.i667.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i660.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 5) #10
  %call5.i.i662.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i663.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %93, i8 noundef zeroext 51) #7
  br label %dump_reg.exit671.i.i

dump_reg.exit671.i.i:                             ; preds = %do.end.i.i667.i.i.5, %do.end.i.i667.i.i.4.dump_reg.exit671.i.i_crit_edge, %do.end.i.i667.i.i.3.dump_reg.exit671.i.i_crit_edge, %do.end.i.i667.i.i.2.dump_reg.exit671.i.i_crit_edge, %do.end.i.i667.i.i.1.dump_reg.exit671.i.i_crit_edge, %do.end.i.i667.i.i.dump_reg.exit671.i.i_crit_edge, %dump_reg.exit653.i.i.dump_reg.exit671.i.i_crit_edge
  %call1.lcssa.i.i668.i.i = phi i32 [ %call111.i.i655.i.i, %dump_reg.exit653.i.i.dump_reg.exit671.i.i_crit_edge ], [ %call1.i.i663.i.i, %do.end.i.i667.i.i.dump_reg.exit671.i.i_crit_edge ], [ %call1.i.i663.i.i.1, %do.end.i.i667.i.i.1.dump_reg.exit671.i.i_crit_edge ], [ %call1.i.i663.i.i.2, %do.end.i.i667.i.i.2.dump_reg.exit671.i.i_crit_edge ], [ %call1.i.i663.i.i.3, %do.end.i.i667.i.i.3.dump_reg.exit671.i.i_crit_edge ], [ %call1.i.i663.i.i.4, %do.end.i.i667.i.i.4.dump_reg.exit671.i.i_crit_edge ], [ %call1.i.i663.i.i.5, %do.end.i.i667.i.i.5 ]
  %call1.i670.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name40.i, i32 noundef 51, i32 noundef %call1.lcssa.i.i668.i.i) #10
  %94 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i.i673.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %95, i8 noundef zeroext 52) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i673.i.i)
  %cmp12.i.i674.i.i = icmp slt i32 %call111.i.i673.i.i, 0
  br i1 %cmp12.i.i674.i.i, label %do.end.i.i685.i.i, label %dump_reg.exit671.i.i.dump_reg.exit689.i.i_crit_edge

dump_reg.exit671.i.i.dump_reg.exit689.i.i_crit_edge: ; preds = %dump_reg.exit671.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit689.i.i

do.end.i.i685.i.i:                                ; preds = %dump_reg.exit671.i.i
  %call4.i.i678.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 0) #10
  %call5.i.i680.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i681.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %95, i8 noundef zeroext 52) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i681.i.i)
  %cmp.i.i682.i.i = icmp slt i32 %call1.i.i681.i.i, 0
  br i1 %cmp.i.i682.i.i, label %do.end.i.i685.i.i.1, label %do.end.i.i685.i.i.dump_reg.exit689.i.i_crit_edge

do.end.i.i685.i.i.dump_reg.exit689.i.i_crit_edge: ; preds = %do.end.i.i685.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit689.i.i

do.end.i.i685.i.i.1:                              ; preds = %do.end.i.i685.i.i
  %call4.i.i678.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 1) #10
  %call5.i.i680.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i681.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %95, i8 noundef zeroext 52) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i681.i.i.1)
  %cmp.i.i682.i.i.1 = icmp slt i32 %call1.i.i681.i.i.1, 0
  br i1 %cmp.i.i682.i.i.1, label %do.end.i.i685.i.i.2, label %do.end.i.i685.i.i.1.dump_reg.exit689.i.i_crit_edge

do.end.i.i685.i.i.1.dump_reg.exit689.i.i_crit_edge: ; preds = %do.end.i.i685.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit689.i.i

do.end.i.i685.i.i.2:                              ; preds = %do.end.i.i685.i.i.1
  %call4.i.i678.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 2) #10
  %call5.i.i680.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i681.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %95, i8 noundef zeroext 52) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i681.i.i.2)
  %cmp.i.i682.i.i.2 = icmp slt i32 %call1.i.i681.i.i.2, 0
  br i1 %cmp.i.i682.i.i.2, label %do.end.i.i685.i.i.3, label %do.end.i.i685.i.i.2.dump_reg.exit689.i.i_crit_edge

do.end.i.i685.i.i.2.dump_reg.exit689.i.i_crit_edge: ; preds = %do.end.i.i685.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit689.i.i

do.end.i.i685.i.i.3:                              ; preds = %do.end.i.i685.i.i.2
  %call4.i.i678.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 3) #10
  %call5.i.i680.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i681.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %95, i8 noundef zeroext 52) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i681.i.i.3)
  %cmp.i.i682.i.i.3 = icmp slt i32 %call1.i.i681.i.i.3, 0
  br i1 %cmp.i.i682.i.i.3, label %do.end.i.i685.i.i.4, label %do.end.i.i685.i.i.3.dump_reg.exit689.i.i_crit_edge

do.end.i.i685.i.i.3.dump_reg.exit689.i.i_crit_edge: ; preds = %do.end.i.i685.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit689.i.i

do.end.i.i685.i.i.4:                              ; preds = %do.end.i.i685.i.i.3
  %call4.i.i678.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 4) #10
  %call5.i.i680.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i681.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %95, i8 noundef zeroext 52) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i681.i.i.4)
  %cmp.i.i682.i.i.4 = icmp slt i32 %call1.i.i681.i.i.4, 0
  br i1 %cmp.i.i682.i.i.4, label %do.end.i.i685.i.i.5, label %do.end.i.i685.i.i.4.dump_reg.exit689.i.i_crit_edge

do.end.i.i685.i.i.4.dump_reg.exit689.i.i_crit_edge: ; preds = %do.end.i.i685.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit689.i.i

do.end.i.i685.i.i.5:                              ; preds = %do.end.i.i685.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i678.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 5) #10
  %call5.i.i680.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i681.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %95, i8 noundef zeroext 52) #7
  br label %dump_reg.exit689.i.i

dump_reg.exit689.i.i:                             ; preds = %do.end.i.i685.i.i.5, %do.end.i.i685.i.i.4.dump_reg.exit689.i.i_crit_edge, %do.end.i.i685.i.i.3.dump_reg.exit689.i.i_crit_edge, %do.end.i.i685.i.i.2.dump_reg.exit689.i.i_crit_edge, %do.end.i.i685.i.i.1.dump_reg.exit689.i.i_crit_edge, %do.end.i.i685.i.i.dump_reg.exit689.i.i_crit_edge, %dump_reg.exit671.i.i.dump_reg.exit689.i.i_crit_edge
  %call1.lcssa.i.i686.i.i = phi i32 [ %call111.i.i673.i.i, %dump_reg.exit671.i.i.dump_reg.exit689.i.i_crit_edge ], [ %call1.i.i681.i.i, %do.end.i.i685.i.i.dump_reg.exit689.i.i_crit_edge ], [ %call1.i.i681.i.i.1, %do.end.i.i685.i.i.1.dump_reg.exit689.i.i_crit_edge ], [ %call1.i.i681.i.i.2, %do.end.i.i685.i.i.2.dump_reg.exit689.i.i_crit_edge ], [ %call1.i.i681.i.i.3, %do.end.i.i685.i.i.3.dump_reg.exit689.i.i_crit_edge ], [ %call1.i.i681.i.i.4, %do.end.i.i685.i.i.4.dump_reg.exit689.i.i_crit_edge ], [ %call1.i.i681.i.i.5, %do.end.i.i685.i.i.5 ]
  %call1.i688.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name40.i, i32 noundef 52, i32 noundef %call1.lcssa.i.i686.i.i) #10
  %96 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i.i691.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %97, i8 noundef zeroext 53) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i691.i.i)
  %cmp12.i.i692.i.i = icmp slt i32 %call111.i.i691.i.i, 0
  br i1 %cmp12.i.i692.i.i, label %do.end.i.i703.i.i, label %dump_reg.exit689.i.i.dump_reg.exit707.i.i_crit_edge

dump_reg.exit689.i.i.dump_reg.exit707.i.i_crit_edge: ; preds = %dump_reg.exit689.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit707.i.i

do.end.i.i703.i.i:                                ; preds = %dump_reg.exit689.i.i
  %call4.i.i696.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 0) #10
  %call5.i.i698.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i699.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %97, i8 noundef zeroext 53) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i699.i.i)
  %cmp.i.i700.i.i = icmp slt i32 %call1.i.i699.i.i, 0
  br i1 %cmp.i.i700.i.i, label %do.end.i.i703.i.i.1, label %do.end.i.i703.i.i.dump_reg.exit707.i.i_crit_edge

do.end.i.i703.i.i.dump_reg.exit707.i.i_crit_edge: ; preds = %do.end.i.i703.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit707.i.i

do.end.i.i703.i.i.1:                              ; preds = %do.end.i.i703.i.i
  %call4.i.i696.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 1) #10
  %call5.i.i698.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i699.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %97, i8 noundef zeroext 53) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i699.i.i.1)
  %cmp.i.i700.i.i.1 = icmp slt i32 %call1.i.i699.i.i.1, 0
  br i1 %cmp.i.i700.i.i.1, label %do.end.i.i703.i.i.2, label %do.end.i.i703.i.i.1.dump_reg.exit707.i.i_crit_edge

do.end.i.i703.i.i.1.dump_reg.exit707.i.i_crit_edge: ; preds = %do.end.i.i703.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit707.i.i

do.end.i.i703.i.i.2:                              ; preds = %do.end.i.i703.i.i.1
  %call4.i.i696.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 2) #10
  %call5.i.i698.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i699.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %97, i8 noundef zeroext 53) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i699.i.i.2)
  %cmp.i.i700.i.i.2 = icmp slt i32 %call1.i.i699.i.i.2, 0
  br i1 %cmp.i.i700.i.i.2, label %do.end.i.i703.i.i.3, label %do.end.i.i703.i.i.2.dump_reg.exit707.i.i_crit_edge

do.end.i.i703.i.i.2.dump_reg.exit707.i.i_crit_edge: ; preds = %do.end.i.i703.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit707.i.i

do.end.i.i703.i.i.3:                              ; preds = %do.end.i.i703.i.i.2
  %call4.i.i696.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 3) #10
  %call5.i.i698.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i699.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %97, i8 noundef zeroext 53) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i699.i.i.3)
  %cmp.i.i700.i.i.3 = icmp slt i32 %call1.i.i699.i.i.3, 0
  br i1 %cmp.i.i700.i.i.3, label %do.end.i.i703.i.i.4, label %do.end.i.i703.i.i.3.dump_reg.exit707.i.i_crit_edge

do.end.i.i703.i.i.3.dump_reg.exit707.i.i_crit_edge: ; preds = %do.end.i.i703.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit707.i.i

do.end.i.i703.i.i.4:                              ; preds = %do.end.i.i703.i.i.3
  %call4.i.i696.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 4) #10
  %call5.i.i698.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i699.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %97, i8 noundef zeroext 53) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i699.i.i.4)
  %cmp.i.i700.i.i.4 = icmp slt i32 %call1.i.i699.i.i.4, 0
  br i1 %cmp.i.i700.i.i.4, label %do.end.i.i703.i.i.5, label %do.end.i.i703.i.i.4.dump_reg.exit707.i.i_crit_edge

do.end.i.i703.i.i.4.dump_reg.exit707.i.i_crit_edge: ; preds = %do.end.i.i703.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit707.i.i

do.end.i.i703.i.i.5:                              ; preds = %do.end.i.i703.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i696.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 5) #10
  %call5.i.i698.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i699.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %97, i8 noundef zeroext 53) #7
  br label %dump_reg.exit707.i.i

dump_reg.exit707.i.i:                             ; preds = %do.end.i.i703.i.i.5, %do.end.i.i703.i.i.4.dump_reg.exit707.i.i_crit_edge, %do.end.i.i703.i.i.3.dump_reg.exit707.i.i_crit_edge, %do.end.i.i703.i.i.2.dump_reg.exit707.i.i_crit_edge, %do.end.i.i703.i.i.1.dump_reg.exit707.i.i_crit_edge, %do.end.i.i703.i.i.dump_reg.exit707.i.i_crit_edge, %dump_reg.exit689.i.i.dump_reg.exit707.i.i_crit_edge
  %call1.lcssa.i.i704.i.i = phi i32 [ %call111.i.i691.i.i, %dump_reg.exit689.i.i.dump_reg.exit707.i.i_crit_edge ], [ %call1.i.i699.i.i, %do.end.i.i703.i.i.dump_reg.exit707.i.i_crit_edge ], [ %call1.i.i699.i.i.1, %do.end.i.i703.i.i.1.dump_reg.exit707.i.i_crit_edge ], [ %call1.i.i699.i.i.2, %do.end.i.i703.i.i.2.dump_reg.exit707.i.i_crit_edge ], [ %call1.i.i699.i.i.3, %do.end.i.i703.i.i.3.dump_reg.exit707.i.i_crit_edge ], [ %call1.i.i699.i.i.4, %do.end.i.i703.i.i.4.dump_reg.exit707.i.i_crit_edge ], [ %call1.i.i699.i.i.5, %do.end.i.i703.i.i.5 ]
  %call1.i706.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name40.i, i32 noundef 53, i32 noundef %call1.lcssa.i.i704.i.i) #10
  %98 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i.i709.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %99, i8 noundef zeroext 54) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i709.i.i)
  %cmp12.i.i710.i.i = icmp slt i32 %call111.i.i709.i.i, 0
  br i1 %cmp12.i.i710.i.i, label %do.end.i.i721.i.i, label %dump_reg.exit707.i.i.dump_reg.exit725.i.i_crit_edge

dump_reg.exit707.i.i.dump_reg.exit725.i.i_crit_edge: ; preds = %dump_reg.exit707.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit725.i.i

do.end.i.i721.i.i:                                ; preds = %dump_reg.exit707.i.i
  %call4.i.i714.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 0) #10
  %call5.i.i716.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i717.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %99, i8 noundef zeroext 54) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i717.i.i)
  %cmp.i.i718.i.i = icmp slt i32 %call1.i.i717.i.i, 0
  br i1 %cmp.i.i718.i.i, label %do.end.i.i721.i.i.1, label %do.end.i.i721.i.i.dump_reg.exit725.i.i_crit_edge

do.end.i.i721.i.i.dump_reg.exit725.i.i_crit_edge: ; preds = %do.end.i.i721.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit725.i.i

do.end.i.i721.i.i.1:                              ; preds = %do.end.i.i721.i.i
  %call4.i.i714.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 1) #10
  %call5.i.i716.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i717.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %99, i8 noundef zeroext 54) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i717.i.i.1)
  %cmp.i.i718.i.i.1 = icmp slt i32 %call1.i.i717.i.i.1, 0
  br i1 %cmp.i.i718.i.i.1, label %do.end.i.i721.i.i.2, label %do.end.i.i721.i.i.1.dump_reg.exit725.i.i_crit_edge

do.end.i.i721.i.i.1.dump_reg.exit725.i.i_crit_edge: ; preds = %do.end.i.i721.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit725.i.i

do.end.i.i721.i.i.2:                              ; preds = %do.end.i.i721.i.i.1
  %call4.i.i714.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 2) #10
  %call5.i.i716.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i717.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %99, i8 noundef zeroext 54) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i717.i.i.2)
  %cmp.i.i718.i.i.2 = icmp slt i32 %call1.i.i717.i.i.2, 0
  br i1 %cmp.i.i718.i.i.2, label %do.end.i.i721.i.i.3, label %do.end.i.i721.i.i.2.dump_reg.exit725.i.i_crit_edge

do.end.i.i721.i.i.2.dump_reg.exit725.i.i_crit_edge: ; preds = %do.end.i.i721.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit725.i.i

do.end.i.i721.i.i.3:                              ; preds = %do.end.i.i721.i.i.2
  %call4.i.i714.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 3) #10
  %call5.i.i716.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i717.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %99, i8 noundef zeroext 54) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i717.i.i.3)
  %cmp.i.i718.i.i.3 = icmp slt i32 %call1.i.i717.i.i.3, 0
  br i1 %cmp.i.i718.i.i.3, label %do.end.i.i721.i.i.4, label %do.end.i.i721.i.i.3.dump_reg.exit725.i.i_crit_edge

do.end.i.i721.i.i.3.dump_reg.exit725.i.i_crit_edge: ; preds = %do.end.i.i721.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit725.i.i

do.end.i.i721.i.i.4:                              ; preds = %do.end.i.i721.i.i.3
  %call4.i.i714.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 4) #10
  %call5.i.i716.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i717.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %99, i8 noundef zeroext 54) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i717.i.i.4)
  %cmp.i.i718.i.i.4 = icmp slt i32 %call1.i.i717.i.i.4, 0
  br i1 %cmp.i.i718.i.i.4, label %do.end.i.i721.i.i.5, label %do.end.i.i721.i.i.4.dump_reg.exit725.i.i_crit_edge

do.end.i.i721.i.i.4.dump_reg.exit725.i.i_crit_edge: ; preds = %do.end.i.i721.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit725.i.i

do.end.i.i721.i.i.5:                              ; preds = %do.end.i.i721.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i714.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 5) #10
  %call5.i.i716.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i717.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %99, i8 noundef zeroext 54) #7
  br label %dump_reg.exit725.i.i

dump_reg.exit725.i.i:                             ; preds = %do.end.i.i721.i.i.5, %do.end.i.i721.i.i.4.dump_reg.exit725.i.i_crit_edge, %do.end.i.i721.i.i.3.dump_reg.exit725.i.i_crit_edge, %do.end.i.i721.i.i.2.dump_reg.exit725.i.i_crit_edge, %do.end.i.i721.i.i.1.dump_reg.exit725.i.i_crit_edge, %do.end.i.i721.i.i.dump_reg.exit725.i.i_crit_edge, %dump_reg.exit707.i.i.dump_reg.exit725.i.i_crit_edge
  %call1.lcssa.i.i722.i.i = phi i32 [ %call111.i.i709.i.i, %dump_reg.exit707.i.i.dump_reg.exit725.i.i_crit_edge ], [ %call1.i.i717.i.i, %do.end.i.i721.i.i.dump_reg.exit725.i.i_crit_edge ], [ %call1.i.i717.i.i.1, %do.end.i.i721.i.i.1.dump_reg.exit725.i.i_crit_edge ], [ %call1.i.i717.i.i.2, %do.end.i.i721.i.i.2.dump_reg.exit725.i.i_crit_edge ], [ %call1.i.i717.i.i.3, %do.end.i.i721.i.i.3.dump_reg.exit725.i.i_crit_edge ], [ %call1.i.i717.i.i.4, %do.end.i.i721.i.i.4.dump_reg.exit725.i.i_crit_edge ], [ %call1.i.i717.i.i.5, %do.end.i.i721.i.i.5 ]
  %call1.i724.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name40.i, i32 noundef 54, i32 noundef %call1.lcssa.i.i722.i.i) #10
  %100 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i.i727.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %101, i8 noundef zeroext 55) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i727.i.i)
  %cmp12.i.i728.i.i = icmp slt i32 %call111.i.i727.i.i, 0
  br i1 %cmp12.i.i728.i.i, label %do.end.i.i739.i.i, label %dump_reg.exit725.i.i.dump_reg.exit743.i.i_crit_edge

dump_reg.exit725.i.i.dump_reg.exit743.i.i_crit_edge: ; preds = %dump_reg.exit725.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit743.i.i

do.end.i.i739.i.i:                                ; preds = %dump_reg.exit725.i.i
  %call4.i.i732.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 0) #10
  %call5.i.i734.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i735.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %101, i8 noundef zeroext 55) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i735.i.i)
  %cmp.i.i736.i.i = icmp slt i32 %call1.i.i735.i.i, 0
  br i1 %cmp.i.i736.i.i, label %do.end.i.i739.i.i.1, label %do.end.i.i739.i.i.dump_reg.exit743.i.i_crit_edge

do.end.i.i739.i.i.dump_reg.exit743.i.i_crit_edge: ; preds = %do.end.i.i739.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit743.i.i

do.end.i.i739.i.i.1:                              ; preds = %do.end.i.i739.i.i
  %call4.i.i732.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 1) #10
  %call5.i.i734.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i735.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %101, i8 noundef zeroext 55) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i735.i.i.1)
  %cmp.i.i736.i.i.1 = icmp slt i32 %call1.i.i735.i.i.1, 0
  br i1 %cmp.i.i736.i.i.1, label %do.end.i.i739.i.i.2, label %do.end.i.i739.i.i.1.dump_reg.exit743.i.i_crit_edge

do.end.i.i739.i.i.1.dump_reg.exit743.i.i_crit_edge: ; preds = %do.end.i.i739.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit743.i.i

do.end.i.i739.i.i.2:                              ; preds = %do.end.i.i739.i.i.1
  %call4.i.i732.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 2) #10
  %call5.i.i734.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i735.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %101, i8 noundef zeroext 55) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i735.i.i.2)
  %cmp.i.i736.i.i.2 = icmp slt i32 %call1.i.i735.i.i.2, 0
  br i1 %cmp.i.i736.i.i.2, label %do.end.i.i739.i.i.3, label %do.end.i.i739.i.i.2.dump_reg.exit743.i.i_crit_edge

do.end.i.i739.i.i.2.dump_reg.exit743.i.i_crit_edge: ; preds = %do.end.i.i739.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit743.i.i

do.end.i.i739.i.i.3:                              ; preds = %do.end.i.i739.i.i.2
  %call4.i.i732.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 3) #10
  %call5.i.i734.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i735.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %101, i8 noundef zeroext 55) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i735.i.i.3)
  %cmp.i.i736.i.i.3 = icmp slt i32 %call1.i.i735.i.i.3, 0
  br i1 %cmp.i.i736.i.i.3, label %do.end.i.i739.i.i.4, label %do.end.i.i739.i.i.3.dump_reg.exit743.i.i_crit_edge

do.end.i.i739.i.i.3.dump_reg.exit743.i.i_crit_edge: ; preds = %do.end.i.i739.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit743.i.i

do.end.i.i739.i.i.4:                              ; preds = %do.end.i.i739.i.i.3
  %call4.i.i732.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 4) #10
  %call5.i.i734.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i735.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %101, i8 noundef zeroext 55) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i735.i.i.4)
  %cmp.i.i736.i.i.4 = icmp slt i32 %call1.i.i735.i.i.4, 0
  br i1 %cmp.i.i736.i.i.4, label %do.end.i.i739.i.i.5, label %do.end.i.i739.i.i.4.dump_reg.exit743.i.i_crit_edge

do.end.i.i739.i.i.4.dump_reg.exit743.i.i_crit_edge: ; preds = %do.end.i.i739.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit743.i.i

do.end.i.i739.i.i.5:                              ; preds = %do.end.i.i739.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i732.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 5) #10
  %call5.i.i734.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i735.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %101, i8 noundef zeroext 55) #7
  br label %dump_reg.exit743.i.i

dump_reg.exit743.i.i:                             ; preds = %do.end.i.i739.i.i.5, %do.end.i.i739.i.i.4.dump_reg.exit743.i.i_crit_edge, %do.end.i.i739.i.i.3.dump_reg.exit743.i.i_crit_edge, %do.end.i.i739.i.i.2.dump_reg.exit743.i.i_crit_edge, %do.end.i.i739.i.i.1.dump_reg.exit743.i.i_crit_edge, %do.end.i.i739.i.i.dump_reg.exit743.i.i_crit_edge, %dump_reg.exit725.i.i.dump_reg.exit743.i.i_crit_edge
  %call1.lcssa.i.i740.i.i = phi i32 [ %call111.i.i727.i.i, %dump_reg.exit725.i.i.dump_reg.exit743.i.i_crit_edge ], [ %call1.i.i735.i.i, %do.end.i.i739.i.i.dump_reg.exit743.i.i_crit_edge ], [ %call1.i.i735.i.i.1, %do.end.i.i739.i.i.1.dump_reg.exit743.i.i_crit_edge ], [ %call1.i.i735.i.i.2, %do.end.i.i739.i.i.2.dump_reg.exit743.i.i_crit_edge ], [ %call1.i.i735.i.i.3, %do.end.i.i739.i.i.3.dump_reg.exit743.i.i_crit_edge ], [ %call1.i.i735.i.i.4, %do.end.i.i739.i.i.4.dump_reg.exit743.i.i_crit_edge ], [ %call1.i.i735.i.i.5, %do.end.i.i739.i.i.5 ]
  %call1.i742.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name40.i, i32 noundef 55, i32 noundef %call1.lcssa.i.i740.i.i) #10
  %102 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i.i745.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %103, i8 noundef zeroext 56) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i745.i.i)
  %cmp12.i.i746.i.i = icmp slt i32 %call111.i.i745.i.i, 0
  br i1 %cmp12.i.i746.i.i, label %do.end.i.i757.i.i, label %dump_reg.exit743.i.i.dump_reg.exit761.i.i_crit_edge

dump_reg.exit743.i.i.dump_reg.exit761.i.i_crit_edge: ; preds = %dump_reg.exit743.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit761.i.i

do.end.i.i757.i.i:                                ; preds = %dump_reg.exit743.i.i
  %call4.i.i750.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 0) #10
  %call5.i.i752.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i753.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %103, i8 noundef zeroext 56) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i753.i.i)
  %cmp.i.i754.i.i = icmp slt i32 %call1.i.i753.i.i, 0
  br i1 %cmp.i.i754.i.i, label %do.end.i.i757.i.i.1, label %do.end.i.i757.i.i.dump_reg.exit761.i.i_crit_edge

do.end.i.i757.i.i.dump_reg.exit761.i.i_crit_edge: ; preds = %do.end.i.i757.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit761.i.i

do.end.i.i757.i.i.1:                              ; preds = %do.end.i.i757.i.i
  %call4.i.i750.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 1) #10
  %call5.i.i752.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i753.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %103, i8 noundef zeroext 56) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i753.i.i.1)
  %cmp.i.i754.i.i.1 = icmp slt i32 %call1.i.i753.i.i.1, 0
  br i1 %cmp.i.i754.i.i.1, label %do.end.i.i757.i.i.2, label %do.end.i.i757.i.i.1.dump_reg.exit761.i.i_crit_edge

do.end.i.i757.i.i.1.dump_reg.exit761.i.i_crit_edge: ; preds = %do.end.i.i757.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit761.i.i

do.end.i.i757.i.i.2:                              ; preds = %do.end.i.i757.i.i.1
  %call4.i.i750.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 2) #10
  %call5.i.i752.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i753.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %103, i8 noundef zeroext 56) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i753.i.i.2)
  %cmp.i.i754.i.i.2 = icmp slt i32 %call1.i.i753.i.i.2, 0
  br i1 %cmp.i.i754.i.i.2, label %do.end.i.i757.i.i.3, label %do.end.i.i757.i.i.2.dump_reg.exit761.i.i_crit_edge

do.end.i.i757.i.i.2.dump_reg.exit761.i.i_crit_edge: ; preds = %do.end.i.i757.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit761.i.i

do.end.i.i757.i.i.3:                              ; preds = %do.end.i.i757.i.i.2
  %call4.i.i750.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 3) #10
  %call5.i.i752.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i753.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %103, i8 noundef zeroext 56) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i753.i.i.3)
  %cmp.i.i754.i.i.3 = icmp slt i32 %call1.i.i753.i.i.3, 0
  br i1 %cmp.i.i754.i.i.3, label %do.end.i.i757.i.i.4, label %do.end.i.i757.i.i.3.dump_reg.exit761.i.i_crit_edge

do.end.i.i757.i.i.3.dump_reg.exit761.i.i_crit_edge: ; preds = %do.end.i.i757.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit761.i.i

do.end.i.i757.i.i.4:                              ; preds = %do.end.i.i757.i.i.3
  %call4.i.i750.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 4) #10
  %call5.i.i752.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i753.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %103, i8 noundef zeroext 56) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i753.i.i.4)
  %cmp.i.i754.i.i.4 = icmp slt i32 %call1.i.i753.i.i.4, 0
  br i1 %cmp.i.i754.i.i.4, label %do.end.i.i757.i.i.5, label %do.end.i.i757.i.i.4.dump_reg.exit761.i.i_crit_edge

do.end.i.i757.i.i.4.dump_reg.exit761.i.i_crit_edge: ; preds = %do.end.i.i757.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_reg.exit761.i.i

do.end.i.i757.i.i.5:                              ; preds = %do.end.i.i757.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i750.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 5) #10
  %call5.i.i752.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i753.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %103, i8 noundef zeroext 56) #7
  br label %dump_reg.exit761.i.i

dump_reg.exit761.i.i:                             ; preds = %do.end.i.i757.i.i.5, %do.end.i.i757.i.i.4.dump_reg.exit761.i.i_crit_edge, %do.end.i.i757.i.i.3.dump_reg.exit761.i.i_crit_edge, %do.end.i.i757.i.i.2.dump_reg.exit761.i.i_crit_edge, %do.end.i.i757.i.i.1.dump_reg.exit761.i.i_crit_edge, %do.end.i.i757.i.i.dump_reg.exit761.i.i_crit_edge, %dump_reg.exit743.i.i.dump_reg.exit761.i.i_crit_edge
  %call1.lcssa.i.i758.i.i = phi i32 [ %call111.i.i745.i.i, %dump_reg.exit743.i.i.dump_reg.exit761.i.i_crit_edge ], [ %call1.i.i753.i.i, %do.end.i.i757.i.i.dump_reg.exit761.i.i_crit_edge ], [ %call1.i.i753.i.i.1, %do.end.i.i757.i.i.1.dump_reg.exit761.i.i_crit_edge ], [ %call1.i.i753.i.i.2, %do.end.i.i757.i.i.2.dump_reg.exit761.i.i_crit_edge ], [ %call1.i.i753.i.i.3, %do.end.i.i757.i.i.3.dump_reg.exit761.i.i_crit_edge ], [ %call1.i.i753.i.i.4, %do.end.i.i757.i.i.4.dump_reg.exit761.i.i_crit_edge ], [ %call1.i.i753.i.i.5, %do.end.i.i757.i.i.5 ]
  %call1.i760.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name40.i, i32 noundef 56, i32 noundef %call1.lcssa.i.i758.i.i) #10
  %104 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev_priv.i.i66, align 4
  %call111.i.i763.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %105, i8 noundef zeroext 57) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i763.i.i)
  %cmp12.i.i764.i.i = icmp slt i32 %call111.i.i763.i.i, 0
  br i1 %cmp12.i.i764.i.i, label %do.end.i.i775.i.i, label %dump_reg.exit761.i.i.tvp514x_reg_dump.exit.i_crit_edge

dump_reg.exit761.i.i.tvp514x_reg_dump.exit.i_crit_edge: ; preds = %dump_reg.exit761.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_reg_dump.exit.i

do.end.i.i775.i.i:                                ; preds = %dump_reg.exit761.i.i
  %call4.i.i768.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 0) #10
  %call5.i.i770.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i771.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %105, i8 noundef zeroext 57) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i771.i.i)
  %cmp.i.i772.i.i = icmp slt i32 %call1.i.i771.i.i, 0
  br i1 %cmp.i.i772.i.i, label %do.end.i.i775.i.i.1, label %do.end.i.i775.i.i.tvp514x_reg_dump.exit.i_crit_edge

do.end.i.i775.i.i.tvp514x_reg_dump.exit.i_crit_edge: ; preds = %do.end.i.i775.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_reg_dump.exit.i

do.end.i.i775.i.i.1:                              ; preds = %do.end.i.i775.i.i
  %call4.i.i768.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 1) #10
  %call5.i.i770.i.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i771.i.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %105, i8 noundef zeroext 57) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i771.i.i.1)
  %cmp.i.i772.i.i.1 = icmp slt i32 %call1.i.i771.i.i.1, 0
  br i1 %cmp.i.i772.i.i.1, label %do.end.i.i775.i.i.2, label %do.end.i.i775.i.i.1.tvp514x_reg_dump.exit.i_crit_edge

do.end.i.i775.i.i.1.tvp514x_reg_dump.exit.i_crit_edge: ; preds = %do.end.i.i775.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_reg_dump.exit.i

do.end.i.i775.i.i.2:                              ; preds = %do.end.i.i775.i.i.1
  %call4.i.i768.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 2) #10
  %call5.i.i770.i.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i771.i.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %105, i8 noundef zeroext 57) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i771.i.i.2)
  %cmp.i.i772.i.i.2 = icmp slt i32 %call1.i.i771.i.i.2, 0
  br i1 %cmp.i.i772.i.i.2, label %do.end.i.i775.i.i.3, label %do.end.i.i775.i.i.2.tvp514x_reg_dump.exit.i_crit_edge

do.end.i.i775.i.i.2.tvp514x_reg_dump.exit.i_crit_edge: ; preds = %do.end.i.i775.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_reg_dump.exit.i

do.end.i.i775.i.i.3:                              ; preds = %do.end.i.i775.i.i.2
  %call4.i.i768.i.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 3) #10
  %call5.i.i770.i.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i771.i.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %105, i8 noundef zeroext 57) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i771.i.i.3)
  %cmp.i.i772.i.i.3 = icmp slt i32 %call1.i.i771.i.i.3, 0
  br i1 %cmp.i.i772.i.i.3, label %do.end.i.i775.i.i.4, label %do.end.i.i775.i.i.3.tvp514x_reg_dump.exit.i_crit_edge

do.end.i.i775.i.i.3.tvp514x_reg_dump.exit.i_crit_edge: ; preds = %do.end.i.i775.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_reg_dump.exit.i

do.end.i.i775.i.i.4:                              ; preds = %do.end.i.i775.i.i.3
  %call4.i.i768.i.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 4) #10
  %call5.i.i770.i.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i771.i.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %105, i8 noundef zeroext 57) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i771.i.i.4)
  %cmp.i.i772.i.i.4 = icmp slt i32 %call1.i.i771.i.i.4, 0
  br i1 %cmp.i.i772.i.i.4, label %do.end.i.i775.i.i.5, label %do.end.i.i775.i.i.4.tvp514x_reg_dump.exit.i_crit_edge

do.end.i.i775.i.i.4.tvp514x_reg_dump.exit.i_crit_edge: ; preds = %do.end.i.i775.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_reg_dump.exit.i

do.end.i.i775.i.i.5:                              ; preds = %do.end.i.i775.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i768.i.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name40.i, i32 noundef 5) #10
  %call5.i.i770.i.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.i771.i.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %105, i8 noundef zeroext 57) #7
  br label %tvp514x_reg_dump.exit.i

tvp514x_reg_dump.exit.i:                          ; preds = %do.end.i.i775.i.i.5, %do.end.i.i775.i.i.4.tvp514x_reg_dump.exit.i_crit_edge, %do.end.i.i775.i.i.3.tvp514x_reg_dump.exit.i_crit_edge, %do.end.i.i775.i.i.2.tvp514x_reg_dump.exit.i_crit_edge, %do.end.i.i775.i.i.1.tvp514x_reg_dump.exit.i_crit_edge, %do.end.i.i775.i.i.tvp514x_reg_dump.exit.i_crit_edge, %dump_reg.exit761.i.i.tvp514x_reg_dump.exit.i_crit_edge
  %call1.lcssa.i.i776.i.i = phi i32 [ %call111.i.i763.i.i, %dump_reg.exit761.i.i.tvp514x_reg_dump.exit.i_crit_edge ], [ %call1.i.i771.i.i, %do.end.i.i775.i.i.tvp514x_reg_dump.exit.i_crit_edge ], [ %call1.i.i771.i.i.1, %do.end.i.i775.i.i.1.tvp514x_reg_dump.exit.i_crit_edge ], [ %call1.i.i771.i.i.2, %do.end.i.i775.i.i.2.tvp514x_reg_dump.exit.i_crit_edge ], [ %call1.i.i771.i.i.3, %do.end.i.i775.i.i.3.tvp514x_reg_dump.exit.i_crit_edge ], [ %call1.i.i771.i.i.4, %do.end.i.i775.i.i.4.tvp514x_reg_dump.exit.i_crit_edge ], [ %call1.i.i771.i.i.5, %do.end.i.i775.i.i.5 ]
  %call1.i778.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name40.i, i32 noundef 57, i32 noundef %call1.lcssa.i.i776.i.i) #10
  br label %if.end39

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %name40.i) #10
  br label %cleanup

if.end39:                                         ; preds = %tvp514x_reg_dump.exit.i, %if.end.i.if.end39_crit_edge
  %106 = ptrtoint ptr %streaming to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 1, ptr %streaming, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %do.end34, %do.end23, %do.end12, %if.end4, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %do.end12 ], [ -19, %do.end23 ], [ %call.i, %do.end34 ], [ %call1.i.lcssa, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end39 ], [ 0, %if.end4 ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tvp514x_g_frame_interval(ptr nocapture noundef readonly %sd, ptr nocapture noundef writeonly %ival) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %current_std1 = getelementptr inbounds %struct.tvp514x_decoder, ptr %sd, i32 0, i32 9
  %0 = ptrtoint ptr %current_std1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_std1, align 4
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %ival, i32 0, i32 1
  %std_list = getelementptr inbounds %struct.tvp514x_decoder, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %std_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %std_list, align 4
  %frameperiod = getelementptr %struct.tvp514x_std_info, ptr %3, i32 %1, i32 3, i32 3
  %4 = ptrtoint ptr %frameperiod to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %frameperiod, align 8
  %6 = ptrtoint ptr %interval to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %5, ptr %interval, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tvp514x_s_frame_interval(ptr nocapture noundef readonly %sd, ptr nocapture noundef writeonly %ival) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %ival, i32 0, i32 1
  %current_std1 = getelementptr inbounds %struct.tvp514x_decoder, ptr %sd, i32 0, i32 9
  %0 = ptrtoint ptr %current_std1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_std1, align 4
  %std_list = getelementptr inbounds %struct.tvp514x_decoder, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %std_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %std_list, align 4
  %frameperiod = getelementptr %struct.tvp514x_std_info, ptr %3, i32 %1, i32 3, i32 3
  %4 = ptrtoint ptr %frameperiod to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %frameperiod, align 8
  %6 = ptrtoint ptr %interval to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %5, ptr %interval, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tvp514x_write_regs(ptr noundef %sd, ptr nocapture noundef readonly %reglist) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %next.0 = phi ptr [ %reglist, %entry ], [ %incdec.ptr, %for.inc ]
  %0 = ptrtoint ptr %next.0 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %next.0, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.49)
  switch i8 %1, label %if.end11 [
    i8 1, label %for.cond.cleanup_crit_edge
    i8 2, label %if.then
    i8 3, label %for.cond.for.inc_crit_edge
  ]

for.cond.for.inc_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  %val = getelementptr inbounds %struct.tvp514x_reg, ptr %next.0, i32 0, i32 2
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  tail call void @msleep(i32 noundef %4) #7
  br label %for.inc

if.end11:                                         ; preds = %for.cond
  %reg = getelementptr inbounds %struct.tvp514x_reg, ptr %next.0, i32 0, i32 1
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reg, align 1
  %val12 = getelementptr inbounds %struct.tvp514x_reg, ptr %next.0, i32 0, i32 2
  %7 = ptrtoint ptr %val12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val12, align 4
  %conv13 = trunc i32 %8 to i8
  %9 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_priv.i.i, align 4
  %call110.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext %6, i8 noundef zeroext %conv13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110.i)
  %tobool.not11.not.i = icmp eq i32 %call110.i, 0
  br i1 %tobool.not11.not.i, label %if.end11.for.inc_crit_edge, label %do.end.i

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end.i:                                         ; preds = %if.end11
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i, i32 noundef 0) #10
  %call4.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext %6, i8 noundef zeroext %conv13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i.not, label %do.end.i.tvp514x_write_reg.exit_crit_edge, label %do.end.i.1

do.end.i.tvp514x_write_reg.exit_crit_edge:        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit

do.end.i.1:                                       ; preds = %do.end.i
  %call3.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i, i32 noundef 1) #10
  %call4.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext %6, i8 noundef zeroext %conv13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.1)
  %tobool.not.i.1.not = icmp eq i32 %call1.i.1, 0
  br i1 %tobool.not.i.1.not, label %do.end.i.1.tvp514x_write_reg.exit_crit_edge, label %do.end.i.2

do.end.i.1.tvp514x_write_reg.exit_crit_edge:      ; preds = %do.end.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit

do.end.i.2:                                       ; preds = %do.end.i.1
  %call3.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i, i32 noundef 2) #10
  %call4.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext %6, i8 noundef zeroext %conv13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.2)
  %tobool.not.i.2.not = icmp eq i32 %call1.i.2, 0
  br i1 %tobool.not.i.2.not, label %do.end.i.2.tvp514x_write_reg.exit_crit_edge, label %do.end.i.3

do.end.i.2.tvp514x_write_reg.exit_crit_edge:      ; preds = %do.end.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit

do.end.i.3:                                       ; preds = %do.end.i.2
  %call3.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i, i32 noundef 3) #10
  %call4.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext %6, i8 noundef zeroext %conv13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.3)
  %tobool.not.i.3.not = icmp eq i32 %call1.i.3, 0
  br i1 %tobool.not.i.3.not, label %do.end.i.3.tvp514x_write_reg.exit_crit_edge, label %do.end.i.4

do.end.i.3.tvp514x_write_reg.exit_crit_edge:      ; preds = %do.end.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit

do.end.i.4:                                       ; preds = %do.end.i.3
  %call3.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i, i32 noundef 4) #10
  %call4.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.4 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext %6, i8 noundef zeroext %conv13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.4)
  %tobool.not.i.4.not = icmp eq i32 %call1.i.4, 0
  br i1 %tobool.not.i.4.not, label %do.end.i.4.tvp514x_write_reg.exit_crit_edge, label %do.end.i.5

do.end.i.4.tvp514x_write_reg.exit_crit_edge:      ; preds = %do.end.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit

do.end.i.5:                                       ; preds = %do.end.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i, i32 noundef 5) #10
  %call4.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.5 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext %6, i8 noundef zeroext %conv13) #7
  br label %tvp514x_write_reg.exit

tvp514x_write_reg.exit:                           ; preds = %do.end.i.5, %do.end.i.4.tvp514x_write_reg.exit_crit_edge, %do.end.i.3.tvp514x_write_reg.exit_crit_edge, %do.end.i.2.tvp514x_write_reg.exit_crit_edge, %do.end.i.1.tvp514x_write_reg.exit_crit_edge, %do.end.i.tvp514x_write_reg.exit_crit_edge
  %call1.i.lcssa = phi i32 [ %call1.i, %do.end.i.tvp514x_write_reg.exit_crit_edge ], [ %call1.i.1, %do.end.i.1.tvp514x_write_reg.exit_crit_edge ], [ %call1.i.2, %do.end.i.2.tvp514x_write_reg.exit_crit_edge ], [ %call1.i.3, %do.end.i.3.tvp514x_write_reg.exit_crit_edge ], [ %call1.i.4, %do.end.i.4.tvp514x_write_reg.exit_crit_edge ], [ %call1.i.5, %do.end.i.5 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.lcssa)
  %tobool.not = icmp eq i32 %call1.i.lcssa, 0
  br i1 %tobool.not, label %tvp514x_write_reg.exit.for.inc_crit_edge, label %do.end

tvp514x_write_reg.exit.for.inc_crit_edge:         ; preds = %tvp514x_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end:                                           ; preds = %tvp514x_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name.i, i32 noundef %call1.i.lcssa) #10
  br label %cleanup

for.inc:                                          ; preds = %tvp514x_write_reg.exit.for.inc_crit_edge, %if.end11.for.inc_crit_edge, %if.then, %for.cond.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.tvp514x_reg, ptr %next.0, i32 1
  br label %for.cond

cleanup:                                          ; preds = %do.end, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i.lcssa, %do.end ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tvp514x_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  %index2 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %2 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index2, align 4
  %4 = getelementptr inbounds i8, ptr %code, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 40)
  store i32 %3, ptr %index2, align 4
  store i32 %1, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %code5 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %6 = ptrtoint ptr %code5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8198, ptr %code5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tvp514x_get_pad_format(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %format) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  %format3 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  br i1 %cmp, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %format4 = getelementptr inbounds %struct.tvp514x_decoder, ptr %sd, i32 0, i32 15
  %4 = call ptr @memcpy(ptr %format3, ptr %format4, i32 48)
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8198, ptr %code, align 4
  %current_std = getelementptr inbounds %struct.tvp514x_decoder, ptr %sd, i32 0, i32 9
  %6 = ptrtoint ptr %current_std to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %current_std, align 4
  %arrayidx = getelementptr [2 x %struct.tvp514x_std_info], ptr @tvp514x_std_list, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 8
  %10 = ptrtoint ptr %format3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %format3, align 4
  %11 = load i32, ptr %current_std, align 4
  %height = getelementptr [2 x %struct.tvp514x_std_info], ptr @tvp514x_std_list, i32 0, i32 %11, i32 1
  %12 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height, align 4
  %height12 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %height12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %height12, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %15 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %colorspace, align 4
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %field, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 0, %if.end5 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tvp514x_set_pad_format(ptr nocapture noundef %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef readonly %fmt) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.not = icmp eq i32 %1, 4
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8198, i32 %3)
  %cmp2.not = icmp eq i32 %3, 8198
  br i1 %cmp2.not, label %lor.lhs.false3, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %colorspace = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %4 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %colorspace, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp5.not = icmp eq i32 %5, 1
  br i1 %cmp5.not, label %lor.lhs.false6, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %6 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %format, align 4
  %current_std = getelementptr inbounds %struct.tvp514x_decoder, ptr %sd, i32 0, i32 9
  %8 = ptrtoint ptr %current_std to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %current_std, align 4
  %arrayidx = getelementptr [2 x %struct.tvp514x_std_info], ptr @tvp514x_std_list, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %11)
  %cmp9.not = icmp eq i32 %7, %11
  br i1 %cmp9.not, label %lor.lhs.false10, label %lor.lhs.false6.cleanup_crit_edge

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false10:                                  ; preds = %lor.lhs.false6
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height, align 4
  %height14 = getelementptr [2 x %struct.tvp514x_std_info], ptr @tvp514x_std_list, i32 0, i32 %9, i32 1
  %14 = ptrtoint ptr %height14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp15.not = icmp eq i32 %13, %15
  br i1 %cmp15.not, label %if.end, label %lor.lhs.false10.cleanup_crit_edge

lor.lhs.false10.cleanup_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #9
  %format16 = getelementptr inbounds %struct.tvp514x_decoder, ptr %sd, i32 0, i32 15
  %16 = call ptr @memcpy(ptr %format16, ptr %format, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false10.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false10.cleanup_crit_edge ], [ -22, %lor.lhs.false6.cleanup_crit_edge ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp514x_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val, align 4
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %5, label %entry.do.body_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963777, label %sw.bb4
    i32 9963778, label %sw.bb13
    i32 9963779, label %sw.bb22
    i32 9963794, label %sw.bb38
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

sw.bb:                                            ; preds = %entry
  %conv = trunc i32 %3 to i8
  %dev_priv.i.i = getelementptr i8, ptr %1, i32 -44
  %7 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i.i, align 4
  %call110.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 9, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110.i)
  %tobool.not11.not.i = icmp eq i32 %call110.i, 0
  br i1 %tobool.not11.not.i, label %sw.bb.do.body.sink.split_crit_edge, label %do.end.lr.ph.i

sw.bb.do.body.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.sink.split

do.end.lr.ph.i:                                   ; preds = %sw.bb
  %name.i = getelementptr i8, ptr %1, i32 -80
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i, i32 noundef 0) #10
  %call4.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 9, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i.not, label %do.end.lr.ph.i.tvp514x_write_reg.exit_crit_edge, label %do.end.i.1

do.end.lr.ph.i.tvp514x_write_reg.exit_crit_edge:  ; preds = %do.end.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit

do.end.i.1:                                       ; preds = %do.end.lr.ph.i
  %call3.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i, i32 noundef 1) #10
  %call4.i.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 9, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.1)
  %tobool.not.i.1.not = icmp eq i32 %call1.i.1, 0
  br i1 %tobool.not.i.1.not, label %do.end.i.1.tvp514x_write_reg.exit_crit_edge, label %do.end.i.2

do.end.i.1.tvp514x_write_reg.exit_crit_edge:      ; preds = %do.end.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit

do.end.i.2:                                       ; preds = %do.end.i.1
  %call3.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i, i32 noundef 2) #10
  %call4.i.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 9, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.2)
  %tobool.not.i.2.not = icmp eq i32 %call1.i.2, 0
  br i1 %tobool.not.i.2.not, label %do.end.i.2.tvp514x_write_reg.exit_crit_edge, label %do.end.i.3

do.end.i.2.tvp514x_write_reg.exit_crit_edge:      ; preds = %do.end.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit

do.end.i.3:                                       ; preds = %do.end.i.2
  %call3.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i, i32 noundef 3) #10
  %call4.i.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 9, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.3)
  %tobool.not.i.3.not = icmp eq i32 %call1.i.3, 0
  br i1 %tobool.not.i.3.not, label %do.end.i.3.tvp514x_write_reg.exit_crit_edge, label %do.end.i.4

do.end.i.3.tvp514x_write_reg.exit_crit_edge:      ; preds = %do.end.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit

do.end.i.4:                                       ; preds = %do.end.i.3
  %call3.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i, i32 noundef 4) #10
  %call4.i.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.4 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 9, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.4)
  %tobool.not.i.4.not = icmp eq i32 %call1.i.4, 0
  br i1 %tobool.not.i.4.not, label %do.end.i.4.tvp514x_write_reg.exit_crit_edge, label %do.end.i.5

do.end.i.4.tvp514x_write_reg.exit_crit_edge:      ; preds = %do.end.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit

do.end.i.5:                                       ; preds = %do.end.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i, i32 noundef 5) #10
  %call4.i.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i.5 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 9, i8 noundef zeroext %conv) #7
  br label %tvp514x_write_reg.exit

tvp514x_write_reg.exit:                           ; preds = %do.end.i.5, %do.end.i.4.tvp514x_write_reg.exit_crit_edge, %do.end.i.3.tvp514x_write_reg.exit_crit_edge, %do.end.i.2.tvp514x_write_reg.exit_crit_edge, %do.end.i.1.tvp514x_write_reg.exit_crit_edge, %do.end.lr.ph.i.tvp514x_write_reg.exit_crit_edge
  %call1.i.lcssa = phi i32 [ %call1.i, %do.end.lr.ph.i.tvp514x_write_reg.exit_crit_edge ], [ %call1.i.1, %do.end.i.1.tvp514x_write_reg.exit_crit_edge ], [ %call1.i.2, %do.end.i.2.tvp514x_write_reg.exit_crit_edge ], [ %call1.i.3, %do.end.i.3.tvp514x_write_reg.exit_crit_edge ], [ %call1.i.4, %do.end.i.4.tvp514x_write_reg.exit_crit_edge ], [ %call1.i.5, %do.end.i.5 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.lcssa)
  %tobool.not = icmp eq i32 %call1.i.lcssa, 0
  br i1 %tobool.not, label %tvp514x_write_reg.exit.do.body.sink.split_crit_edge, label %tvp514x_write_reg.exit.do.body_crit_edge

tvp514x_write_reg.exit.do.body_crit_edge:         ; preds = %tvp514x_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

tvp514x_write_reg.exit.do.body.sink.split_crit_edge: ; preds = %tvp514x_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.sink.split

sw.bb4:                                           ; preds = %entry
  %conv5 = trunc i32 %3 to i8
  %dev_priv.i.i90 = getelementptr i8, ptr %1, i32 -44
  %9 = ptrtoint ptr %dev_priv.i.i90 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_priv.i.i90, align 4
  %call110.i91 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 10, i8 noundef zeroext %conv5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110.i91)
  %tobool.not11.not.i92 = icmp eq i32 %call110.i91, 0
  br i1 %tobool.not11.not.i92, label %sw.bb4.do.body.sink.split_crit_edge, label %do.end.lr.ph.i94

sw.bb4.do.body.sink.split_crit_edge:              ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.sink.split

do.end.lr.ph.i94:                                 ; preds = %sw.bb4
  %name.i93 = getelementptr i8, ptr %1, i32 -80
  %call3.i96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i93, i32 noundef 0) #10
  %call4.i98 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i99 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 10, i8 noundef zeroext %conv5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i99)
  %tobool.not.i100.not = icmp eq i32 %call1.i99, 0
  br i1 %tobool.not.i100.not, label %do.end.lr.ph.i94.tvp514x_write_reg.exit105_crit_edge, label %do.end.i103.1

do.end.lr.ph.i94.tvp514x_write_reg.exit105_crit_edge: ; preds = %do.end.lr.ph.i94
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit105

do.end.i103.1:                                    ; preds = %do.end.lr.ph.i94
  %call3.i96.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i93, i32 noundef 1) #10
  %call4.i98.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i99.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 10, i8 noundef zeroext %conv5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i99.1)
  %tobool.not.i100.1.not = icmp eq i32 %call1.i99.1, 0
  br i1 %tobool.not.i100.1.not, label %do.end.i103.1.tvp514x_write_reg.exit105_crit_edge, label %do.end.i103.2

do.end.i103.1.tvp514x_write_reg.exit105_crit_edge: ; preds = %do.end.i103.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit105

do.end.i103.2:                                    ; preds = %do.end.i103.1
  %call3.i96.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i93, i32 noundef 2) #10
  %call4.i98.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i99.2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 10, i8 noundef zeroext %conv5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i99.2)
  %tobool.not.i100.2.not = icmp eq i32 %call1.i99.2, 0
  br i1 %tobool.not.i100.2.not, label %do.end.i103.2.tvp514x_write_reg.exit105_crit_edge, label %do.end.i103.3

do.end.i103.2.tvp514x_write_reg.exit105_crit_edge: ; preds = %do.end.i103.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit105

do.end.i103.3:                                    ; preds = %do.end.i103.2
  %call3.i96.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i93, i32 noundef 3) #10
  %call4.i98.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i99.3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 10, i8 noundef zeroext %conv5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i99.3)
  %tobool.not.i100.3.not = icmp eq i32 %call1.i99.3, 0
  br i1 %tobool.not.i100.3.not, label %do.end.i103.3.tvp514x_write_reg.exit105_crit_edge, label %do.end.i103.4

do.end.i103.3.tvp514x_write_reg.exit105_crit_edge: ; preds = %do.end.i103.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit105

do.end.i103.4:                                    ; preds = %do.end.i103.3
  %call3.i96.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i93, i32 noundef 4) #10
  %call4.i98.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i99.4 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 10, i8 noundef zeroext %conv5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i99.4)
  %tobool.not.i100.4.not = icmp eq i32 %call1.i99.4, 0
  br i1 %tobool.not.i100.4.not, label %do.end.i103.4.tvp514x_write_reg.exit105_crit_edge, label %do.end.i103.5

do.end.i103.4.tvp514x_write_reg.exit105_crit_edge: ; preds = %do.end.i103.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit105

do.end.i103.5:                                    ; preds = %do.end.i103.4
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i96.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i93, i32 noundef 5) #10
  %call4.i98.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i99.5 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 10, i8 noundef zeroext %conv5) #7
  br label %tvp514x_write_reg.exit105

tvp514x_write_reg.exit105:                        ; preds = %do.end.i103.5, %do.end.i103.4.tvp514x_write_reg.exit105_crit_edge, %do.end.i103.3.tvp514x_write_reg.exit105_crit_edge, %do.end.i103.2.tvp514x_write_reg.exit105_crit_edge, %do.end.i103.1.tvp514x_write_reg.exit105_crit_edge, %do.end.lr.ph.i94.tvp514x_write_reg.exit105_crit_edge
  %call1.i99.lcssa = phi i32 [ %call1.i99, %do.end.lr.ph.i94.tvp514x_write_reg.exit105_crit_edge ], [ %call1.i99.1, %do.end.i103.1.tvp514x_write_reg.exit105_crit_edge ], [ %call1.i99.2, %do.end.i103.2.tvp514x_write_reg.exit105_crit_edge ], [ %call1.i99.3, %do.end.i103.3.tvp514x_write_reg.exit105_crit_edge ], [ %call1.i99.4, %do.end.i103.4.tvp514x_write_reg.exit105_crit_edge ], [ %call1.i99.5, %do.end.i103.5 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i99.lcssa)
  %tobool7.not = icmp eq i32 %call1.i99.lcssa, 0
  br i1 %tobool7.not, label %tvp514x_write_reg.exit105.do.body.sink.split_crit_edge, label %tvp514x_write_reg.exit105.do.body_crit_edge

tvp514x_write_reg.exit105.do.body_crit_edge:      ; preds = %tvp514x_write_reg.exit105
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

tvp514x_write_reg.exit105.do.body.sink.split_crit_edge: ; preds = %tvp514x_write_reg.exit105
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.sink.split

sw.bb13:                                          ; preds = %entry
  %conv14 = trunc i32 %3 to i8
  %dev_priv.i.i106 = getelementptr i8, ptr %1, i32 -44
  %11 = ptrtoint ptr %dev_priv.i.i106 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_priv.i.i106, align 4
  %call110.i107 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 11, i8 noundef zeroext %conv14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110.i107)
  %tobool.not11.not.i108 = icmp eq i32 %call110.i107, 0
  br i1 %tobool.not11.not.i108, label %sw.bb13.do.body.sink.split_crit_edge, label %do.end.lr.ph.i110

sw.bb13.do.body.sink.split_crit_edge:             ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.sink.split

do.end.lr.ph.i110:                                ; preds = %sw.bb13
  %name.i109 = getelementptr i8, ptr %1, i32 -80
  %call3.i112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i109, i32 noundef 0) #10
  %call4.i114 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i115 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 11, i8 noundef zeroext %conv14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i115)
  %tobool.not.i116.not = icmp eq i32 %call1.i115, 0
  br i1 %tobool.not.i116.not, label %do.end.lr.ph.i110.tvp514x_write_reg.exit121_crit_edge, label %do.end.i119.1

do.end.lr.ph.i110.tvp514x_write_reg.exit121_crit_edge: ; preds = %do.end.lr.ph.i110
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit121

do.end.i119.1:                                    ; preds = %do.end.lr.ph.i110
  %call3.i112.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i109, i32 noundef 1) #10
  %call4.i114.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i115.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 11, i8 noundef zeroext %conv14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i115.1)
  %tobool.not.i116.1.not = icmp eq i32 %call1.i115.1, 0
  br i1 %tobool.not.i116.1.not, label %do.end.i119.1.tvp514x_write_reg.exit121_crit_edge, label %do.end.i119.2

do.end.i119.1.tvp514x_write_reg.exit121_crit_edge: ; preds = %do.end.i119.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit121

do.end.i119.2:                                    ; preds = %do.end.i119.1
  %call3.i112.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i109, i32 noundef 2) #10
  %call4.i114.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i115.2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 11, i8 noundef zeroext %conv14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i115.2)
  %tobool.not.i116.2.not = icmp eq i32 %call1.i115.2, 0
  br i1 %tobool.not.i116.2.not, label %do.end.i119.2.tvp514x_write_reg.exit121_crit_edge, label %do.end.i119.3

do.end.i119.2.tvp514x_write_reg.exit121_crit_edge: ; preds = %do.end.i119.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit121

do.end.i119.3:                                    ; preds = %do.end.i119.2
  %call3.i112.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i109, i32 noundef 3) #10
  %call4.i114.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i115.3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 11, i8 noundef zeroext %conv14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i115.3)
  %tobool.not.i116.3.not = icmp eq i32 %call1.i115.3, 0
  br i1 %tobool.not.i116.3.not, label %do.end.i119.3.tvp514x_write_reg.exit121_crit_edge, label %do.end.i119.4

do.end.i119.3.tvp514x_write_reg.exit121_crit_edge: ; preds = %do.end.i119.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit121

do.end.i119.4:                                    ; preds = %do.end.i119.3
  %call3.i112.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i109, i32 noundef 4) #10
  %call4.i114.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i115.4 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 11, i8 noundef zeroext %conv14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i115.4)
  %tobool.not.i116.4.not = icmp eq i32 %call1.i115.4, 0
  br i1 %tobool.not.i116.4.not, label %do.end.i119.4.tvp514x_write_reg.exit121_crit_edge, label %do.end.i119.5

do.end.i119.4.tvp514x_write_reg.exit121_crit_edge: ; preds = %do.end.i119.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit121

do.end.i119.5:                                    ; preds = %do.end.i119.4
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i112.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i109, i32 noundef 5) #10
  %call4.i114.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i115.5 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 11, i8 noundef zeroext %conv14) #7
  br label %tvp514x_write_reg.exit121

tvp514x_write_reg.exit121:                        ; preds = %do.end.i119.5, %do.end.i119.4.tvp514x_write_reg.exit121_crit_edge, %do.end.i119.3.tvp514x_write_reg.exit121_crit_edge, %do.end.i119.2.tvp514x_write_reg.exit121_crit_edge, %do.end.i119.1.tvp514x_write_reg.exit121_crit_edge, %do.end.lr.ph.i110.tvp514x_write_reg.exit121_crit_edge
  %call1.i115.lcssa = phi i32 [ %call1.i115, %do.end.lr.ph.i110.tvp514x_write_reg.exit121_crit_edge ], [ %call1.i115.1, %do.end.i119.1.tvp514x_write_reg.exit121_crit_edge ], [ %call1.i115.2, %do.end.i119.2.tvp514x_write_reg.exit121_crit_edge ], [ %call1.i115.3, %do.end.i119.3.tvp514x_write_reg.exit121_crit_edge ], [ %call1.i115.4, %do.end.i119.4.tvp514x_write_reg.exit121_crit_edge ], [ %call1.i115.5, %do.end.i119.5 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i115.lcssa)
  %tobool16.not = icmp eq i32 %call1.i115.lcssa, 0
  br i1 %tobool16.not, label %tvp514x_write_reg.exit121.do.body.sink.split_crit_edge, label %tvp514x_write_reg.exit121.do.body_crit_edge

tvp514x_write_reg.exit121.do.body_crit_edge:      ; preds = %tvp514x_write_reg.exit121
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

tvp514x_write_reg.exit121.do.body.sink.split_crit_edge: ; preds = %tvp514x_write_reg.exit121
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.sink.split

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 180, i32 %3)
  %cmp = icmp eq i32 %3, 180
  call void @__sanitizer_cov_trace_const_cmp4(i32 -180, i32 %3)
  %cmp25 = icmp eq i32 %3, -180
  %spec.store.select = select i1 %cmp25, i32 128, i32 %3
  %value.0 = select i1 %cmp, i32 127, i32 %spec.store.select
  %conv30 = trunc i32 %value.0 to i8
  %dev_priv.i.i122 = getelementptr i8, ptr %1, i32 -44
  %13 = ptrtoint ptr %dev_priv.i.i122 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_priv.i.i122, align 4
  %call110.i123 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 12, i8 noundef zeroext %conv30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110.i123)
  %tobool.not11.not.i124 = icmp eq i32 %call110.i123, 0
  br i1 %tobool.not11.not.i124, label %sw.bb22.do.body.sink.split_crit_edge, label %do.end.lr.ph.i126

sw.bb22.do.body.sink.split_crit_edge:             ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.sink.split

do.end.lr.ph.i126:                                ; preds = %sw.bb22
  %name.i125 = getelementptr i8, ptr %1, i32 -80
  %call3.i128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i125, i32 noundef 0) #10
  %call4.i130 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i131 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 12, i8 noundef zeroext %conv30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i131)
  %tobool.not.i132.not = icmp eq i32 %call1.i131, 0
  br i1 %tobool.not.i132.not, label %do.end.lr.ph.i126.tvp514x_write_reg.exit137_crit_edge, label %do.end.i135.1

do.end.lr.ph.i126.tvp514x_write_reg.exit137_crit_edge: ; preds = %do.end.lr.ph.i126
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit137

do.end.i135.1:                                    ; preds = %do.end.lr.ph.i126
  %call3.i128.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i125, i32 noundef 1) #10
  %call4.i130.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i131.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 12, i8 noundef zeroext %conv30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i131.1)
  %tobool.not.i132.1.not = icmp eq i32 %call1.i131.1, 0
  br i1 %tobool.not.i132.1.not, label %do.end.i135.1.tvp514x_write_reg.exit137_crit_edge, label %do.end.i135.2

do.end.i135.1.tvp514x_write_reg.exit137_crit_edge: ; preds = %do.end.i135.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit137

do.end.i135.2:                                    ; preds = %do.end.i135.1
  %call3.i128.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i125, i32 noundef 2) #10
  %call4.i130.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i131.2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 12, i8 noundef zeroext %conv30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i131.2)
  %tobool.not.i132.2.not = icmp eq i32 %call1.i131.2, 0
  br i1 %tobool.not.i132.2.not, label %do.end.i135.2.tvp514x_write_reg.exit137_crit_edge, label %do.end.i135.3

do.end.i135.2.tvp514x_write_reg.exit137_crit_edge: ; preds = %do.end.i135.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit137

do.end.i135.3:                                    ; preds = %do.end.i135.2
  %call3.i128.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i125, i32 noundef 3) #10
  %call4.i130.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i131.3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 12, i8 noundef zeroext %conv30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i131.3)
  %tobool.not.i132.3.not = icmp eq i32 %call1.i131.3, 0
  br i1 %tobool.not.i132.3.not, label %do.end.i135.3.tvp514x_write_reg.exit137_crit_edge, label %do.end.i135.4

do.end.i135.3.tvp514x_write_reg.exit137_crit_edge: ; preds = %do.end.i135.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit137

do.end.i135.4:                                    ; preds = %do.end.i135.3
  %call3.i128.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i125, i32 noundef 4) #10
  %call4.i130.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i131.4 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 12, i8 noundef zeroext %conv30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i131.4)
  %tobool.not.i132.4.not = icmp eq i32 %call1.i131.4, 0
  br i1 %tobool.not.i132.4.not, label %do.end.i135.4.tvp514x_write_reg.exit137_crit_edge, label %do.end.i135.5

do.end.i135.4.tvp514x_write_reg.exit137_crit_edge: ; preds = %do.end.i135.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit137

do.end.i135.5:                                    ; preds = %do.end.i135.4
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i128.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i125, i32 noundef 5) #10
  %call4.i130.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i131.5 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 12, i8 noundef zeroext %conv30) #7
  br label %tvp514x_write_reg.exit137

tvp514x_write_reg.exit137:                        ; preds = %do.end.i135.5, %do.end.i135.4.tvp514x_write_reg.exit137_crit_edge, %do.end.i135.3.tvp514x_write_reg.exit137_crit_edge, %do.end.i135.2.tvp514x_write_reg.exit137_crit_edge, %do.end.i135.1.tvp514x_write_reg.exit137_crit_edge, %do.end.lr.ph.i126.tvp514x_write_reg.exit137_crit_edge
  %call1.i131.lcssa = phi i32 [ %call1.i131, %do.end.lr.ph.i126.tvp514x_write_reg.exit137_crit_edge ], [ %call1.i131.1, %do.end.i135.1.tvp514x_write_reg.exit137_crit_edge ], [ %call1.i131.2, %do.end.i135.2.tvp514x_write_reg.exit137_crit_edge ], [ %call1.i131.3, %do.end.i135.3.tvp514x_write_reg.exit137_crit_edge ], [ %call1.i131.4, %do.end.i135.4.tvp514x_write_reg.exit137_crit_edge ], [ %call1.i131.5, %do.end.i135.5 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i131.lcssa)
  %tobool32.not = icmp eq i32 %call1.i131.lcssa, 0
  br i1 %tobool32.not, label %tvp514x_write_reg.exit137.do.body.sink.split_crit_edge, label %tvp514x_write_reg.exit137.do.body_crit_edge

tvp514x_write_reg.exit137.do.body_crit_edge:      ; preds = %tvp514x_write_reg.exit137
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

tvp514x_write_reg.exit137.do.body.sink.split_crit_edge: ; preds = %tvp514x_write_reg.exit137
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.sink.split

sw.bb38:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool39.not = icmp eq i32 %3, 0
  %conv40 = select i1 %tobool39.not, i8 12, i8 15
  %dev_priv.i.i138 = getelementptr i8, ptr %1, i32 -44
  %15 = ptrtoint ptr %dev_priv.i.i138 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_priv.i.i138, align 4
  %call110.i139 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext 1, i8 noundef zeroext %conv40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110.i139)
  %tobool.not11.not.i140 = icmp eq i32 %call110.i139, 0
  br i1 %tobool.not11.not.i140, label %sw.bb38.do.body.sink.split_crit_edge, label %do.end.lr.ph.i142

sw.bb38.do.body.sink.split_crit_edge:             ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.sink.split

do.end.lr.ph.i142:                                ; preds = %sw.bb38
  %name.i141 = getelementptr i8, ptr %1, i32 -80
  %call3.i144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i141, i32 noundef 0) #10
  %call4.i146 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i147 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext 1, i8 noundef zeroext %conv40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i147)
  %tobool.not.i148.not = icmp eq i32 %call1.i147, 0
  br i1 %tobool.not.i148.not, label %do.end.lr.ph.i142.tvp514x_write_reg.exit153_crit_edge, label %do.end.i151.1

do.end.lr.ph.i142.tvp514x_write_reg.exit153_crit_edge: ; preds = %do.end.lr.ph.i142
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit153

do.end.i151.1:                                    ; preds = %do.end.lr.ph.i142
  %call3.i144.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i141, i32 noundef 1) #10
  %call4.i146.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i147.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext 1, i8 noundef zeroext %conv40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i147.1)
  %tobool.not.i148.1.not = icmp eq i32 %call1.i147.1, 0
  br i1 %tobool.not.i148.1.not, label %do.end.i151.1.tvp514x_write_reg.exit153_crit_edge, label %do.end.i151.2

do.end.i151.1.tvp514x_write_reg.exit153_crit_edge: ; preds = %do.end.i151.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit153

do.end.i151.2:                                    ; preds = %do.end.i151.1
  %call3.i144.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i141, i32 noundef 2) #10
  %call4.i146.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i147.2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext 1, i8 noundef zeroext %conv40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i147.2)
  %tobool.not.i148.2.not = icmp eq i32 %call1.i147.2, 0
  br i1 %tobool.not.i148.2.not, label %do.end.i151.2.tvp514x_write_reg.exit153_crit_edge, label %do.end.i151.3

do.end.i151.2.tvp514x_write_reg.exit153_crit_edge: ; preds = %do.end.i151.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit153

do.end.i151.3:                                    ; preds = %do.end.i151.2
  %call3.i144.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i141, i32 noundef 3) #10
  %call4.i146.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i147.3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext 1, i8 noundef zeroext %conv40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i147.3)
  %tobool.not.i148.3.not = icmp eq i32 %call1.i147.3, 0
  br i1 %tobool.not.i148.3.not, label %do.end.i151.3.tvp514x_write_reg.exit153_crit_edge, label %do.end.i151.4

do.end.i151.3.tvp514x_write_reg.exit153_crit_edge: ; preds = %do.end.i151.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit153

do.end.i151.4:                                    ; preds = %do.end.i151.3
  %call3.i144.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i141, i32 noundef 4) #10
  %call4.i146.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i147.4 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext 1, i8 noundef zeroext %conv40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i147.4)
  %tobool.not.i148.4.not = icmp eq i32 %call1.i147.4, 0
  br i1 %tobool.not.i148.4.not, label %do.end.i151.4.tvp514x_write_reg.exit153_crit_edge, label %do.end.i151.5

do.end.i151.4.tvp514x_write_reg.exit153_crit_edge: ; preds = %do.end.i151.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %tvp514x_write_reg.exit153

do.end.i151.5:                                    ; preds = %do.end.i151.4
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i144.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i141, i32 noundef 5) #10
  %call4.i146.5 = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %call1.i147.5 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext 1, i8 noundef zeroext %conv40) #7
  br label %tvp514x_write_reg.exit153

tvp514x_write_reg.exit153:                        ; preds = %do.end.i151.5, %do.end.i151.4.tvp514x_write_reg.exit153_crit_edge, %do.end.i151.3.tvp514x_write_reg.exit153_crit_edge, %do.end.i151.2.tvp514x_write_reg.exit153_crit_edge, %do.end.i151.1.tvp514x_write_reg.exit153_crit_edge, %do.end.lr.ph.i142.tvp514x_write_reg.exit153_crit_edge
  %call1.i147.lcssa = phi i32 [ %call1.i147, %do.end.lr.ph.i142.tvp514x_write_reg.exit153_crit_edge ], [ %call1.i147.1, %do.end.i151.1.tvp514x_write_reg.exit153_crit_edge ], [ %call1.i147.2, %do.end.i151.2.tvp514x_write_reg.exit153_crit_edge ], [ %call1.i147.3, %do.end.i151.3.tvp514x_write_reg.exit153_crit_edge ], [ %call1.i147.4, %do.end.i151.4.tvp514x_write_reg.exit153_crit_edge ], [ %call1.i147.5, %do.end.i151.5 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i147.lcssa)
  %tobool42.not = icmp eq i32 %call1.i147.lcssa, 0
  br i1 %tobool42.not, label %tvp514x_write_reg.exit153.do.body.sink.split_crit_edge, label %tvp514x_write_reg.exit153.do.body_crit_edge

tvp514x_write_reg.exit153.do.body_crit_edge:      ; preds = %tvp514x_write_reg.exit153
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

tvp514x_write_reg.exit153.do.body.sink.split_crit_edge: ; preds = %tvp514x_write_reg.exit153
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.sink.split

do.body.sink.split:                               ; preds = %tvp514x_write_reg.exit153.do.body.sink.split_crit_edge, %sw.bb38.do.body.sink.split_crit_edge, %tvp514x_write_reg.exit137.do.body.sink.split_crit_edge, %sw.bb22.do.body.sink.split_crit_edge, %tvp514x_write_reg.exit121.do.body.sink.split_crit_edge, %sw.bb13.do.body.sink.split_crit_edge, %tvp514x_write_reg.exit105.do.body.sink.split_crit_edge, %sw.bb4.do.body.sink.split_crit_edge, %tvp514x_write_reg.exit.do.body.sink.split_crit_edge, %sw.bb.do.body.sink.split_crit_edge
  %.sink164 = phi i32 [ 260, %sw.bb.do.body.sink.split_crit_edge ], [ 260, %tvp514x_write_reg.exit.do.body.sink.split_crit_edge ], [ 268, %sw.bb4.do.body.sink.split_crit_edge ], [ 268, %tvp514x_write_reg.exit105.do.body.sink.split_crit_edge ], [ 276, %sw.bb13.do.body.sink.split_crit_edge ], [ 276, %tvp514x_write_reg.exit121.do.body.sink.split_crit_edge ], [ 284, %sw.bb22.do.body.sink.split_crit_edge ], [ 284, %tvp514x_write_reg.exit137.do.body.sink.split_crit_edge ], [ 196, %sw.bb38.do.body.sink.split_crit_edge ], [ 196, %tvp514x_write_reg.exit153.do.body.sink.split_crit_edge ]
  %.sink = phi i32 [ %3, %sw.bb.do.body.sink.split_crit_edge ], [ %3, %tvp514x_write_reg.exit.do.body.sink.split_crit_edge ], [ %3, %sw.bb4.do.body.sink.split_crit_edge ], [ %3, %tvp514x_write_reg.exit105.do.body.sink.split_crit_edge ], [ %3, %sw.bb13.do.body.sink.split_crit_edge ], [ %3, %tvp514x_write_reg.exit121.do.body.sink.split_crit_edge ], [ %value.0, %sw.bb22.do.body.sink.split_crit_edge ], [ %value.0, %tvp514x_write_reg.exit137.do.body.sink.split_crit_edge ], [ %3, %sw.bb38.do.body.sink.split_crit_edge ], [ %3, %tvp514x_write_reg.exit153.do.body.sink.split_crit_edge ]
  %val3 = getelementptr i8, ptr %1, i32 %.sink164
  %17 = ptrtoint ptr %val3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink, ptr %val3, align 4
  br label %do.body

do.body:                                          ; preds = %do.body.sink.split, %tvp514x_write_reg.exit153.do.body_crit_edge, %tvp514x_write_reg.exit137.do.body_crit_edge, %tvp514x_write_reg.exit121.do.body_crit_edge, %tvp514x_write_reg.exit105.do.body_crit_edge, %tvp514x_write_reg.exit.do.body_crit_edge, %entry.do.body_crit_edge
  %err.0 = phi i32 [ -22, %entry.do.body_crit_edge ], [ %call1.i147.lcssa, %tvp514x_write_reg.exit153.do.body_crit_edge ], [ %call1.i131.lcssa, %tvp514x_write_reg.exit137.do.body_crit_edge ], [ %call1.i115.lcssa, %tvp514x_write_reg.exit121.do.body_crit_edge ], [ %call1.i99.lcssa, %tvp514x_write_reg.exit105.do.body_crit_edge ], [ %call1.i.lcssa, %tvp514x_write_reg.exit.do.body_crit_edge ], [ 0, %do.body.sink.split ]
  %18 = load i8, ptr @debug, align 1, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool48.not = icmp eq i8 %18, 0
  br i1 %tobool48.not, label %do.body.do.end59_crit_edge, label %do.end

do.body.do.end59_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end59

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr i8, ptr %1, i32 -80
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id, align 8
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %name, i32 noundef %20, i32 noundef %22) #10
  br label %do.end59

do.end59:                                         ; preds = %do.end, %do.body.do.end59_crit_edge
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !15, !17, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !41, !43, !45, !47, !49, !51, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !118, !120, !122, !124, !125, !126, !127, !129, !131, !133, !135}
!llvm.module.flags = !{!137, !138, !139, !140, !141, !142, !143, !144}
!llvm.ident = !{!145}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/tvp514x.c", i32 46, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype292, !1, !"__UNIQUE_ID_debugtype292", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug293, !4, !"__UNIQUE_ID_debug293", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/tvp514x.c", i32 47, i32 1}
!5 = !{ptr @__UNIQUE_ID_author294, !6, !"__UNIQUE_ID_author294", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/tvp514x.c", i32 49, i32 1}
!7 = !{ptr @__UNIQUE_ID_description295, !8, !"__UNIQUE_ID_description295", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/tvp514x.c", i32 50, i32 1}
!9 = !{ptr @__UNIQUE_ID_file296, !10, !"__UNIQUE_ID_file296", i1 false, i1 false}
!10 = !{!"../drivers/media/i2c/tvp514x.c", i32 51, i32 1}
!11 = !{ptr @__UNIQUE_ID_license297, !10, !"__UNIQUE_ID_license297", i1 false, i1 false}
!12 = !{ptr @__initcall__kmod_tvp514x__298_1217_tvp514x_driver_init6, !13, !"__initcall__kmod_tvp514x__298_1217_tvp514x_driver_init6", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/tvp514x.c", i32 1217, i32 1}
!14 = !{ptr @__exitcall_tvp514x_driver_exit, !13, !"__exitcall_tvp514x_driver_exit", i1 false, i1 false}
!15 = !{ptr @debug, !16, !"debug", i1 false, i1 false}
!16 = !{!"../drivers/media/i2c/tvp514x.c", i32 45, i32 13}
!17 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/tvp514x.c", i32 1210, i32 11}
!20 = !{ptr @tvp514x_driver, !21, !"tvp514x_driver", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/tvp514x.c", i32 1207, i32 26}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/tvp514x.c", i32 1034, i32 3}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @tvp514x_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @tvp514x_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/tvp514x.c", i32 1082, i32 3}
!32 = !{ptr @tvp514x_probe._entry.6, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @tvp514x_probe._entry_ptr.8, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @tvp514x_probe._key, !35, !"_key", i1 false, i1 false}
!35 = !{!"../drivers/media/i2c/tvp514x.c", i32 1087, i32 2}
!36 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/i2c/tvp514x.c", i32 1107, i32 3}
!39 = !{ptr @tvp514x_probe._entry.10, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @tvp514x_probe._entry_ptr.12, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @tvp514x_dev, !42, !"tvp514x_dev", i1 false, i1 false}
!42 = !{!"../drivers/media/i2c/tvp514x.c", i32 958, i32 37}
!43 = !{ptr @tvp514x_fmt_list, !44, !"tvp514x_fmt_list", i1 false, i1 false}
!44 = !{!"../drivers/media/i2c/tvp514x.c", i32 214, i32 34}
!45 = !{ptr @tvp514x_std_list, !46, !"tvp514x_std_list", i1 false, i1 false}
!46 = !{!"../drivers/media/i2c/tvp514x.c", i32 230, i32 38}
!47 = !{ptr @tvp514x_reg_list_default, !48, !"tvp514x_reg_list_default", i1 false, i1 false}
!48 = !{!"../drivers/media/i2c/tvp514x.c", i32 125, i32 27}
!49 = !{ptr @tvp514x_ops, !50, !"tvp514x_ops", i1 false, i1 false}
!50 = !{!"../drivers/media/i2c/tvp514x.c", i32 953, i32 37}
!51 = !{ptr @tvp514x_video_ops, !52, !"tvp514x_video_ops", i1 false, i1 false}
!52 = !{!"../drivers/media/i2c/tvp514x.c", i32 938, i32 43}
!53 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/i2c/tvp514x.c", i32 683, i32 2}
!55 = !{ptr @.str.14, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @tvp514x_s_routing._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @tvp514x_s_routing._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/i2c/tvp514x.c", i32 331, i32 4}
!60 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @tvp514x_write_reg._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @tvp514x_write_reg._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.17, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/i2c/tvp514x.c", i32 289, i32 4}
!65 = !{ptr @.str.18, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @tvp514x_read_reg._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @tvp514x_read_reg._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.19, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/i2c/tvp514x.c", i32 635, i32 2}
!70 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @tvp514x_s_std._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @tvp514x_s_std._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.21, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/i2c/tvp514x.c", i32 601, i32 2}
!75 = !{ptr @.str.22, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @tvp514x_querystd._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @tvp514x_querystd._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.23, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/i2c/tvp514x.c", i32 813, i32 4}
!80 = !{ptr @.str.24, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @tvp514x_s_stream._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @tvp514x_s_stream._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.26, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/i2c/tvp514x.c", i32 824, i32 4}
!85 = !{ptr @tvp514x_s_stream._entry.25, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @tvp514x_s_stream._entry_ptr.27, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.29, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/i2c/tvp514x.c", i32 830, i32 4}
!89 = !{ptr @tvp514x_s_stream._entry.28, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @tvp514x_s_stream._entry_ptr.30, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.32, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/i2c/tvp514x.c", i32 835, i32 4}
!93 = !{ptr @tvp514x_s_stream._entry.31, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @tvp514x_s_stream._entry_ptr.33, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.34, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/i2c/tvp514x.c", i32 370, i32 4}
!97 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @tvp514x_write_regs._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @tvp514x_write_regs._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/i2c/tvp514x.c", i32 502, i32 2}
!102 = !{ptr @.str.37, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @tvp514x_detect._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @tvp514x_detect._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.39, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/i2c/tvp514x.c", i32 511, i32 3}
!107 = !{ptr @tvp514x_detect._entry.38, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @tvp514x_detect._entry_ptr.40, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.42, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/i2c/tvp514x.c", i32 518, i32 2}
!111 = !{ptr @tvp514x_detect._entry.41, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @tvp514x_detect._entry_ptr.43, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.44, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/i2c/tvp514x.c", i32 309, i32 2}
!115 = !{ptr @.str.45, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @dump_reg._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @dump_reg._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @tvp514x_pad_ops, !119, !"tvp514x_pad_ops", i1 false, i1 false}
!119 = !{!"../drivers/media/i2c/tvp514x.c", i32 947, i32 41}
!120 = !{ptr @tvp514x_ctrl_ops, !121, !"tvp514x_ctrl_ops", i1 false, i1 false}
!121 = !{!"../drivers/media/i2c/tvp514x.c", i32 849, i32 35}
!122 = !{ptr @.str.46, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/i2c/tvp514x.c", i32 735, i32 2}
!124 = !{ptr @.str.47, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @tvp514x_s_ctrl._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @tvp514x_s_ctrl._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @tvp514x_of_match, !128, !"tvp514x_of_match", i1 false, i1 false}
!128 = !{!"../drivers/media/i2c/tvp514x.c", i32 1197, i32 34}
!129 = !{ptr @tvp514x_id, !130, !"tvp514x_id", i1 false, i1 false}
!130 = !{!"../drivers/media/i2c/tvp514x.c", i32 1186, i32 35}
!131 = !{ptr @tvp5146_init_reg_seq, !132, !"tvp5146_init_reg_seq", i1 false, i1 false}
!132 = !{!"../drivers/media/i2c/tvp514x.c", i32 1135, i32 33}
!133 = !{ptr @tvp514xm_init_reg_seq, !134, !"tvp514xm_init_reg_seq", i1 false, i1 false}
!134 = !{!"../drivers/media/i2c/tvp514x.c", i32 1174, i32 33}
!135 = !{ptr @tvp5147_init_reg_seq, !136, !"tvp5147_init_reg_seq", i1 false, i1 false}
!136 = !{!"../drivers/media/i2c/tvp514x.c", i32 1151, i32 33}
!137 = !{i32 1, !"wchar_size", i32 2}
!138 = !{i32 1, !"min_enum_size", i32 4}
!139 = !{i32 8, !"branch-target-enforcement", i32 0}
!140 = !{i32 8, !"sign-return-address", i32 0}
!141 = !{i32 8, !"sign-return-address-all", i32 0}
!142 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!143 = !{i32 7, !"uwtable", i32 1}
!144 = !{i32 7, !"frame-pointer", i32 2}
!145 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!146 = !{i8 0, i8 2}
