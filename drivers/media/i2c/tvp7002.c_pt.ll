; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/tvp7002.c_pt.bc'
source_filename = "../drivers/media/i2c/tvp7002.c"
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
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_reg_value = type { i8, i8, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_bt_timings = type <{ i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_fract, i8, i8, [46 x i8] }>
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.tvp7002 = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, ptr, i32, i32, ptr, %struct.media_pad }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.100, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.100 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.v4l2_dv_timings = type { i32, %union.anon.95 }
%union.anon.95 = type { [32 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.tvp7002_config = type { i8, i8, i8, i8, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tvp7002_timings_definition = type { %struct.v4l2_dv_timings, ptr, i32, i32, i16, i16, i16, i16 }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.94 }
%union.anon.94 = type { i32, [28 x i8] }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_enum_dv_timings = type { i32, i32, [2 x i32], %struct.v4l2_dv_timings }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_description292 = internal constant [67 x i8] c"tvp7002.description=TI TVP7002 Video and Graphics Digitizer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [69 x i8] c"tvp7002.author=Santiago Nunez-Corrales <santiago.nunez@ridgerun.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [39 x i8] c"tvp7002.file=drivers/media/i2c/tvp7002\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [20 x i8] c"tvp7002.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [14 x i8] c"tvp7002.debug\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype296 = internal constant [28 x i8] c"tvp7002.parmtype=debug:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_debug297 = internal constant [37 x i8] c"tvp7002.parm=debug:Debug level (0-2)\00", section ".modinfo", align 1
@__initcall__kmod_tvp7002__298_1088_tvp7002_driver_init6 = internal global ptr @tvp7002_driver_init, section ".initcall6.init", align 4
@tvp7002_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @tvp7002_remove, ptr @tvp7002_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tvp7002_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tvp7002_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tvp7002_driver_exit = internal global ptr @tvp7002_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tvp7002\00", [24 x i8] zeroinitializer }, align 32
@tvp7002_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tvp7002\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tvp7002_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tvp7002\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@tvp7002_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1053, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017%s: Removing tvp7002 adapteron address 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tvp7002_remove\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/i2c/tvp7002.c\00", [36 x i8] zeroinitializer }, align 32
@tvp7002_remove._entry_ptr = internal global ptr @tvp7002_remove._entry, section ".printk_index", align 4
@tvp7002_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 950, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No platform data\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tvp7002_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tvp7002_probe._entry_ptr = internal global ptr @tvp7002_probe._entry, section ".printk_index", align 4
@tvp7002_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @tvp7002_core_ops, ptr null, ptr null, ptr @tvp7002_video_ops, ptr null, ptr null, ptr null, ptr @tvp7002_pad_ops }, [32 x i8] zeroinitializer }, align 32
@tvp7002_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.3, i32 971, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s %d-%04x: tvp7002 found @ 0x%02x (%s)\0A\00", [53 x i8] zeroinitializer }, align 32
@tvp7002_probe._entry_ptr.10 = internal global ptr @tvp7002_probe._entry.8, section ".printk_index", align 4
@tvp7002_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.5, ptr @.str.3, i32 978, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: Rev. %02x detected.\0A\00", [37 x i8] zeroinitializer }, align 32
@tvp7002_probe._entry_ptr.13 = internal global ptr @tvp7002_probe._entry.11, section ".printk_index", align 4
@tvp7002_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.3, i32 980, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: Unknown revision detected.\0A\00", [62 x i8] zeroinitializer }, align 32
@tvp7002_probe._entry_ptr.16 = internal global ptr @tvp7002_probe._entry.14, section ".printk_index", align 4
@tvp7002_init_default = internal constant { [93 x %struct.i2c_reg_value], [73 x i8] } { [93 x %struct.i2c_reg_value] [%struct.i2c_reg_value { i8 0, i8 -1, i8 0 }, %struct.i2c_reg_value { i8 1, i8 103, i8 1 }, %struct.i2c_reg_value { i8 2, i8 32, i8 1 }, %struct.i2c_reg_value { i8 3, i8 -96, i8 1 }, %struct.i2c_reg_value { i8 4, i8 -128, i8 1 }, %struct.i2c_reg_value { i8 5, i8 50, i8 1 }, %struct.i2c_reg_value { i8 6, i8 32, i8 1 }, %struct.i2c_reg_value { i8 7, i8 96, i8 1 }, %struct.i2c_reg_value { i8 8, i8 0, i8 1 }, %struct.i2c_reg_value { i8 9, i8 0, i8 1 }, %struct.i2c_reg_value { i8 10, i8 0, i8 1 }, %struct.i2c_reg_value { i8 11, i8 -128, i8 1 }, %struct.i2c_reg_value { i8 12, i8 -128, i8 1 }, %struct.i2c_reg_value { i8 13, i8 -128, i8 1 }, %struct.i2c_reg_value { i8 14, i8 32, i8 1 }, %struct.i2c_reg_value { i8 15, i8 46, i8 1 }, %struct.i2c_reg_value { i8 16, i8 93, i8 1 }, %struct.i2c_reg_value { i8 17, i8 71, i8 1 }, %struct.i2c_reg_value { i8 18, i8 0, i8 1 }, %struct.i2c_reg_value { i8 19, i8 0, i8 1 }, %struct.i2c_reg_value { i8 20, i8 -1, i8 0 }, %struct.i2c_reg_value { i8 21, i8 71, i8 1 }, %struct.i2c_reg_value { i8 22, i8 1, i8 1 }, %struct.i2c_reg_value { i8 23, i8 0, i8 1 }, %struct.i2c_reg_value { i8 24, i8 1, i8 1 }, %struct.i2c_reg_value { i8 25, i8 0, i8 1 }, %struct.i2c_reg_value { i8 26, i8 103, i8 1 }, %struct.i2c_reg_value { i8 27, i8 119, i8 1 }, %struct.i2c_reg_value { i8 28, i8 7, i8 1 }, %struct.i2c_reg_value { i8 29, i8 0, i8 1 }, %struct.i2c_reg_value { i8 30, i8 16, i8 1 }, %struct.i2c_reg_value { i8 31, i8 16, i8 1 }, %struct.i2c_reg_value { i8 32, i8 16, i8 1 }, %struct.i2c_reg_value { i8 33, i8 8, i8 1 }, %struct.i2c_reg_value { i8 34, i8 0, i8 1 }, %struct.i2c_reg_value { i8 35, i8 -1, i8 0 }, %struct.i2c_reg_value { i8 36, i8 -1, i8 0 }, %struct.i2c_reg_value { i8 37, i8 -1, i8 0 }, %struct.i2c_reg_value { i8 38, i8 -128, i8 1 }, %struct.i2c_reg_value { i8 39, i8 -1, i8 0 }, %struct.i2c_reg_value { i8 40, i8 83, i8 1 }, %struct.i2c_reg_value { i8 41, i8 8, i8 2 }, %struct.i2c_reg_value { i8 42, i8 7, i8 1 }, %struct.i2c_reg_value { i8 43, i8 0, i8 2 }, %struct.i2c_reg_value { i8 44, i8 80, i8 1 }, %struct.i2c_reg_value { i8 45, i8 0, i8 1 }, %struct.i2c_reg_value { i8 46, i8 -128, i8 1 }, %struct.i2c_reg_value { i8 47, i8 -116, i8 1 }, %struct.i2c_reg_value { i8 48, i8 4, i8 1 }, %struct.i2c_reg_value { i8 49, i8 90, i8 1 }, %struct.i2c_reg_value { i8 50, i8 24, i8 2 }, %struct.i2c_reg_value { i8 51, i8 96, i8 2 }, %struct.i2c_reg_value { i8 52, i8 -1, i8 2 }, %struct.i2c_reg_value { i8 53, i8 16, i8 1 }, %struct.i2c_reg_value { i8 54, i8 0, i8 1 }, %struct.i2c_reg_value { i8 55, i8 -1, i8 0 }, %struct.i2c_reg_value { i8 56, i8 -1, i8 0 }, %struct.i2c_reg_value { i8 57, i8 -1, i8 0 }, %struct.i2c_reg_value { i8 58, i8 -1, i8 0 }, %struct.i2c_reg_value { i8 59, i8 -1, i8 0 }, %struct.i2c_reg_value { i8 60, i8 -1, i8 0 }, %struct.i2c_reg_value { i8 61, i8 3, i8 1 }, %struct.i2c_reg_value { i8 62, i8 96, i8 2 }, %struct.i2c_reg_value { i8 63, i8 1, i8 1 }, %struct.i2c_reg_value { i8 64, i8 1, i8 1 }, %struct.i2c_reg_value { i8 65, i8 44, i8 1 }, %struct.i2c_reg_value { i8 66, i8 6, i8 1 }, %struct.i2c_reg_value { i8 67, i8 44, i8 1 }, %struct.i2c_reg_value { i8 68, i8 5, i8 1 }, %struct.i2c_reg_value { i8 69, i8 0, i8 1 }, %struct.i2c_reg_value { i8 70, i8 30, i8 1 }, %struct.i2c_reg_value { i8 71, i8 0, i8 1 }, %struct.i2c_reg_value { i8 72, i8 0, i8 1 }, %struct.i2c_reg_value { i8 73, i8 0, i8 1 }, %struct.i2c_reg_value { i8 74, i8 -29, i8 1 }, %struct.i2c_reg_value { i8 75, i8 22, i8 1 }, %struct.i2c_reg_value { i8 76, i8 79, i8 1 }, %struct.i2c_reg_value { i8 77, i8 2, i8 1 }, %struct.i2c_reg_value { i8 78, i8 -50, i8 1 }, %struct.i2c_reg_value { i8 79, i8 6, i8 1 }, %struct.i2c_reg_value { i8 80, i8 -85, i8 1 }, %struct.i2c_reg_value { i8 81, i8 -13, i8 1 }, %struct.i2c_reg_value { i8 82, i8 0, i8 1 }, %struct.i2c_reg_value { i8 83, i8 16, i8 1 }, %struct.i2c_reg_value { i8 84, i8 85, i8 1 }, %struct.i2c_reg_value { i8 85, i8 -4, i8 1 }, %struct.i2c_reg_value { i8 86, i8 120, i8 1 }, %struct.i2c_reg_value { i8 87, i8 -15, i8 1 }, %struct.i2c_reg_value { i8 88, i8 -120, i8 1 }, %struct.i2c_reg_value { i8 89, i8 -2, i8 1 }, %struct.i2c_reg_value { i8 90, i8 0, i8 1 }, %struct.i2c_reg_value { i8 91, i8 16, i8 1 }, %struct.i2c_reg_value { i8 92, i8 -1, i8 2 }], [73 x i8] zeroinitializer }, align 32
@tvp7002_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"tvp7002:1016:(&device->hdl)->_lock\00", [61 x i8] zeroinitializer }, align 32
@tvp7002_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @tvp7002_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@tvp7002_parms_720P60 = internal constant { [17 x %struct.i2c_reg_value], [45 x i8] } { [17 x %struct.i2c_reg_value] [%struct.i2c_reg_value { i8 1, i8 103, i8 1 }, %struct.i2c_reg_value { i8 2, i8 32, i8 1 }, %struct.i2c_reg_value { i8 3, i8 -96, i8 1 }, %struct.i2c_reg_value { i8 64, i8 71, i8 1 }, %struct.i2c_reg_value { i8 65, i8 1, i8 1 }, %struct.i2c_reg_value { i8 66, i8 75, i8 1 }, %struct.i2c_reg_value { i8 67, i8 6, i8 1 }, %struct.i2c_reg_value { i8 68, i8 5, i8 1 }, %struct.i2c_reg_value { i8 69, i8 0, i8 1 }, %struct.i2c_reg_value { i8 70, i8 45, i8 1 }, %struct.i2c_reg_value { i8 71, i8 0, i8 1 }, %struct.i2c_reg_value { i8 49, i8 90, i8 1 }, %struct.i2c_reg_value { i8 5, i8 50, i8 1 }, %struct.i2c_reg_value { i8 6, i8 32, i8 1 }, %struct.i2c_reg_value { i8 18, i8 0, i8 1 }, %struct.i2c_reg_value { i8 19, i8 0, i8 1 }, %struct.i2c_reg_value { i8 92, i8 -1, i8 2 }], [45 x i8] zeroinitializer }, align 32
@tvp7002_parms_1080I60 = internal constant { [17 x %struct.i2c_reg_value], [45 x i8] } { [17 x %struct.i2c_reg_value] [%struct.i2c_reg_value { i8 1, i8 -119, i8 1 }, %struct.i2c_reg_value { i8 2, i8 -128, i8 1 }, %struct.i2c_reg_value { i8 3, i8 -104, i8 1 }, %struct.i2c_reg_value { i8 64, i8 6, i8 1 }, %struct.i2c_reg_value { i8 65, i8 1, i8 1 }, %struct.i2c_reg_value { i8 66, i8 -118, i8 1 }, %struct.i2c_reg_value { i8 67, i8 8, i8 1 }, %struct.i2c_reg_value { i8 68, i8 2, i8 1 }, %struct.i2c_reg_value { i8 69, i8 2, i8 1 }, %struct.i2c_reg_value { i8 70, i8 22, i8 1 }, %struct.i2c_reg_value { i8 71, i8 23, i8 1 }, %struct.i2c_reg_value { i8 49, i8 90, i8 1 }, %struct.i2c_reg_value { i8 5, i8 50, i8 1 }, %struct.i2c_reg_value { i8 6, i8 32, i8 1 }, %struct.i2c_reg_value { i8 18, i8 1, i8 1 }, %struct.i2c_reg_value { i8 19, i8 0, i8 1 }, %struct.i2c_reg_value { i8 92, i8 -1, i8 2 }], [45 x i8] zeroinitializer }, align 32
@tvp7002_parms_1080I50 = internal constant { [17 x %struct.i2c_reg_value], [45 x i8] } { [17 x %struct.i2c_reg_value] [%struct.i2c_reg_value { i8 1, i8 -91, i8 1 }, %struct.i2c_reg_value { i8 2, i8 0, i8 1 }, %struct.i2c_reg_value { i8 3, i8 -104, i8 1 }, %struct.i2c_reg_value { i8 64, i8 6, i8 1 }, %struct.i2c_reg_value { i8 65, i8 1, i8 1 }, %struct.i2c_reg_value { i8 66, i8 -118, i8 1 }, %struct.i2c_reg_value { i8 67, i8 8, i8 1 }, %struct.i2c_reg_value { i8 68, i8 2, i8 1 }, %struct.i2c_reg_value { i8 69, i8 2, i8 1 }, %struct.i2c_reg_value { i8 70, i8 22, i8 1 }, %struct.i2c_reg_value { i8 71, i8 23, i8 1 }, %struct.i2c_reg_value { i8 49, i8 90, i8 1 }, %struct.i2c_reg_value { i8 5, i8 50, i8 1 }, %struct.i2c_reg_value { i8 6, i8 32, i8 1 }, %struct.i2c_reg_value { i8 18, i8 1, i8 1 }, %struct.i2c_reg_value { i8 19, i8 0, i8 1 }, %struct.i2c_reg_value { i8 92, i8 -1, i8 2 }], [45 x i8] zeroinitializer }, align 32
@tvp7002_parms_720P50 = internal constant { [17 x %struct.i2c_reg_value], [45 x i8] } { [17 x %struct.i2c_reg_value] [%struct.i2c_reg_value { i8 1, i8 123, i8 1 }, %struct.i2c_reg_value { i8 2, i8 -64, i8 1 }, %struct.i2c_reg_value { i8 3, i8 -104, i8 1 }, %struct.i2c_reg_value { i8 64, i8 71, i8 1 }, %struct.i2c_reg_value { i8 65, i8 1, i8 1 }, %struct.i2c_reg_value { i8 66, i8 75, i8 1 }, %struct.i2c_reg_value { i8 67, i8 6, i8 1 }, %struct.i2c_reg_value { i8 68, i8 5, i8 1 }, %struct.i2c_reg_value { i8 69, i8 0, i8 1 }, %struct.i2c_reg_value { i8 70, i8 45, i8 1 }, %struct.i2c_reg_value { i8 71, i8 0, i8 1 }, %struct.i2c_reg_value { i8 49, i8 90, i8 1 }, %struct.i2c_reg_value { i8 5, i8 50, i8 1 }, %struct.i2c_reg_value { i8 6, i8 32, i8 1 }, %struct.i2c_reg_value { i8 18, i8 1, i8 1 }, %struct.i2c_reg_value { i8 19, i8 0, i8 1 }, %struct.i2c_reg_value { i8 92, i8 -1, i8 2 }], [45 x i8] zeroinitializer }, align 32
@tvp7002_parms_1080P60 = internal constant { [17 x %struct.i2c_reg_value], [45 x i8] } { [17 x %struct.i2c_reg_value] [%struct.i2c_reg_value { i8 1, i8 -119, i8 1 }, %struct.i2c_reg_value { i8 2, i8 -128, i8 1 }, %struct.i2c_reg_value { i8 3, i8 -32, i8 1 }, %struct.i2c_reg_value { i8 64, i8 6, i8 1 }, %struct.i2c_reg_value { i8 65, i8 1, i8 1 }, %struct.i2c_reg_value { i8 66, i8 -118, i8 1 }, %struct.i2c_reg_value { i8 67, i8 8, i8 1 }, %struct.i2c_reg_value { i8 68, i8 2, i8 1 }, %struct.i2c_reg_value { i8 69, i8 2, i8 1 }, %struct.i2c_reg_value { i8 70, i8 22, i8 1 }, %struct.i2c_reg_value { i8 71, i8 23, i8 1 }, %struct.i2c_reg_value { i8 49, i8 90, i8 1 }, %struct.i2c_reg_value { i8 5, i8 50, i8 1 }, %struct.i2c_reg_value { i8 6, i8 32, i8 1 }, %struct.i2c_reg_value { i8 18, i8 1, i8 1 }, %struct.i2c_reg_value { i8 19, i8 0, i8 1 }, %struct.i2c_reg_value { i8 92, i8 -1, i8 2 }], [45 x i8] zeroinitializer }, align 32
@tvp7002_parms_480P = internal constant { [17 x %struct.i2c_reg_value], [45 x i8] } { [17 x %struct.i2c_reg_value] [%struct.i2c_reg_value { i8 1, i8 53, i8 1 }, %struct.i2c_reg_value { i8 2, i8 -96, i8 1 }, %struct.i2c_reg_value { i8 3, i8 2, i8 1 }, %struct.i2c_reg_value { i8 64, i8 -111, i8 1 }, %struct.i2c_reg_value { i8 65, i8 0, i8 1 }, %struct.i2c_reg_value { i8 66, i8 11, i8 1 }, %struct.i2c_reg_value { i8 67, i8 0, i8 1 }, %struct.i2c_reg_value { i8 68, i8 3, i8 1 }, %struct.i2c_reg_value { i8 69, i8 1, i8 1 }, %struct.i2c_reg_value { i8 70, i8 19, i8 1 }, %struct.i2c_reg_value { i8 71, i8 19, i8 1 }, %struct.i2c_reg_value { i8 49, i8 24, i8 1 }, %struct.i2c_reg_value { i8 5, i8 6, i8 1 }, %struct.i2c_reg_value { i8 6, i8 16, i8 1 }, %struct.i2c_reg_value { i8 18, i8 3, i8 1 }, %struct.i2c_reg_value { i8 19, i8 3, i8 1 }, %struct.i2c_reg_value { i8 92, i8 -1, i8 2 }], [45 x i8] zeroinitializer }, align 32
@tvp7002_parms_576P = internal constant { [17 x %struct.i2c_reg_value], [45 x i8] } { [17 x %struct.i2c_reg_value] [%struct.i2c_reg_value { i8 1, i8 54, i8 1 }, %struct.i2c_reg_value { i8 2, i8 0, i8 1 }, %struct.i2c_reg_value { i8 3, i8 24, i8 1 }, %struct.i2c_reg_value { i8 64, i8 -101, i8 1 }, %struct.i2c_reg_value { i8 65, i8 0, i8 1 }, %struct.i2c_reg_value { i8 66, i8 15, i8 1 }, %struct.i2c_reg_value { i8 67, i8 0, i8 1 }, %struct.i2c_reg_value { i8 68, i8 0, i8 1 }, %struct.i2c_reg_value { i8 69, i8 0, i8 1 }, %struct.i2c_reg_value { i8 70, i8 45, i8 1 }, %struct.i2c_reg_value { i8 71, i8 0, i8 1 }, %struct.i2c_reg_value { i8 49, i8 24, i8 1 }, %struct.i2c_reg_value { i8 5, i8 6, i8 1 }, %struct.i2c_reg_value { i8 6, i8 16, i8 1 }, %struct.i2c_reg_value { i8 18, i8 3, i8 1 }, %struct.i2c_reg_value { i8 19, i8 3, i8 1 }, %struct.i2c_reg_value { i8 92, i8 -1, i8 2 }], [45 x i8] zeroinitializer }, align 32
@tvp7002_timings = internal constant { [7 x { { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, ptr, i32, i32, i16, i16, i16, i16 }], [280 x i8] } { [7 x { { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, ptr, i32, i32, i16, i16, i16, i16 }] [{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, ptr, i32, i32, i16, i16, i16, i16 } { { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 720, i32 0, i32 3, i64 74250000, i32 110, i32 40, i32 220, i32 5, i32 5, i32 20, i32 0, i32 0, i32 0, i32 1, i32 146, %struct.v4l2_fract zeroinitializer, i8 4, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, ptr @tvp7002_parms_720P60, i32 3, i32 1, i16 1, i16 750, i16 135, i16 153 }, { { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, ptr, i32, i32, i16, i16, i16, i16 } { { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 1, i32 3, i64 74250000, i32 88, i32 44, i32 148, i32 2, i32 5, i32 15, i32 2, i32 5, i32 16, i32 1, i32 154, %struct.v4l2_fract zeroinitializer, i8 5, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, ptr @tvp7002_parms_1080I60, i32 3, i32 4, i16 0, i16 1125, i16 181, i16 205 }, { { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, ptr, i32, i32, i16, i16, i16, i16 } { { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 1, i32 3, i64 74250000, i32 528, i32 44, i32 148, i32 2, i32 5, i32 15, i32 2, i32 5, i32 16, i32 1, i32 152, %struct.v4l2_fract zeroinitializer, i8 20, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, ptr @tvp7002_parms_1080I50, i32 3, i32 4, i16 0, i16 1125, i16 217, i16 245 }, { { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, ptr, i32, i32, i16, i16, i16, i16 } { { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 720, i32 0, i32 3, i64 74250000, i32 440, i32 40, i32 220, i32 5, i32 5, i32 20, i32 0, i32 0, i32 0, i32 1, i32 144, %struct.v4l2_fract zeroinitializer, i8 19, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, ptr @tvp7002_parms_720P50, i32 3, i32 1, i16 1, i16 750, i16 163, i16 183 }, { { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, ptr, i32, i32, i16, i16, i16, i16 } { { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 0, i32 3, i64 148500000, i32 88, i32 44, i32 148, i32 4, i32 5, i32 36, i32 0, i32 0, i32 0, i32 3, i32 146, %struct.v4l2_fract zeroinitializer, i8 16, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, ptr @tvp7002_parms_1080P60, i32 3, i32 1, i16 1, i16 1125, i16 90, i16 102 }, { { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, ptr, i32, i32, i16, i16, i16, i16 } { { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 720, i32 480, i32 0, i32 0, i64 27000000, i32 16, i32 62, i32 60, i32 9, i32 6, i32 30, i32 0, i32 0, i32 0, i32 1, i32 208, %struct.v4l2_fract { i32 4, i32 3 }, i8 2, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, ptr @tvp7002_parms_480P, i32 1, i32 1, i16 1, i16 525, i16 -1, i16 -1 }, { { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, ptr, i32, i32, i16, i16, i16, i16 } { { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 720, i32 576, i32 0, i32 0, i64 27000000, i32 12, i32 64, i32 68, i32 5, i32 5, i32 39, i32 0, i32 0, i32 0, i32 1, i32 208, %struct.v4l2_fract { i32 4, i32 3 }, i8 17, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, ptr @tvp7002_parms_576P, i32 1, i32 1, i16 1, i16 625, i16 -1, i16 -1 }], [280 x i8] zeroinitializer }, align 32
@tvp7002_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @tvp7002_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tvp7002_g_register, ptr @tvp7002_s_register, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tvp7002_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tvp7002_s_stream, ptr null, ptr null, ptr null, ptr @tvp7002_s_dv_timings, ptr @tvp7002_g_dv_timings, ptr @tvp7002_query_dv_timings, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@tvp7002_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @tvp7002_enum_mbus_code, ptr null, ptr null, ptr @tvp7002_get_pad_format, ptr @tvp7002_set_pad_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tvp7002_enum_dv_timings, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@tvp7002_log_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 756, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: Selected DV Timings: %ux%u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tvp7002_log_status\00", [45 x i8] zeroinitializer }, align 32
@tvp7002_log_status._entry_ptr = internal global ptr @tvp7002_log_status._entry, section ".printk_index", align 4
@tvp7002_log_status._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 758, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: Detected DV Timings: None\0A\00", [63 x i8] zeroinitializer }, align 32
@tvp7002_log_status._entry_ptr.23 = internal global ptr @tvp7002_log_status._entry.21, section ".printk_index", align 4
@tvp7002_log_status._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.3, i32 762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: Detected DV Timings: %ux%u\0A\00", [62 x i8] zeroinitializer }, align 32
@tvp7002_log_status._entry_ptr.26 = internal global ptr @tvp7002_log_status._entry.24, section ".printk_index", align 4
@tvp7002_log_status._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.20, ptr @.str.3, i32 765, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: Streaming enabled: %s\0A\00", [35 x i8] zeroinitializer }, align 32
@tvp7002_log_status._entry_ptr.29 = internal global ptr @tvp7002_log_status._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@tvp7002_query_dv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s: detection failed: lpf = %x, cpl = %x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tvp7002_query_dv\00", [47 x i8] zeroinitializer }, align 32
@tvp7002_query_dv._entry_ptr = internal global ptr @tvp7002_query_dv._entry, section ".printk_index", align 4
@tvp7002_query_dv._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.3, i32 658, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: detected timings: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@tvp7002_query_dv._entry_ptr.36 = internal global ptr @tvp7002_query_dv._entry.34, section ".printk_index", align 4
@tvp7002_s_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 731, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: Fail to set streaming\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tvp7002_s_stream\00", [47 x i8] zeroinitializer }, align 32
@tvp7002_s_stream._entry_ptr = internal global ptr @tvp7002_s_stream._entry, section ".printk_index", align 4
@tvp7002_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: TVP7002 read error %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tvp7002_read\00", [19 x i8] zeroinitializer }, align 32
@tvp7002_read._entry_ptr = internal global ptr @tvp7002_read._entry, section ".printk_index", align 4
@tvp7002_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 502, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014%s: Write: retry ... %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tvp7002_write\00", [18 x i8] zeroinitializer }, align 32
@tvp7002_write._entry_ptr = internal global ptr @tvp7002_write._entry, section ".printk_index", align 4
@tvp7002_write._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.3, i32 505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: TVP7002 write error %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tvp7002_write._entry_ptr.45 = internal global ptr @tvp7002_write._entry.43, section ".printk_index", align 4
@___asan_gen_.46 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 55, i32 13 }
@___asan_gen_.49 = private unnamed_addr constant [15 x i8] c"tvp7002_driver\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1078, i32 26 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1081, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"tvp7002_of_match\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1070, i32 34 }
@___asan_gen_.58 = private unnamed_addr constant [11 x i8] c"tvp7002_id\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1063, i32 35 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1052, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 950, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [12 x i8] c"tvp7002_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 879, i32 37 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 970, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 978, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 980, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [21 x i8] c"tvp7002_init_default\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 72, i32 35 }
@___asan_gen_.112 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1016, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"tvp7002_ctrl_ops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 787, i32 35 }
@___asan_gen_.121 = private unnamed_addr constant [21 x i8] c"tvp7002_parms_720P60\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 276, i32 35 }
@___asan_gen_.124 = private unnamed_addr constant [22 x i8] c"tvp7002_parms_1080I60\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 213, i32 35 }
@___asan_gen_.127 = private unnamed_addr constant [22 x i8] c"tvp7002_parms_1080I50\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 255, i32 35 }
@___asan_gen_.130 = private unnamed_addr constant [21 x i8] c"tvp7002_parms_720P50\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 297, i32 35 }
@___asan_gen_.133 = private unnamed_addr constant [22 x i8] c"tvp7002_parms_1080P60\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 234, i32 35 }
@___asan_gen_.136 = private unnamed_addr constant [19 x i8] c"tvp7002_parms_480P\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 171, i32 35 }
@___asan_gen_.139 = private unnamed_addr constant [19 x i8] c"tvp7002_parms_576P\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 192, i32 35 }
@___asan_gen_.142 = private unnamed_addr constant [16 x i8] c"tvp7002_timings\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 330, i32 48 }
@___asan_gen_.145 = private unnamed_addr constant [17 x i8] c"tvp7002_core_ops\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 854, i32 42 }
@___asan_gen_.148 = private unnamed_addr constant [18 x i8] c"tvp7002_video_ops\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 863, i32 43 }
@___asan_gen_.151 = private unnamed_addr constant [16 x i8] c"tvp7002_pad_ops\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 871, i32 41 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 756, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 758, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 761, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 764, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 652, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 658, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 731, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 458, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 502, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.232 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.233 = private constant [31 x i8] c"../drivers/media/i2c/tvp7002.c\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 505, i32 2 }
@llvm.compiler.used = appending global [88 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug297, ptr @__UNIQUE_ID_debugtype296, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_tvp7002_driver_exit, ptr @__initcall__kmod_tvp7002__298_1088_tvp7002_driver_init6, ptr @__param_debug, ptr @tvp7002_driver_exit, ptr @tvp7002_log_status._entry, ptr @tvp7002_log_status._entry.21, ptr @tvp7002_log_status._entry.24, ptr @tvp7002_log_status._entry.27, ptr @tvp7002_log_status._entry_ptr, ptr @tvp7002_log_status._entry_ptr.23, ptr @tvp7002_log_status._entry_ptr.26, ptr @tvp7002_log_status._entry_ptr.29, ptr @tvp7002_probe._entry, ptr @tvp7002_probe._entry.11, ptr @tvp7002_probe._entry.14, ptr @tvp7002_probe._entry.8, ptr @tvp7002_probe._entry_ptr, ptr @tvp7002_probe._entry_ptr.10, ptr @tvp7002_probe._entry_ptr.13, ptr @tvp7002_probe._entry_ptr.16, ptr @tvp7002_query_dv._entry, ptr @tvp7002_query_dv._entry.34, ptr @tvp7002_query_dv._entry_ptr, ptr @tvp7002_query_dv._entry_ptr.36, ptr @tvp7002_read._entry, ptr @tvp7002_read._entry_ptr, ptr @tvp7002_remove._entry, ptr @tvp7002_remove._entry_ptr, ptr @tvp7002_s_stream._entry, ptr @tvp7002_s_stream._entry_ptr, ptr @tvp7002_write._entry, ptr @tvp7002_write._entry.43, ptr @tvp7002_write._entry_ptr, ptr @tvp7002_write._entry_ptr.45, ptr @debug, ptr @tvp7002_driver, ptr @.str, ptr @tvp7002_of_match, ptr @tvp7002_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @tvp7002_ops, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @tvp7002_init_default, ptr @tvp7002_probe._key, ptr @.str.17, ptr @tvp7002_ctrl_ops, ptr @tvp7002_parms_720P60, ptr @tvp7002_parms_1080I60, ptr @tvp7002_parms_1080I50, ptr @tvp7002_parms_720P50, ptr @tvp7002_parms_1080P60, ptr @tvp7002_parms_480P, ptr @tvp7002_parms_576P, ptr @tvp7002_timings, ptr @tvp7002_core_ops, ptr @tvp7002_video_ops, ptr @tvp7002_pad_ops, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp7002_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp7002_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp7002_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp7002_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp7002_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp7002_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp7002_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp7002_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp7002_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp7002_init_default to i32), i32 279, i32 352, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp7002_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp7002_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp7002_parms_720P60 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp7002_parms_1080I60 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp7002_parms_1080I50 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp7002_parms_720P50 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp7002_parms_1080P60 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp7002_parms_480P to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp7002_parms_576P to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp7002_timings to i32), i32 1064, i32 1344, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp7002_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp7002_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp7002_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp7002_log_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp7002_log_status._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp7002_log_status._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp7002_log_status._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp7002_query_dv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp7002_query_dv._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp7002_s_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp7002_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp7002_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp7002_write._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp7002_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tvp7002_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tvp7002_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @i2c_del_driver(ptr noundef nonnull @tvp7002_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp7002_remove(ptr nocapture noundef readonly %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = load i8, ptr @debug, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 9
  %addr = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 1
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %addr, align 2
  %conv4 = zext i16 %4 to i32
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %name, i32 noundef %conv4) #13
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #10
  %hdl = getelementptr inbounds %struct.tvp7002, ptr %1, i32 0, i32 1
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp7002_probe(ptr noundef %c) #2 align 64 {
entry:
  %bus_cfg.i = alloca %struct.v4l2_fwnode_endpoint, align 4
  %timings = alloca %struct.v4l2_dv_timings, align 1
  %revision = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %bus_cfg.i) #10
  %0 = call ptr @memset(ptr %bus_cfg.i, i32 0, i32 64)
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 4
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 4, i32 27
  %1 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 4, i32 7
  %3 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %platform_data.i, align 8
  br label %tvp7002_get_pdata.exit

if.end.i:                                         ; preds = %entry
  %call.i = tail call ptr @of_graph_get_next_endpoint(ptr noundef nonnull %2, ptr noundef null) #10
  %tobool4.not.i = icmp eq ptr %call.i, null
  br i1 %tobool4.not.i, label %tvp7002_get_pdata.exit.thread, label %cond.end.i

tvp7002_get_pdata.exit.thread:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #10
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %timings) #10
  %5 = call ptr @memset(ptr %timings, i32 255, i32 132)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %revision) #10
  %6 = ptrtoint ptr %revision to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %revision, align 1, !annotation !139
  br label %do.end

cond.end.i:                                       ; preds = %if.end.i
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %call.i, i32 0, i32 3
  %call8.i = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef %fwnode.i, ptr noundef nonnull %bus_cfg.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %cond.end.i.done.i_crit_edge

cond.end.i.done.i_crit_edge:                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %done.i

if.end11.i:                                       ; preds = %cond.end.i
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 5, i32 noundef 3520) #10
  %tobool14.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool14.not.i, label %if.end11.i.done.i_crit_edge, label %if.end16.i

if.end11.i.done.i_crit_edge:                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %done.i

if.end16.i:                                       ; preds = %if.end11.i
  %bus.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg.i, i32 0, i32 2
  %7 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bus.i, align 4
  %and.i = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool18.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool18.not.i, label %if.end16.i.if.end20.i_crit_edge, label %if.then19.i

if.end16.i.if.end20.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %hs_polarity.i = getelementptr inbounds %struct.tvp7002_config, ptr %call.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %hs_polarity.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %hs_polarity.i, align 1
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then19.i, %if.end16.i.if.end20.i_crit_edge
  %and21.i = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.end20.i.if.end24.i_crit_edge, label %if.then23.i

if.end20.i.if.end24.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

if.then23.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  %vs_polarity.i = getelementptr inbounds %struct.tvp7002_config, ptr %call.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %vs_polarity.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %vs_polarity.i, align 1
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then23.i, %if.end20.i.if.end24.i_crit_edge
  %and25.i = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.end24.i.if.end28.i_crit_edge, label %if.then27.i

if.end24.i.if.end28.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28.i

if.then27.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %call.i.i, align 1
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then27.i, %if.end24.i.if.end28.i_crit_edge
  %and29.i = and i32 %8, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.end28.i.if.end32.i_crit_edge, label %if.then31.i

if.end28.i.if.end32.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.i

if.then31.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  %fid_polarity.i = getelementptr inbounds %struct.tvp7002_config, ptr %call.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %fid_polarity.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %fid_polarity.i, align 1
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then31.i, %if.end28.i.if.end32.i_crit_edge
  %and33.i = and i32 %8, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %if.end32.i.done.i_crit_edge, label %if.then35.i

if.end32.i.done.i_crit_edge:                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %done.i

if.then35.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  %sog_polarity.i = getelementptr inbounds %struct.tvp7002_config, ptr %call.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %sog_polarity.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %sog_polarity.i, align 1
  br label %done.i

done.i:                                           ; preds = %if.then35.i, %if.end32.i.done.i_crit_edge, %if.end11.i.done.i_crit_edge, %cond.end.i.done.i_crit_edge
  %pdata.0.i = phi ptr [ null, %cond.end.i.done.i_crit_edge ], [ %call.i.i, %if.then35.i ], [ %call.i.i, %if.end32.i.done.i_crit_edge ], [ null, %if.end11.i.done.i_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %call.i) #10
  br label %tvp7002_get_pdata.exit

tvp7002_get_pdata.exit:                           ; preds = %done.i, %if.then.i
  %retval.0.i = phi ptr [ %pdata.0.i, %done.i ], [ %4, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #10
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %timings) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %revision) #10
  %14 = ptrtoint ptr %revision to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %revision, align 1, !annotation !139
  %cmp = icmp eq ptr %retval.0.i, null
  br i1 %cmp, label %tvp7002_get_pdata.exit.do.end_crit_edge, label %if.end

tvp7002_get_pdata.exit.do.end_crit_edge:          ; preds = %tvp7002_get_pdata.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %tvp7002_get_pdata.exit.do.end_crit_edge, %tvp7002_get_pdata.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.4) #13
  br label %cleanup

if.end:                                           ; preds = %tvp7002_get_pdata.exit
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 3
  %15 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i184 = call i32 %20(ptr noundef %16) #10
  %and.i185 = and i32 %call.i.i184, 1179648
  call void @__sanitizer_cov_trace_const_cmp4(i32 1179648, i32 %and.i185)
  %cmp.i.not = icmp eq i32 %and.i185, 1179648
  br i1 %cmp.i.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call.i186 = call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 428, i32 noundef 3520) #10
  %tobool6.not = icmp eq ptr %call.i186, null
  br i1 %tobool6.not, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %pdata10 = getelementptr inbounds %struct.tvp7002, ptr %call.i186, i32 0, i32 2
  %21 = ptrtoint ptr %pdata10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %retval.0.i, ptr %pdata10, align 4
  %current_timings = getelementptr inbounds %struct.tvp7002, ptr %call.i186, i32 0, i32 5
  %22 = ptrtoint ptr %current_timings to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @tvp7002_timings, ptr %current_timings, align 4
  call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i186, ptr noundef %c, ptr noundef nonnull @tvp7002_ops) #10
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
  %conv = zext i16 %32 to i32
  %name20 = getelementptr inbounds %struct.i2c_adapter, ptr %28, i32 0, i32 12
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %26, i32 noundef %30, i32 noundef %conv, i32 noundef %conv, ptr noundef %name20) #13
  %call22 = call fastcc i32 @tvp7002_read(ptr noundef nonnull %call.i186, i8 noundef zeroext 0, ptr noundef nonnull %revision)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end8.cleanup_crit_edge, label %do.end29

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end29:                                         ; preds = %if.end8
  %name31 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i186, i32 0, i32 9
  %33 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %revision, align 1
  %conv33 = zext i8 %34 to i32
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name31, i32 noundef %conv33) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %34)
  %cmp36.not = icmp eq i8 %34, 2
  br i1 %cmp36.not, label %do.end29.if.end46_crit_edge, label %do.end41

do.end29.if.end46_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

do.end41:                                         ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #12
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name31) #13
  br label %if.end46

if.end46:                                         ; preds = %do.end41, %do.end29.if.end46_crit_edge
  %call47 = call fastcc i32 @tvp7002_write_inittab(ptr noundef nonnull %call.i186, ptr noundef nonnull @tvp7002_init_default)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.end46.cleanup_crit_edge, label %if.end51

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end51:                                         ; preds = %if.end46
  %35 = ptrtoint ptr %pdata10 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdata10, align 4
  %vs_polarity = getelementptr inbounds %struct.tvp7002_config, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %vs_polarity to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %vs_polarity, align 1, !range !138
  %39 = shl nuw nsw i8 %38, 2
  %40 = or i8 %39, 32
  %call61 = call fastcc i32 @tvp7002_write(ptr noundef nonnull %call.i186, i8 noundef zeroext 14, i8 noundef zeroext %40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.end51.cleanup_crit_edge, label %if.end65

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end65:                                         ; preds = %if.end51
  %41 = ptrtoint ptr %pdata10 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdata10, align 4
  %fid_polarity = getelementptr inbounds %struct.tvp7002_config, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %fid_polarity to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %fid_polarity, align 1, !range !138
  %45 = shl nuw nsw i8 %44, 2
  %sog_polarity = getelementptr inbounds %struct.tvp7002_config, ptr %42, i32 0, i32 4
  %46 = ptrtoint ptr %sog_polarity to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %sog_polarity, align 1, !range !138
  %48 = shl nuw nsw i8 %47, 1
  %49 = or i8 %45, %48
  %or75183 = or i8 %49, 1
  %call81 = call fastcc i32 @tvp7002_write(ptr noundef nonnull %call.i186, i8 noundef zeroext 24, i8 noundef zeroext %or75183)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %if.end65.cleanup_crit_edge, label %if.end85

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end85:                                         ; preds = %if.end65
  %50 = ptrtoint ptr %current_timings to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %current_timings, align 4
  %52 = call ptr @memcpy(ptr %timings, ptr %51, i32 132)
  %call88 = call i32 @tvp7002_s_dv_timings(ptr noundef nonnull %call.i186, ptr noundef nonnull %timings)
  %pad = getelementptr inbounds %struct.tvp7002, ptr %call.i186, i32 0, i32 6
  %flags = getelementptr inbounds %struct.tvp7002, ptr %call.i186, i32 0, i32 6, i32 4
  %53 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 2, ptr %flags, align 4
  %flags90 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i186, i32 0, i32 4
  %54 = ptrtoint ptr %flags90 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags90, align 4
  %or91 = or i32 %55, 4
  store i32 %or91, ptr %flags90, align 4
  %function = getelementptr inbounds %struct.media_entity, ptr %call.i186, i32 0, i32 3
  %56 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 131076, ptr %function, align 4
  %call96 = call i32 @media_entity_pads_init(ptr noundef nonnull %call.i186, i16 noundef zeroext 1, ptr noundef %pad) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %cmp97 = icmp slt i32 %call96, 0
  br i1 %cmp97, label %if.end85.cleanup_crit_edge, label %if.end100

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end100:                                        ; preds = %if.end85
  %hdl = getelementptr inbounds %struct.tvp7002, ptr %call.i186, i32 0, i32 1
  %call102 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 1, ptr noundef nonnull @tvp7002_probe._key, ptr noundef nonnull @.str.17) #10
  %call104 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @tvp7002_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 0) #10
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i186, i32 0, i32 8
  %57 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %hdl, ptr %ctrl_handler, align 4
  %error107 = getelementptr inbounds %struct.tvp7002, ptr %call.i186, i32 0, i32 1, i32 9
  %58 = ptrtoint ptr %error107 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %error107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool108.not = icmp eq i32 %59, 0
  br i1 %tobool108.not, label %if.end112, label %if.end100.error120_crit_edge

if.end100.error120_crit_edge:                     ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #12
  br label %error120

if.end112:                                        ; preds = %if.end100
  %call114 = call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl) #10
  %call116 = call i32 @v4l2_async_register_subdev(ptr noundef nonnull %call.i186) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.end112.cleanup_crit_edge, label %if.end112.error120_crit_edge

if.end112.error120_crit_edge:                     ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  br label %error120

if.end112.cleanup_crit_edge:                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

error120:                                         ; preds = %if.end112.error120_crit_edge, %if.end100.error120_crit_edge
  %error.0 = phi i32 [ %call116, %if.end112.error120_crit_edge ], [ %59, %if.end100.error120_crit_edge ]
  call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #10
  br label %cleanup

cleanup:                                          ; preds = %error120, %if.end112.cleanup_crit_edge, %if.end85.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %error.0, %error120 ], [ -5, %if.end.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ], [ %call22, %if.end8.cleanup_crit_edge ], [ %call47, %if.end46.cleanup_crit_edge ], [ %call61, %if.end51.cleanup_crit_edge ], [ %call81, %if.end65.cleanup_crit_edge ], [ %call96, %if.end85.cleanup_crit_edge ], [ 0, %if.end112.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %revision) #10
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %timings) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tvp7002_read(ptr noundef %sd, i8 noundef zeroext %addr, ptr nocapture noundef writeonly %dst) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %call1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %addr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp2 = icmp sgt i32 %call1, -1
  br i1 %cmp2, label %entry.if.then_crit_edge, label %if.end

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %if.end.3.if.then_crit_edge, %if.end.2.if.then_crit_edge, %if.end.1.if.then_crit_edge, %if.end.if.then_crit_edge, %entry.if.then_crit_edge
  %call1.lcssa = phi i32 [ %call1, %entry.if.then_crit_edge ], [ %call1.1, %if.end.if.then_crit_edge ], [ %call1.2, %if.end.1.if.then_crit_edge ], [ %call1.3, %if.end.2.if.then_crit_edge ], [ %call1.4, %if.end.3.if.then_crit_edge ]
  %conv = trunc i32 %call1.lcssa to i8
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %dst, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @msleep_interruptible(i32 noundef 10) #10
  %call1.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %addr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.1)
  %cmp2.1 = icmp sgt i32 %call1.1, -1
  br i1 %cmp2.1, label %if.end.if.then_crit_edge, label %if.end.1

if.end.if.then_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end.1:                                         ; preds = %if.end
  %call3.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #10
  %call1.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %addr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.2)
  %cmp2.2 = icmp sgt i32 %call1.2, -1
  br i1 %cmp2.2, label %if.end.1.if.then_crit_edge, label %if.end.2

if.end.1.if.then_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end.2:                                         ; preds = %if.end.1
  %call3.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #10
  %call1.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %addr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.3)
  %cmp2.3 = icmp sgt i32 %call1.3, -1
  br i1 %cmp2.3, label %if.end.2.if.then_crit_edge, label %if.end.3

if.end.2.if.then_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end.3:                                         ; preds = %if.end.2
  %call3.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #10
  %call1.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %addr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.4)
  %cmp2.4 = icmp sgt i32 %call1.4, -1
  br i1 %cmp2.4, label %if.end.3.if.then_crit_edge, label %if.end.4

if.end.3.if.then_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end.4:                                         ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #12
  %call3.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #10
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name, i32 noundef %call1.4) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call1.4, %if.end.4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tvp7002_write_inittab(ptr noundef %sd, ptr nocapture noundef readonly %regs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %regs, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 92, i8 %1)
  %cmp.not11 = icmp eq i8 %1, 92
  br i1 %cmp.not11, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi i8 [ %8, %if.end.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %regs.addr.013 = phi ptr [ %incdec.ptr, %if.end.while.body_crit_edge ], [ %regs, %entry.while.body_crit_edge ]
  %error.012 = phi i32 [ %error.2, %if.end.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %type = getelementptr inbounds %struct.i2c_reg_value, ptr %regs.addr.013, i32 0, i32 2
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp3 = icmp eq i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.012)
  %tobool.not.i = icmp eq i32 %error.012, 0
  %or.cond = select i1 %cmp3, i1 %tobool.not.i, i1 false
  br i1 %or.cond, label %if.then.i, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %value = getelementptr inbounds %struct.i2c_reg_value, ptr %regs.addr.013, i32 0, i32 1
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %value, align 1
  %call.i = tail call fastcc i32 @tvp7002_write(ptr noundef %sd, i8 noundef zeroext %2, i8 noundef zeroext %6) #10
  br label %if.end

if.end:                                           ; preds = %if.then.i, %while.body.if.end_crit_edge
  %error.2 = phi i32 [ %error.012, %while.body.if.end_crit_edge ], [ %call.i, %if.then.i ]
  %incdec.ptr = getelementptr %struct.i2c_reg_value, ptr %regs.addr.013, i32 1
  %7 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %incdec.ptr, align 1
  %cmp.not = icmp eq i8 %8, 92
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %error.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %error.2, %if.end.while.end_crit_edge ]
  ret i32 %error.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tvp7002_write(ptr noundef %sd, i8 noundef zeroext %addr, i8 noundef zeroext %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %addr, i8 noundef zeroext %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp2 = icmp sgt i32 %call1, -1
  br i1 %cmp2, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %entry
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %name, i32 noundef 0) #13
  %call4 = tail call i32 @msleep_interruptible(i32 noundef 10) #10
  %call1.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %addr, i8 noundef zeroext %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.1)
  %cmp2.1 = icmp sgt i32 %call1.1, -1
  br i1 %cmp2.1, label %do.end.cleanup_crit_edge, label %do.end.1

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end.1:                                         ; preds = %do.end
  %call3.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %name, i32 noundef 1) #13
  %call4.1 = tail call i32 @msleep_interruptible(i32 noundef 10) #10
  %call1.2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %addr, i8 noundef zeroext %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.2)
  %cmp2.2 = icmp sgt i32 %call1.2, -1
  br i1 %cmp2.2, label %do.end.1.cleanup_crit_edge, label %do.end.2

do.end.1.cleanup_crit_edge:                       ; preds = %do.end.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end.2:                                         ; preds = %do.end.1
  %call3.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %name, i32 noundef 2) #13
  %call4.2 = tail call i32 @msleep_interruptible(i32 noundef 10) #10
  %call1.3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %addr, i8 noundef zeroext %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.3)
  %cmp2.3 = icmp sgt i32 %call1.3, -1
  br i1 %cmp2.3, label %do.end.2.cleanup_crit_edge, label %do.end.3

do.end.2.cleanup_crit_edge:                       ; preds = %do.end.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end.3:                                         ; preds = %do.end.2
  %call3.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %name, i32 noundef 3) #13
  %call4.3 = tail call i32 @msleep_interruptible(i32 noundef 10) #10
  %call1.4 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %addr, i8 noundef zeroext %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.4)
  %cmp2.4 = icmp sgt i32 %call1.4, -1
  br i1 %cmp2.4, label %do.end.3.cleanup_crit_edge, label %do.end.4

do.end.3.cleanup_crit_edge:                       ; preds = %do.end.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end.4:                                         ; preds = %do.end.3
  call void @__sanitizer_cov_trace_pc() #12
  %call3.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %name, i32 noundef 4) #13
  %call4.4 = tail call i32 @msleep_interruptible(i32 noundef 10) #10
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name, i32 noundef %call1.4) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end.4, %do.end.3.cleanup_crit_edge, %do.end.2.cleanup_crit_edge, %do.end.1.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.4, %do.end.4 ], [ 0, %do.end.3.cleanup_crit_edge ], [ 0, %do.end.2.cleanup_crit_edge ], [ 0, %do.end.1.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp7002_s_dv_timings(ptr noundef %sd, ptr nocapture noundef readonly %dv_timings) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %dv_timings, i32 0, i32 1
  %1 = ptrtoint ptr %dv_timings to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %dv_timings, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup8_crit_edge

entry.cleanup8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup8

for.cond.preheader:                               ; preds = %entry
  %current_timings = getelementptr inbounds %struct.tvp7002, ptr %sd, i32 0, i32 5
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(15) %0, ptr noundef dereferenceable(15) getelementptr inbounds ([7 x { { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, ptr, i32, i32, i16, i16, i16, i16 }], ptr @tvp7002_timings, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0), i32 15) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %for.cond.preheader.if.then3_crit_edge, label %for.inc

for.cond.preheader.if.then3_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.then3:                                         ; preds = %for.inc.5.if.then3_crit_edge, %for.inc.4.if.then3_crit_edge, %for.inc.3.if.then3_crit_edge, %for.inc.2.if.then3_crit_edge, %for.inc.1.if.then3_crit_edge, %for.inc.if.then3_crit_edge, %for.cond.preheader.if.then3_crit_edge
  %i.023.lcssa = phi i32 [ 0, %for.cond.preheader.if.then3_crit_edge ], [ 1, %for.inc.if.then3_crit_edge ], [ 2, %for.inc.1.if.then3_crit_edge ], [ 3, %for.inc.2.if.then3_crit_edge ], [ 4, %for.inc.3.if.then3_crit_edge ], [ 5, %for.inc.4.if.then3_crit_edge ], [ 6, %for.inc.5.if.then3_crit_edge ]
  %arrayidx.lcssa = phi ptr [ @tvp7002_timings, %for.cond.preheader.if.then3_crit_edge ], [ getelementptr inbounds ([7 x { { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, ptr, i32, i32, i16, i16, i16, i16 }], ptr @tvp7002_timings, i32 0, i32 1, i32 0, i32 0), %for.inc.if.then3_crit_edge ], [ getelementptr inbounds ([7 x { { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, ptr, i32, i32, i16, i16, i16, i16 }], ptr @tvp7002_timings, i32 0, i32 2, i32 0, i32 0), %for.inc.1.if.then3_crit_edge ], [ getelementptr inbounds ([7 x { { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, ptr, i32, i32, i16, i16, i16, i16 }], ptr @tvp7002_timings, i32 0, i32 3, i32 0, i32 0), %for.inc.2.if.then3_crit_edge ], [ getelementptr inbounds ([7 x { { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, ptr, i32, i32, i16, i16, i16, i16 }], ptr @tvp7002_timings, i32 0, i32 4, i32 0, i32 0), %for.inc.3.if.then3_crit_edge ], [ getelementptr inbounds ([7 x { { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, ptr, i32, i32, i16, i16, i16, i16 }], ptr @tvp7002_timings, i32 0, i32 5, i32 0, i32 0), %for.inc.4.if.then3_crit_edge ], [ getelementptr inbounds ([7 x { { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, ptr, i32, i32, i16, i16, i16, i16 }], ptr @tvp7002_timings, i32 0, i32 6, i32 0, i32 0), %for.inc.5.if.then3_crit_edge ]
  %3 = ptrtoint ptr %current_timings to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx.lcssa, ptr %current_timings, align 4
  %p_settings = getelementptr [7 x %struct.tvp7002_timings_definition], ptr @tvp7002_timings, i32 0, i32 %i.023.lcssa, i32 1
  %4 = ptrtoint ptr %p_settings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p_settings, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 92, i8 %7)
  %cmp.not11.i = icmp eq i8 %7, 92
  br i1 %cmp.not11.i, label %if.then3.cleanup8_crit_edge, label %if.then3.while.body.i_crit_edge

if.then3.while.body.i_crit_edge:                  ; preds = %if.then3
  br label %while.body.i

if.then3.cleanup8_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup8

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.then3.while.body.i_crit_edge
  %8 = phi i8 [ %14, %if.end.i.while.body.i_crit_edge ], [ %7, %if.then3.while.body.i_crit_edge ]
  %regs.addr.013.i = phi ptr [ %incdec.ptr.i, %if.end.i.while.body.i_crit_edge ], [ %5, %if.then3.while.body.i_crit_edge ]
  %error.012.i = phi i32 [ %error.2.i, %if.end.i.while.body.i_crit_edge ], [ 0, %if.then3.while.body.i_crit_edge ]
  %type.i = getelementptr inbounds %struct.i2c_reg_value, ptr %regs.addr.013.i, i32 0, i32 2
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp3.i = icmp eq i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.012.i)
  %tobool.not.i.i = icmp eq i32 %error.012.i, 0
  %or.cond.i = select i1 %cmp3.i, i1 %tobool.not.i.i, i1 false
  br i1 %or.cond.i, label %if.then.i.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %value.i = getelementptr inbounds %struct.i2c_reg_value, ptr %regs.addr.013.i, i32 0, i32 1
  %11 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %value.i, align 1
  %call.i.i = tail call fastcc i32 @tvp7002_write(ptr noundef %sd, i8 noundef zeroext %8, i8 noundef zeroext %12) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i.i, %while.body.i.if.end.i_crit_edge
  %error.2.i = phi i32 [ %error.012.i, %while.body.i.if.end.i_crit_edge ], [ %call.i.i, %if.then.i.i ]
  %incdec.ptr.i = getelementptr %struct.i2c_reg_value, ptr %regs.addr.013.i, i32 1
  %13 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %incdec.ptr.i, align 1
  %cmp.not.i = icmp eq i8 %14, 92
  br i1 %cmp.not.i, label %if.end.i.cleanup8_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end.i.cleanup8_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup8

for.inc:                                          ; preds = %for.cond.preheader
  %bcmp.1 = tail call i32 @bcmp(ptr noundef dereferenceable(15) %0, ptr noundef dereferenceable(15) getelementptr inbounds ([7 x { { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, ptr, i32, i32, i16, i16, i16, i16 }], ptr @tvp7002_timings, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0), i32 15) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.1)
  %tobool.not.1 = icmp eq i32 %bcmp.1, 0
  br i1 %tobool.not.1, label %for.inc.if.then3_crit_edge, label %for.inc.1

for.inc.if.then3_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

for.inc.1:                                        ; preds = %for.inc
  %bcmp.2 = tail call i32 @bcmp(ptr noundef dereferenceable(15) %0, ptr noundef dereferenceable(15) getelementptr inbounds ([7 x { { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, ptr, i32, i32, i16, i16, i16, i16 }], ptr @tvp7002_timings, i32 0, i32 2, i32 0, i32 1, i32 0, i32 0), i32 15) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.2)
  %tobool.not.2 = icmp eq i32 %bcmp.2, 0
  br i1 %tobool.not.2, label %for.inc.1.if.then3_crit_edge, label %for.inc.2

for.inc.1.if.then3_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

for.inc.2:                                        ; preds = %for.inc.1
  %bcmp.3 = tail call i32 @bcmp(ptr noundef dereferenceable(15) %0, ptr noundef dereferenceable(15) getelementptr inbounds ([7 x { { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, ptr, i32, i32, i16, i16, i16, i16 }], ptr @tvp7002_timings, i32 0, i32 3, i32 0, i32 1, i32 0, i32 0), i32 15) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.3)
  %tobool.not.3 = icmp eq i32 %bcmp.3, 0
  br i1 %tobool.not.3, label %for.inc.2.if.then3_crit_edge, label %for.inc.3

for.inc.2.if.then3_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

for.inc.3:                                        ; preds = %for.inc.2
  %bcmp.4 = tail call i32 @bcmp(ptr noundef dereferenceable(15) %0, ptr noundef dereferenceable(15) getelementptr inbounds ([7 x { { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, ptr, i32, i32, i16, i16, i16, i16 }], ptr @tvp7002_timings, i32 0, i32 4, i32 0, i32 1, i32 0, i32 0), i32 15) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.4)
  %tobool.not.4 = icmp eq i32 %bcmp.4, 0
  br i1 %tobool.not.4, label %for.inc.3.if.then3_crit_edge, label %for.inc.4

for.inc.3.if.then3_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

for.inc.4:                                        ; preds = %for.inc.3
  %bcmp.5 = tail call i32 @bcmp(ptr noundef dereferenceable(15) %0, ptr noundef dereferenceable(15) getelementptr inbounds ([7 x { { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, ptr, i32, i32, i16, i16, i16, i16 }], ptr @tvp7002_timings, i32 0, i32 5, i32 0, i32 1, i32 0, i32 0), i32 15) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.5)
  %tobool.not.5 = icmp eq i32 %bcmp.5, 0
  br i1 %tobool.not.5, label %for.inc.4.if.then3_crit_edge, label %for.inc.5

for.inc.4.if.then3_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

for.inc.5:                                        ; preds = %for.inc.4
  %bcmp.6 = tail call i32 @bcmp(ptr noundef dereferenceable(15) %0, ptr noundef dereferenceable(15) getelementptr inbounds ([7 x { { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, ptr, i32, i32, i16, i16, i16, i16 }], ptr @tvp7002_timings, i32 0, i32 6, i32 0, i32 1, i32 0, i32 0), i32 15) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.6)
  %tobool.not.6 = icmp eq i32 %bcmp.6, 0
  br i1 %tobool.not.6, label %for.inc.5.if.then3_crit_edge, label %for.inc.5.cleanup8_crit_edge

for.inc.5.cleanup8_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup8

for.inc.5.if.then3_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

cleanup8:                                         ; preds = %for.inc.5.cleanup8_crit_edge, %if.end.i.cleanup8_crit_edge, %if.then3.cleanup8_crit_edge, %entry.cleanup8_crit_edge
  %retval.2 = phi i32 [ -22, %entry.cleanup8_crit_edge ], [ 0, %if.then3.cleanup8_crit_edge ], [ -22, %for.inc.5.cleanup8_crit_edge ], [ %error.2.i, %if.end.i.cleanup8_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp7002_log_status(ptr noundef %sd) #2 align 64 {
entry:
  %detected = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %detected) #10
  %0 = ptrtoint ptr %detected to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %detected, align 4, !annotation !139
  %call1 = call fastcc i32 @tvp7002_query_dv(ptr noundef %sd, ptr noundef nonnull %detected)
  %current_timings = getelementptr inbounds %struct.tvp7002, ptr %sd, i32 0, i32 5
  %1 = ptrtoint ptr %current_timings to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %current_timings, align 4
  %3 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %2, i32 0, i32 1
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %3, align 1
  %height = getelementptr inbounds %struct.v4l2_dv_timings, ptr %2, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %height, align 1
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name, i32 noundef %5, i32 noundef %7) #13
  %8 = ptrtoint ptr %detected to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %detected, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %9)
  %cmp = icmp eq i32 %9, 7
  br i1 %cmp, label %do.end5, label %if.else

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %name) #13
  br label %do.end22

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = getelementptr [7 x %struct.tvp7002_timings_definition], ptr @tvp7002_timings, i32 0, i32 %9, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %height18 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %height18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height18, align 4
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %name, i32 noundef %12, i32 noundef %14) #13
  br label %do.end22

do.end22:                                         ; preds = %if.else, %do.end5
  %streaming = getelementptr inbounds %struct.tvp7002, ptr %sd, i32 0, i32 4
  %15 = ptrtoint ptr %streaming to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  %cond = select i1 %tobool.not, ptr @.str.31, ptr @.str.30
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name, ptr noundef nonnull %cond) #13
  %hdl = getelementptr inbounds %struct.tvp7002, ptr %sd, i32 0, i32 1
  tail call void @v4l2_ctrl_handler_log_status(ptr noundef %hdl, ptr noundef %name) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %detected) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp7002_g_register(ptr noundef %sd, ptr nocapture noundef %reg) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #10
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !139
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %1 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 8)
  %2 = load i64, ptr %reg1, align 1
  %conv = trunc i64 %2 to i8
  %call = call fastcc i32 @tvp7002_read(ptr noundef %sd, i8 noundef zeroext %conv, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val, align 1
  %conv3 = zext i8 %4 to i64
  %val4 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %5 = ptrtoint ptr %val4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 %conv3, ptr %val4, align 1
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %6 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 1, ptr %size, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp7002_s_register(ptr noundef %sd, ptr nocapture noundef readonly %reg) #2 align 64 {
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
  %call = tail call fastcc i32 @tvp7002_write(ptr noundef %sd, i8 noundef zeroext %conv, i8 noundef zeroext %conv3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tvp7002_query_dv(ptr noundef %sd, ptr nocapture noundef %index) unnamed_addr #2 align 64 {
tvp7002_read_err.exit:
  %lpf_lsb = alloca i8, align 1
  %lpf_msb = alloca i8, align 1
  %cpl_lsb = alloca i8, align 1
  %cpl_msb = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lpf_lsb) #10
  %0 = ptrtoint ptr %lpf_lsb to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %lpf_lsb, align 1, !annotation !139
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lpf_msb) #10
  %1 = ptrtoint ptr %lpf_msb to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %lpf_msb, align 1, !annotation !139
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cpl_lsb) #10
  %2 = ptrtoint ptr %cpl_lsb to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %cpl_lsb, align 1, !annotation !139
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cpl_msb) #10
  %3 = ptrtoint ptr %cpl_msb to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %cpl_msb, align 1, !annotation !139
  %4 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 7, ptr %index, align 4
  %call.i = call fastcc i32 @tvp7002_read(ptr noundef %sd, i8 noundef zeroext 55, ptr noundef nonnull %lpf_lsb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i96 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i96, label %if.then.i98, label %tvp7002_read_err.exit.tvp7002_read_err.exit99_crit_edge

tvp7002_read_err.exit.tvp7002_read_err.exit99_crit_edge: ; preds = %tvp7002_read_err.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %tvp7002_read_err.exit99

if.then.i98:                                      ; preds = %tvp7002_read_err.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i97 = call fastcc i32 @tvp7002_read(ptr noundef %sd, i8 noundef zeroext 56, ptr noundef nonnull %lpf_msb) #10
  br label %tvp7002_read_err.exit99

tvp7002_read_err.exit99:                          ; preds = %if.then.i98, %tvp7002_read_err.exit.tvp7002_read_err.exit99_crit_edge
  %error.1 = phi i32 [ %call.i97, %if.then.i98 ], [ %call.i, %tvp7002_read_err.exit.tvp7002_read_err.exit99_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1)
  %cmp = icmp slt i32 %error.1, 0
  br i1 %cmp, label %tvp7002_read_err.exit99.cleanup_crit_edge, label %if.end

tvp7002_read_err.exit99.cleanup_crit_edge:        ; preds = %tvp7002_read_err.exit99
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %tvp7002_read_err.exit99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1)
  %tobool.not.i100 = icmp eq i32 %error.1, 0
  br i1 %tobool.not.i100, label %tvp7002_read_err.exit103, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

tvp7002_read_err.exit103:                         ; preds = %if.end
  %call.i101 = call fastcc i32 @tvp7002_read(ptr noundef %sd, i8 noundef zeroext 57, ptr noundef nonnull %cpl_lsb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %tobool.not.i104 = icmp eq i32 %call.i101, 0
  br i1 %tobool.not.i104, label %if.then.i106, label %tvp7002_read_err.exit103.tvp7002_read_err.exit107_crit_edge

tvp7002_read_err.exit103.tvp7002_read_err.exit107_crit_edge: ; preds = %tvp7002_read_err.exit103
  call void @__sanitizer_cov_trace_pc() #12
  br label %tvp7002_read_err.exit107

if.then.i106:                                     ; preds = %tvp7002_read_err.exit103
  call void @__sanitizer_cov_trace_pc() #12
  %call.i105 = call fastcc i32 @tvp7002_read(ptr noundef %sd, i8 noundef zeroext 58, ptr noundef nonnull %cpl_msb) #10
  br label %tvp7002_read_err.exit107

tvp7002_read_err.exit107:                         ; preds = %if.then.i106, %tvp7002_read_err.exit103.tvp7002_read_err.exit107_crit_edge
  %error.3 = phi i32 [ %call.i105, %if.then.i106 ], [ %call.i101, %tvp7002_read_err.exit103.tvp7002_read_err.exit107_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.3)
  %cmp1 = icmp slt i32 %error.3, 0
  br i1 %cmp1, label %tvp7002_read_err.exit107.cleanup_crit_edge, label %tvp7002_read_err.exit107.if.end3_crit_edge

tvp7002_read_err.exit107.if.end3_crit_edge:       ; preds = %tvp7002_read_err.exit107
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

tvp7002_read_err.exit107.cleanup_crit_edge:       ; preds = %tvp7002_read_err.exit107
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %tvp7002_read_err.exit107.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %5 = ptrtoint ptr %lpf_lsb to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %lpf_lsb, align 1
  %conv = zext i8 %6 to i32
  %7 = ptrtoint ptr %lpf_msb to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %lpf_msb, align 1
  %conv4 = zext i8 %8 to i32
  %and = shl nuw nsw i32 %conv4, 8
  %shl = and i32 %and, 3840
  %or = or i32 %shl, %conv
  %9 = ptrtoint ptr %cpl_lsb to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cpl_lsb, align 1
  %conv5 = zext i8 %10 to i32
  %11 = ptrtoint ptr %cpl_msb to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cpl_msb, align 1
  %13 = and i8 %12, 15
  %and7 = zext i8 %13 to i32
  %shl8 = shl nuw nsw i32 %and7, 8
  %or9 = or i32 %shl8, %conv5
  %and11 = lshr i8 %8, 5
  %14 = and i8 %and11, 1
  %15 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %index, align 4
  %16 = trunc i32 %or9 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 750, i32 %or)
  %cmp16 = icmp eq i32 %or, 750
  br i1 %cmp16, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp21.not = icmp eq i8 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 135, i32 %or9)
  %cmp31.not = icmp ult i32 %or9, 135
  %or.cond143 = select i1 %cmp21.not, i1 true, i1 %cmp31.not
  br i1 %or.cond143, label %land.lhs.true.do.body.sink.split_crit_edge, label %land.lhs.true33

land.lhs.true.do.body.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.sink.split

land.lhs.true33:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp2(i16 153, i16 %16)
  %cmp35.not = icmp ugt i16 %16, 153
  br i1 %cmp35.not, label %if.end28.3, label %land.lhs.true33.do.body52_crit_edge

land.lhs.true33.do.body52_crit_edge:              ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body52

for.inc:                                          ; preds = %if.end3
  %17 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1125, i32 %or)
  %cmp16.1 = icmp eq i32 %or, 1125
  br i1 %cmp16.1, label %land.lhs.true.1, label %for.inc.4

land.lhs.true.1:                                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp21.1 = icmp eq i8 %14, 0
  br i1 %cmp21.1, label %if.end28.1, label %if.end28.4

if.end28.1:                                       ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 181, i32 %or9)
  %cmp31.not.1 = icmp ult i32 %or9, 181
  br i1 %cmp31.not.1, label %if.end28.1.do.body.sink.split_crit_edge, label %land.lhs.true33.1

if.end28.1.do.body.sink.split_crit_edge:          ; preds = %if.end28.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.sink.split

land.lhs.true33.1:                                ; preds = %if.end28.1
  call void @__sanitizer_cov_trace_const_cmp2(i16 205, i16 %16)
  %cmp35.not.1 = icmp ugt i16 %16, 205
  br i1 %cmp35.not.1, label %if.end28.2, label %land.lhs.true33.1.do.body52_crit_edge

land.lhs.true33.1.do.body52_crit_edge:            ; preds = %land.lhs.true33.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body52

if.end28.2:                                       ; preds = %land.lhs.true33.1
  %18 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 217, i32 %or9)
  %cmp31.not.2 = icmp ult i32 %or9, 217
  call void @__sanitizer_cov_trace_const_cmp2(i16 245, i16 %16)
  %cmp35.not.2 = icmp ugt i16 %16, 245
  %or.cond = or i1 %cmp31.not.2, %cmp35.not.2
  br i1 %or.cond, label %if.end28.2.do.body_crit_edge, label %if.end28.2.do.body52_crit_edge

if.end28.2.do.body52_crit_edge:                   ; preds = %if.end28.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body52

if.end28.2.do.body_crit_edge:                     ; preds = %if.end28.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end28.3:                                       ; preds = %land.lhs.true33
  %19 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 163, i32 %or9)
  %cmp31.not.3 = icmp ult i32 %or9, 163
  call void @__sanitizer_cov_trace_const_cmp2(i16 183, i16 %16)
  %cmp35.not.3 = icmp ugt i16 %16, 183
  %or.cond140 = or i1 %cmp31.not.3, %cmp35.not.3
  br i1 %or.cond140, label %if.end28.3.do.body_crit_edge, label %if.end28.3.do.body52_crit_edge

if.end28.3.do.body52_crit_edge:                   ; preds = %if.end28.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body52

if.end28.3.do.body_crit_edge:                     ; preds = %if.end28.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end28.4:                                       ; preds = %land.lhs.true.1
  %20 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 90, i32 %or9)
  %cmp31.not.4 = icmp ult i32 %or9, 90
  call void @__sanitizer_cov_trace_const_cmp2(i16 102, i16 %16)
  %cmp35.not.4 = icmp ugt i16 %16, 102
  %or.cond141 = or i1 %cmp31.not.4, %cmp35.not.4
  br i1 %or.cond141, label %if.end28.4.do.body_crit_edge, label %if.end28.4.do.body52_crit_edge

if.end28.4.do.body52_crit_edge:                   ; preds = %if.end28.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body52

if.end28.4.do.body_crit_edge:                     ; preds = %if.end28.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.inc.4:                                        ; preds = %for.inc
  %21 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 5, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 525, i32 %or)
  %cmp16.5 = icmp eq i32 %or, 525
  br i1 %cmp16.5, label %land.lhs.true.5, label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp21.5.not = icmp eq i8 %14, 0
  br i1 %cmp21.5.not, label %land.lhs.true.5.do.body_crit_edge, label %land.lhs.true.5.do.body52_crit_edge

land.lhs.true.5.do.body52_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body52

land.lhs.true.5.do.body_crit_edge:                ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.inc.5:                                        ; preds = %for.inc.4
  %22 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 6, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 625, i32 %or)
  %cmp16.6 = icmp ne i32 %or, 625
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp21.6.not = icmp eq i8 %14, 0
  %or.cond142 = select i1 %cmp16.6, i1 true, i1 %cmp21.6.not
  br i1 %or.cond142, label %for.inc.5.do.body_crit_edge, label %for.inc.5.do.body52_crit_edge

for.inc.5.do.body52_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body52

for.inc.5.do.body_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body.sink.split:                               ; preds = %if.end28.1.do.body.sink.split_crit_edge, %land.lhs.true.do.body.sink.split_crit_edge
  %.sink = phi i32 [ 2, %if.end28.1.do.body.sink.split_crit_edge ], [ 1, %land.lhs.true.do.body.sink.split_crit_edge ]
  %23 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink, ptr %index, align 4
  br label %do.body

do.body:                                          ; preds = %do.body.sink.split, %for.inc.5.do.body_crit_edge, %land.lhs.true.5.do.body_crit_edge, %if.end28.4.do.body_crit_edge, %if.end28.3.do.body_crit_edge, %if.end28.2.do.body_crit_edge
  %24 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 7, ptr %index, align 4
  %25 = load i8, ptr @debug, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not = icmp eq i8 %25, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %name, i32 noundef %or, i32 noundef %or9) #13
  br label %cleanup

do.body52:                                        ; preds = %for.inc.5.do.body52_crit_edge, %land.lhs.true.5.do.body52_crit_edge, %if.end28.4.do.body52_crit_edge, %if.end28.3.do.body52_crit_edge, %if.end28.2.do.body52_crit_edge, %land.lhs.true33.1.do.body52_crit_edge, %land.lhs.true33.do.body52_crit_edge
  %.lcssa = phi i32 [ 0, %land.lhs.true33.do.body52_crit_edge ], [ 1, %land.lhs.true33.1.do.body52_crit_edge ], [ 5, %land.lhs.true.5.do.body52_crit_edge ], [ 2, %if.end28.2.do.body52_crit_edge ], [ 3, %if.end28.3.do.body52_crit_edge ], [ 4, %if.end28.4.do.body52_crit_edge ], [ 6, %for.inc.5.do.body52_crit_edge ]
  %26 = load i8, ptr @debug, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool53.not = icmp eq i8 %26, 0
  br i1 %tobool53.not, label %do.body52.cleanup_crit_edge, label %do.end60

do.body52.cleanup_crit_edge:                      ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end60:                                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #12
  %name62 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %name62, i32 noundef %.lcssa) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end60, %do.body52.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %tvp7002_read_err.exit107.cleanup_crit_edge, %tvp7002_read_err.exit99.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.1, %tvp7002_read_err.exit99.cleanup_crit_edge ], [ %error.3, %tvp7002_read_err.exit107.cleanup_crit_edge ], [ -67, %do.end ], [ -67, %do.body.cleanup_crit_edge ], [ 0, %do.end60 ], [ 0, %do.body52.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cpl_msb) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cpl_lsb) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lpf_msb) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lpf_lsb) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_log_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp7002_s_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %streaming = getelementptr inbounds %struct.tvp7002, ptr %sd, i32 0, i32 4
  %0 = ptrtoint ptr %streaming to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %enable)
  %cmp = icmp eq i32 %1, %enable
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %conv = select i1 %tobool.not, i8 3, i8 0
  %call1 = tail call fastcc i32 @tvp7002_write(ptr noundef %sd, i8 noundef zeroext 23, i8 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end14, label %do.body

do.body:                                          ; preds = %if.end
  %2 = load i8, ptr @debug, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool4.not = icmp eq i8 %2, 0
  br i1 %tobool4.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name) #13
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %streaming to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %enable, ptr %streaming, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ 0, %entry.cleanup_crit_edge ], [ %call1, %do.end ], [ %call1, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tvp7002_g_dv_timings(ptr nocapture noundef readonly %sd, ptr nocapture noundef writeonly %dv_timings) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %current_timings = getelementptr inbounds %struct.tvp7002, ptr %sd, i32 0, i32 5
  %0 = ptrtoint ptr %current_timings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_timings, align 4
  %2 = call ptr @memcpy(ptr %dv_timings, ptr %1, i32 132)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp7002_query_dv_timings(ptr noundef %sd, ptr nocapture noundef writeonly %timings) #2 align 64 {
entry:
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #10
  %0 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %index, align 4, !annotation !139
  %call = call fastcc i32 @tvp7002_query_dv(ptr noundef %sd, ptr noundef nonnull %index)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index, align 4
  %arrayidx = getelementptr [7 x %struct.tvp7002_timings_definition], ptr @tvp7002_timings, i32 0, i32 %2
  %3 = call ptr @memcpy(ptr %timings, ptr %arrayidx, i32 132)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #10
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tvp7002_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %code1 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %2 = ptrtoint ptr %code1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8205, ptr %code1, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tvp7002_get_pad_format(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef writeonly %fmt) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 8205, ptr %code, align 4
  %current_timings = getelementptr inbounds %struct.tvp7002, ptr %sd, i32 0, i32 5
  %1 = ptrtoint ptr %current_timings to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %current_timings, align 4
  %3 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %format, align 4
  %7 = load ptr, ptr %current_timings, align 4
  %height = getelementptr inbounds %struct.v4l2_dv_timings, ptr %7, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %height6 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %height6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %height6, align 4
  %11 = load ptr, ptr %current_timings, align 4
  %scanmode = getelementptr inbounds %struct.tvp7002_timings_definition, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %scanmode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %scanmode, align 4
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %14 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %field, align 4
  %15 = load ptr, ptr %current_timings, align 4
  %color_space = getelementptr inbounds %struct.tvp7002_timings_definition, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %color_space to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %color_space, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %18 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %colorspace, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tvp7002_set_pad_format(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef writeonly %fmt) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %format.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 8205, ptr %code.i, align 4
  %current_timings.i = getelementptr inbounds %struct.tvp7002, ptr %sd, i32 0, i32 5
  %1 = ptrtoint ptr %current_timings.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %current_timings.i, align 4
  %3 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %format.i, align 4
  %7 = load ptr, ptr %current_timings.i, align 4
  %height.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %7, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height.i, align 4
  %height6.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %height6.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %height6.i, align 4
  %11 = load ptr, ptr %current_timings.i, align 4
  %scanmode.i = getelementptr inbounds %struct.tvp7002_timings_definition, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %scanmode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %scanmode.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %14 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %field.i, align 4
  %15 = load ptr, ptr %current_timings.i, align 4
  %color_space.i = getelementptr inbounds %struct.tvp7002_timings_definition, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %color_space.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %color_space.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %18 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %colorspace.i, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tvp7002_enum_dv_timings(ptr nocapture noundef readnone %sd, ptr nocapture noundef %timings) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_enum_dv_timings, ptr %timings, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp1 = icmp ugt i32 %3, 6
  br i1 %cmp1, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %timings4 = getelementptr inbounds %struct.v4l2_enum_dv_timings, ptr %timings, i32 0, i32 3
  %arrayidx = getelementptr [7 x %struct.tvp7002_timings_definition], ptr @tvp7002_timings, i32 0, i32 %3
  %4 = call ptr @memcpy(ptr %timings4, ptr %arrayidx, i32 132)
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp7002_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -196
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963795, i32 %3)
  %cond = icmp eq i32 %3, 9963795
  br i1 %cond, label %tvp7002_write_err.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

tvp7002_write_err.exit:                           ; preds = %entry
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  %conv = trunc i32 %5 to i8
  %call.i = tail call fastcc i32 @tvp7002_write(ptr noundef %add.ptr.i, i8 noundef zeroext 10, i8 noundef zeroext %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i12 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i12, label %tvp7002_write_err.exit15, label %tvp7002_write_err.exit.cleanup_crit_edge

tvp7002_write_err.exit.cleanup_crit_edge:         ; preds = %tvp7002_write_err.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

tvp7002_write_err.exit15:                         ; preds = %tvp7002_write_err.exit
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %conv2 = trunc i32 %7 to i8
  %call.i13 = tail call fastcc i32 @tvp7002_write(ptr noundef %add.ptr.i, i8 noundef zeroext 9, i8 noundef zeroext %conv2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13)
  %tobool.not.i16 = icmp eq i32 %call.i13, 0
  br i1 %tobool.not.i16, label %if.then.i18, label %tvp7002_write_err.exit15.cleanup_crit_edge

tvp7002_write_err.exit15.cleanup_crit_edge:       ; preds = %tvp7002_write_err.exit15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i18:                                      ; preds = %tvp7002_write_err.exit15
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %conv4 = trunc i32 %9 to i8
  %call.i17 = tail call fastcc i32 @tvp7002_write(ptr noundef %add.ptr.i, i8 noundef zeroext 8, i8 noundef zeroext %conv4) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i18, %tvp7002_write_err.exit15.cleanup_crit_edge, %tvp7002_write_err.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i17, %if.then.i18 ], [ %call.i13, %tvp7002_write_err.exit15.cleanup_crit_edge ], [ %call.i, %tvp7002_write_err.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !18, !20, !22, !24, !25, !26, !27, !28, !30, !31, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !102, !103, !104, !105, !107, !109, !110, !111, !112, !114, !116, !117, !118, !119, !121, !122, !123, !125, !127}
!llvm.module.flags = !{!129, !130, !131, !132, !133, !134, !135, !136}
!llvm.ident = !{!137}

!0 = !{ptr @__UNIQUE_ID_description292, !1, !"__UNIQUE_ID_description292", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/tvp7002.c", i32 31, i32 1}
!2 = !{ptr @__UNIQUE_ID_author293, !3, !"__UNIQUE_ID_author293", i1 false, i1 false}
!3 = !{!"../drivers/media/i2c/tvp7002.c", i32 32, i32 1}
!4 = !{ptr @__UNIQUE_ID_file294, !5, !"__UNIQUE_ID_file294", i1 false, i1 false}
!5 = !{!"../drivers/media/i2c/tvp7002.c", i32 33, i32 1}
!6 = !{ptr @__UNIQUE_ID_license295, !5, !"__UNIQUE_ID_license295", i1 false, i1 false}
!7 = !{ptr @__param_debug, !8, !"__param_debug", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/tvp7002.c", i32 56, i32 1}
!9 = !{ptr @__UNIQUE_ID_debugtype296, !8, !"__UNIQUE_ID_debugtype296", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_debug297, !11, !"__UNIQUE_ID_debug297", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/tvp7002.c", i32 57, i32 1}
!12 = !{ptr @__initcall__kmod_tvp7002__298_1088_tvp7002_driver_init6, !13, !"__initcall__kmod_tvp7002__298_1088_tvp7002_driver_init6", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/tvp7002.c", i32 1088, i32 1}
!14 = !{ptr @__exitcall_tvp7002_driver_exit, !13, !"__exitcall_tvp7002_driver_exit", i1 false, i1 false}
!15 = !{ptr @debug, !16, !"debug", i1 false, i1 false}
!16 = !{!"../drivers/media/i2c/tvp7002.c", i32 55, i32 13}
!17 = !{ptr @__param_str_debug, !8, !"__param_str_debug", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/tvp7002.c", i32 1081, i32 11}
!20 = !{ptr @tvp7002_driver, !21, !"tvp7002_driver", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/tvp7002.c", i32 1078, i32 26}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/tvp7002.c", i32 1052, i32 2}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @tvp7002_remove._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @tvp7002_remove._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/i2c/tvp7002.c", i32 950, i32 3}
!30 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @tvp7002_probe._entry, !29, !"_entry", i1 false, i1 false}
!34 = !{ptr @tvp7002_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/i2c/tvp7002.c", i32 970, i32 2}
!37 = !{ptr @tvp7002_probe._entry.8, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @tvp7002_probe._entry_ptr.10, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/tvp7002.c", i32 978, i32 2}
!41 = !{ptr @tvp7002_probe._entry.11, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @tvp7002_probe._entry_ptr.13, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/i2c/tvp7002.c", i32 980, i32 3}
!45 = !{ptr @tvp7002_probe._entry.14, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @tvp7002_probe._entry_ptr.16, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @tvp7002_probe._key, !48, !"_key", i1 false, i1 false}
!48 = !{!"../drivers/media/i2c/tvp7002.c", i32 1016, i32 2}
!49 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @tvp7002_timings, !51, !"tvp7002_timings", i1 false, i1 false}
!51 = !{!"../drivers/media/i2c/tvp7002.c", i32 330, i32 48}
!52 = !{ptr @tvp7002_parms_720P60, !53, !"tvp7002_parms_720P60", i1 false, i1 false}
!53 = !{!"../drivers/media/i2c/tvp7002.c", i32 276, i32 35}
!54 = !{ptr @tvp7002_parms_1080I60, !55, !"tvp7002_parms_1080I60", i1 false, i1 false}
!55 = !{!"../drivers/media/i2c/tvp7002.c", i32 213, i32 35}
!56 = !{ptr @tvp7002_parms_1080I50, !57, !"tvp7002_parms_1080I50", i1 false, i1 false}
!57 = !{!"../drivers/media/i2c/tvp7002.c", i32 255, i32 35}
!58 = !{ptr @tvp7002_parms_720P50, !59, !"tvp7002_parms_720P50", i1 false, i1 false}
!59 = !{!"../drivers/media/i2c/tvp7002.c", i32 297, i32 35}
!60 = !{ptr @tvp7002_parms_1080P60, !61, !"tvp7002_parms_1080P60", i1 false, i1 false}
!61 = !{!"../drivers/media/i2c/tvp7002.c", i32 234, i32 35}
!62 = !{ptr @tvp7002_parms_480P, !63, !"tvp7002_parms_480P", i1 false, i1 false}
!63 = !{!"../drivers/media/i2c/tvp7002.c", i32 171, i32 35}
!64 = !{ptr @tvp7002_parms_576P, !65, !"tvp7002_parms_576P", i1 false, i1 false}
!65 = !{!"../drivers/media/i2c/tvp7002.c", i32 192, i32 35}
!66 = !{ptr @tvp7002_ops, !67, !"tvp7002_ops", i1 false, i1 false}
!67 = !{!"../drivers/media/i2c/tvp7002.c", i32 879, i32 37}
!68 = !{ptr @tvp7002_core_ops, !69, !"tvp7002_core_ops", i1 false, i1 false}
!69 = !{!"../drivers/media/i2c/tvp7002.c", i32 854, i32 42}
!70 = !{ptr @.str.19, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/i2c/tvp7002.c", i32 756, i32 2}
!72 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @tvp7002_log_status._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @tvp7002_log_status._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.22, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/i2c/tvp7002.c", i32 758, i32 3}
!77 = !{ptr @tvp7002_log_status._entry.21, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @tvp7002_log_status._entry_ptr.23, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/i2c/tvp7002.c", i32 761, i32 3}
!81 = !{ptr @tvp7002_log_status._entry.24, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @tvp7002_log_status._entry_ptr.26, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.28, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/i2c/tvp7002.c", i32 764, i32 2}
!85 = !{ptr @tvp7002_log_status._entry.27, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @tvp7002_log_status._entry_ptr.29, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.32, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/i2c/tvp7002.c", i32 652, i32 3}
!91 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @tvp7002_query_dv._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @tvp7002_query_dv._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/i2c/tvp7002.c", i32 658, i32 2}
!96 = !{ptr @tvp7002_query_dv._entry.34, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @tvp7002_query_dv._entry_ptr.36, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @tvp7002_video_ops, !99, !"tvp7002_video_ops", i1 false, i1 false}
!99 = !{!"../drivers/media/i2c/tvp7002.c", i32 863, i32 43}
!100 = !{ptr @.str.37, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/i2c/tvp7002.c", i32 731, i32 3}
!102 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @tvp7002_s_stream._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @tvp7002_s_stream._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @tvp7002_pad_ops, !106, !"tvp7002_pad_ops", i1 false, i1 false}
!106 = !{!"../drivers/media/i2c/tvp7002.c", i32 871, i32 41}
!107 = !{ptr @.str.39, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/i2c/tvp7002.c", i32 458, i32 2}
!109 = !{ptr @.str.40, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @tvp7002_read._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @tvp7002_read._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @tvp7002_init_default, !113, !"tvp7002_init_default", i1 false, i1 false}
!113 = !{!"../drivers/media/i2c/tvp7002.c", i32 72, i32 35}
!114 = !{ptr @.str.41, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/i2c/tvp7002.c", i32 502, i32 3}
!116 = !{ptr @.str.42, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @tvp7002_write._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @tvp7002_write._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.44, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/i2c/tvp7002.c", i32 505, i32 2}
!121 = !{ptr @tvp7002_write._entry.43, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @tvp7002_write._entry_ptr.45, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @tvp7002_ctrl_ops, !124, !"tvp7002_ctrl_ops", i1 false, i1 false}
!124 = !{!"../drivers/media/i2c/tvp7002.c", i32 787, i32 35}
!125 = !{ptr @tvp7002_of_match, !126, !"tvp7002_of_match", i1 false, i1 false}
!126 = !{!"../drivers/media/i2c/tvp7002.c", i32 1070, i32 34}
!127 = !{ptr @tvp7002_id, !128, !"tvp7002_id", i1 false, i1 false}
!128 = !{!"../drivers/media/i2c/tvp7002.c", i32 1063, i32 35}
!129 = !{i32 1, !"wchar_size", i32 2}
!130 = !{i32 1, !"min_enum_size", i32 4}
!131 = !{i32 8, !"branch-target-enforcement", i32 0}
!132 = !{i32 8, !"sign-return-address", i32 0}
!133 = !{i32 8, !"sign-return-address-all", i32 0}
!134 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!135 = !{i32 7, !"uwtable", i32 1}
!136 = !{i32 7, !"frame-pointer", i32 2}
!137 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!138 = !{i8 0, i8 2}
!139 = !{!"auto-init"}
