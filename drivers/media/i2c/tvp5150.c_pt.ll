; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/tvp5150.c_pt.bc'
source_filename = "../drivers/media/i2c/tvp5150.c"
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_vbi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_event_src_change = type { i32 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.i2c_vbi_ram_value = type { i16, %struct.tvp5150_vbi_type, [16 x i8] }
%struct.tvp5150_vbi_type = type { i32, i32, i32, i8 }
%struct.atomic_t = type { i32 }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.i2c_reg_value = type { i8, i8 }
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
%struct.tvp5150 = type { %struct.v4l2_subdev, [3 x %struct.media_pad], [3 x %struct.tvp5150_connector], ptr, i32, %struct.v4l2_ctrl_handler, %struct.v4l2_rect, ptr, i32, i64, i64, i32, i32, i32, i32, i8, i16, i16, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.tvp5150_connector = type { %struct.v4l2_fwnode_connector, %struct.media_entity, %struct.media_pad }
%struct.v4l2_fwnode_connector = type { ptr, ptr, i32, %struct.list_head, i32, %union.anon.100 }
%union.anon.100 = type { %struct.v4l2_fwnode_connector_analog }
%struct.v4l2_fwnode_connector_analog = type { i64 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.103, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.103 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.of_endpoint = type { i32, i32, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.v4l2_connector_link = type { %struct.list_head, %struct.v4l2_fwnode_link }
%struct.v4l2_fwnode_link = type { ptr, i32, i32, ptr, i32, i32 }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.94 }
%union.anon.94 = type { i32, [28 x i8] }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_sliced_vbi_cap = type { i16, [2 x [24 x i16]], i32, [3 x i32] }
%struct.v4l2_vbi_format = type { i32, i32, i32, i32, [2 x i32], [2 x i32], i32, [2 x i32] }
%struct.v4l2_sliced_vbi_format = type { i16, [2 x [24 x i16]], i32, [2 x i32] }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_mbus_config = type { i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_link = type { %struct.media_gobj, %struct.list_head, %union.anon.87, %union.anon.88, ptr, i32, i8 }
%union.anon.87 = type { ptr }
%union.anon.88 = type { ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_description305 = internal constant [87 x i8] c"tvp5150.description=Texas Instruments TVP5150A/TVP5150AM1/TVP5151 video decoder driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author306 = internal constant [37 x i8] c"tvp5150.author=Mauro Carvalho Chehab\00", section ".modinfo", align 1
@__UNIQUE_ID_file307 = internal constant [39 x i8] c"tvp5150.file=drivers/media/i2c/tvp5150\00", section ".modinfo", align 1
@__UNIQUE_ID_license308 = internal constant [23 x i8] c"tvp5150.license=GPL v2\00", section ".modinfo", align 1
@__param_str_debug = internal constant [14 x i8] c"tvp5150.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype309 = internal constant [27 x i8] c"tvp5150.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug310 = internal constant [37 x i8] c"tvp5150.parm=debug:Debug level (0-2)\00", section ".modinfo", align 1
@__initcall__kmod_tvp5150__323_2288_tvp5150_driver_init6 = internal global ptr @tvp5150_driver_init, section ".initcall6.init", align 4
@tvp5150_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @tvp5150_remove, ptr @tvp5150_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tvp5150_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tvp5150_pm_ops, ptr null, ptr null }, ptr @tvp5150_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tvp5150_driver_exit = internal global ptr @tvp5150_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tvp5150\00", [24 x i8] zeroinitializer }, align 32
@tvp5150_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tvp5150\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tvp5150_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tvp5150_runtime_suspend, ptr @tvp5150_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@tvp5150_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tvp5150\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@tvp5150_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2239, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"tvp5150.c: removing tvp5150 adapter on address 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tvp5150_remove\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/i2c/tvp5150.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tvp5150_remove._entry_ptr = internal global ptr @tvp5150_remove._entry, section ".printk_index", align 4
@tvp5150_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tvp5150_config = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @tvp5150_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr @tvp5150_readable_table, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"tvp5150:2131:(&tvp5150_config)->lock\00", [59 x i8] zeroinitializer }, align 32
@tvp5150_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @tvp5150_core_ops, ptr @tvp5150_tuner_ops, ptr null, ptr @tvp5150_video_ops, ptr @tvp5150_vbi_ops, ptr null, ptr null, ptr @tvp5150_pad_ops }, [32 x i8] zeroinitializer }, align 32
@tvp5150_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr @tvp5150_registered, ptr null, ptr @tvp5150_open, ptr @tvp5150_close, ptr null }, [44 x i8] zeroinitializer }, align 32
@tvp5150_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 2144, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DT parsing error: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tvp5150_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@tvp5150_probe._entry_ptr = internal global ptr @tvp5150_probe._entry, section ".printk_index", align 4
@tvp5150_probe._key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tvp5150:2179:(&core->hdl)->_lock\00", [63 x i8] zeroinitializer }, align 32
@tvp5150_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @tvp5150_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@tvp5150_test_patterns = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.91, ptr @.str.92], [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pdn\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tvp5150_readable_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @tvp5150_readable_ranges, i32 10, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@tvp5150_readable_ranges = internal constant { [10 x %struct.regmap_range], [48 x i8] } { [10 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 4 }, %struct.regmap_range { i32 6, i32 15 }, %struct.regmap_range { i32 17, i32 22 }, %struct.regmap_range { i32 24, i32 30 }, %struct.regmap_range { i32 40, i32 40 }, %struct.regmap_range { i32 44, i32 48 }, %struct.regmap_range { i32 128, i32 140 }, %struct.regmap_range { i32 144, i32 187 }, %struct.regmap_range { i32 192, i32 205 }, %struct.regmap_range { i32 207, i32 252 }], [48 x i8] zeroinitializer }, align 32
@tvp5150_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @tvp5150_log_status, ptr null, ptr null, ptr null, ptr @tvp5150_reset, ptr null, ptr null, ptr null, ptr @tvp5150_g_register, ptr @tvp5150_s_register, ptr null, ptr null, ptr @tvp5150_subscribe_event, ptr @v4l2_event_subdev_unsubscribe }, [40 x i8] zeroinitializer }, align 32
@tvp5150_tuner_ops = internal constant { %struct.v4l2_subdev_tuner_ops, [52 x i8] } { %struct.v4l2_subdev_tuner_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tvp5150_g_tuner, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@tvp5150_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr @tvp5150_s_routing, ptr null, ptr @tvp5150_g_std, ptr @tvp5150_s_std, ptr null, ptr null, ptr @tvp5150_querystd, ptr null, ptr null, ptr null, ptr @tvp5150_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@tvp5150_vbi_ops = internal constant { %struct.v4l2_subdev_vbi_ops, [36 x i8] } { %struct.v4l2_subdev_vbi_ops { ptr null, ptr null, ptr null, ptr @tvp5150_g_sliced_vbi_cap, ptr @tvp5150_s_raw_fmt, ptr @tvp5150_g_sliced_fmt, ptr @tvp5150_s_sliced_fmt }, [36 x i8] zeroinitializer }, align 32
@tvp5150_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr @tvp5150_init_cfg, ptr @tvp5150_enum_mbus_code, ptr @tvp5150_enum_frame_size, ptr null, ptr @tvp5150_fill_fmt, ptr @tvp5150_fill_fmt, ptr @tvp5150_get_selection, ptr @tvp5150_set_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tvp5150_get_mbus_config, ptr null }, [60 x i8] zeroinitializer }, align 32
@tvp5150_g_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 1562, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: failed with error = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tvp5150_g_register\00", [45 x i8] zeroinitializer }, align 32
@tvp5150_g_register._entry_ptr = internal global ptr @tvp5150_g_register._entry, section ".printk_index", align 4
@tvp5150_selmux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 310, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"Selecting video route: route input=%s, output=%s => tvp5150 input=0x%02x, opmode=0x%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tvp5150_selmux\00", [17 x i8] zeroinitializer }, align 32
@tvp5150_selmux._entry_ptr = internal global ptr @tvp5150_selmux._entry, section ".printk_index", align 4
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"aip1a\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"aip1b\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"svideo\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"normal\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"black-frame-gen\00", [16 x i8] zeroinitializer }, align 32
@tvp5150_set_std._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 782, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Set video std register to %d.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tvp5150_set_std\00", [16 x i8] zeroinitializer }, align 32
@tvp5150_set_std._entry_ptr = internal global ptr @tvp5150_set_std._entry, section ".printk_index", align 4
@tvp5150_ev_fmt = internal constant { { i32, [4 x i8], { %struct.v4l2_event_src_change, [60 x i8] }, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] }, [56 x i8] } { { i32, [4 x i8], { %struct.v4l2_event_src_change, [60 x i8] }, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] } { i32 5, [4 x i8] undef, { %struct.v4l2_event_src_change, [60 x i8] } { %struct.v4l2_event_src_change { i32 1 }, [60 x i8] undef }, i32 0, i32 0, %struct.__kernel_timespec zeroinitializer, i32 0, [8 x i32] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@tvp5150_g_sliced_vbi_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 646, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"g_sliced_vbi_cap\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tvp5150_g_sliced_vbi_cap\00", [39 x i8] zeroinitializer }, align 32
@tvp5150_g_sliced_vbi_cap._entry_ptr = internal global ptr @tvp5150_g_sliced_vbi_cap._entry, section ".printk_index", align 4
@vbi_ram_default = internal constant { [13 x %struct.i2c_vbi_ram_value], [108 x i8] } { [13 x %struct.i2c_vbi_ram_value] [%struct.i2c_vbi_ram_value zeroinitializer, %struct.i2c_vbi_ram_value { i16 48, %struct.tvp5150_vbi_type { i32 1, i32 6, i32 22, i8 -128 }, [16 x i8] c"\AA\AA\FF\FF'. +\A6r\10\00\00\00\10\00" }, %struct.i2c_vbi_ram_value zeroinitializer, %struct.i2c_vbi_ram_value zeroinitializer, %struct.i2c_vbi_ram_value zeroinitializer, %struct.i2c_vbi_ram_value zeroinitializer, %struct.i2c_vbi_ram_value zeroinitializer, %struct.i2c_vbi_ram_value { i16 240, %struct.tvp5150_vbi_type { i32 4096, i32 21, i32 21, i8 -128 }, [16 x i8] c"\AA*\FF?\04Qn\02i\8C\09\00\00\00'\00" }, %struct.i2c_vbi_ram_value { i16 272, %struct.tvp5150_vbi_type { i32 16384, i32 23, i32 23, i8 -128 }, [16 x i8] c"[U\C5\FF\00qnB\A6\CD\0F\00\00\00:\00" }, %struct.i2c_vbi_ram_value zeroinitializer, %struct.i2c_vbi_ram_value zeroinitializer, %struct.i2c_vbi_ram_value zeroinitializer, %struct.i2c_vbi_ram_value { i16 400, %struct.tvp5150_vbi_type { i32 1024, i32 16, i32 16, i8 0 }, [16 x i8] c"\AA\AA\FF\FF\BA\CE+\0D\A6\DA\0B\00\00\00`\00" }], [108 x i8] zeroinitializer }, align 32
@tvp5150_get_vbi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 732, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"VBI can't be configured without knowing number of lines\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tvp5150_get_vbi\00", [16 x i8] zeroinitializer }, align 32
@tvp5150_get_vbi._entry_ptr = internal global ptr @tvp5150_get_vbi._entry, section ".printk_index", align 4
@tvp5150_get_vbi._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.29, ptr @.str.3, i32 748, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@tvp5150_get_vbi._entry_ptr.31 = internal global ptr @tvp5150_get_vbi._entry.30, section ".printk_index", align 4
@tvp5150_set_vbi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.32, ptr @.str.3, i32 688, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tvp5150_set_vbi\00", [16 x i8] zeroinitializer }, align 32
@tvp5150_set_vbi._entry_ptr = internal global ptr @tvp5150_set_vbi._entry, section ".printk_index", align 4
@tvp5150_fill_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 1067, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"width = %d, height = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tvp5150_fill_fmt\00", [47 x i8] zeroinitializer }, align 32
@tvp5150_fill_fmt._entry_ptr = internal global ptr @tvp5150_fill_fmt._entry, section ".printk_index", align 4
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@tvp5150_set_selection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 1119, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s left=%d, top=%d, width=%d, height=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tvp5150_set_selection\00", [42 x i8] zeroinitializer }, align 32
@tvp5150_set_selection._entry_ptr = internal global ptr @tvp5150_set_selection._entry, section ".printk_index", align 4
@tvp5150_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 2003, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"At least 1 input and 1 output must be connected to the device.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tvp5150_parse_dt\00", [47 x i8] zeroinitializer }, align 32
@tvp5150_parse_dt._entry_ptr = internal global ptr @tvp5150_parse_dt._entry, section ".printk_index", align 4
@tvp5150_parse_dt.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.3, ptr @.str.40, i8 1, i8 -6, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Ignore connector on port@%u/ep@%u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %s\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@tvp5150_parse_dt._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.3, i32 2074, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Error no output endpoint available\0A\00", [60 x i8] zeroinitializer }, align 32
@tvp5150_parse_dt._entry_ptr.45 = internal global ptr @tvp5150_parse_dt._entry.43, section ".printk_index", align 4
@tvp5150_validate_connectors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 1932, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No valid connector found\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tvp5150_validate_connectors\00", [36 x i8] zeroinitializer }, align 32
@tvp5150_validate_connectors._entry_ptr = internal global ptr @tvp5150_validate_connectors._entry, section ".printk_index", align 4
@tvp5150_validate_connectors._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.3, i32 1945, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Composite: connector needs 1 link\0A\00", [61 x i8] zeroinitializer }, align 32
@tvp5150_validate_connectors._entry_ptr.50 = internal global ptr @tvp5150_validate_connectors._entry.48, section ".printk_index", align 4
@tvp5150_validate_connectors._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.47, ptr @.str.3, i32 1950, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Composite: invalid first link\0A\00", [33 x i8] zeroinitializer }, align 32
@tvp5150_validate_connectors._entry_ptr.53 = internal global ptr @tvp5150_validate_connectors._entry.51, section ".printk_index", align 4
@tvp5150_validate_connectors._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.47, ptr @.str.3, i32 1954, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Composite: invalid endpoint id\0A\00", [32 x i8] zeroinitializer }, align 32
@tvp5150_validate_connectors._entry_ptr.56 = internal global ptr @tvp5150_validate_connectors._entry.54, section ".printk_index", align 4
@tvp5150_validate_connectors._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.47, ptr @.str.3, i32 1961, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"SVideo: connector needs 2 links\0A\00", [63 x i8] zeroinitializer }, align 32
@tvp5150_validate_connectors._entry_ptr.59 = internal global ptr @tvp5150_validate_connectors._entry.57, section ".printk_index", align 4
@tvp5150_validate_connectors._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.47, ptr @.str.3, i32 1966, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SVideo: invalid first link\0A\00", [36 x i8] zeroinitializer }, align 32
@tvp5150_validate_connectors._entry_ptr.62 = internal global ptr @tvp5150_validate_connectors._entry.60, section ".printk_index", align 4
@tvp5150_validate_connectors._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.47, ptr @.str.3, i32 1972, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SVideo: invalid link setup\0A\00", [36 x i8] zeroinitializer }, align 32
@tvp5150_validate_connectors._entry_ptr.65 = internal global ptr @tvp5150_validate_connectors._entry.63, section ".printk_index", align 4
@tvp5150_validate_connectors._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.47, ptr @.str.3, i32 1979, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unsupported tv-norm on connector %s\0A\00", [59 x i8] zeroinitializer }, align 32
@tvp5150_validate_connectors._entry_ptr.68 = internal global ptr @tvp5150_validate_connectors._entry.66, section ".printk_index", align 4
@tvp5150_sd_media_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr @tvp5150_link_setup, ptr null }, [20 x i8] zeroinitializer }, align 32
@tvp5150_link_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.3, i32 1333, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"link setup '%s':%d->'%s':%d[%d]\00", [32 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tvp5150_link_setup\00", [45 x i8] zeroinitializer }, align 32
@tvp5150_link_setup._entry_ptr = internal global ptr @tvp5150_link_setup._entry, section ".printk_index", align 4
@tvp5150_link_setup._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.3, i32 1340, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@tvp5150_link_setup._entry_ptr.72 = internal global ptr @tvp5150_link_setup._entry.71, section ".printk_index", align 4
@tvp5150_detect_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.3, i32 1837, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"reading ID registers failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tvp5150_detect_version\00", [41 x i8] zeroinitializer }, align 32
@tvp5150_detect_version._entry_ptr = internal global ptr @tvp5150_detect_version._entry, section ".printk_index", align 4
@tvp5150_detect_version._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.3, i32 1846, ptr @.str.77, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"tvp%04x (%u.%u) chip found @ 0x%02x (%s)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tvp5150_detect_version._entry_ptr.78 = internal global ptr @tvp5150_detect_version._entry.75, section ".printk_index", align 4
@tvp5150_detect_version._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.74, ptr @.str.3, i32 1849, ptr @.str.77, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tvp5150a detected.\0A\00", [44 x i8] zeroinitializer }, align 32
@tvp5150_detect_version._entry_ptr.81 = internal global ptr @tvp5150_detect_version._entry.79, section ".printk_index", align 4
@tvp5150_detect_version._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.74, ptr @.str.3, i32 1851, ptr @.str.77, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tvp5150am1 detected.\0A\00", [42 x i8] zeroinitializer }, align 32
@tvp5150_detect_version._entry_ptr.84 = internal global ptr @tvp5150_detect_version._entry.82, section ".printk_index", align 4
@tvp5150_detect_version._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.74, ptr @.str.3, i32 1856, ptr @.str.77, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tvp5151 detected.\0A\00", [45 x i8] zeroinitializer }, align 32
@tvp5150_detect_version._entry_ptr.87 = internal global ptr @tvp5150_detect_version._entry.85, section ".printk_index", align 4
@tvp5150_detect_version._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.74, ptr @.str.3, i32 1859, ptr @.str.77, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*** unknown tvp%04x chip detected.\0A\00", [60 x i8] zeroinitializer }, align 32
@tvp5150_detect_version._entry_ptr.90 = internal global ptr @tvp5150_detect_version._entry.88, section ".printk_index", align 4
@.str.91 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Black screen\00", [19 x i8] zeroinitializer }, align 32
@tvp5150_init_default = internal constant { [44 x %struct.i2c_reg_value], [40 x i8] } { [44 x %struct.i2c_reg_value] [%struct.i2c_reg_value zeroinitializer, %struct.i2c_reg_value { i8 1, i8 21 }, %struct.i2c_reg_value { i8 2, i8 0 }, %struct.i2c_reg_value { i8 3, i8 1 }, %struct.i2c_reg_value { i8 6, i8 16 }, %struct.i2c_reg_value { i8 7, i8 96 }, %struct.i2c_reg_value { i8 8, i8 0 }, %struct.i2c_reg_value { i8 9, i8 -128 }, %struct.i2c_reg_value { i8 10, i8 -128 }, %struct.i2c_reg_value { i8 11, i8 0 }, %struct.i2c_reg_value { i8 12, i8 -128 }, %struct.i2c_reg_value { i8 13, i8 71 }, %struct.i2c_reg_value { i8 14, i8 0 }, %struct.i2c_reg_value { i8 15, i8 8 }, %struct.i2c_reg_value { i8 17, i8 0 }, %struct.i2c_reg_value { i8 18, i8 0 }, %struct.i2c_reg_value { i8 19, i8 0 }, %struct.i2c_reg_value { i8 20, i8 0 }, %struct.i2c_reg_value { i8 21, i8 1 }, %struct.i2c_reg_value { i8 22, i8 -128 }, %struct.i2c_reg_value { i8 24, i8 0 }, %struct.i2c_reg_value { i8 25, i8 0 }, %struct.i2c_reg_value { i8 26, i8 12 }, %struct.i2c_reg_value { i8 27, i8 20 }, %struct.i2c_reg_value { i8 28, i8 0 }, %struct.i2c_reg_value { i8 29, i8 0 }, %struct.i2c_reg_value { i8 30, i8 0 }, %struct.i2c_reg_value { i8 40, i8 0 }, %struct.i2c_reg_value { i8 46, i8 15 }, %struct.i2c_reg_value { i8 47, i8 1 }, %struct.i2c_reg_value { i8 -69, i8 0 }, %struct.i2c_reg_value { i8 -64, i8 0 }, %struct.i2c_reg_value { i8 -63, i8 0 }, %struct.i2c_reg_value { i8 -62, i8 4 }, %struct.i2c_reg_value { i8 -56, i8 -128 }, %struct.i2c_reg_value { i8 -55, i8 0 }, %struct.i2c_reg_value { i8 -54, i8 0 }, %struct.i2c_reg_value { i8 -53, i8 78 }, %struct.i2c_reg_value { i8 -52, i8 0 }, %struct.i2c_reg_value { i8 -51, i8 1 }, %struct.i2c_reg_value { i8 -49, i8 0 }, %struct.i2c_reg_value { i8 -48, i8 0 }, %struct.i2c_reg_value { i8 -4, i8 127 }, %struct.i2c_reg_value { i8 -1, i8 -1 }], [40 x i8] zeroinitializer }, align 32
@tvp5150_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.3, i32 895, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sync lo%s signal\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tvp5150_isr\00", [20 x i8] zeroinitializer }, align 32
@tvp5150_isr._entry_ptr = internal global ptr @tvp5150_isr._entry, section ".printk_index", align 4
@.str.95 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ck\00", [29 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ss\00", [29 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.3, i32 144, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"tvp5150: Video input source selection #1 = 0x%02x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tvp5150_log_status\00", [45 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr = internal global ptr @tvp5150_log_status._entry, section ".printk_index", align 4
@tvp5150_log_status._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.3, i32 146, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"tvp5150: Analog channel controls = 0x%02x\0A\00", [53 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.101 = internal global ptr @tvp5150_log_status._entry.99, section ".printk_index", align 4
@tvp5150_log_status._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.98, ptr @.str.3, i32 148, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"tvp5150: Operation mode controls = 0x%02x\0A\00", [53 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.104 = internal global ptr @tvp5150_log_status._entry.102, section ".printk_index", align 4
@tvp5150_log_status._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.98, ptr @.str.3, i32 150, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"tvp5150: Miscellaneous controls = 0x%02x\0A\00", [54 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.107 = internal global ptr @tvp5150_log_status._entry.105, section ".printk_index", align 4
@tvp5150_log_status._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.98, ptr @.str.3, i32 152, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"tvp5150: Autoswitch mask= 0x%02x\0A\00", [62 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.110 = internal global ptr @tvp5150_log_status._entry.108, section ".printk_index", align 4
@tvp5150_log_status._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.98, ptr @.str.3, i32 154, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"tvp5150: Color killer threshold control = 0x%02x\0A\00", [46 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.113 = internal global ptr @tvp5150_log_status._entry.111, section ".printk_index", align 4
@tvp5150_log_status._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.98, ptr @.str.3, i32 158, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"tvp5150: Luminance processing controls #1 #2 and #3 = %02x %02x %02x\0A\00", [58 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.116 = internal global ptr @tvp5150_log_status._entry.114, section ".printk_index", align 4
@tvp5150_log_status._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.98, ptr @.str.3, i32 160, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"tvp5150: Brightness control = 0x%02x\0A\00", [58 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.119 = internal global ptr @tvp5150_log_status._entry.117, section ".printk_index", align 4
@tvp5150_log_status._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.98, ptr @.str.3, i32 162, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"tvp5150: Color saturation control = 0x%02x\0A\00", [52 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.122 = internal global ptr @tvp5150_log_status._entry.120, section ".printk_index", align 4
@tvp5150_log_status._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.98, ptr @.str.3, i32 164, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tvp5150: Hue control = 0x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.125 = internal global ptr @tvp5150_log_status._entry.123, section ".printk_index", align 4
@tvp5150_log_status._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.98, ptr @.str.3, i32 166, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"tvp5150: Contrast control = 0x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.128 = internal global ptr @tvp5150_log_status._entry.126, section ".printk_index", align 4
@tvp5150_log_status._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.98, ptr @.str.3, i32 168, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"tvp5150: Outputs and data rates select = 0x%02x\0A\00", [47 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.131 = internal global ptr @tvp5150_log_status._entry.129, section ".printk_index", align 4
@tvp5150_log_status._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.98, ptr @.str.3, i32 170, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"tvp5150: Configuration shared pins = 0x%02x\0A\00", [51 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.134 = internal global ptr @tvp5150_log_status._entry.132, section ".printk_index", align 4
@tvp5150_log_status._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.98, ptr @.str.3, i32 173, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"tvp5150: Active video cropping start = 0x%02x%02x\0A\00", [45 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.137 = internal global ptr @tvp5150_log_status._entry.135, section ".printk_index", align 4
@tvp5150_log_status._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.98, ptr @.str.3, i32 176, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"tvp5150: Active video cropping stop  = 0x%02x%02x\0A\00", [45 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.140 = internal global ptr @tvp5150_log_status._entry.138, section ".printk_index", align 4
@tvp5150_log_status._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.98, ptr @.str.3, i32 178, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tvp5150: Genlock/RTC = 0x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.143 = internal global ptr @tvp5150_log_status._entry.141, section ".printk_index", align 4
@tvp5150_log_status._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.98, ptr @.str.3, i32 180, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"tvp5150: Horizontal sync start = 0x%02x\0A\00", [55 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.146 = internal global ptr @tvp5150_log_status._entry.144, section ".printk_index", align 4
@tvp5150_log_status._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.98, ptr @.str.3, i32 182, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"tvp5150: Vertical blanking start = 0x%02x\0A\00", [53 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.149 = internal global ptr @tvp5150_log_status._entry.147, section ".printk_index", align 4
@tvp5150_log_status._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.98, ptr @.str.3, i32 184, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"tvp5150: Vertical blanking stop = 0x%02x\0A\00", [54 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.152 = internal global ptr @tvp5150_log_status._entry.150, section ".printk_index", align 4
@tvp5150_log_status._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.98, ptr @.str.3, i32 187, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"tvp5150: Chrominance processing control #1 and #2 = %02x %02x\0A\00", [33 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.155 = internal global ptr @tvp5150_log_status._entry.153, section ".printk_index", align 4
@tvp5150_log_status._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.98, ptr @.str.3, i32 189, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"tvp5150: Interrupt reset register B = 0x%02x\0A\00", [50 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.158 = internal global ptr @tvp5150_log_status._entry.156, section ".printk_index", align 4
@tvp5150_log_status._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.98, ptr @.str.3, i32 191, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"tvp5150: Interrupt enable register B = 0x%02x\0A\00", [49 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.161 = internal global ptr @tvp5150_log_status._entry.159, section ".printk_index", align 4
@tvp5150_log_status._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.98, ptr @.str.3, i32 193, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"tvp5150: Interrupt configuration register B = 0x%02x\0A\00", [42 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.164 = internal global ptr @tvp5150_log_status._entry.162, section ".printk_index", align 4
@tvp5150_log_status._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.98, ptr @.str.3, i32 195, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"tvp5150: Video standard = 0x%02x\0A\00", [62 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.167 = internal global ptr @tvp5150_log_status._entry.165, section ".printk_index", align 4
@tvp5150_log_status._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.98, ptr @.str.3, i32 198, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"tvp5150: Chroma gain factor: Cb=0x%02x Cr=0x%02x\0A\00", [46 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.170 = internal global ptr @tvp5150_log_status._entry.168, section ".printk_index", align 4
@tvp5150_log_status._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.98, ptr @.str.3, i32 200, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"tvp5150: Macrovision on counter = 0x%02x\0A\00", [54 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.173 = internal global ptr @tvp5150_log_status._entry.171, section ".printk_index", align 4
@tvp5150_log_status._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.98, ptr @.str.3, i32 202, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"tvp5150: Macrovision off counter = 0x%02x\0A\00", [53 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.176 = internal global ptr @tvp5150_log_status._entry.174, section ".printk_index", align 4
@tvp5150_log_status._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.98, ptr @.str.3, i32 204, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"tvp5150: ITU-R BT.656.%d timing(TVP5150AM1 only)\0A\00", [46 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.179 = internal global ptr @tvp5150_log_status._entry.177, section ".printk_index", align 4
@tvp5150_log_status._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.98, ptr @.str.3, i32 207, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tvp5150: Device ID = %02x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.182 = internal global ptr @tvp5150_log_status._entry.180, section ".printk_index", align 4
@tvp5150_log_status._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.98, ptr @.str.3, i32 210, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"tvp5150: ROM version = (hex) %02x.%02x\0A\00", [56 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.185 = internal global ptr @tvp5150_log_status._entry.183, section ".printk_index", align 4
@tvp5150_log_status._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.98, ptr @.str.3, i32 213, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"tvp5150: Vertical line count = 0x%02x%02x\0A\00", [53 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.188 = internal global ptr @tvp5150_log_status._entry.186, section ".printk_index", align 4
@tvp5150_log_status._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.98, ptr @.str.3, i32 215, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"tvp5150: Interrupt status register B = 0x%02x\0A\00", [49 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.191 = internal global ptr @tvp5150_log_status._entry.189, section ".printk_index", align 4
@tvp5150_log_status._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.98, ptr @.str.3, i32 217, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"tvp5150: Interrupt active register B = 0x%02x\0A\00", [49 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.194 = internal global ptr @tvp5150_log_status._entry.192, section ".printk_index", align 4
@tvp5150_log_status._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.98, ptr @.str.3, i32 223, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"tvp5150: Status regs #1 to #5 = %02x %02x %02x %02x %02x\0A\00", [38 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.197 = internal global ptr @tvp5150_log_status._entry.195, section ".printk_index", align 4
@.str.198 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Teletext filter 1\00", [46 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Teletext filter 2\00", [46 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.98, ptr @.str.3, i32 231, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"tvp5150: Teletext filter enable = 0x%02x\0A\00", [54 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.202 = internal global ptr @tvp5150_log_status._entry.200, section ".printk_index", align 4
@tvp5150_log_status._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.98, ptr @.str.3, i32 233, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"tvp5150: Interrupt status register A = 0x%02x\0A\00", [49 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.205 = internal global ptr @tvp5150_log_status._entry.203, section ".printk_index", align 4
@tvp5150_log_status._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.98, ptr @.str.3, i32 235, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"tvp5150: Interrupt enable register A = 0x%02x\0A\00", [49 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.208 = internal global ptr @tvp5150_log_status._entry.206, section ".printk_index", align 4
@tvp5150_log_status._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.98, ptr @.str.3, i32 237, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"tvp5150: Interrupt configuration = 0x%02x\0A\00", [53 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.211 = internal global ptr @tvp5150_log_status._entry.209, section ".printk_index", align 4
@tvp5150_log_status._entry.212 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.98, ptr @.str.3, i32 239, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"tvp5150: VDP status register = 0x%02x\0A\00", [57 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.214 = internal global ptr @tvp5150_log_status._entry.212, section ".printk_index", align 4
@tvp5150_log_status._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.98, ptr @.str.3, i32 241, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"tvp5150: FIFO word count = 0x%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.217 = internal global ptr @tvp5150_log_status._entry.215, section ".printk_index", align 4
@tvp5150_log_status._entry.218 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.98, ptr @.str.3, i32 243, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"tvp5150: FIFO interrupt threshold = 0x%02x\0A\00", [52 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.220 = internal global ptr @tvp5150_log_status._entry.218, section ".printk_index", align 4
@tvp5150_log_status._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.98, ptr @.str.3, i32 245, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tvp5150: FIFO reset = 0x%02x\0A\00", [34 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.223 = internal global ptr @tvp5150_log_status._entry.221, section ".printk_index", align 4
@tvp5150_log_status._entry.224 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.98, ptr @.str.3, i32 247, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"tvp5150: Line number interrupt = 0x%02x\0A\00", [55 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.226 = internal global ptr @tvp5150_log_status._entry.224, section ".printk_index", align 4
@tvp5150_log_status._entry.227 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.98, ptr @.str.3, i32 250, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"tvp5150: Pixel alignment register = 0x%02x%02x\0A\00", [48 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.229 = internal global ptr @tvp5150_log_status._entry.227, section ".printk_index", align 4
@tvp5150_log_status._entry.230 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.98, ptr @.str.3, i32 252, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"tvp5150: FIFO output control = 0x%02x\0A\00", [57 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.232 = internal global ptr @tvp5150_log_status._entry.230, section ".printk_index", align 4
@tvp5150_log_status._entry.233 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.234, ptr @.str.98, ptr @.str.3, i32 254, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"tvp5150: Full field enable = 0x%02x\0A\00", [59 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.235 = internal global ptr @tvp5150_log_status._entry.233, section ".printk_index", align 4
@tvp5150_log_status._entry.236 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.98, ptr @.str.3, i32 256, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"tvp5150: Full field mode register = 0x%02x\0A\00", [52 x i8] zeroinitializer }, align 32
@tvp5150_log_status._entry_ptr.238 = internal global ptr @tvp5150_log_status._entry.236, section ".printk_index", align 4
@.str.239 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CC   data\00", [22 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"WSS  data\00", [22 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"VPS  data\00", [22 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"VITC data\00", [22 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Line mode\00", [22 x i8] zeroinitializer }, align 32
@dump_reg_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.244, ptr @.str.245, ptr @.str.3, i32 127, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"too much data to dump\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dump_reg_range\00", [17 x i8] zeroinitializer }, align 32
@dump_reg_range._entry_ptr = internal global ptr @dump_reg_range._entry, section ".printk_index", align 4
@dump_reg_range._entry.246 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.247, ptr @.str.245, ptr @.str.3, i32 137, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s reg %02x = %*ph\0A\00", [44 x i8] zeroinitializer }, align 32
@dump_reg_range._entry_ptr.248 = internal global ptr @dump_reg_range._entry.246, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 20816, i64 20817]
@__sancov_gen_cov_switch_values.249 = internal global [4 x i64] [i64 2, i64 16, i64 801, i64 1024]
@__sancov_gen_cov_switch_values.250 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.251 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 3, i64 5, i64 7, i64 9, i64 11]
@__sancov_gen_cov_switch_values.252 = internal global [15 x i64] [i64 13, i64 32, i64 132, i64 133, i64 134, i64 135, i64 136, i64 137, i64 138, i64 139, i64 140, i64 176, i64 192, i64 198, i64 199]
@__sancov_gen_cov_switch_values.253 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.254 = internal global [6 x i64] [i64 4, i64 64, i64 256, i64 512, i64 1024, i64 16384]
@__sancov_gen_cov_switch_values.255 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 3, i64 5, i64 7, i64 9, i64 11]
@__sancov_gen_cov_switch_values.256 = internal global [7 x i64] [i64 5, i64 64, i64 256, i64 512, i64 1024, i64 16384, i64 16777215]
@__sancov_gen_cov_switch_values.257 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 3, i64 5, i64 7, i64 9, i64 11]
@__sancov_gen_cov_switch_values.258 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.259 = internal global [4 x i64] [i64 2, i64 16, i64 20816, i64 20817]
@__sancov_gen_cov_switch_values.260 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.261 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 3, i64 5, i64 7, i64 9, i64 11]
@__sancov_gen_cov_switch_values.262 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.263 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 5, i64 9]
@__sancov_gen_cov_switch_values.264 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.265 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 3, i64 5, i64 7, i64 9, i64 11]
@__sancov_gen_cov_switch_values.266 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.267 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 3, i64 5, i64 7, i64 9, i64 11]
@__sancov_gen_cov_switch_values.268 = internal global [7 x i64] [i64 5, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963779, i64 10422531]
@___asan_gen_.269 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 52, i32 12 }
@___asan_gen_.272 = private unnamed_addr constant [15 x i8] c"tvp5150_driver\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 2277, i32 26 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 2280, i32 11 }
@___asan_gen_.278 = private unnamed_addr constant [17 x i8] c"tvp5150_of_match\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 2270, i32 34 }
@___asan_gen_.281 = private unnamed_addr constant [15 x i8] c"tvp5150_pm_ops\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 2257, i32 32 }
@___asan_gen_.284 = private unnamed_addr constant [11 x i8] c"tvp5150_id\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 2263, i32 35 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 2237, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant [15 x i8] c"tvp5150_config\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1813, i32 29 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 2131, i32 8 }
@___asan_gen_.314 = private unnamed_addr constant [12 x i8] c"tvp5150_ops\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1733, i32 37 }
@___asan_gen_.317 = private unnamed_addr constant [21 x i8] c"tvp5150_internal_ops\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1741, i32 46 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 2144, i32 4 }
@___asan_gen_.332 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 2179, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant [17 x i8] c"tvp5150_ctrl_ops\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1688, i32 35 }
@___asan_gen_.341 = private unnamed_addr constant [22 x i8] c"tvp5150_test_patterns\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 2104, i32 27 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1870, i32 46 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1880, i32 48 }
@___asan_gen_.350 = private unnamed_addr constant [23 x i8] c"tvp5150_readable_table\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1808, i32 41 }
@___asan_gen_.353 = private unnamed_addr constant [24 x i8] c"tvp5150_readable_ranges\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1751, i32 34 }
@___asan_gen_.356 = private unnamed_addr constant [17 x i8] c"tvp5150_core_ops\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1692, i32 42 }
@___asan_gen_.359 = private unnamed_addr constant [18 x i8] c"tvp5150_tuner_ops\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1703, i32 43 }
@___asan_gen_.362 = private unnamed_addr constant [18 x i8] c"tvp5150_video_ops\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1707, i32 43 }
@___asan_gen_.365 = private unnamed_addr constant [16 x i8] c"tvp5150_vbi_ops\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1715, i32 41 }
@___asan_gen_.368 = private unnamed_addr constant [16 x i8] c"tvp5150_pad_ops\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1722, i32 41 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1562, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 305, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 782, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant [15 x i8] c"tvp5150_ev_fmt\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 873, i32 32 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 646, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant [16 x i8] c"vbi_ram_default\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 517, i32 33 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 732, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 747, i32 4 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 688, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1066, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 1016, i32 6 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1118, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 2003, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 2025, i32 4 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 2066, i32 52 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 2068, i32 22 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 2074, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1932, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1945, i32 5 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1950, i32 5 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1954, i32 5 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1961, i32 5 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1966, i32 5 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1972, i32 5 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1978, i32 4 }
@___asan_gen_.542 = private unnamed_addr constant [21 x i8] c"tvp5150_sd_media_ops\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1407, i32 45 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1330, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1335, i32 3 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1837, i32 3 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1844, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1849, i32 3 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1851, i32 3 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1856, i32 3 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1858, i32 3 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 2105, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 2106, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant [21 x i8] c"tvp5150_init_default\00", align 1
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 336, i32 35 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 893, i32 4 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 143, i32 2 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 145, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 147, i32 2 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 149, i32 2 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 151, i32 2 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 153, i32 2 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 155, i32 2 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 159, i32 2 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 161, i32 2 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 163, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 165, i32 2 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 167, i32 2 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 169, i32 2 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 171, i32 2 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 174, i32 2 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 177, i32 2 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 179, i32 2 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 181, i32 2 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 183, i32 2 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 185, i32 2 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 188, i32 2 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 190, i32 2 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 192, i32 2 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 194, i32 2 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 196, i32 2 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 199, i32 2 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 201, i32 2 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 203, i32 2 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 205, i32 2 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 208, i32 2 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 211, i32 2 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 214, i32 2 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 216, i32 2 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 218, i32 2 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 225, i32 21 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 227, i32 21 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 230, i32 2 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 232, i32 2 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 234, i32 2 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 236, i32 2 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 238, i32 2 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 240, i32 2 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 242, i32 2 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 244, i32 2 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 246, i32 2 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 248, i32 2 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 251, i32 2 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 253, i32 2 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 255, i32 2 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 258, i32 21 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 261, i32 21 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 264, i32 21 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 267, i32 21 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 270, i32 21 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 127, i32 3 }
@___asan_gen_.938 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.941 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.942 = private constant [31 x i8] c"../drivers/media/i2c/tvp5150.c\00", align 1
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 137, i32 3 }
@llvm.compiler.used = appending global [314 x ptr] [ptr @__UNIQUE_ID_author306, ptr @__UNIQUE_ID_debug310, ptr @__UNIQUE_ID_debugtype309, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_file307, ptr @__UNIQUE_ID_license308, ptr @__exitcall_tvp5150_driver_exit, ptr @__initcall__kmod_tvp5150__323_2288_tvp5150_driver_init6, ptr @__param_debug, ptr @dump_reg_range._entry, ptr @dump_reg_range._entry.246, ptr @dump_reg_range._entry_ptr, ptr @dump_reg_range._entry_ptr.248, ptr @tvp5150_detect_version._entry, ptr @tvp5150_detect_version._entry.75, ptr @tvp5150_detect_version._entry.79, ptr @tvp5150_detect_version._entry.82, ptr @tvp5150_detect_version._entry.85, ptr @tvp5150_detect_version._entry.88, ptr @tvp5150_detect_version._entry_ptr, ptr @tvp5150_detect_version._entry_ptr.78, ptr @tvp5150_detect_version._entry_ptr.81, ptr @tvp5150_detect_version._entry_ptr.84, ptr @tvp5150_detect_version._entry_ptr.87, ptr @tvp5150_detect_version._entry_ptr.90, ptr @tvp5150_driver_exit, ptr @tvp5150_fill_fmt._entry, ptr @tvp5150_fill_fmt._entry_ptr, ptr @tvp5150_g_register._entry, ptr @tvp5150_g_register._entry_ptr, ptr @tvp5150_g_sliced_vbi_cap._entry, ptr @tvp5150_g_sliced_vbi_cap._entry_ptr, ptr @tvp5150_get_vbi._entry, ptr @tvp5150_get_vbi._entry.30, ptr @tvp5150_get_vbi._entry_ptr, ptr @tvp5150_get_vbi._entry_ptr.31, ptr @tvp5150_isr._entry, ptr @tvp5150_isr._entry_ptr, ptr @tvp5150_link_setup._entry, ptr @tvp5150_link_setup._entry.71, ptr @tvp5150_link_setup._entry_ptr, ptr @tvp5150_link_setup._entry_ptr.72, ptr @tvp5150_log_status._entry, ptr @tvp5150_log_status._entry.102, ptr @tvp5150_log_status._entry.105, ptr @tvp5150_log_status._entry.108, ptr @tvp5150_log_status._entry.111, ptr @tvp5150_log_status._entry.114, ptr @tvp5150_log_status._entry.117, ptr @tvp5150_log_status._entry.120, ptr @tvp5150_log_status._entry.123, ptr @tvp5150_log_status._entry.126, ptr @tvp5150_log_status._entry.129, ptr @tvp5150_log_status._entry.132, ptr @tvp5150_log_status._entry.135, ptr @tvp5150_log_status._entry.138, ptr @tvp5150_log_status._entry.141, ptr @tvp5150_log_status._entry.144, ptr @tvp5150_log_status._entry.147, ptr @tvp5150_log_status._entry.150, ptr @tvp5150_log_status._entry.153, ptr @tvp5150_log_status._entry.156, ptr @tvp5150_log_status._entry.159, ptr @tvp5150_log_status._entry.162, ptr @tvp5150_log_status._entry.165, ptr @tvp5150_log_status._entry.168, ptr @tvp5150_log_status._entry.171, ptr @tvp5150_log_status._entry.174, ptr @tvp5150_log_status._entry.177, ptr @tvp5150_log_status._entry.180, ptr @tvp5150_log_status._entry.183, ptr @tvp5150_log_status._entry.186, ptr @tvp5150_log_status._entry.189, ptr @tvp5150_log_status._entry.192, ptr @tvp5150_log_status._entry.195, ptr @tvp5150_log_status._entry.200, ptr @tvp5150_log_status._entry.203, ptr @tvp5150_log_status._entry.206, ptr @tvp5150_log_status._entry.209, ptr @tvp5150_log_status._entry.212, ptr @tvp5150_log_status._entry.215, ptr @tvp5150_log_status._entry.218, ptr @tvp5150_log_status._entry.221, ptr @tvp5150_log_status._entry.224, ptr @tvp5150_log_status._entry.227, ptr @tvp5150_log_status._entry.230, ptr @tvp5150_log_status._entry.233, ptr @tvp5150_log_status._entry.236, ptr @tvp5150_log_status._entry.99, ptr @tvp5150_log_status._entry_ptr, ptr @tvp5150_log_status._entry_ptr.101, ptr @tvp5150_log_status._entry_ptr.104, ptr @tvp5150_log_status._entry_ptr.107, ptr @tvp5150_log_status._entry_ptr.110, ptr @tvp5150_log_status._entry_ptr.113, ptr @tvp5150_log_status._entry_ptr.116, ptr @tvp5150_log_status._entry_ptr.119, ptr @tvp5150_log_status._entry_ptr.122, ptr @tvp5150_log_status._entry_ptr.125, ptr @tvp5150_log_status._entry_ptr.128, ptr @tvp5150_log_status._entry_ptr.131, ptr @tvp5150_log_status._entry_ptr.134, ptr @tvp5150_log_status._entry_ptr.137, ptr @tvp5150_log_status._entry_ptr.140, ptr @tvp5150_log_status._entry_ptr.143, ptr @tvp5150_log_status._entry_ptr.146, ptr @tvp5150_log_status._entry_ptr.149, ptr @tvp5150_log_status._entry_ptr.152, ptr @tvp5150_log_status._entry_ptr.155, ptr @tvp5150_log_status._entry_ptr.158, ptr @tvp5150_log_status._entry_ptr.161, ptr @tvp5150_log_status._entry_ptr.164, ptr @tvp5150_log_status._entry_ptr.167, ptr @tvp5150_log_status._entry_ptr.170, ptr @tvp5150_log_status._entry_ptr.173, ptr @tvp5150_log_status._entry_ptr.176, ptr @tvp5150_log_status._entry_ptr.179, ptr @tvp5150_log_status._entry_ptr.182, ptr @tvp5150_log_status._entry_ptr.185, ptr @tvp5150_log_status._entry_ptr.188, ptr @tvp5150_log_status._entry_ptr.191, ptr @tvp5150_log_status._entry_ptr.194, ptr @tvp5150_log_status._entry_ptr.197, ptr @tvp5150_log_status._entry_ptr.202, ptr @tvp5150_log_status._entry_ptr.205, ptr @tvp5150_log_status._entry_ptr.208, ptr @tvp5150_log_status._entry_ptr.211, ptr @tvp5150_log_status._entry_ptr.214, ptr @tvp5150_log_status._entry_ptr.217, ptr @tvp5150_log_status._entry_ptr.220, ptr @tvp5150_log_status._entry_ptr.223, ptr @tvp5150_log_status._entry_ptr.226, ptr @tvp5150_log_status._entry_ptr.229, ptr @tvp5150_log_status._entry_ptr.232, ptr @tvp5150_log_status._entry_ptr.235, ptr @tvp5150_log_status._entry_ptr.238, ptr @tvp5150_parse_dt._entry, ptr @tvp5150_parse_dt._entry.43, ptr @tvp5150_parse_dt._entry_ptr, ptr @tvp5150_parse_dt._entry_ptr.45, ptr @tvp5150_probe._entry, ptr @tvp5150_probe._entry_ptr, ptr @tvp5150_remove._entry, ptr @tvp5150_remove._entry_ptr, ptr @tvp5150_selmux._entry, ptr @tvp5150_selmux._entry_ptr, ptr @tvp5150_set_selection._entry, ptr @tvp5150_set_selection._entry_ptr, ptr @tvp5150_set_std._entry, ptr @tvp5150_set_std._entry_ptr, ptr @tvp5150_set_vbi._entry, ptr @tvp5150_set_vbi._entry_ptr, ptr @tvp5150_validate_connectors._entry, ptr @tvp5150_validate_connectors._entry.48, ptr @tvp5150_validate_connectors._entry.51, ptr @tvp5150_validate_connectors._entry.54, ptr @tvp5150_validate_connectors._entry.57, ptr @tvp5150_validate_connectors._entry.60, ptr @tvp5150_validate_connectors._entry.63, ptr @tvp5150_validate_connectors._entry.66, ptr @tvp5150_validate_connectors._entry_ptr, ptr @tvp5150_validate_connectors._entry_ptr.50, ptr @tvp5150_validate_connectors._entry_ptr.53, ptr @tvp5150_validate_connectors._entry_ptr.56, ptr @tvp5150_validate_connectors._entry_ptr.59, ptr @tvp5150_validate_connectors._entry_ptr.62, ptr @tvp5150_validate_connectors._entry_ptr.65, ptr @tvp5150_validate_connectors._entry_ptr.68, ptr @debug, ptr @tvp5150_driver, ptr @.str, ptr @tvp5150_of_match, ptr @tvp5150_pm_ops, ptr @tvp5150_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @tvp5150_probe._key, ptr @tvp5150_config, ptr @.str.6, ptr @tvp5150_ops, ptr @tvp5150_internal_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @tvp5150_probe._key.10, ptr @.str.11, ptr @tvp5150_ctrl_ops, ptr @tvp5150_test_patterns, ptr @.str.12, ptr @.str.13, ptr @tvp5150_readable_table, ptr @tvp5150_readable_ranges, ptr @tvp5150_core_ops, ptr @tvp5150_tuner_ops, ptr @tvp5150_video_ops, ptr @tvp5150_vbi_ops, ptr @tvp5150_pad_ops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @tvp5150_ev_fmt, ptr @.str.26, ptr @.str.27, ptr @vbi_ram_default, ptr @.str.28, ptr @.str.29, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @tvp5150_sd_media_ops, ptr @.str.69, ptr @.str.70, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.91, ptr @.str.92, ptr @tvp5150_init_default, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.130, ptr @.str.133, ptr @.str.136, ptr @.str.139, ptr @.str.142, ptr @.str.145, ptr @.str.148, ptr @.str.151, ptr @.str.154, ptr @.str.157, ptr @.str.160, ptr @.str.163, ptr @.str.166, ptr @.str.169, ptr @.str.172, ptr @.str.175, ptr @.str.178, ptr @.str.181, ptr @.str.184, ptr @.str.187, ptr @.str.190, ptr @.str.193, ptr @.str.196, ptr @.str.198, ptr @.str.199, ptr @.str.201, ptr @.str.204, ptr @.str.207, ptr @.str.210, ptr @.str.213, ptr @.str.216, ptr @.str.219, ptr @.str.222, ptr @.str.225, ptr @.str.228, ptr @.str.231, ptr @.str.234, ptr @.str.237, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.247], section "llvm.metadata"
@0 = internal global [225 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_probe._key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_test_patterns to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_readable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_readable_ranges to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_tuner_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_vbi_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_g_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_selmux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_set_std._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_ev_fmt to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_g_sliced_vbi_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbi_ram_default to i32), i32 468, i32 576, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_get_vbi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_get_vbi._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_set_vbi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_fill_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_set_selection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_parse_dt._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_validate_connectors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_validate_connectors._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_validate_connectors._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_validate_connectors._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_validate_connectors._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_validate_connectors._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_validate_connectors._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_validate_connectors._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_sd_media_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_link_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_link_setup._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_detect_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_detect_version._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_detect_version._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_detect_version._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_detect_version._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_detect_version._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_init_default to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.212 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.230 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.233 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_log_status._entry.236 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_reg_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_reg_range._entry.246 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp5150_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tvp5150_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tvp5150_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @tvp5150_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp5150_remove(ptr noundef %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 14
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 1
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr, align 2
  %conv = zext i16 %6 to i32
  %shl = shl nuw nsw i32 %conv, 1
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %4, ptr noundef nonnull @.str.1, i32 noundef %shl) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %connectors_num = getelementptr inbounds %struct.tvp5150, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %connectors_num to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %connectors_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp539.not = icmp eq i32 %8, 0
  br i1 %cmp539.not, label %do.end4.for.end19_crit_edge, label %do.end4.for.body_crit_edge

do.end4.for.body_crit_edge:                       ; preds = %do.end4
  br label %for.body

do.end4.for.end19_crit_edge:                      ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end19

for.cond7.preheader:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp941.not = icmp eq i32 %10, 0
  br i1 %cmp941.not, label %for.cond7.preheader.for.end19_crit_edge, label %for.cond7.preheader.for.body11_crit_edge

for.cond7.preheader.for.body11_crit_edge:         ; preds = %for.cond7.preheader
  br label %for.body11

for.cond7.preheader.for.end19_crit_edge:          ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end19

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end4.for.body_crit_edge
  %i.040 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end4.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.tvp5150, ptr %1, i32 0, i32 2, i32 %i.040
  tail call void @v4l2_fwnode_connector_free(ptr noundef %arrayidx) #9
  %inc = add nuw i32 %i.040, 1
  %9 = ptrtoint ptr %connectors_num to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %connectors_num, align 4
  %cmp5 = icmp ult i32 %inc, %10
  br i1 %cmp5, label %for.body.for.body_crit_edge, label %for.cond7.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body11:                                       ; preds = %for.body11.for.body11_crit_edge, %for.cond7.preheader.for.body11_crit_edge
  %i.142 = phi i32 [ %inc18, %for.body11.for.body11_crit_edge ], [ 0, %for.cond7.preheader.for.body11_crit_edge ]
  %ent = getelementptr %struct.tvp5150, ptr %1, i32 0, i32 2, i32 %i.142, i32 1
  tail call void @media_device_unregister_entity(ptr noundef %ent) #9
  %inc18 = add nuw i32 %i.142, 1
  %11 = ptrtoint ptr %connectors_num to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %connectors_num, align 4
  %cmp9 = icmp ult i32 %inc18, %12
  br i1 %cmp9, label %for.body11.for.body11_crit_edge, label %for.body11.for.end19_crit_edge

for.body11.for.end19_crit_edge:                   ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end19

for.body11.for.body11_crit_edge:                  ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body11

for.end19:                                        ; preds = %for.body11.for.end19_crit_edge, %for.cond7.preheader.for.end19_crit_edge, %do.end4.for.end19_crit_edge
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #9
  %hdl = getelementptr inbounds %struct.tvp5150, ptr %1, i32 0, i32 5
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #9
  %dev20 = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev20, i1 noundef zeroext true) #9
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev20, i32 noundef 2) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp5150_probe(ptr noundef %c) #2 align 64 {
entry:
  %regs.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 3
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %3) #9
  %and.i = and i32 %call.i.i, 1179648
  call void @__sanitizer_cov_trace_const_cmp4(i32 1179648, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1179648
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef 7) #9
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.tvp5150_init.exit_crit_edge, label %if.end.i

if.end.tvp5150_init.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_init.exit

if.end.i:                                         ; preds = %if.end
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then3.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %call.i, i32 noundef 0) #9
  tail call void @msleep(i32 noundef 20) #9
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  %call6.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef 7) #9
  %cmp.i22.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i22.i, label %if.end4.i.tvp5150_init.exit_crit_edge, label %if.end10.i

if.end4.i.tvp5150_init.exit_crit_edge:            ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_init.exit

if.end10.i:                                       ; preds = %if.end4.i
  %tobool11.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool11.not.i, label %if.end10.i.if.end4_crit_edge, label %if.then12.i

if.end10.i.if.end4_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #9
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %call6.i, i32 noundef 0) #9
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 250, i32 noundef 2) #9
  br label %if.end4

tvp5150_init.exit:                                ; preds = %if.end4.i.tvp5150_init.exit_crit_edge, %if.end.tvp5150_init.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call.i, %if.end.tvp5150_init.exit_crit_edge ], [ %call6.i, %if.end4.i.tvp5150_init.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  br label %cleanup

if.end4:                                          ; preds = %if.then12.i, %if.end10.i.if.end4_crit_edge
  %call.i158 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 992, i32 noundef 3520) #9
  %tobool7.not = icmp eq ptr %call.i158, null
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %call10 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %c, ptr noundef nonnull @tvp5150_config, ptr noundef nonnull @tvp5150_probe._key, ptr noundef nonnull @.str.6) #9
  %cmp.i159 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i159, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %regmap = getelementptr inbounds %struct.tvp5150, ptr %call.i158, i32 0, i32 7
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call10, ptr %regmap, align 8
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i158, ptr noundef %c, ptr noundef nonnull @tvp5150_ops) #9
  %internal_ops = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i158, i32 0, i32 7
  %11 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @tvp5150_internal_ops, ptr %internal_ops, align 4
  %flags = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i158, i32 0, i32 4
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %or = or i32 %13, 12
  store i32 %or, ptr %flags, align 4
  %tobool16.not = icmp eq ptr %1, null
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end14
  %call18 = tail call fastcc i32 @tvp5150_parse_dt(ptr noundef nonnull %call.i158, ptr noundef nonnull %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then17.if.end23_crit_edge, label %do.end

if.then17.if.end23_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

do.end:                                           ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %dev21 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i158, i32 0, i32 14
  %14 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.7, i32 noundef %call18) #12
  br label %cleanup

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %mbus_type = getelementptr inbounds %struct.tvp5150, ptr %call.i158, i32 0, i32 18
  %16 = ptrtoint ptr %mbus_type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %mbus_type, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then17.if.end23_crit_edge
  %ops.i = getelementptr inbounds %struct.media_entity, ptr %call.i158, i32 0, i32 11
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @tvp5150_sd_media_ops, ptr %ops.i, align 4
  %function.i = getelementptr inbounds %struct.media_entity, ptr %call.i158, i32 0, i32 3
  %18 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 131076, ptr %function.i, align 4
  %flags.i = getelementptr %struct.tvp5150, ptr %call.i158, i32 0, i32 1, i32 0, i32 4
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %flags.i, align 4
  %sig_type.i = getelementptr %struct.tvp5150, ptr %call.i158, i32 0, i32 1, i32 0, i32 3
  %20 = ptrtoint ptr %sig_type.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %sig_type.i, align 4
  %flags.1.i = getelementptr %struct.tvp5150, ptr %call.i158, i32 0, i32 1, i32 1, i32 4
  %21 = ptrtoint ptr %flags.1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %flags.1.i, align 4
  %sig_type.1.i = getelementptr %struct.tvp5150, ptr %call.i158, i32 0, i32 1, i32 1, i32 3
  %22 = ptrtoint ptr %sig_type.1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %sig_type.1.i, align 4
  %pads5.i = getelementptr inbounds %struct.tvp5150, ptr %call.i158, i32 0, i32 1
  %flags7.i = getelementptr %struct.tvp5150, ptr %call.i158, i32 0, i32 1, i32 2, i32 4
  %23 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %flags7.i, align 4
  %sig_type10.i = getelementptr %struct.tvp5150, ptr %call.i158, i32 0, i32 1, i32 2, i32 3
  %24 = ptrtoint ptr %sig_type10.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %sig_type10.i, align 4
  %call.i160 = tail call i32 @media_entity_pads_init(ptr noundef nonnull %call.i158, i16 noundef zeroext 3, ptr noundef %pads5.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160)
  %tobool25.not = icmp eq i32 %call.i160, 0
  br i1 %tobool25.not, label %if.end27, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i158, i32 0, i32 11
  %25 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regs.i) #9
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %regs.i, align 4
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 8
  %call2.i = call i32 @regmap_bulk_read(ptr noundef %29, i32 noundef 128, ptr noundef nonnull %regs.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i161 = icmp slt i32 %call2.i, 0
  br i1 %cmp.i161, label %tvp5150_detect_version.exit.thread, label %if.end.i164

tvp5150_detect_version.exit.thread:               ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i162 = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i162, ptr noundef nonnull @.str.73, i32 noundef %call2.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regs.i) #9
  br label %cleanup

if.end.i164:                                      ; preds = %if.end27
  %30 = getelementptr inbounds [4 x i8], ptr %regs.i, i32 0, i32 3
  %31 = getelementptr inbounds [4 x i8], ptr %regs.i, i32 0, i32 2
  %32 = getelementptr inbounds [4 x i8], ptr %regs.i, i32 0, i32 1
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %regs.i, align 4
  %conv.i163 = zext i8 %34 to i16
  %shl.i = shl nuw i16 %conv.i163, 8
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %32, align 1
  %conv4.i = zext i8 %36 to i16
  %or.i = or i16 %shl.i, %conv4.i
  %dev_id.i = getelementptr inbounds %struct.tvp5150, ptr %call.i158, i32 0, i32 16
  %37 = ptrtoint ptr %dev_id.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %or.i, ptr %dev_id.i, align 2
  %38 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %31, align 2
  %conv7.i = zext i8 %39 to i16
  %shl8.i = shl nuw i16 %conv7.i, 8
  %40 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %30, align 1
  %conv10.i = zext i8 %41 to i16
  %or11.i = or i16 %shl8.i, %conv10.i
  %rom_ver.i = getelementptr inbounds %struct.tvp5150, ptr %call.i158, i32 0, i32 17
  %42 = ptrtoint ptr %rom_ver.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %or11.i, ptr %rom_ver.i, align 4
  %dev16.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i158, i32 0, i32 14
  %43 = ptrtoint ptr %dev16.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev16.i, align 4
  %conv18.i = zext i16 %or.i to i32
  %conv20.i = zext i8 %39 to i32
  %conv22.i = zext i8 %41 to i32
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 1
  %45 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %addr.i, align 2
  %conv23.i = zext i16 %46 to i32
  %shl24.i = shl nuw nsw i32 %conv23.i, 1
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 3
  %47 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %adapter.i, align 8
  %name.i = getelementptr inbounds %struct.i2c_adapter, ptr %48, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %44, ptr noundef nonnull @.str.76, i32 noundef %conv18.i, i32 noundef %conv20.i, i32 noundef %conv22.i, i32 noundef %shl24.i, ptr noundef %name.i) #12
  %49 = ptrtoint ptr %dev_id.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %dev_id.i, align 2
  %51 = zext i16 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values)
  switch i16 %50, label %if.end.i164.do.end73.i_crit_edge [
    i16 20816, label %land.lhs.true.i
    i16 20817, label %land.lhs.true60.i
  ]

if.end.i164.do.end73.i_crit_edge:                 ; preds = %if.end.i164
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end73.i

land.lhs.true.i:                                  ; preds = %if.end.i164
  %52 = ptrtoint ptr %rom_ver.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %rom_ver.i, align 4
  %54 = zext i16 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.249)
  switch i16 %53, label %land.lhs.true.i.do.end73.i_crit_edge [
    i16 801, label %do.end37.i
    i16 1024, label %do.end51.i
  ]

land.lhs.true.i.do.end73.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end73.i

do.end37.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %dev16.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev16.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %56, ptr noundef nonnull @.str.80) #12
  br label %tvp5150_detect_version.exit

do.end51.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %dev16.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev16.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %58, ptr noundef nonnull @.str.83) #12
  %59 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap, align 8
  %call54.i = call i32 @regmap_write(ptr noundef %60, i32 noundef 48, i32 noundef 0) #9
  br label %tvp5150_detect_version.exit

land.lhs.true60.i:                                ; preds = %if.end.i164
  %61 = ptrtoint ptr %rom_ver.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %rom_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %62)
  %cmp63.i = icmp eq i16 %62, 256
  br i1 %cmp63.i, label %do.end68.i, label %land.lhs.true60.i.do.end73.i_crit_edge

land.lhs.true60.i.do.end73.i_crit_edge:           ; preds = %land.lhs.true60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end73.i

do.end68.i:                                       ; preds = %land.lhs.true60.i
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %dev16.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev16.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %64, ptr noundef nonnull @.str.86) #12
  br label %tvp5150_detect_version.exit

do.end73.i:                                       ; preds = %land.lhs.true60.i.do.end73.i_crit_edge, %land.lhs.true.i.do.end73.i_crit_edge, %if.end.i164.do.end73.i_crit_edge
  %65 = ptrtoint ptr %dev16.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev16.i, align 4
  %conv76.i = zext i16 %50 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %66, ptr noundef nonnull @.str.89, i32 noundef %conv76.i) #12
  br label %tvp5150_detect_version.exit

tvp5150_detect_version.exit:                      ; preds = %do.end73.i, %do.end68.i, %do.end51.i, %do.end37.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regs.i) #9
  %connectors_num = getelementptr inbounds %struct.tvp5150, ptr %call.i158, i32 0, i32 4
  %67 = ptrtoint ptr %connectors_num to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %connectors_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp31174.not = icmp eq i32 %68, 0
  br i1 %cmp31174.not, label %tvp5150_detect_version.exit.if.then35_crit_edge, label %for.body.lr.ph

tvp5150_detect_version.exit.if.then35_crit_edge:  ; preds = %tvp5150_detect_version.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then35

for.body.lr.ph:                                   ; preds = %tvp5150_detect_version.exit
  %norm = getelementptr inbounds %struct.tvp5150, ptr %call.i158, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0175 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %connector = getelementptr %struct.tvp5150, ptr %call.i158, i32 0, i32 2, i32 %i.0175, i32 0, i32 5
  %69 = ptrtoint ptr %connector to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %connector, align 8
  %71 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %norm, align 8
  %or32 = or i64 %72, %70
  store i64 %or32, ptr %norm, align 8
  %inc = add nuw i32 %i.0175, 1
  %73 = ptrtoint ptr %connectors_num to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %connectors_num, align 4
  %cmp31 = icmp ult i32 %inc, %74
  br i1 %cmp31, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %phi.cmp = icmp eq i32 %74, 0
  br i1 %phi.cmp, label %for.end.if.then35_crit_edge, label %for.end.if.end37_crit_edge

for.end.if.end37_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

for.end.if.then35_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then35

if.then35:                                        ; preds = %for.end.if.then35_crit_edge, %tvp5150_detect_version.exit.if.then35_crit_edge
  %norm36 = getelementptr inbounds %struct.tvp5150, ptr %call.i158, i32 0, i32 9
  %75 = ptrtoint ptr %norm36 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 16777215, ptr %norm36, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %for.end.if.end37_crit_edge
  %detected_norm = getelementptr inbounds %struct.tvp5150, ptr %call.i158, i32 0, i32 10
  %76 = ptrtoint ptr %detected_norm to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 0, ptr %detected_norm, align 8
  %input = getelementptr inbounds %struct.tvp5150, ptr %call.i158, i32 0, i32 11
  %77 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1, ptr %input, align 8
  %enable = getelementptr inbounds %struct.tvp5150, ptr %call.i158, i32 0, i32 14
  %78 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1, ptr %enable, align 4
  %hdl = getelementptr inbounds %struct.tvp5150, ptr %call.i158, i32 0, i32 5
  %call39 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 5, ptr noundef nonnull @tvp5150_probe._key.10, ptr noundef nonnull @.str.11) #9
  %call41 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @tvp5150_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #9
  %call43 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @tvp5150_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #9
  %call45 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @tvp5150_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #9
  %call47 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @tvp5150_ctrl_ops, i32 noundef 9963779, i64 noundef -128, i64 noundef 127, i64 noundef 1, i64 noundef 0) #9
  %call49 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @tvp5150_ctrl_ops, i32 noundef 10422530, i64 noundef 27000000, i64 noundef 27000000, i64 noundef 1, i64 noundef 27000000) #9
  %call51 = call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %hdl, ptr noundef nonnull @tvp5150_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @tvp5150_test_patterns) #9
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i158, i32 0, i32 8
  %79 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %hdl, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.tvp5150, ptr %call.i158, i32 0, i32 5, i32 9
  %80 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool54.not = icmp eq i32 %81, 0
  br i1 %tobool54.not, label %if.end58, label %if.end37.err_crit_edge

if.end37.err_crit_edge:                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end58:                                         ; preds = %if.end37
  %call59 = call fastcc i64 @tvp5150_read_std(ptr noundef nonnull %call.i158), !range !450
  %rect = getelementptr inbounds %struct.tvp5150, ptr %call.i158, i32 0, i32 6
  %top.i = getelementptr inbounds %struct.tvp5150, ptr %call.i158, i32 0, i32 6, i32 1
  %82 = ptrtoint ptr %top.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %top.i, align 4
  %83 = ptrtoint ptr %rect to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %rect, align 4
  %width.i = getelementptr inbounds %struct.tvp5150, ptr %call.i158, i32 0, i32 6, i32 2
  %84 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 720, ptr %width.i, align 4
  %and.i166 = and i64 %call59, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i166)
  %tobool.not.i167 = icmp eq i64 %and.i166, 0
  %spec.select.i = select i1 %tobool.not.i167, i32 576, i32 480
  %85 = getelementptr inbounds %struct.tvp5150, ptr %call.i158, i32 0, i32 6, i32 3
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %spec.select.i, ptr %85, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 6
  %87 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %irq, align 4
  %irq60 = getelementptr inbounds %struct.tvp5150, ptr %call.i158, i32 0, i32 8
  %89 = ptrtoint ptr %irq60 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %irq60, align 4
  %call61 = call i32 @tvp5150_reset(ptr noundef nonnull %call.i158, i32 noundef 0)
  %90 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool63.not = icmp eq i32 %91, 0
  br i1 %tobool63.not, label %if.end58.if.end71_crit_edge, label %if.then64

if.end58.if.end71_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.then64:                                        ; preds = %if.end58
  %call67 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %91, ptr noundef null, ptr noundef nonnull @tvp5150_isr, i32 noundef 8196, ptr noundef nonnull @.str, ptr noundef nonnull %call.i158) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.then64.if.end71_crit_edge, label %if.then64.err_crit_edge

if.then64.err_crit_edge:                          ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.then64.if.end71_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.end71:                                         ; preds = %if.then64.if.end71_crit_edge, %if.end58.if.end71_crit_edge
  %call72 = call i32 @v4l2_async_register_subdev(ptr noundef nonnull %call.i158) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %if.end71.err_crit_edge, label %if.end75

if.end71.err_crit_edge:                           ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end75:                                         ; preds = %if.end71
  %92 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %92)
  %cmp76 = icmp sgt i32 %92, 1
  br i1 %cmp76, label %if.then77, label %if.end75.if.end79_crit_edge

if.end75.if.end79_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.then77:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  %call78 = call i32 @tvp5150_log_status(ptr noundef nonnull %call.i158)
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %if.end75.if.end79_crit_edge
  %call.i168 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #9
  call void @pm_runtime_enable(ptr noundef %dev) #9
  %call.i169 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 0) #9
  br label %cleanup

err:                                              ; preds = %if.end71.err_crit_edge, %if.then64.err_crit_edge, %if.end37.err_crit_edge
  %res.0 = phi i32 [ %call67, %if.then64.err_crit_edge ], [ %call72, %if.end71.err_crit_edge ], [ %81, %if.end37.err_crit_edge ]
  call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #9
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end79, %tvp5150_detect_version.exit.thread, %if.end23.cleanup_crit_edge, %do.end, %if.then12, %if.end4.cleanup_crit_edge, %tvp5150_init.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then12 ], [ %call18, %do.end ], [ %res.0, %err ], [ 0, %if.end79 ], [ -5, %entry.cleanup_crit_edge ], [ %retval.0.i, %tvp5150_init.exit ], [ -12, %if.end4.cleanup_crit_edge ], [ %call.i160, %if.end23.cleanup_crit_edge ], [ %call2.i, %tvp5150_detect_version.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fwnode_connector_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister_entity(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tvp5150_parse_dt(ptr noundef %decoder, ptr noundef %np) unnamed_addr #2 align 64 {
entry:
  %bus_cfg = alloca %struct.v4l2_fwnode_endpoint, align 4
  %ep = alloca %struct.of_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.v4l2_subdev, ptr %decoder, i32 0, i32 14
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %bus_cfg) #9
  %2 = call ptr @memset(ptr %bus_cfg, i32 0, i32 64)
  %call = tail call i32 @of_graph_get_endpoint_count(ptr noundef %np) #9
  %3 = add i32 %call, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %3)
  %4 = icmp ult i32 %3, -4
  br i1 %4, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.38) #12
  br label %cleanup129

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @of_graph_get_next_endpoint(ptr noundef %np, ptr noundef null) #9
  %cmp4.not218 = icmp eq ptr %call3, null
  br i1 %cmp4.not218, label %if.end.for.end59_crit_edge, label %cond.true.lr.ph

if.end.for.end59_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end59

cond.true.lr.ph:                                  ; preds = %if.end
  %connectors_num = getelementptr inbounds %struct.tvp5150, ptr %decoder, i32 0, i32 4
  %5 = getelementptr inbounds %struct.of_endpoint, ptr %ep, i32 0, i32 1
  %6 = getelementptr inbounds %struct.of_endpoint, ptr %ep, i32 0, i32 2
  %arrayidx44 = getelementptr %struct.tvp5150, ptr %decoder, i32 0, i32 2, i32 0
  %type = getelementptr %struct.tvp5150, ptr %decoder, i32 0, i32 2, i32 0, i32 0, i32 2
  %arrayidx44.1 = getelementptr %struct.tvp5150, ptr %decoder, i32 0, i32 2, i32 1
  %type.1 = getelementptr %struct.tvp5150, ptr %decoder, i32 0, i32 2, i32 1, i32 0, i32 2
  %arrayidx44.2 = getelementptr %struct.tvp5150, ptr %decoder, i32 0, i32 2, i32 2
  br label %cond.true

cond.true:                                        ; preds = %for.inc57.cond.true_crit_edge, %cond.true.lr.ph
  %ep_np.0220 = phi ptr [ %call3, %cond.true.lr.ph ], [ %call58, %for.inc57.cond.true_crit_edge ]
  %fwnode = getelementptr inbounds %struct.device_node, ptr %ep_np.0220, i32 0, i32 3
  %7 = ptrtoint ptr %connectors_num to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %connectors_num, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ep) #9
  %9 = ptrtoint ptr %ep to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %ep, align 4, !annotation !451
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %5, align 4, !annotation !451
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -1 to ptr), ptr %6, align 4, !annotation !451
  %call5 = call i32 @of_graph_parse_endpoint(ptr noundef nonnull %ep_np.0220, ptr noundef nonnull %ep) #9
  %12 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp6 = icmp ugt i32 %13, 1
  br i1 %cmp6, label %cond.true.do.body10_crit_edge, label %lor.lhs.false7

cond.true.do.body10_crit_edge:                    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body10

lor.lhs.false7:                                   ; preds = %cond.true
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp8 = icmp ugt i32 %15, 1
  br i1 %cmp8, label %lor.lhs.false7.do.body10_crit_edge, label %if.end22

lor.lhs.false7.do.body10_crit_edge:               ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body10

do.body10:                                        ; preds = %lor.lhs.false7.do.body10_crit_edge, %cond.true.do.body10_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tvp5150_parse_dt.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tvp5150_parse_dt, %if.then16)) #9
          to label %cleanup [label %if.then16], !srcloc !452

if.then16:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ep, align 4
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %5, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tvp5150_parse_dt.__UNIQUE_ID_ddebug322, ptr noundef %1, ptr noundef nonnull @.str.40, i32 noundef %17, i32 noundef %19) #9
  br label %cleanup.thread203

if.end22:                                         ; preds = %lor.lhs.false7
  %arrayidx = getelementptr %struct.tvp5150, ptr %decoder, i32 0, i32 2, i32 %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp24 = icmp eq i32 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp29 = icmp eq i32 %15, 0
  %or.cond194 = select i1 %cmp24, i1 true, i1 %cmp29
  br i1 %or.cond194, label %if.then30, label %for.body42

if.then30:                                        ; preds = %if.end22
  %call31 = call i32 @v4l2_fwnode_connector_parse(ptr noundef %fwnode, ptr noundef %arrayidx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.then30.err_put_crit_edge

if.then30.err_put_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_put

if.end34:                                         ; preds = %if.then30
  %call35 = call i32 @v4l2_fwnode_connector_add_link(ptr noundef %fwnode, ptr noundef %arrayidx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.err_put_crit_edge

if.end34.err_put_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_put

if.end38:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %connectors_num to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %connectors_num, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %connectors_num, align 4
  br label %cleanup.thread203

for.body42:                                       ; preds = %if.end22
  %22 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp46.not = icmp eq i32 %23, 2
  br i1 %cmp46.not, label %for.body42.for.end_crit_edge, label %for.body42.1

for.body42.for.end_crit_edge:                     ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body42.1:                                     ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %type.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %type.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp46.1.not = icmp eq i32 %25, 2
  %spec.select267 = select i1 %cmp46.1.not, ptr %arrayidx44.1, ptr %arrayidx44.2
  br label %for.end

for.end:                                          ; preds = %for.body42.1, %for.body42.for.end_crit_edge
  %arrayidx44.lcssa = phi ptr [ %arrayidx44, %for.body42.for.end_crit_edge ], [ %spec.select267, %for.body42.1 ]
  %call50 = call i32 @v4l2_fwnode_connector_add_link(ptr noundef %fwnode, ptr noundef %arrayidx44.lcssa) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %for.end.cleanup.thread203_crit_edge, label %for.end.err_put_crit_edge

for.end.err_put_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_put

for.end.cleanup.thread203_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread203

cleanup.thread203:                                ; preds = %for.end.cleanup.thread203_crit_edge, %if.end38, %if.then16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ep) #9
  br label %for.inc57

cleanup:                                          ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ep) #9
  br label %for.inc57

for.inc57:                                        ; preds = %cleanup, %cleanup.thread203
  %call58 = call ptr @of_graph_get_next_endpoint(ptr noundef %np, ptr noundef nonnull %ep_np.0220) #9
  %cmp4.not = icmp eq ptr %call58, null
  br i1 %cmp4.not, label %for.inc57.for.end59_crit_edge, label %for.inc57.cond.true_crit_edge

for.inc57.cond.true_crit_edge:                    ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.true

for.inc57.for.end59_crit_edge:                    ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end59

for.end59:                                        ; preds = %for.inc57.for.end59_crit_edge, %if.end.for.end59_crit_edge
  %26 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev1, align 4
  %connectors_num.i = getelementptr inbounds %struct.tvp5150, ptr %decoder, i32 0, i32 4
  %28 = ptrtoint ptr %connectors_num.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %connectors_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i, label %do.end.i, label %for.end59.for.body.i_crit_edge

for.end59.for.body.i_crit_edge:                   ; preds = %for.end59
  br label %for.body.i

do.end.i:                                         ; preds = %for.end59
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.46) #12
  br label %err_free

for.cond.i:                                       ; preds = %if.end76.i
  %inc.i = add nuw i32 %i.0134.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %29
  br i1 %exitcond.not.i, label %for.cond64.preheader, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond64.preheader:                             ; preds = %for.cond.i
  %30 = ptrtoint ptr %connectors_num.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %connectors_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp66224.not = icmp eq i32 %31, 0
  br i1 %cmp66224.not, label %for.cond64.preheader.for.end87_crit_edge, label %for.cond64.preheader.for.body67_crit_edge

for.cond64.preheader.for.body67_crit_edge:        ; preds = %for.cond64.preheader
  br label %for.body67

for.cond64.preheader.for.end87_crit_edge:         ; preds = %for.cond64.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end87

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.end59.for.body.i_crit_edge
  %i.0134.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.end59.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.tvp5150, ptr %decoder, i32 0, i32 2, i32 %i.0134.i
  %type.i = getelementptr inbounds %struct.v4l2_fwnode_connector, ptr %arrayidx.i, i32 0, i32 2
  %32 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %type.i, align 8
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.250)
  switch i32 %33, label %for.body.i.if.end76.i_crit_edge [
    i32 1, label %if.then4.i
    i32 2, label %if.then32.i
  ]

for.body.i.if.end76.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76.i

if.then4.i:                                       ; preds = %for.body.i
  %nr_of_links.i = getelementptr inbounds %struct.v4l2_fwnode_connector, ptr %arrayidx.i, i32 0, i32 4
  %35 = ptrtoint ptr %nr_of_links.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nr_of_links.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp5.not.i = icmp eq i32 %36, 1
  br i1 %cmp5.not.i, label %if.end10.i, label %do.end9.i

do.end9.i:                                        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.49) #12
  br label %err_free

if.end10.i:                                       ; preds = %if.then4.i
  %links.i = getelementptr inbounds %struct.v4l2_fwnode_connector, ptr %arrayidx.i, i32 0, i32 3
  %37 = ptrtoint ptr %links.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %links.i, align 4
  %cmp15.not.i = icmp eq ptr %38, %links.i
  %tobool17.not126.i = icmp eq ptr %38, null
  %tobool17.not.i = or i1 %cmp15.not.i, %tobool17.not126.i
  br i1 %tobool17.not.i, label %do.end21.i, label %if.end22.i

do.end21.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.52) #12
  br label %err_free

if.end22.i:                                       ; preds = %if.end10.i
  %remote_id.i = getelementptr inbounds %struct.v4l2_connector_link, ptr %38, i32 0, i32 1, i32 5
  %39 = ptrtoint ptr %remote_id.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %remote_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp23.i = icmp eq i32 %40, 1
  br i1 %cmp23.i, label %do.end27.i, label %if.end22.i.if.end76.i_crit_edge

if.end22.i.if.end76.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76.i

do.end27.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.55) #12
  br label %err_free

if.then32.i:                                      ; preds = %for.body.i
  %nr_of_links33.i = getelementptr inbounds %struct.v4l2_fwnode_connector, ptr %arrayidx.i, i32 0, i32 4
  %41 = ptrtoint ptr %nr_of_links33.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nr_of_links33.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %cmp34.not.i = icmp eq i32 %42, 2
  br i1 %cmp34.not.i, label %if.end39.i, label %do.end38.i

do.end38.i:                                       ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.58) #12
  br label %err_free

if.end39.i:                                       ; preds = %if.then32.i
  %links41.i = getelementptr inbounds %struct.v4l2_fwnode_connector, ptr %arrayidx.i, i32 0, i32 3
  %43 = ptrtoint ptr %links41.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %links41.i, align 4
  %cmp49.not.i = icmp eq ptr %44, %links41.i
  %tobool57.not125.i = icmp eq ptr %44, null
  %tobool57.not.i = or i1 %cmp49.not.i, %tobool57.not125.i
  br i1 %tobool57.not.i, label %do.end61.i, label %if.end62.i

do.end61.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.61) #12
  br label %err_free

if.end62.i:                                       ; preds = %if.end39.i
  %prev.i = getelementptr inbounds %struct.v4l2_fwnode_connector, ptr %arrayidx.i, i32 0, i32 3, i32 1
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i, align 4
  %remote_port.i = getelementptr inbounds %struct.v4l2_connector_link, ptr %44, i32 0, i32 1, i32 4
  %47 = ptrtoint ptr %remote_port.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %remote_port.i, align 4
  %remote_port69.i = getelementptr inbounds %struct.v4l2_connector_link, ptr %46, i32 0, i32 1, i32 4
  %49 = ptrtoint ptr %remote_port69.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %remote_port69.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp70.i = icmp eq i32 %48, %50
  br i1 %cmp70.i, label %do.end74.i, label %if.end62.i.if.end76.i_crit_edge

if.end62.i.if.end76.i_crit_edge:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76.i

do.end74.i:                                       ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.64) #12
  br label %err_free

if.end76.i:                                       ; preds = %if.end62.i.if.end76.i_crit_edge, %if.end22.i.if.end76.i_crit_edge, %for.body.i.if.end76.i_crit_edge
  %connector.i = getelementptr inbounds %struct.v4l2_fwnode_connector, ptr %arrayidx.i, i32 0, i32 5
  %51 = ptrtoint ptr %connector.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %connector.i, align 8
  %and.i = and i64 %52, 16775167
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool77.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool77.not.i, label %do.end81.i, label %for.cond.i

do.end81.i:                                       ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.67, ptr noundef %54) #12
  br label %err_free

for.body67:                                       ; preds = %for.body67.for.body67_crit_edge, %for.cond64.preheader.for.body67_crit_edge
  %i.1225 = phi i32 [ %inc86, %for.body67.for.body67_crit_edge ], [ 0, %for.cond64.preheader.for.body67_crit_edge ]
  %arrayidx69 = getelementptr %struct.tvp5150, ptr %decoder, i32 0, i32 2, i32 %i.1225
  %flags71 = getelementptr %struct.tvp5150, ptr %decoder, i32 0, i32 2, i32 %i.1225, i32 1, i32 4
  %55 = ptrtoint ptr %flags71 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 2, ptr %flags71, align 4
  %type72 = getelementptr inbounds %struct.v4l2_fwnode_connector, ptr %arrayidx69, i32 0, i32 2
  %56 = ptrtoint ptr %type72 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %type72, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %57)
  %cmp73 = icmp eq i32 %57, 2
  %cond74 = select i1 %cmp73, i32 196610, i32 196611
  %function = getelementptr %struct.tvp5150, ptr %decoder, i32 0, i32 2, i32 %i.1225, i32 1, i32 3
  %58 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %cond74, ptr %function, align 8
  %59 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx69, align 8
  %label = getelementptr inbounds %struct.v4l2_fwnode_connector, ptr %arrayidx69, i32 0, i32 1
  %61 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %label, align 4
  %tobool76.not = icmp eq ptr %62, null
  %spec.select = select i1 %tobool76.not, ptr @.str.42, ptr %62
  %call82 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %1, i32 noundef 3264, ptr noundef nonnull @.str.41, ptr noundef %60, ptr noundef nonnull %spec.select) #9
  %name84 = getelementptr %struct.tvp5150, ptr %decoder, i32 0, i32 2, i32 %i.1225, i32 1, i32 1
  %63 = ptrtoint ptr %name84 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call82, ptr %name84, align 8
  %inc86 = add nuw i32 %i.1225, 1
  %64 = ptrtoint ptr %connectors_num.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %connectors_num.i, align 4
  %cmp66 = icmp ult i32 %inc86, %65
  br i1 %cmp66, label %for.body67.for.body67_crit_edge, label %for.body67.for.end87_crit_edge

for.body67.for.end87_crit_edge:                   ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end87

for.body67.for.body67_crit_edge:                  ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body67

for.end87:                                        ; preds = %for.body67.for.end87_crit_edge, %for.cond64.preheader.for.end87_crit_edge
  %call88 = call ptr @of_graph_get_endpoint_by_regs(ptr noundef %np, i32 noundef 2, i32 noundef 0) #9
  %tobool89.not = icmp eq ptr %call88, null
  br i1 %tobool89.not, label %if.then90, label %cond.end101

if.then90:                                        ; preds = %for.end87
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.44) #12
  br label %err_free

cond.end101:                                      ; preds = %for.end87
  %fwnode99 = getelementptr inbounds %struct.device_node, ptr %call88, i32 0, i32 3
  %call103 = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef %fwnode99, ptr noundef nonnull %bus_cfg) #9
  call void @of_node_put(ptr noundef nonnull %call88) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end106, label %cond.end101.err_free_crit_edge

cond.end101.err_free_crit_edge:                   ; preds = %cond.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free

if.end106:                                        ; preds = %cond.end101
  %bus_type = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg, i32 0, i32 1
  %66 = ptrtoint ptr %bus_type to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %bus_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp108 = icmp eq i32 %67, 1
  br i1 %cmp108, label %land.lhs.true109, label %if.end106.if.end118_crit_edge

if.end106.if.end118_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end118

land.lhs.true109:                                 ; preds = %if.end106
  %bus = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg, i32 0, i32 2
  %68 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %bus, align 4
  %70 = and i32 %69, 2068
  call void @__sanitizer_cov_trace_const_cmp4(i32 2068, i32 %70)
  %.not = icmp eq i32 %70, 2068
  br i1 %.not, label %land.lhs.true109.if.end118_crit_edge, label %land.lhs.true109.err_free_crit_edge

land.lhs.true109.err_free_crit_edge:              ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free

land.lhs.true109.if.end118_crit_edge:             ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end118

if.end118:                                        ; preds = %land.lhs.true109.if.end118_crit_edge, %if.end106.if.end118_crit_edge
  %mbus_type = getelementptr inbounds %struct.tvp5150, ptr %decoder, i32 0, i32 18
  %71 = ptrtoint ptr %mbus_type to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %67, ptr %mbus_type, align 8
  br label %cleanup129

err_put:                                          ; preds = %for.end.err_put_crit_edge, %if.end34.err_put_crit_edge, %if.then30.err_put_crit_edge
  %ret.2.ph = phi i32 [ %call50, %for.end.err_put_crit_edge ], [ %call35, %if.end34.err_put_crit_edge ], [ %call31, %if.then30.err_put_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ep) #9
  call void @of_node_put(ptr noundef nonnull %ep_np.0220) #9
  br label %err_free

err_free:                                         ; preds = %err_put, %land.lhs.true109.err_free_crit_edge, %cond.end101.err_free_crit_edge, %if.then90, %do.end81.i, %do.end74.i, %do.end61.i, %do.end38.i, %do.end27.i, %do.end21.i, %do.end9.i, %do.end.i
  %ret.3 = phi i32 [ %ret.2.ph, %err_put ], [ %call103, %cond.end101.err_free_crit_edge ], [ -22, %if.then90 ], [ -22, %land.lhs.true109.err_free_crit_edge ], [ -22, %do.end9.i ], [ -22, %do.end21.i ], [ -22, %do.end27.i ], [ -22, %do.end38.i ], [ -22, %do.end61.i ], [ -22, %do.end74.i ], [ -22, %do.end81.i ], [ -19, %do.end.i ]
  %arrayidx124 = getelementptr %struct.tvp5150, ptr %decoder, i32 0, i32 2, i32 0
  call void @v4l2_fwnode_connector_free(ptr noundef %arrayidx124) #9
  %arrayidx124.1 = getelementptr %struct.tvp5150, ptr %decoder, i32 0, i32 2, i32 1
  call void @v4l2_fwnode_connector_free(ptr noundef %arrayidx124.1) #9
  %arrayidx124.2 = getelementptr %struct.tvp5150, ptr %decoder, i32 0, i32 2, i32 2
  call void @v4l2_fwnode_connector_free(ptr noundef %arrayidx124.2) #9
  br label %cleanup129

cleanup129:                                       ; preds = %err_free, %if.end118, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end118 ], [ %ret.3, %err_free ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg) #9
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu_items(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @tvp5150_read_std(ptr nocapture noundef readonly %sd) unnamed_addr #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !451
  %regmap.i = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 7
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 8
  %call1.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 140, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %entry.tvp5150_read.exit_crit_edge, label %if.end.i

entry.tvp5150_read.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  br label %tvp5150_read.exit

tvp5150_read.exit:                                ; preds = %if.end.i, %entry.tvp5150_read.exit_crit_edge
  %retval.0.i = phi i32 [ %4, %if.end.i ], [ %call1.i, %entry.tvp5150_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  %and = and i32 %retval.0.i, 15
  %5 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.251)
  switch i32 %and, label %sw.default [
    i32 1, label %tvp5150_read.exit.cleanup_crit_edge
    i32 3, label %sw.bb1
    i32 5, label %sw.bb2
    i32 7, label %sw.bb3
    i32 9, label %sw.bb4
    i32 11, label %sw.bb5
  ]

tvp5150_read.exit.cleanup_crit_edge:              ; preds = %tvp5150_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb1:                                           ; preds = %tvp5150_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb2:                                           ; preds = %tvp5150_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb3:                                           ; preds = %tvp5150_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb4:                                           ; preds = %tvp5150_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb5:                                           ; preds = %tvp5150_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.default:                                       ; preds = %tvp5150_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %tvp5150_read.exit.cleanup_crit_edge
  %retval.0 = phi i64 [ 0, %sw.default ], [ 16711680, %sw.bb5 ], [ 16384, %sw.bb4 ], [ 1536, %sw.bb3 ], [ 256, %sw.bb2 ], [ 255, %sw.bb1 ], [ 45056, %tvp5150_read.exit.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp5150_reset(ptr noundef %sd, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 7
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 8
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry
  %2 = phi i8 [ 0, %entry ], [ %8, %while.body.i.while.body.i_crit_edge ]
  %regs.addr.02.i = phi ptr [ @tvp5150_init_default, %entry ], [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ]
  %conv.i = zext i8 %2 to i32
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 8
  %value.i = getelementptr inbounds %struct.i2c_reg_value, ptr %regs.addr.02.i, i32 0, i32 1
  %5 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %value.i, align 1
  %conv4.i = zext i8 %6 to i32
  %call5.i = tail call i32 @regmap_write(ptr noundef %4, i32 noundef %conv.i, i32 noundef %conv4.i) #9
  %incdec.ptr.i = getelementptr %struct.i2c_reg_value, ptr %regs.addr.02.i, i32 1
  %7 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %incdec.ptr.i, align 1
  %cmp.not.i = icmp eq i8 %8, -1
  br i1 %cmp.not.i, label %tvp5150_write_inittab.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

tvp5150_write_inittab.exit:                       ; preds = %while.body.i
  %irq = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 8
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  %. = select i1 %tobool.not, i32 2, i32 0
  %.23 = select i1 %tobool.not, i32 4, i32 5
  %not.tobool.not = xor i1 %tobool.not, true
  %.24 = zext i1 %not.tobool.not to i32
  %call5 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 15, i32 noundef %.) #9
  %call6 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 194, i32 noundef %.23) #9
  %call7 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 30, i32 noundef %.24) #9
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 8
  %call1.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 207, i32 noundef 0) #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %tvp5150_write_inittab.exit
  %i.01.i = phi i32 [ 208, %tvp5150_write_inittab.exit ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %call2.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef %i.01.i, i32 noundef 255) #9
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 252
  br i1 %exitcond.not.i, label %for.body.i.for.body5.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.for.body5.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body5.i

for.body5.i:                                      ; preds = %cleanup.i.for.body5.i_crit_edge, %for.body.i.for.body5.i_crit_edge
  %j.03.i = phi i32 [ %inc21.i, %cleanup.i.for.body5.i_crit_edge ], [ 0, %for.body.i.for.body5.i_crit_edge ]
  %type.i = getelementptr [13 x %struct.i2c_vbi_ram_value], ptr @vbi_ram_default, i32 0, i32 %j.03.i, i32 1
  %13 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %for.body5.i.cleanup.i_crit_edge, label %if.end.i

for.body5.i.cleanup.i_crit_edge:                  ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr [13 x %struct.i2c_vbi_ram_value], ptr @vbi_ram_default, i32 0, i32 %j.03.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx.i, align 4
  %17 = lshr i16 %16, 8
  %18 = zext i16 %17 to i32
  %call6.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 197, i32 noundef %18) #9
  %conv8.i = zext i16 %16 to i32
  %call9.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 196, i32 noundef %conv8.i) #9
  %arrayidx14.i = getelementptr [13 x %struct.i2c_vbi_ram_value], ptr @vbi_ram_default, i32 0, i32 %j.03.i, i32 2, i32 0
  %19 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx14.i, align 4
  %conv15.i = zext i8 %20 to i32
  %call16.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 195, i32 noundef %conv15.i) #9
  %arrayidx14.1.i = getelementptr [13 x %struct.i2c_vbi_ram_value], ptr @vbi_ram_default, i32 0, i32 %j.03.i, i32 2, i32 1
  %21 = ptrtoint ptr %arrayidx14.1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx14.1.i, align 1
  %conv15.1.i = zext i8 %22 to i32
  %call16.1.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 195, i32 noundef %conv15.1.i) #9
  %arrayidx14.2.i = getelementptr [13 x %struct.i2c_vbi_ram_value], ptr @vbi_ram_default, i32 0, i32 %j.03.i, i32 2, i32 2
  %23 = ptrtoint ptr %arrayidx14.2.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx14.2.i, align 2
  %conv15.2.i = zext i8 %24 to i32
  %call16.2.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 195, i32 noundef %conv15.2.i) #9
  %arrayidx14.3.i = getelementptr [13 x %struct.i2c_vbi_ram_value], ptr @vbi_ram_default, i32 0, i32 %j.03.i, i32 2, i32 3
  %25 = ptrtoint ptr %arrayidx14.3.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx14.3.i, align 1
  %conv15.3.i = zext i8 %26 to i32
  %call16.3.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 195, i32 noundef %conv15.3.i) #9
  %arrayidx14.4.i = getelementptr [13 x %struct.i2c_vbi_ram_value], ptr @vbi_ram_default, i32 0, i32 %j.03.i, i32 2, i32 4
  %27 = ptrtoint ptr %arrayidx14.4.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx14.4.i, align 4
  %conv15.4.i = zext i8 %28 to i32
  %call16.4.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 195, i32 noundef %conv15.4.i) #9
  %arrayidx14.5.i = getelementptr [13 x %struct.i2c_vbi_ram_value], ptr @vbi_ram_default, i32 0, i32 %j.03.i, i32 2, i32 5
  %29 = ptrtoint ptr %arrayidx14.5.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx14.5.i, align 1
  %conv15.5.i = zext i8 %30 to i32
  %call16.5.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 195, i32 noundef %conv15.5.i) #9
  %arrayidx14.6.i = getelementptr [13 x %struct.i2c_vbi_ram_value], ptr @vbi_ram_default, i32 0, i32 %j.03.i, i32 2, i32 6
  %31 = ptrtoint ptr %arrayidx14.6.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx14.6.i, align 2
  %conv15.6.i = zext i8 %32 to i32
  %call16.6.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 195, i32 noundef %conv15.6.i) #9
  %arrayidx14.7.i = getelementptr [13 x %struct.i2c_vbi_ram_value], ptr @vbi_ram_default, i32 0, i32 %j.03.i, i32 2, i32 7
  %33 = ptrtoint ptr %arrayidx14.7.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx14.7.i, align 1
  %conv15.7.i = zext i8 %34 to i32
  %call16.7.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 195, i32 noundef %conv15.7.i) #9
  %arrayidx14.8.i = getelementptr [13 x %struct.i2c_vbi_ram_value], ptr @vbi_ram_default, i32 0, i32 %j.03.i, i32 2, i32 8
  %35 = ptrtoint ptr %arrayidx14.8.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx14.8.i, align 4
  %conv15.8.i = zext i8 %36 to i32
  %call16.8.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 195, i32 noundef %conv15.8.i) #9
  %arrayidx14.9.i = getelementptr [13 x %struct.i2c_vbi_ram_value], ptr @vbi_ram_default, i32 0, i32 %j.03.i, i32 2, i32 9
  %37 = ptrtoint ptr %arrayidx14.9.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx14.9.i, align 1
  %conv15.9.i = zext i8 %38 to i32
  %call16.9.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 195, i32 noundef %conv15.9.i) #9
  %arrayidx14.10.i = getelementptr [13 x %struct.i2c_vbi_ram_value], ptr @vbi_ram_default, i32 0, i32 %j.03.i, i32 2, i32 10
  %39 = ptrtoint ptr %arrayidx14.10.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx14.10.i, align 2
  %conv15.10.i = zext i8 %40 to i32
  %call16.10.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 195, i32 noundef %conv15.10.i) #9
  %arrayidx14.11.i = getelementptr [13 x %struct.i2c_vbi_ram_value], ptr @vbi_ram_default, i32 0, i32 %j.03.i, i32 2, i32 11
  %41 = ptrtoint ptr %arrayidx14.11.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx14.11.i, align 1
  %conv15.11.i = zext i8 %42 to i32
  %call16.11.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 195, i32 noundef %conv15.11.i) #9
  %arrayidx14.12.i = getelementptr [13 x %struct.i2c_vbi_ram_value], ptr @vbi_ram_default, i32 0, i32 %j.03.i, i32 2, i32 12
  %43 = ptrtoint ptr %arrayidx14.12.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx14.12.i, align 4
  %conv15.12.i = zext i8 %44 to i32
  %call16.12.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 195, i32 noundef %conv15.12.i) #9
  %arrayidx14.13.i = getelementptr [13 x %struct.i2c_vbi_ram_value], ptr @vbi_ram_default, i32 0, i32 %j.03.i, i32 2, i32 13
  %45 = ptrtoint ptr %arrayidx14.13.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx14.13.i, align 1
  %conv15.13.i = zext i8 %46 to i32
  %call16.13.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 195, i32 noundef %conv15.13.i) #9
  %arrayidx14.14.i = getelementptr [13 x %struct.i2c_vbi_ram_value], ptr @vbi_ram_default, i32 0, i32 %j.03.i, i32 2, i32 14
  %47 = ptrtoint ptr %arrayidx14.14.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx14.14.i, align 2
  %conv15.14.i = zext i8 %48 to i32
  %call16.14.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 195, i32 noundef %conv15.14.i) #9
  %arrayidx14.15.i = getelementptr [13 x %struct.i2c_vbi_ram_value], ptr @vbi_ram_default, i32 0, i32 %j.03.i, i32 2, i32 15
  %49 = ptrtoint ptr %arrayidx14.15.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx14.15.i, align 1
  %conv15.15.i = zext i8 %50 to i32
  %call16.15.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 195, i32 noundef %conv15.15.i) #9
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %for.body5.i.cleanup.i_crit_edge
  %inc21.i = add nuw nsw i32 %j.03.i, 1
  %exitcond6.not.i = icmp eq i32 %inc21.i, 13
  br i1 %exitcond6.not.i, label %tvp5150_vdp_init.exit, label %cleanup.i.for.body5.i_crit_edge

cleanup.i.for.body5.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body5.i

tvp5150_vdp_init.exit:                            ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tvp5150_selmux(ptr noundef %sd)
  %hdl = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 5
  %call9 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp5150_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %active = alloca i32, align 4
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.tvp5150, ptr %dev_id, i32 0, i32 7
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %active) #9
  %2 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %active, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #9
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %status, align 4
  %call = call i32 @regmap_read(ptr noundef %1, i32 noundef 192, ptr noundef nonnull %status) #9
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end19, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 @regmap_write(ptr noundef %1, i32 noundef 192, i32 noundef %5) #9
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  %and = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.then3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.then
  %and4 = and i32 %7, 128
  %lock = getelementptr inbounds %struct.tvp5150, ptr %dev_id, i32 0, i32 15
  %and4.lobit = lshr exact i32 %and4, 7
  %8 = trunc i32 %and4.lobit to i8
  %9 = ptrtoint ptr %lock to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %lock, align 8
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp sgt i32 %10, 0
  br i1 %cmp, label %do.end, label %if.then3.do.end12_crit_edge

if.then3.do.end12_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %dev = getelementptr inbounds %struct.v4l2_subdev, ptr %dev_id, i32 0, i32 14
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %cond = select i1 %tobool5.not, ptr @.str.96, ptr @.str.95
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %12, ptr noundef nonnull @.str.93, ptr noundef nonnull %cond) #12
  br label %do.end12

do.end12:                                         ; preds = %do.end, %if.then3.do.end12_crit_edge
  call void @v4l2_subdev_notify_event(ptr noundef %dev_id, ptr noundef nonnull @tvp5150_ev_fmt) #9
  %13 = ptrtoint ptr %lock to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %lock, align 8, !range !453
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool15.not = icmp eq i8 %14, 0
  br i1 %tobool15.not, label %do.end12.cond.end_crit_edge, label %cond.true

do.end12.cond.end_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  %oe = getelementptr inbounds %struct.tvp5150, ptr %dev_id, i32 0, i32 13
  %15 = ptrtoint ptr %oe to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %oe, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end12.cond.end_crit_edge
  %cond16 = phi i32 [ %16, %cond.true ], [ 0, %do.end12.cond.end_crit_edge ]
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 3, i32 noundef 13, i32 noundef %cond16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

if.end19:                                         ; preds = %entry
  %call20 = call i32 @regmap_read(ptr noundef %1, i32 noundef 135, ptr noundef nonnull %active) #9
  %17 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool21.not = icmp eq i32 %18, 0
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %if.then22

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then22:                                        ; preds = %if.end19
  %19 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %status, align 4
  %call23 = call i32 @regmap_read(ptr noundef %1, i32 noundef 134, ptr noundef nonnull %status) #9
  %20 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool24.not = icmp eq i32 %21, 0
  br i1 %tobool24.not, label %if.then22.cleanup_crit_edge, label %if.then25

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then25:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = call i32 @regmap_write(ptr noundef %1, i32 noundef 28, i32 noundef %21) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.then22.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %cond.end, %if.then.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %active) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp5150_log_status(ptr noundef readonly %sd) #2 align 64 {
entry:
  %val.i.i967 = alloca i32, align 4
  %buf.i968 = alloca [16 x i8], align 1
  %val.i.i939 = alloca i32, align 4
  %buf.i940 = alloca [16 x i8], align 1
  %val.i.i911 = alloca i32, align 4
  %buf.i912 = alloca [16 x i8], align 1
  %val.i.i883 = alloca i32, align 4
  %buf.i884 = alloca [16 x i8], align 1
  %val.i.i855 = alloca i32, align 4
  %buf.i856 = alloca [16 x i8], align 1
  %val.i848 = alloca i32, align 4
  %val.i841 = alloca i32, align 4
  %val.i834 = alloca i32, align 4
  %val.i827 = alloca i32, align 4
  %val.i820 = alloca i32, align 4
  %val.i813 = alloca i32, align 4
  %val.i806 = alloca i32, align 4
  %val.i799 = alloca i32, align 4
  %val.i792 = alloca i32, align 4
  %val.i785 = alloca i32, align 4
  %val.i778 = alloca i32, align 4
  %val.i771 = alloca i32, align 4
  %val.i764 = alloca i32, align 4
  %val.i757 = alloca i32, align 4
  %val.i.i729 = alloca i32, align 4
  %buf.i730 = alloca [16 x i8], align 1
  %val.i.i = alloca i32, align 4
  %buf.i = alloca [16 x i8], align 1
  %val.i722 = alloca i32, align 4
  %val.i715 = alloca i32, align 4
  %val.i708 = alloca i32, align 4
  %val.i701 = alloca i32, align 4
  %val.i694 = alloca i32, align 4
  %val.i687 = alloca i32, align 4
  %val.i680 = alloca i32, align 4
  %val.i673 = alloca i32, align 4
  %val.i666 = alloca i32, align 4
  %val.i659 = alloca i32, align 4
  %val.i652 = alloca i32, align 4
  %val.i645 = alloca i32, align 4
  %val.i638 = alloca i32, align 4
  %val.i631 = alloca i32, align 4
  %val.i624 = alloca i32, align 4
  %val.i617 = alloca i32, align 4
  %val.i610 = alloca i32, align 4
  %val.i603 = alloca i32, align 4
  %val.i596 = alloca i32, align 4
  %val.i589 = alloca i32, align 4
  %val.i582 = alloca i32, align 4
  %val.i575 = alloca i32, align 4
  %val.i568 = alloca i32, align 4
  %val.i561 = alloca i32, align 4
  %val.i554 = alloca i32, align 4
  %val.i547 = alloca i32, align 4
  %val.i540 = alloca i32, align 4
  %val.i533 = alloca i32, align 4
  %val.i526 = alloca i32, align 4
  %val.i519 = alloca i32, align 4
  %val.i512 = alloca i32, align 4
  %val.i505 = alloca i32, align 4
  %val.i498 = alloca i32, align 4
  %val.i491 = alloca i32, align 4
  %val.i484 = alloca i32, align 4
  %val.i477 = alloca i32, align 4
  %val.i470 = alloca i32, align 4
  %val.i463 = alloca i32, align 4
  %val.i456 = alloca i32, align 4
  %val.i449 = alloca i32, align 4
  %val.i442 = alloca i32, align 4
  %val.i435 = alloca i32, align 4
  %val.i428 = alloca i32, align 4
  %val.i421 = alloca i32, align 4
  %val.i414 = alloca i32, align 4
  %val.i407 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 14
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !451
  %regmap.i = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 7
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 8
  %call1.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %entry.tvp5150_read.exit_crit_edge, label %if.end.i

entry.tvp5150_read.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  br label %tvp5150_read.exit

tvp5150_read.exit:                                ; preds = %if.end.i, %entry.tvp5150_read.exit_crit_edge
  %retval.0.i = phi i32 [ %6, %if.end.i ], [ %call1.i, %entry.tvp5150_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %1, ptr noundef nonnull @.str.97, i32 noundef %retval.0.i) #12
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i407) #9
  %9 = ptrtoint ptr %val.i407 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %val.i407, align 4, !annotation !451
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 8
  %call1.i409 = call i32 @regmap_read(ptr noundef %11, i32 noundef 1, ptr noundef nonnull %val.i407) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i409)
  %cmp.i410 = icmp slt i32 %call1.i409, 0
  br i1 %cmp.i410, label %tvp5150_read.exit.tvp5150_read.exit413_crit_edge, label %if.end.i411

tvp5150_read.exit.tvp5150_read.exit413_crit_edge: ; preds = %tvp5150_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit413

if.end.i411:                                      ; preds = %tvp5150_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %val.i407 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val.i407, align 4
  br label %tvp5150_read.exit413

tvp5150_read.exit413:                             ; preds = %if.end.i411, %tvp5150_read.exit.tvp5150_read.exit413_crit_edge
  %retval.0.i412 = phi i32 [ %13, %if.end.i411 ], [ %call1.i409, %tvp5150_read.exit.tvp5150_read.exit413_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i407) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %8, ptr noundef nonnull @.str.100, i32 noundef %retval.0.i412) #12
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i414) #9
  %16 = ptrtoint ptr %val.i414 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %val.i414, align 4, !annotation !451
  %17 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i, align 8
  %call1.i416 = call i32 @regmap_read(ptr noundef %18, i32 noundef 2, ptr noundef nonnull %val.i414) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i416)
  %cmp.i417 = icmp slt i32 %call1.i416, 0
  br i1 %cmp.i417, label %tvp5150_read.exit413.tvp5150_read.exit420_crit_edge, label %if.end.i418

tvp5150_read.exit413.tvp5150_read.exit420_crit_edge: ; preds = %tvp5150_read.exit413
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit420

if.end.i418:                                      ; preds = %tvp5150_read.exit413
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %val.i414 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val.i414, align 4
  br label %tvp5150_read.exit420

tvp5150_read.exit420:                             ; preds = %if.end.i418, %tvp5150_read.exit413.tvp5150_read.exit420_crit_edge
  %retval.0.i419 = phi i32 [ %20, %if.end.i418 ], [ %call1.i416, %tvp5150_read.exit413.tvp5150_read.exit420_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i414) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %15, ptr noundef nonnull @.str.103, i32 noundef %retval.0.i419) #12
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i421) #9
  %23 = ptrtoint ptr %val.i421 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %val.i421, align 4, !annotation !451
  %24 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i, align 8
  %call1.i423 = call i32 @regmap_read(ptr noundef %25, i32 noundef 3, ptr noundef nonnull %val.i421) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i423)
  %cmp.i424 = icmp slt i32 %call1.i423, 0
  br i1 %cmp.i424, label %tvp5150_read.exit420.tvp5150_read.exit427_crit_edge, label %if.end.i425

tvp5150_read.exit420.tvp5150_read.exit427_crit_edge: ; preds = %tvp5150_read.exit420
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit427

if.end.i425:                                      ; preds = %tvp5150_read.exit420
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %val.i421 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val.i421, align 4
  br label %tvp5150_read.exit427

tvp5150_read.exit427:                             ; preds = %if.end.i425, %tvp5150_read.exit420.tvp5150_read.exit427_crit_edge
  %retval.0.i426 = phi i32 [ %27, %if.end.i425 ], [ %call1.i423, %tvp5150_read.exit420.tvp5150_read.exit427_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i421) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %22, ptr noundef nonnull @.str.106, i32 noundef %retval.0.i426) #12
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i428) #9
  %30 = ptrtoint ptr %val.i428 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %val.i428, align 4, !annotation !451
  %31 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap.i, align 8
  %call1.i430 = call i32 @regmap_read(ptr noundef %32, i32 noundef 4, ptr noundef nonnull %val.i428) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i430)
  %cmp.i431 = icmp slt i32 %call1.i430, 0
  br i1 %cmp.i431, label %tvp5150_read.exit427.tvp5150_read.exit434_crit_edge, label %if.end.i432

tvp5150_read.exit427.tvp5150_read.exit434_crit_edge: ; preds = %tvp5150_read.exit427
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit434

if.end.i432:                                      ; preds = %tvp5150_read.exit427
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %val.i428 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val.i428, align 4
  br label %tvp5150_read.exit434

tvp5150_read.exit434:                             ; preds = %if.end.i432, %tvp5150_read.exit427.tvp5150_read.exit434_crit_edge
  %retval.0.i433 = phi i32 [ %34, %if.end.i432 ], [ %call1.i430, %tvp5150_read.exit427.tvp5150_read.exit434_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i428) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %29, ptr noundef nonnull @.str.109, i32 noundef %retval.0.i433) #12
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i435) #9
  %37 = ptrtoint ptr %val.i435 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %val.i435, align 4, !annotation !451
  %38 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap.i, align 8
  %call1.i437 = call i32 @regmap_read(ptr noundef %39, i32 noundef 6, ptr noundef nonnull %val.i435) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i437)
  %cmp.i438 = icmp slt i32 %call1.i437, 0
  br i1 %cmp.i438, label %tvp5150_read.exit434.tvp5150_read.exit441_crit_edge, label %if.end.i439

tvp5150_read.exit434.tvp5150_read.exit441_crit_edge: ; preds = %tvp5150_read.exit434
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit441

if.end.i439:                                      ; preds = %tvp5150_read.exit434
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %val.i435 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %val.i435, align 4
  br label %tvp5150_read.exit441

tvp5150_read.exit441:                             ; preds = %if.end.i439, %tvp5150_read.exit434.tvp5150_read.exit441_crit_edge
  %retval.0.i440 = phi i32 [ %41, %if.end.i439 ], [ %call1.i437, %tvp5150_read.exit434.tvp5150_read.exit441_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i435) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %36, ptr noundef nonnull @.str.112, i32 noundef %retval.0.i440) #12
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i442) #9
  %44 = ptrtoint ptr %val.i442 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %val.i442, align 4, !annotation !451
  %45 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap.i, align 8
  %call1.i444 = call i32 @regmap_read(ptr noundef %46, i32 noundef 7, ptr noundef nonnull %val.i442) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i444)
  %cmp.i445 = icmp slt i32 %call1.i444, 0
  br i1 %cmp.i445, label %tvp5150_read.exit441.tvp5150_read.exit448_crit_edge, label %if.end.i446

tvp5150_read.exit441.tvp5150_read.exit448_crit_edge: ; preds = %tvp5150_read.exit441
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit448

if.end.i446:                                      ; preds = %tvp5150_read.exit441
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %val.i442 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %val.i442, align 4
  br label %tvp5150_read.exit448

tvp5150_read.exit448:                             ; preds = %if.end.i446, %tvp5150_read.exit441.tvp5150_read.exit448_crit_edge
  %retval.0.i447 = phi i32 [ %48, %if.end.i446 ], [ %call1.i444, %tvp5150_read.exit441.tvp5150_read.exit448_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i442) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i449) #9
  %49 = ptrtoint ptr %val.i449 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %val.i449, align 4, !annotation !451
  %50 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap.i, align 8
  %call1.i451 = call i32 @regmap_read(ptr noundef %51, i32 noundef 8, ptr noundef nonnull %val.i449) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i451)
  %cmp.i452 = icmp slt i32 %call1.i451, 0
  br i1 %cmp.i452, label %tvp5150_read.exit448.tvp5150_read.exit455_crit_edge, label %if.end.i453

tvp5150_read.exit448.tvp5150_read.exit455_crit_edge: ; preds = %tvp5150_read.exit448
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit455

if.end.i453:                                      ; preds = %tvp5150_read.exit448
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %val.i449 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %val.i449, align 4
  br label %tvp5150_read.exit455

tvp5150_read.exit455:                             ; preds = %if.end.i453, %tvp5150_read.exit448.tvp5150_read.exit455_crit_edge
  %retval.0.i454 = phi i32 [ %53, %if.end.i453 ], [ %call1.i451, %tvp5150_read.exit448.tvp5150_read.exit455_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i449) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i456) #9
  %54 = ptrtoint ptr %val.i456 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %val.i456, align 4, !annotation !451
  %55 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap.i, align 8
  %call1.i458 = call i32 @regmap_read(ptr noundef %56, i32 noundef 14, ptr noundef nonnull %val.i456) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i458)
  %cmp.i459 = icmp slt i32 %call1.i458, 0
  br i1 %cmp.i459, label %tvp5150_read.exit455.tvp5150_read.exit462_crit_edge, label %if.end.i460

tvp5150_read.exit455.tvp5150_read.exit462_crit_edge: ; preds = %tvp5150_read.exit455
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit462

if.end.i460:                                      ; preds = %tvp5150_read.exit455
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %val.i456 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %val.i456, align 4
  br label %tvp5150_read.exit462

tvp5150_read.exit462:                             ; preds = %if.end.i460, %tvp5150_read.exit455.tvp5150_read.exit462_crit_edge
  %retval.0.i461 = phi i32 [ %58, %if.end.i460 ], [ %call1.i458, %tvp5150_read.exit455.tvp5150_read.exit462_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i456) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %43, ptr noundef nonnull @.str.115, i32 noundef %retval.0.i447, i32 noundef %retval.0.i454, i32 noundef %retval.0.i461) #12
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i463) #9
  %61 = ptrtoint ptr %val.i463 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %val.i463, align 4, !annotation !451
  %62 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap.i, align 8
  %call1.i465 = call i32 @regmap_read(ptr noundef %63, i32 noundef 9, ptr noundef nonnull %val.i463) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i465)
  %cmp.i466 = icmp slt i32 %call1.i465, 0
  br i1 %cmp.i466, label %tvp5150_read.exit462.tvp5150_read.exit469_crit_edge, label %if.end.i467

tvp5150_read.exit462.tvp5150_read.exit469_crit_edge: ; preds = %tvp5150_read.exit462
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit469

if.end.i467:                                      ; preds = %tvp5150_read.exit462
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %val.i463 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %val.i463, align 4
  br label %tvp5150_read.exit469

tvp5150_read.exit469:                             ; preds = %if.end.i467, %tvp5150_read.exit462.tvp5150_read.exit469_crit_edge
  %retval.0.i468 = phi i32 [ %65, %if.end.i467 ], [ %call1.i465, %tvp5150_read.exit462.tvp5150_read.exit469_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i463) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %60, ptr noundef nonnull @.str.118, i32 noundef %retval.0.i468) #12
  %66 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i470) #9
  %68 = ptrtoint ptr %val.i470 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -1, ptr %val.i470, align 4, !annotation !451
  %69 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regmap.i, align 8
  %call1.i472 = call i32 @regmap_read(ptr noundef %70, i32 noundef 10, ptr noundef nonnull %val.i470) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i472)
  %cmp.i473 = icmp slt i32 %call1.i472, 0
  br i1 %cmp.i473, label %tvp5150_read.exit469.tvp5150_read.exit476_crit_edge, label %if.end.i474

tvp5150_read.exit469.tvp5150_read.exit476_crit_edge: ; preds = %tvp5150_read.exit469
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit476

if.end.i474:                                      ; preds = %tvp5150_read.exit469
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %val.i470 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %val.i470, align 4
  br label %tvp5150_read.exit476

tvp5150_read.exit476:                             ; preds = %if.end.i474, %tvp5150_read.exit469.tvp5150_read.exit476_crit_edge
  %retval.0.i475 = phi i32 [ %72, %if.end.i474 ], [ %call1.i472, %tvp5150_read.exit469.tvp5150_read.exit476_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i470) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %67, ptr noundef nonnull @.str.121, i32 noundef %retval.0.i475) #12
  %73 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i477) #9
  %75 = ptrtoint ptr %val.i477 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -1, ptr %val.i477, align 4, !annotation !451
  %76 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regmap.i, align 8
  %call1.i479 = call i32 @regmap_read(ptr noundef %77, i32 noundef 11, ptr noundef nonnull %val.i477) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i479)
  %cmp.i480 = icmp slt i32 %call1.i479, 0
  br i1 %cmp.i480, label %tvp5150_read.exit476.tvp5150_read.exit483_crit_edge, label %if.end.i481

tvp5150_read.exit476.tvp5150_read.exit483_crit_edge: ; preds = %tvp5150_read.exit476
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit483

if.end.i481:                                      ; preds = %tvp5150_read.exit476
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %val.i477 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %val.i477, align 4
  br label %tvp5150_read.exit483

tvp5150_read.exit483:                             ; preds = %if.end.i481, %tvp5150_read.exit476.tvp5150_read.exit483_crit_edge
  %retval.0.i482 = phi i32 [ %79, %if.end.i481 ], [ %call1.i479, %tvp5150_read.exit476.tvp5150_read.exit483_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i477) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %74, ptr noundef nonnull @.str.124, i32 noundef %retval.0.i482) #12
  %80 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i484) #9
  %82 = ptrtoint ptr %val.i484 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 -1, ptr %val.i484, align 4, !annotation !451
  %83 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regmap.i, align 8
  %call1.i486 = call i32 @regmap_read(ptr noundef %84, i32 noundef 12, ptr noundef nonnull %val.i484) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i486)
  %cmp.i487 = icmp slt i32 %call1.i486, 0
  br i1 %cmp.i487, label %tvp5150_read.exit483.tvp5150_read.exit490_crit_edge, label %if.end.i488

tvp5150_read.exit483.tvp5150_read.exit490_crit_edge: ; preds = %tvp5150_read.exit483
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit490

if.end.i488:                                      ; preds = %tvp5150_read.exit483
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %val.i484 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %val.i484, align 4
  br label %tvp5150_read.exit490

tvp5150_read.exit490:                             ; preds = %if.end.i488, %tvp5150_read.exit483.tvp5150_read.exit490_crit_edge
  %retval.0.i489 = phi i32 [ %86, %if.end.i488 ], [ %call1.i486, %tvp5150_read.exit483.tvp5150_read.exit490_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i484) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %81, ptr noundef nonnull @.str.127, i32 noundef %retval.0.i489) #12
  %87 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i491) #9
  %89 = ptrtoint ptr %val.i491 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -1, ptr %val.i491, align 4, !annotation !451
  %90 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regmap.i, align 8
  %call1.i493 = call i32 @regmap_read(ptr noundef %91, i32 noundef 13, ptr noundef nonnull %val.i491) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i493)
  %cmp.i494 = icmp slt i32 %call1.i493, 0
  br i1 %cmp.i494, label %tvp5150_read.exit490.tvp5150_read.exit497_crit_edge, label %if.end.i495

tvp5150_read.exit490.tvp5150_read.exit497_crit_edge: ; preds = %tvp5150_read.exit490
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit497

if.end.i495:                                      ; preds = %tvp5150_read.exit490
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %val.i491 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %val.i491, align 4
  br label %tvp5150_read.exit497

tvp5150_read.exit497:                             ; preds = %if.end.i495, %tvp5150_read.exit490.tvp5150_read.exit497_crit_edge
  %retval.0.i496 = phi i32 [ %93, %if.end.i495 ], [ %call1.i493, %tvp5150_read.exit490.tvp5150_read.exit497_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i491) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %88, ptr noundef nonnull @.str.130, i32 noundef %retval.0.i496) #12
  %94 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i498) #9
  %96 = ptrtoint ptr %val.i498 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 -1, ptr %val.i498, align 4, !annotation !451
  %97 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regmap.i, align 8
  %call1.i500 = call i32 @regmap_read(ptr noundef %98, i32 noundef 15, ptr noundef nonnull %val.i498) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i500)
  %cmp.i501 = icmp slt i32 %call1.i500, 0
  br i1 %cmp.i501, label %tvp5150_read.exit497.tvp5150_read.exit504_crit_edge, label %if.end.i502

tvp5150_read.exit497.tvp5150_read.exit504_crit_edge: ; preds = %tvp5150_read.exit497
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit504

if.end.i502:                                      ; preds = %tvp5150_read.exit497
  call void @__sanitizer_cov_trace_pc() #11
  %99 = ptrtoint ptr %val.i498 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %val.i498, align 4
  br label %tvp5150_read.exit504

tvp5150_read.exit504:                             ; preds = %if.end.i502, %tvp5150_read.exit497.tvp5150_read.exit504_crit_edge
  %retval.0.i503 = phi i32 [ %100, %if.end.i502 ], [ %call1.i500, %tvp5150_read.exit497.tvp5150_read.exit504_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i498) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %95, ptr noundef nonnull @.str.133, i32 noundef %retval.0.i503) #12
  %101 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i505) #9
  %103 = ptrtoint ptr %val.i505 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 -1, ptr %val.i505, align 4, !annotation !451
  %104 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regmap.i, align 8
  %call1.i507 = call i32 @regmap_read(ptr noundef %105, i32 noundef 17, ptr noundef nonnull %val.i505) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i507)
  %cmp.i508 = icmp slt i32 %call1.i507, 0
  br i1 %cmp.i508, label %tvp5150_read.exit504.tvp5150_read.exit511_crit_edge, label %if.end.i509

tvp5150_read.exit504.tvp5150_read.exit511_crit_edge: ; preds = %tvp5150_read.exit504
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit511

if.end.i509:                                      ; preds = %tvp5150_read.exit504
  call void @__sanitizer_cov_trace_pc() #11
  %106 = ptrtoint ptr %val.i505 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %val.i505, align 4
  br label %tvp5150_read.exit511

tvp5150_read.exit511:                             ; preds = %if.end.i509, %tvp5150_read.exit504.tvp5150_read.exit511_crit_edge
  %retval.0.i510 = phi i32 [ %107, %if.end.i509 ], [ %call1.i507, %tvp5150_read.exit504.tvp5150_read.exit511_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i505) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i512) #9
  %108 = ptrtoint ptr %val.i512 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 -1, ptr %val.i512, align 4, !annotation !451
  %109 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regmap.i, align 8
  %call1.i514 = call i32 @regmap_read(ptr noundef %110, i32 noundef 18, ptr noundef nonnull %val.i512) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i514)
  %cmp.i515 = icmp slt i32 %call1.i514, 0
  br i1 %cmp.i515, label %tvp5150_read.exit511.tvp5150_read.exit518_crit_edge, label %if.end.i516

tvp5150_read.exit511.tvp5150_read.exit518_crit_edge: ; preds = %tvp5150_read.exit511
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit518

if.end.i516:                                      ; preds = %tvp5150_read.exit511
  call void @__sanitizer_cov_trace_pc() #11
  %111 = ptrtoint ptr %val.i512 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %val.i512, align 4
  br label %tvp5150_read.exit518

tvp5150_read.exit518:                             ; preds = %if.end.i516, %tvp5150_read.exit511.tvp5150_read.exit518_crit_edge
  %retval.0.i517 = phi i32 [ %112, %if.end.i516 ], [ %call1.i514, %tvp5150_read.exit511.tvp5150_read.exit518_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i512) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %102, ptr noundef nonnull @.str.136, i32 noundef %retval.0.i510, i32 noundef %retval.0.i517) #12
  %113 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i519) #9
  %115 = ptrtoint ptr %val.i519 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 -1, ptr %val.i519, align 4, !annotation !451
  %116 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regmap.i, align 8
  %call1.i521 = call i32 @regmap_read(ptr noundef %117, i32 noundef 19, ptr noundef nonnull %val.i519) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i521)
  %cmp.i522 = icmp slt i32 %call1.i521, 0
  br i1 %cmp.i522, label %tvp5150_read.exit518.tvp5150_read.exit525_crit_edge, label %if.end.i523

tvp5150_read.exit518.tvp5150_read.exit525_crit_edge: ; preds = %tvp5150_read.exit518
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit525

if.end.i523:                                      ; preds = %tvp5150_read.exit518
  call void @__sanitizer_cov_trace_pc() #11
  %118 = ptrtoint ptr %val.i519 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %val.i519, align 4
  br label %tvp5150_read.exit525

tvp5150_read.exit525:                             ; preds = %if.end.i523, %tvp5150_read.exit518.tvp5150_read.exit525_crit_edge
  %retval.0.i524 = phi i32 [ %119, %if.end.i523 ], [ %call1.i521, %tvp5150_read.exit518.tvp5150_read.exit525_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i519) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i526) #9
  %120 = ptrtoint ptr %val.i526 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 -1, ptr %val.i526, align 4, !annotation !451
  %121 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %regmap.i, align 8
  %call1.i528 = call i32 @regmap_read(ptr noundef %122, i32 noundef 20, ptr noundef nonnull %val.i526) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i528)
  %cmp.i529 = icmp slt i32 %call1.i528, 0
  br i1 %cmp.i529, label %tvp5150_read.exit525.tvp5150_read.exit532_crit_edge, label %if.end.i530

tvp5150_read.exit525.tvp5150_read.exit532_crit_edge: ; preds = %tvp5150_read.exit525
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit532

if.end.i530:                                      ; preds = %tvp5150_read.exit525
  call void @__sanitizer_cov_trace_pc() #11
  %123 = ptrtoint ptr %val.i526 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %val.i526, align 4
  br label %tvp5150_read.exit532

tvp5150_read.exit532:                             ; preds = %if.end.i530, %tvp5150_read.exit525.tvp5150_read.exit532_crit_edge
  %retval.0.i531 = phi i32 [ %124, %if.end.i530 ], [ %call1.i528, %tvp5150_read.exit525.tvp5150_read.exit532_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i526) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %114, ptr noundef nonnull @.str.139, i32 noundef %retval.0.i524, i32 noundef %retval.0.i531) #12
  %125 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i533) #9
  %127 = ptrtoint ptr %val.i533 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 -1, ptr %val.i533, align 4, !annotation !451
  %128 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %regmap.i, align 8
  %call1.i535 = call i32 @regmap_read(ptr noundef %129, i32 noundef 21, ptr noundef nonnull %val.i533) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i535)
  %cmp.i536 = icmp slt i32 %call1.i535, 0
  br i1 %cmp.i536, label %tvp5150_read.exit532.tvp5150_read.exit539_crit_edge, label %if.end.i537

tvp5150_read.exit532.tvp5150_read.exit539_crit_edge: ; preds = %tvp5150_read.exit532
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit539

if.end.i537:                                      ; preds = %tvp5150_read.exit532
  call void @__sanitizer_cov_trace_pc() #11
  %130 = ptrtoint ptr %val.i533 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %val.i533, align 4
  br label %tvp5150_read.exit539

tvp5150_read.exit539:                             ; preds = %if.end.i537, %tvp5150_read.exit532.tvp5150_read.exit539_crit_edge
  %retval.0.i538 = phi i32 [ %131, %if.end.i537 ], [ %call1.i535, %tvp5150_read.exit532.tvp5150_read.exit539_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i533) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %126, ptr noundef nonnull @.str.142, i32 noundef %retval.0.i538) #12
  %132 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i540) #9
  %134 = ptrtoint ptr %val.i540 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 -1, ptr %val.i540, align 4, !annotation !451
  %135 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %regmap.i, align 8
  %call1.i542 = call i32 @regmap_read(ptr noundef %136, i32 noundef 22, ptr noundef nonnull %val.i540) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i542)
  %cmp.i543 = icmp slt i32 %call1.i542, 0
  br i1 %cmp.i543, label %tvp5150_read.exit539.tvp5150_read.exit546_crit_edge, label %if.end.i544

tvp5150_read.exit539.tvp5150_read.exit546_crit_edge: ; preds = %tvp5150_read.exit539
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit546

if.end.i544:                                      ; preds = %tvp5150_read.exit539
  call void @__sanitizer_cov_trace_pc() #11
  %137 = ptrtoint ptr %val.i540 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %val.i540, align 4
  br label %tvp5150_read.exit546

tvp5150_read.exit546:                             ; preds = %if.end.i544, %tvp5150_read.exit539.tvp5150_read.exit546_crit_edge
  %retval.0.i545 = phi i32 [ %138, %if.end.i544 ], [ %call1.i542, %tvp5150_read.exit539.tvp5150_read.exit546_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i540) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %133, ptr noundef nonnull @.str.145, i32 noundef %retval.0.i545) #12
  %139 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i547) #9
  %141 = ptrtoint ptr %val.i547 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 -1, ptr %val.i547, align 4, !annotation !451
  %142 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %regmap.i, align 8
  %call1.i549 = call i32 @regmap_read(ptr noundef %143, i32 noundef 24, ptr noundef nonnull %val.i547) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i549)
  %cmp.i550 = icmp slt i32 %call1.i549, 0
  br i1 %cmp.i550, label %tvp5150_read.exit546.tvp5150_read.exit553_crit_edge, label %if.end.i551

tvp5150_read.exit546.tvp5150_read.exit553_crit_edge: ; preds = %tvp5150_read.exit546
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit553

if.end.i551:                                      ; preds = %tvp5150_read.exit546
  call void @__sanitizer_cov_trace_pc() #11
  %144 = ptrtoint ptr %val.i547 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %val.i547, align 4
  br label %tvp5150_read.exit553

tvp5150_read.exit553:                             ; preds = %if.end.i551, %tvp5150_read.exit546.tvp5150_read.exit553_crit_edge
  %retval.0.i552 = phi i32 [ %145, %if.end.i551 ], [ %call1.i549, %tvp5150_read.exit546.tvp5150_read.exit553_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i547) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %140, ptr noundef nonnull @.str.148, i32 noundef %retval.0.i552) #12
  %146 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i554) #9
  %148 = ptrtoint ptr %val.i554 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 -1, ptr %val.i554, align 4, !annotation !451
  %149 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %regmap.i, align 8
  %call1.i556 = call i32 @regmap_read(ptr noundef %150, i32 noundef 25, ptr noundef nonnull %val.i554) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i556)
  %cmp.i557 = icmp slt i32 %call1.i556, 0
  br i1 %cmp.i557, label %tvp5150_read.exit553.tvp5150_read.exit560_crit_edge, label %if.end.i558

tvp5150_read.exit553.tvp5150_read.exit560_crit_edge: ; preds = %tvp5150_read.exit553
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit560

if.end.i558:                                      ; preds = %tvp5150_read.exit553
  call void @__sanitizer_cov_trace_pc() #11
  %151 = ptrtoint ptr %val.i554 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %val.i554, align 4
  br label %tvp5150_read.exit560

tvp5150_read.exit560:                             ; preds = %if.end.i558, %tvp5150_read.exit553.tvp5150_read.exit560_crit_edge
  %retval.0.i559 = phi i32 [ %152, %if.end.i558 ], [ %call1.i556, %tvp5150_read.exit553.tvp5150_read.exit560_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i554) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %147, ptr noundef nonnull @.str.151, i32 noundef %retval.0.i559) #12
  %153 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i561) #9
  %155 = ptrtoint ptr %val.i561 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 -1, ptr %val.i561, align 4, !annotation !451
  %156 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %regmap.i, align 8
  %call1.i563 = call i32 @regmap_read(ptr noundef %157, i32 noundef 26, ptr noundef nonnull %val.i561) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i563)
  %cmp.i564 = icmp slt i32 %call1.i563, 0
  br i1 %cmp.i564, label %tvp5150_read.exit560.tvp5150_read.exit567_crit_edge, label %if.end.i565

tvp5150_read.exit560.tvp5150_read.exit567_crit_edge: ; preds = %tvp5150_read.exit560
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit567

if.end.i565:                                      ; preds = %tvp5150_read.exit560
  call void @__sanitizer_cov_trace_pc() #11
  %158 = ptrtoint ptr %val.i561 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %val.i561, align 4
  br label %tvp5150_read.exit567

tvp5150_read.exit567:                             ; preds = %if.end.i565, %tvp5150_read.exit560.tvp5150_read.exit567_crit_edge
  %retval.0.i566 = phi i32 [ %159, %if.end.i565 ], [ %call1.i563, %tvp5150_read.exit560.tvp5150_read.exit567_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i561) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i568) #9
  %160 = ptrtoint ptr %val.i568 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 -1, ptr %val.i568, align 4, !annotation !451
  %161 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %regmap.i, align 8
  %call1.i570 = call i32 @regmap_read(ptr noundef %162, i32 noundef 27, ptr noundef nonnull %val.i568) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i570)
  %cmp.i571 = icmp slt i32 %call1.i570, 0
  br i1 %cmp.i571, label %tvp5150_read.exit567.tvp5150_read.exit574_crit_edge, label %if.end.i572

tvp5150_read.exit567.tvp5150_read.exit574_crit_edge: ; preds = %tvp5150_read.exit567
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit574

if.end.i572:                                      ; preds = %tvp5150_read.exit567
  call void @__sanitizer_cov_trace_pc() #11
  %163 = ptrtoint ptr %val.i568 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %val.i568, align 4
  br label %tvp5150_read.exit574

tvp5150_read.exit574:                             ; preds = %if.end.i572, %tvp5150_read.exit567.tvp5150_read.exit574_crit_edge
  %retval.0.i573 = phi i32 [ %164, %if.end.i572 ], [ %call1.i570, %tvp5150_read.exit567.tvp5150_read.exit574_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i568) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %154, ptr noundef nonnull @.str.154, i32 noundef %retval.0.i566, i32 noundef %retval.0.i573) #12
  %165 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i575) #9
  %167 = ptrtoint ptr %val.i575 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 -1, ptr %val.i575, align 4, !annotation !451
  %168 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %regmap.i, align 8
  %call1.i577 = call i32 @regmap_read(ptr noundef %169, i32 noundef 28, ptr noundef nonnull %val.i575) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i577)
  %cmp.i578 = icmp slt i32 %call1.i577, 0
  br i1 %cmp.i578, label %tvp5150_read.exit574.tvp5150_read.exit581_crit_edge, label %if.end.i579

tvp5150_read.exit574.tvp5150_read.exit581_crit_edge: ; preds = %tvp5150_read.exit574
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit581

if.end.i579:                                      ; preds = %tvp5150_read.exit574
  call void @__sanitizer_cov_trace_pc() #11
  %170 = ptrtoint ptr %val.i575 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %val.i575, align 4
  br label %tvp5150_read.exit581

tvp5150_read.exit581:                             ; preds = %if.end.i579, %tvp5150_read.exit574.tvp5150_read.exit581_crit_edge
  %retval.0.i580 = phi i32 [ %171, %if.end.i579 ], [ %call1.i577, %tvp5150_read.exit574.tvp5150_read.exit581_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i575) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %166, ptr noundef nonnull @.str.157, i32 noundef %retval.0.i580) #12
  %172 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i582) #9
  %174 = ptrtoint ptr %val.i582 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 -1, ptr %val.i582, align 4, !annotation !451
  %175 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %regmap.i, align 8
  %call1.i584 = call i32 @regmap_read(ptr noundef %176, i32 noundef 29, ptr noundef nonnull %val.i582) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i584)
  %cmp.i585 = icmp slt i32 %call1.i584, 0
  br i1 %cmp.i585, label %tvp5150_read.exit581.tvp5150_read.exit588_crit_edge, label %if.end.i586

tvp5150_read.exit581.tvp5150_read.exit588_crit_edge: ; preds = %tvp5150_read.exit581
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit588

if.end.i586:                                      ; preds = %tvp5150_read.exit581
  call void @__sanitizer_cov_trace_pc() #11
  %177 = ptrtoint ptr %val.i582 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %val.i582, align 4
  br label %tvp5150_read.exit588

tvp5150_read.exit588:                             ; preds = %if.end.i586, %tvp5150_read.exit581.tvp5150_read.exit588_crit_edge
  %retval.0.i587 = phi i32 [ %178, %if.end.i586 ], [ %call1.i584, %tvp5150_read.exit581.tvp5150_read.exit588_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i582) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %173, ptr noundef nonnull @.str.160, i32 noundef %retval.0.i587) #12
  %179 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i589) #9
  %181 = ptrtoint ptr %val.i589 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 -1, ptr %val.i589, align 4, !annotation !451
  %182 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %regmap.i, align 8
  %call1.i591 = call i32 @regmap_read(ptr noundef %183, i32 noundef 30, ptr noundef nonnull %val.i589) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i591)
  %cmp.i592 = icmp slt i32 %call1.i591, 0
  br i1 %cmp.i592, label %tvp5150_read.exit588.tvp5150_read.exit595_crit_edge, label %if.end.i593

tvp5150_read.exit588.tvp5150_read.exit595_crit_edge: ; preds = %tvp5150_read.exit588
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit595

if.end.i593:                                      ; preds = %tvp5150_read.exit588
  call void @__sanitizer_cov_trace_pc() #11
  %184 = ptrtoint ptr %val.i589 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %val.i589, align 4
  br label %tvp5150_read.exit595

tvp5150_read.exit595:                             ; preds = %if.end.i593, %tvp5150_read.exit588.tvp5150_read.exit595_crit_edge
  %retval.0.i594 = phi i32 [ %185, %if.end.i593 ], [ %call1.i591, %tvp5150_read.exit588.tvp5150_read.exit595_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i589) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %180, ptr noundef nonnull @.str.163, i32 noundef %retval.0.i594) #12
  %186 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i596) #9
  %188 = ptrtoint ptr %val.i596 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 -1, ptr %val.i596, align 4, !annotation !451
  %189 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %regmap.i, align 8
  %call1.i598 = call i32 @regmap_read(ptr noundef %190, i32 noundef 40, ptr noundef nonnull %val.i596) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i598)
  %cmp.i599 = icmp slt i32 %call1.i598, 0
  br i1 %cmp.i599, label %tvp5150_read.exit595.tvp5150_read.exit602_crit_edge, label %if.end.i600

tvp5150_read.exit595.tvp5150_read.exit602_crit_edge: ; preds = %tvp5150_read.exit595
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit602

if.end.i600:                                      ; preds = %tvp5150_read.exit595
  call void @__sanitizer_cov_trace_pc() #11
  %191 = ptrtoint ptr %val.i596 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %val.i596, align 4
  br label %tvp5150_read.exit602

tvp5150_read.exit602:                             ; preds = %if.end.i600, %tvp5150_read.exit595.tvp5150_read.exit602_crit_edge
  %retval.0.i601 = phi i32 [ %192, %if.end.i600 ], [ %call1.i598, %tvp5150_read.exit595.tvp5150_read.exit602_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i596) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %187, ptr noundef nonnull @.str.166, i32 noundef %retval.0.i601) #12
  %193 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i603) #9
  %195 = ptrtoint ptr %val.i603 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 -1, ptr %val.i603, align 4, !annotation !451
  %196 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %regmap.i, align 8
  %call1.i605 = call i32 @regmap_read(ptr noundef %197, i32 noundef 44, ptr noundef nonnull %val.i603) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i605)
  %cmp.i606 = icmp slt i32 %call1.i605, 0
  br i1 %cmp.i606, label %tvp5150_read.exit602.tvp5150_read.exit609_crit_edge, label %if.end.i607

tvp5150_read.exit602.tvp5150_read.exit609_crit_edge: ; preds = %tvp5150_read.exit602
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit609

if.end.i607:                                      ; preds = %tvp5150_read.exit602
  call void @__sanitizer_cov_trace_pc() #11
  %198 = ptrtoint ptr %val.i603 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %val.i603, align 4
  br label %tvp5150_read.exit609

tvp5150_read.exit609:                             ; preds = %if.end.i607, %tvp5150_read.exit602.tvp5150_read.exit609_crit_edge
  %retval.0.i608 = phi i32 [ %199, %if.end.i607 ], [ %call1.i605, %tvp5150_read.exit602.tvp5150_read.exit609_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i603) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i610) #9
  %200 = ptrtoint ptr %val.i610 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 -1, ptr %val.i610, align 4, !annotation !451
  %201 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %regmap.i, align 8
  %call1.i612 = call i32 @regmap_read(ptr noundef %202, i32 noundef 45, ptr noundef nonnull %val.i610) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i612)
  %cmp.i613 = icmp slt i32 %call1.i612, 0
  br i1 %cmp.i613, label %tvp5150_read.exit609.tvp5150_read.exit616_crit_edge, label %if.end.i614

tvp5150_read.exit609.tvp5150_read.exit616_crit_edge: ; preds = %tvp5150_read.exit609
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit616

if.end.i614:                                      ; preds = %tvp5150_read.exit609
  call void @__sanitizer_cov_trace_pc() #11
  %203 = ptrtoint ptr %val.i610 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %val.i610, align 4
  br label %tvp5150_read.exit616

tvp5150_read.exit616:                             ; preds = %if.end.i614, %tvp5150_read.exit609.tvp5150_read.exit616_crit_edge
  %retval.0.i615 = phi i32 [ %204, %if.end.i614 ], [ %call1.i612, %tvp5150_read.exit609.tvp5150_read.exit616_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i610) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %194, ptr noundef nonnull @.str.169, i32 noundef %retval.0.i608, i32 noundef %retval.0.i615) #12
  %205 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i617) #9
  %207 = ptrtoint ptr %val.i617 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 -1, ptr %val.i617, align 4, !annotation !451
  %208 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %regmap.i, align 8
  %call1.i619 = call i32 @regmap_read(ptr noundef %209, i32 noundef 46, ptr noundef nonnull %val.i617) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i619)
  %cmp.i620 = icmp slt i32 %call1.i619, 0
  br i1 %cmp.i620, label %tvp5150_read.exit616.tvp5150_read.exit623_crit_edge, label %if.end.i621

tvp5150_read.exit616.tvp5150_read.exit623_crit_edge: ; preds = %tvp5150_read.exit616
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit623

if.end.i621:                                      ; preds = %tvp5150_read.exit616
  call void @__sanitizer_cov_trace_pc() #11
  %210 = ptrtoint ptr %val.i617 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %val.i617, align 4
  br label %tvp5150_read.exit623

tvp5150_read.exit623:                             ; preds = %if.end.i621, %tvp5150_read.exit616.tvp5150_read.exit623_crit_edge
  %retval.0.i622 = phi i32 [ %211, %if.end.i621 ], [ %call1.i619, %tvp5150_read.exit616.tvp5150_read.exit623_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i617) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %206, ptr noundef nonnull @.str.172, i32 noundef %retval.0.i622) #12
  %212 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i624) #9
  %214 = ptrtoint ptr %val.i624 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 -1, ptr %val.i624, align 4, !annotation !451
  %215 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %regmap.i, align 8
  %call1.i626 = call i32 @regmap_read(ptr noundef %216, i32 noundef 47, ptr noundef nonnull %val.i624) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i626)
  %cmp.i627 = icmp slt i32 %call1.i626, 0
  br i1 %cmp.i627, label %tvp5150_read.exit623.tvp5150_read.exit630_crit_edge, label %if.end.i628

tvp5150_read.exit623.tvp5150_read.exit630_crit_edge: ; preds = %tvp5150_read.exit623
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit630

if.end.i628:                                      ; preds = %tvp5150_read.exit623
  call void @__sanitizer_cov_trace_pc() #11
  %217 = ptrtoint ptr %val.i624 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %val.i624, align 4
  br label %tvp5150_read.exit630

tvp5150_read.exit630:                             ; preds = %if.end.i628, %tvp5150_read.exit623.tvp5150_read.exit630_crit_edge
  %retval.0.i629 = phi i32 [ %218, %if.end.i628 ], [ %call1.i626, %tvp5150_read.exit623.tvp5150_read.exit630_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i624) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %213, ptr noundef nonnull @.str.175, i32 noundef %retval.0.i629) #12
  %219 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i631) #9
  %221 = ptrtoint ptr %val.i631 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 -1, ptr %val.i631, align 4, !annotation !451
  %222 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %regmap.i, align 8
  %call1.i633 = call i32 @regmap_read(ptr noundef %223, i32 noundef 48, ptr noundef nonnull %val.i631) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i633)
  %cmp.i634 = icmp slt i32 %call1.i633, 0
  br i1 %cmp.i634, label %tvp5150_read.exit630.tvp5150_read.exit637_crit_edge, label %if.end.i635

tvp5150_read.exit630.tvp5150_read.exit637_crit_edge: ; preds = %tvp5150_read.exit630
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit637

if.end.i635:                                      ; preds = %tvp5150_read.exit630
  call void @__sanitizer_cov_trace_pc() #11
  %224 = ptrtoint ptr %val.i631 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %val.i631, align 4
  br label %tvp5150_read.exit637

tvp5150_read.exit637:                             ; preds = %if.end.i635, %tvp5150_read.exit630.tvp5150_read.exit637_crit_edge
  %retval.0.i636 = phi i32 [ %225, %if.end.i635 ], [ %call1.i633, %tvp5150_read.exit630.tvp5150_read.exit637_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i631) #9
  %and = and i32 %retval.0.i636, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 4, i32 3
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %220, ptr noundef nonnull @.str.178, i32 noundef %cond) #12
  %226 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i638) #9
  %228 = ptrtoint ptr %val.i638 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 -1, ptr %val.i638, align 4, !annotation !451
  %229 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %regmap.i, align 8
  %call1.i640 = call i32 @regmap_read(ptr noundef %230, i32 noundef 128, ptr noundef nonnull %val.i638) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i640)
  %cmp.i641 = icmp slt i32 %call1.i640, 0
  br i1 %cmp.i641, label %tvp5150_read.exit637.tvp5150_read.exit644_crit_edge, label %if.end.i642

tvp5150_read.exit637.tvp5150_read.exit644_crit_edge: ; preds = %tvp5150_read.exit637
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit644

if.end.i642:                                      ; preds = %tvp5150_read.exit637
  call void @__sanitizer_cov_trace_pc() #11
  %231 = ptrtoint ptr %val.i638 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %val.i638, align 4
  br label %tvp5150_read.exit644

tvp5150_read.exit644:                             ; preds = %if.end.i642, %tvp5150_read.exit637.tvp5150_read.exit644_crit_edge
  %retval.0.i643 = phi i32 [ %232, %if.end.i642 ], [ %call1.i640, %tvp5150_read.exit637.tvp5150_read.exit644_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i638) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i645) #9
  %233 = ptrtoint ptr %val.i645 to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 -1, ptr %val.i645, align 4, !annotation !451
  %234 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %regmap.i, align 8
  %call1.i647 = call i32 @regmap_read(ptr noundef %235, i32 noundef 129, ptr noundef nonnull %val.i645) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i647)
  %cmp.i648 = icmp slt i32 %call1.i647, 0
  br i1 %cmp.i648, label %tvp5150_read.exit644.tvp5150_read.exit651_crit_edge, label %if.end.i649

tvp5150_read.exit644.tvp5150_read.exit651_crit_edge: ; preds = %tvp5150_read.exit644
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit651

if.end.i649:                                      ; preds = %tvp5150_read.exit644
  call void @__sanitizer_cov_trace_pc() #11
  %236 = ptrtoint ptr %val.i645 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %val.i645, align 4
  br label %tvp5150_read.exit651

tvp5150_read.exit651:                             ; preds = %if.end.i649, %tvp5150_read.exit644.tvp5150_read.exit651_crit_edge
  %retval.0.i650 = phi i32 [ %237, %if.end.i649 ], [ %call1.i647, %tvp5150_read.exit644.tvp5150_read.exit651_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i645) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %227, ptr noundef nonnull @.str.181, i32 noundef %retval.0.i643, i32 noundef %retval.0.i650) #12
  %238 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i652) #9
  %240 = ptrtoint ptr %val.i652 to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 -1, ptr %val.i652, align 4, !annotation !451
  %241 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %regmap.i, align 8
  %call1.i654 = call i32 @regmap_read(ptr noundef %242, i32 noundef 130, ptr noundef nonnull %val.i652) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i654)
  %cmp.i655 = icmp slt i32 %call1.i654, 0
  br i1 %cmp.i655, label %tvp5150_read.exit651.tvp5150_read.exit658_crit_edge, label %if.end.i656

tvp5150_read.exit651.tvp5150_read.exit658_crit_edge: ; preds = %tvp5150_read.exit651
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit658

if.end.i656:                                      ; preds = %tvp5150_read.exit651
  call void @__sanitizer_cov_trace_pc() #11
  %243 = ptrtoint ptr %val.i652 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %val.i652, align 4
  br label %tvp5150_read.exit658

tvp5150_read.exit658:                             ; preds = %if.end.i656, %tvp5150_read.exit651.tvp5150_read.exit658_crit_edge
  %retval.0.i657 = phi i32 [ %244, %if.end.i656 ], [ %call1.i654, %tvp5150_read.exit651.tvp5150_read.exit658_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i652) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i659) #9
  %245 = ptrtoint ptr %val.i659 to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 -1, ptr %val.i659, align 4, !annotation !451
  %246 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %regmap.i, align 8
  %call1.i661 = call i32 @regmap_read(ptr noundef %247, i32 noundef 131, ptr noundef nonnull %val.i659) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i661)
  %cmp.i662 = icmp slt i32 %call1.i661, 0
  br i1 %cmp.i662, label %tvp5150_read.exit658.tvp5150_read.exit665_crit_edge, label %if.end.i663

tvp5150_read.exit658.tvp5150_read.exit665_crit_edge: ; preds = %tvp5150_read.exit658
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit665

if.end.i663:                                      ; preds = %tvp5150_read.exit658
  call void @__sanitizer_cov_trace_pc() #11
  %248 = ptrtoint ptr %val.i659 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %val.i659, align 4
  br label %tvp5150_read.exit665

tvp5150_read.exit665:                             ; preds = %if.end.i663, %tvp5150_read.exit658.tvp5150_read.exit665_crit_edge
  %retval.0.i664 = phi i32 [ %249, %if.end.i663 ], [ %call1.i661, %tvp5150_read.exit658.tvp5150_read.exit665_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i659) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %239, ptr noundef nonnull @.str.184, i32 noundef %retval.0.i657, i32 noundef %retval.0.i664) #12
  %250 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i666) #9
  %252 = ptrtoint ptr %val.i666 to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 -1, ptr %val.i666, align 4, !annotation !451
  %253 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %regmap.i, align 8
  %call1.i668 = call i32 @regmap_read(ptr noundef %254, i32 noundef 132, ptr noundef nonnull %val.i666) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i668)
  %cmp.i669 = icmp slt i32 %call1.i668, 0
  br i1 %cmp.i669, label %tvp5150_read.exit665.tvp5150_read.exit672_crit_edge, label %if.end.i670

tvp5150_read.exit665.tvp5150_read.exit672_crit_edge: ; preds = %tvp5150_read.exit665
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit672

if.end.i670:                                      ; preds = %tvp5150_read.exit665
  call void @__sanitizer_cov_trace_pc() #11
  %255 = ptrtoint ptr %val.i666 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %val.i666, align 4
  br label %tvp5150_read.exit672

tvp5150_read.exit672:                             ; preds = %if.end.i670, %tvp5150_read.exit665.tvp5150_read.exit672_crit_edge
  %retval.0.i671 = phi i32 [ %256, %if.end.i670 ], [ %call1.i668, %tvp5150_read.exit665.tvp5150_read.exit672_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i666) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i673) #9
  %257 = ptrtoint ptr %val.i673 to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 -1, ptr %val.i673, align 4, !annotation !451
  %258 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %regmap.i, align 8
  %call1.i675 = call i32 @regmap_read(ptr noundef %259, i32 noundef 133, ptr noundef nonnull %val.i673) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i675)
  %cmp.i676 = icmp slt i32 %call1.i675, 0
  br i1 %cmp.i676, label %tvp5150_read.exit672.tvp5150_read.exit679_crit_edge, label %if.end.i677

tvp5150_read.exit672.tvp5150_read.exit679_crit_edge: ; preds = %tvp5150_read.exit672
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit679

if.end.i677:                                      ; preds = %tvp5150_read.exit672
  call void @__sanitizer_cov_trace_pc() #11
  %260 = ptrtoint ptr %val.i673 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %val.i673, align 4
  br label %tvp5150_read.exit679

tvp5150_read.exit679:                             ; preds = %if.end.i677, %tvp5150_read.exit672.tvp5150_read.exit679_crit_edge
  %retval.0.i678 = phi i32 [ %261, %if.end.i677 ], [ %call1.i675, %tvp5150_read.exit672.tvp5150_read.exit679_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i673) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %251, ptr noundef nonnull @.str.187, i32 noundef %retval.0.i671, i32 noundef %retval.0.i678) #12
  %262 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i680) #9
  %264 = ptrtoint ptr %val.i680 to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 -1, ptr %val.i680, align 4, !annotation !451
  %265 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %regmap.i, align 8
  %call1.i682 = call i32 @regmap_read(ptr noundef %266, i32 noundef 134, ptr noundef nonnull %val.i680) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i682)
  %cmp.i683 = icmp slt i32 %call1.i682, 0
  br i1 %cmp.i683, label %tvp5150_read.exit679.tvp5150_read.exit686_crit_edge, label %if.end.i684

tvp5150_read.exit679.tvp5150_read.exit686_crit_edge: ; preds = %tvp5150_read.exit679
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit686

if.end.i684:                                      ; preds = %tvp5150_read.exit679
  call void @__sanitizer_cov_trace_pc() #11
  %267 = ptrtoint ptr %val.i680 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %val.i680, align 4
  br label %tvp5150_read.exit686

tvp5150_read.exit686:                             ; preds = %if.end.i684, %tvp5150_read.exit679.tvp5150_read.exit686_crit_edge
  %retval.0.i685 = phi i32 [ %268, %if.end.i684 ], [ %call1.i682, %tvp5150_read.exit679.tvp5150_read.exit686_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i680) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %263, ptr noundef nonnull @.str.190, i32 noundef %retval.0.i685) #12
  %269 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i687) #9
  %271 = ptrtoint ptr %val.i687 to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 -1, ptr %val.i687, align 4, !annotation !451
  %272 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %regmap.i, align 8
  %call1.i689 = call i32 @regmap_read(ptr noundef %273, i32 noundef 135, ptr noundef nonnull %val.i687) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i689)
  %cmp.i690 = icmp slt i32 %call1.i689, 0
  br i1 %cmp.i690, label %tvp5150_read.exit686.tvp5150_read.exit693_crit_edge, label %if.end.i691

tvp5150_read.exit686.tvp5150_read.exit693_crit_edge: ; preds = %tvp5150_read.exit686
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit693

if.end.i691:                                      ; preds = %tvp5150_read.exit686
  call void @__sanitizer_cov_trace_pc() #11
  %274 = ptrtoint ptr %val.i687 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %val.i687, align 4
  br label %tvp5150_read.exit693

tvp5150_read.exit693:                             ; preds = %if.end.i691, %tvp5150_read.exit686.tvp5150_read.exit693_crit_edge
  %retval.0.i692 = phi i32 [ %275, %if.end.i691 ], [ %call1.i689, %tvp5150_read.exit686.tvp5150_read.exit693_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i687) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %270, ptr noundef nonnull @.str.193, i32 noundef %retval.0.i692) #12
  %276 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i694) #9
  %278 = ptrtoint ptr %val.i694 to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 -1, ptr %val.i694, align 4, !annotation !451
  %279 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %regmap.i, align 8
  %call1.i696 = call i32 @regmap_read(ptr noundef %280, i32 noundef 136, ptr noundef nonnull %val.i694) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i696)
  %cmp.i697 = icmp slt i32 %call1.i696, 0
  br i1 %cmp.i697, label %tvp5150_read.exit693.tvp5150_read.exit700_crit_edge, label %if.end.i698

tvp5150_read.exit693.tvp5150_read.exit700_crit_edge: ; preds = %tvp5150_read.exit693
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit700

if.end.i698:                                      ; preds = %tvp5150_read.exit693
  call void @__sanitizer_cov_trace_pc() #11
  %281 = ptrtoint ptr %val.i694 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %val.i694, align 4
  br label %tvp5150_read.exit700

tvp5150_read.exit700:                             ; preds = %if.end.i698, %tvp5150_read.exit693.tvp5150_read.exit700_crit_edge
  %retval.0.i699 = phi i32 [ %282, %if.end.i698 ], [ %call1.i696, %tvp5150_read.exit693.tvp5150_read.exit700_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i694) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i701) #9
  %283 = ptrtoint ptr %val.i701 to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 -1, ptr %val.i701, align 4, !annotation !451
  %284 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %regmap.i, align 8
  %call1.i703 = call i32 @regmap_read(ptr noundef %285, i32 noundef 137, ptr noundef nonnull %val.i701) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i703)
  %cmp.i704 = icmp slt i32 %call1.i703, 0
  br i1 %cmp.i704, label %tvp5150_read.exit700.tvp5150_read.exit707_crit_edge, label %if.end.i705

tvp5150_read.exit700.tvp5150_read.exit707_crit_edge: ; preds = %tvp5150_read.exit700
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit707

if.end.i705:                                      ; preds = %tvp5150_read.exit700
  call void @__sanitizer_cov_trace_pc() #11
  %286 = ptrtoint ptr %val.i701 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %val.i701, align 4
  br label %tvp5150_read.exit707

tvp5150_read.exit707:                             ; preds = %if.end.i705, %tvp5150_read.exit700.tvp5150_read.exit707_crit_edge
  %retval.0.i706 = phi i32 [ %287, %if.end.i705 ], [ %call1.i703, %tvp5150_read.exit700.tvp5150_read.exit707_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i701) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i708) #9
  %288 = ptrtoint ptr %val.i708 to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 -1, ptr %val.i708, align 4, !annotation !451
  %289 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %regmap.i, align 8
  %call1.i710 = call i32 @regmap_read(ptr noundef %290, i32 noundef 138, ptr noundef nonnull %val.i708) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i710)
  %cmp.i711 = icmp slt i32 %call1.i710, 0
  br i1 %cmp.i711, label %tvp5150_read.exit707.tvp5150_read.exit714_crit_edge, label %if.end.i712

tvp5150_read.exit707.tvp5150_read.exit714_crit_edge: ; preds = %tvp5150_read.exit707
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit714

if.end.i712:                                      ; preds = %tvp5150_read.exit707
  call void @__sanitizer_cov_trace_pc() #11
  %291 = ptrtoint ptr %val.i708 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %val.i708, align 4
  br label %tvp5150_read.exit714

tvp5150_read.exit714:                             ; preds = %if.end.i712, %tvp5150_read.exit707.tvp5150_read.exit714_crit_edge
  %retval.0.i713 = phi i32 [ %292, %if.end.i712 ], [ %call1.i710, %tvp5150_read.exit707.tvp5150_read.exit714_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i708) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i715) #9
  %293 = ptrtoint ptr %val.i715 to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 -1, ptr %val.i715, align 4, !annotation !451
  %294 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %regmap.i, align 8
  %call1.i717 = call i32 @regmap_read(ptr noundef %295, i32 noundef 139, ptr noundef nonnull %val.i715) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i717)
  %cmp.i718 = icmp slt i32 %call1.i717, 0
  br i1 %cmp.i718, label %tvp5150_read.exit714.tvp5150_read.exit721_crit_edge, label %if.end.i719

tvp5150_read.exit714.tvp5150_read.exit721_crit_edge: ; preds = %tvp5150_read.exit714
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit721

if.end.i719:                                      ; preds = %tvp5150_read.exit714
  call void @__sanitizer_cov_trace_pc() #11
  %296 = ptrtoint ptr %val.i715 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %val.i715, align 4
  br label %tvp5150_read.exit721

tvp5150_read.exit721:                             ; preds = %if.end.i719, %tvp5150_read.exit714.tvp5150_read.exit721_crit_edge
  %retval.0.i720 = phi i32 [ %297, %if.end.i719 ], [ %call1.i717, %tvp5150_read.exit714.tvp5150_read.exit721_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i715) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i722) #9
  %298 = ptrtoint ptr %val.i722 to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 -1, ptr %val.i722, align 4, !annotation !451
  %299 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %regmap.i, align 8
  %call1.i724 = call i32 @regmap_read(ptr noundef %300, i32 noundef 140, ptr noundef nonnull %val.i722) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i724)
  %cmp.i725 = icmp slt i32 %call1.i724, 0
  br i1 %cmp.i725, label %tvp5150_read.exit721.for.body15.i.preheader_crit_edge, label %if.end.i726

tvp5150_read.exit721.for.body15.i.preheader_crit_edge: ; preds = %tvp5150_read.exit721
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body15.i.preheader

if.end.i726:                                      ; preds = %tvp5150_read.exit721
  call void @__sanitizer_cov_trace_pc() #11
  %301 = ptrtoint ptr %val.i722 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %val.i722, align 4
  br label %for.body15.i.preheader

for.body15.i.preheader:                           ; preds = %if.end.i726, %tvp5150_read.exit721.for.body15.i.preheader_crit_edge
  %retval.0.i727 = phi i32 [ %302, %if.end.i726 ], [ %call1.i724, %tvp5150_read.exit721.for.body15.i.preheader_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i722) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %277, ptr noundef nonnull @.str.196, i32 noundef %retval.0.i699, i32 noundef %retval.0.i706, i32 noundef %retval.0.i713, i32 noundef %retval.0.i720, i32 noundef %retval.0.i727) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i) #9
  %303 = call ptr @memset(ptr %buf.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #9
  %304 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 -1, ptr %val.i.i, align 4, !annotation !451
  %305 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %regmap.i, align 8
  %call1.i.i = call i32 @regmap_read(ptr noundef %306, i32 noundef 177, ptr noundef nonnull %val.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i.i, label %for.body15.i.preheader.tvp5150_read.exit.i_crit_edge, label %if.end.i.i

for.body15.i.preheader.tvp5150_read.exit.i_crit_edge: ; preds = %for.body15.i.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i

if.end.i.i:                                       ; preds = %for.body15.i.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %307 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %val.i.i, align 4
  br label %tvp5150_read.exit.i

tvp5150_read.exit.i:                              ; preds = %if.end.i.i, %for.body15.i.preheader.tvp5150_read.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %308, %if.end.i.i ], [ %call1.i.i, %for.body15.i.preheader.tvp5150_read.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #9
  %conv17.i = trunc i32 %retval.0.i.i to i8
  %309 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 %conv17.i, ptr %buf.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #9
  %310 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 -1, ptr %val.i.i, align 4, !annotation !451
  %311 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %regmap.i, align 8
  %call1.i.i.1 = call i32 @regmap_read(ptr noundef %312, i32 noundef 178, ptr noundef nonnull %val.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.1)
  %cmp.i.i.1 = icmp slt i32 %call1.i.i.1, 0
  br i1 %cmp.i.i.1, label %tvp5150_read.exit.i.tvp5150_read.exit.i.1_crit_edge, label %if.end.i.i.1

tvp5150_read.exit.i.tvp5150_read.exit.i.1_crit_edge: ; preds = %tvp5150_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i.1

if.end.i.i.1:                                     ; preds = %tvp5150_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %313 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %val.i.i, align 4
  br label %tvp5150_read.exit.i.1

tvp5150_read.exit.i.1:                            ; preds = %if.end.i.i.1, %tvp5150_read.exit.i.tvp5150_read.exit.i.1_crit_edge
  %retval.0.i.i.1 = phi i32 [ %314, %if.end.i.i.1 ], [ %call1.i.i.1, %tvp5150_read.exit.i.tvp5150_read.exit.i.1_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #9
  %conv17.i.1 = trunc i32 %retval.0.i.i.1 to i8
  %arrayidx.i.1 = getelementptr inbounds [16 x i8], ptr %buf.i, i32 0, i32 1
  %315 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store1_noabort(i32 %315)
  store i8 %conv17.i.1, ptr %arrayidx.i.1, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #9
  %316 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 -1, ptr %val.i.i, align 4, !annotation !451
  %317 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %regmap.i, align 8
  %call1.i.i.2 = call i32 @regmap_read(ptr noundef %318, i32 noundef 179, ptr noundef nonnull %val.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.2)
  %cmp.i.i.2 = icmp slt i32 %call1.i.i.2, 0
  br i1 %cmp.i.i.2, label %tvp5150_read.exit.i.1.tvp5150_read.exit.i.2_crit_edge, label %if.end.i.i.2

tvp5150_read.exit.i.1.tvp5150_read.exit.i.2_crit_edge: ; preds = %tvp5150_read.exit.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i.2

if.end.i.i.2:                                     ; preds = %tvp5150_read.exit.i.1
  call void @__sanitizer_cov_trace_pc() #11
  %319 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %val.i.i, align 4
  br label %tvp5150_read.exit.i.2

tvp5150_read.exit.i.2:                            ; preds = %if.end.i.i.2, %tvp5150_read.exit.i.1.tvp5150_read.exit.i.2_crit_edge
  %retval.0.i.i.2 = phi i32 [ %320, %if.end.i.i.2 ], [ %call1.i.i.2, %tvp5150_read.exit.i.1.tvp5150_read.exit.i.2_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #9
  %conv17.i.2 = trunc i32 %retval.0.i.i.2 to i8
  %arrayidx.i.2 = getelementptr inbounds [16 x i8], ptr %buf.i, i32 0, i32 2
  %321 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 %conv17.i.2, ptr %arrayidx.i.2, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #9
  %322 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 -1, ptr %val.i.i, align 4, !annotation !451
  %323 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %regmap.i, align 8
  %call1.i.i.3 = call i32 @regmap_read(ptr noundef %324, i32 noundef 180, ptr noundef nonnull %val.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.3)
  %cmp.i.i.3 = icmp slt i32 %call1.i.i.3, 0
  br i1 %cmp.i.i.3, label %tvp5150_read.exit.i.2.tvp5150_read.exit.i.3_crit_edge, label %if.end.i.i.3

tvp5150_read.exit.i.2.tvp5150_read.exit.i.3_crit_edge: ; preds = %tvp5150_read.exit.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i.3

if.end.i.i.3:                                     ; preds = %tvp5150_read.exit.i.2
  call void @__sanitizer_cov_trace_pc() #11
  %325 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %val.i.i, align 4
  br label %tvp5150_read.exit.i.3

tvp5150_read.exit.i.3:                            ; preds = %if.end.i.i.3, %tvp5150_read.exit.i.2.tvp5150_read.exit.i.3_crit_edge
  %retval.0.i.i.3 = phi i32 [ %326, %if.end.i.i.3 ], [ %call1.i.i.3, %tvp5150_read.exit.i.2.tvp5150_read.exit.i.3_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #9
  %conv17.i.3 = trunc i32 %retval.0.i.i.3 to i8
  %arrayidx.i.3 = getelementptr inbounds [16 x i8], ptr %buf.i, i32 0, i32 3
  %327 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_store1_noabort(i32 %327)
  store i8 %conv17.i.3, ptr %arrayidx.i.3, align 1
  %328 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %329, ptr noundef nonnull @.str.247, ptr noundef nonnull @.str.198, i32 noundef 177, i32 noundef 4, ptr noundef nonnull %buf.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i730) #9
  %330 = call ptr @memset(ptr %buf.i730, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i729) #9
  %331 = ptrtoint ptr %val.i.i729 to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 -1, ptr %val.i.i729, align 4, !annotation !451
  %332 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %regmap.i, align 8
  %call1.i.i742 = call i32 @regmap_read(ptr noundef %333, i32 noundef 182, ptr noundef nonnull %val.i.i729) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i742)
  %cmp.i.i743 = icmp slt i32 %call1.i.i742, 0
  br i1 %cmp.i.i743, label %tvp5150_read.exit.i.3.tvp5150_read.exit.i751_crit_edge, label %if.end.i.i745

tvp5150_read.exit.i.3.tvp5150_read.exit.i751_crit_edge: ; preds = %tvp5150_read.exit.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i751

if.end.i.i745:                                    ; preds = %tvp5150_read.exit.i.3
  call void @__sanitizer_cov_trace_pc() #11
  %334 = ptrtoint ptr %val.i.i729 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %val.i.i729, align 4
  br label %tvp5150_read.exit.i751

tvp5150_read.exit.i751:                           ; preds = %if.end.i.i745, %tvp5150_read.exit.i.3.tvp5150_read.exit.i751_crit_edge
  %retval.0.i.i746 = phi i32 [ %335, %if.end.i.i745 ], [ %call1.i.i742, %tvp5150_read.exit.i.3.tvp5150_read.exit.i751_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i729) #9
  %conv17.i747 = trunc i32 %retval.0.i.i746 to i8
  %336 = ptrtoint ptr %buf.i730 to i32
  call void @__asan_store1_noabort(i32 %336)
  store i8 %conv17.i747, ptr %buf.i730, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i729) #9
  %337 = ptrtoint ptr %val.i.i729 to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 -1, ptr %val.i.i729, align 4, !annotation !451
  %338 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %regmap.i, align 8
  %call1.i.i742.1 = call i32 @regmap_read(ptr noundef %339, i32 noundef 183, ptr noundef nonnull %val.i.i729) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i742.1)
  %cmp.i.i743.1 = icmp slt i32 %call1.i.i742.1, 0
  br i1 %cmp.i.i743.1, label %tvp5150_read.exit.i751.tvp5150_read.exit.i751.1_crit_edge, label %if.end.i.i745.1

tvp5150_read.exit.i751.tvp5150_read.exit.i751.1_crit_edge: ; preds = %tvp5150_read.exit.i751
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i751.1

if.end.i.i745.1:                                  ; preds = %tvp5150_read.exit.i751
  call void @__sanitizer_cov_trace_pc() #11
  %340 = ptrtoint ptr %val.i.i729 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %val.i.i729, align 4
  br label %tvp5150_read.exit.i751.1

tvp5150_read.exit.i751.1:                         ; preds = %if.end.i.i745.1, %tvp5150_read.exit.i751.tvp5150_read.exit.i751.1_crit_edge
  %retval.0.i.i746.1 = phi i32 [ %341, %if.end.i.i745.1 ], [ %call1.i.i742.1, %tvp5150_read.exit.i751.tvp5150_read.exit.i751.1_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i729) #9
  %conv17.i747.1 = trunc i32 %retval.0.i.i746.1 to i8
  %arrayidx.i748.1 = getelementptr inbounds [16 x i8], ptr %buf.i730, i32 0, i32 1
  %342 = ptrtoint ptr %arrayidx.i748.1 to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 %conv17.i747.1, ptr %arrayidx.i748.1, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i729) #9
  %343 = ptrtoint ptr %val.i.i729 to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 -1, ptr %val.i.i729, align 4, !annotation !451
  %344 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %regmap.i, align 8
  %call1.i.i742.2 = call i32 @regmap_read(ptr noundef %345, i32 noundef 184, ptr noundef nonnull %val.i.i729) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i742.2)
  %cmp.i.i743.2 = icmp slt i32 %call1.i.i742.2, 0
  br i1 %cmp.i.i743.2, label %tvp5150_read.exit.i751.1.tvp5150_read.exit.i751.2_crit_edge, label %if.end.i.i745.2

tvp5150_read.exit.i751.1.tvp5150_read.exit.i751.2_crit_edge: ; preds = %tvp5150_read.exit.i751.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i751.2

if.end.i.i745.2:                                  ; preds = %tvp5150_read.exit.i751.1
  call void @__sanitizer_cov_trace_pc() #11
  %346 = ptrtoint ptr %val.i.i729 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %val.i.i729, align 4
  br label %tvp5150_read.exit.i751.2

tvp5150_read.exit.i751.2:                         ; preds = %if.end.i.i745.2, %tvp5150_read.exit.i751.1.tvp5150_read.exit.i751.2_crit_edge
  %retval.0.i.i746.2 = phi i32 [ %347, %if.end.i.i745.2 ], [ %call1.i.i742.2, %tvp5150_read.exit.i751.1.tvp5150_read.exit.i751.2_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i729) #9
  %conv17.i747.2 = trunc i32 %retval.0.i.i746.2 to i8
  %arrayidx.i748.2 = getelementptr inbounds [16 x i8], ptr %buf.i730, i32 0, i32 2
  %348 = ptrtoint ptr %arrayidx.i748.2 to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 %conv17.i747.2, ptr %arrayidx.i748.2, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i729) #9
  %349 = ptrtoint ptr %val.i.i729 to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 -1, ptr %val.i.i729, align 4, !annotation !451
  %350 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %regmap.i, align 8
  %call1.i.i742.3 = call i32 @regmap_read(ptr noundef %351, i32 noundef 185, ptr noundef nonnull %val.i.i729) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i742.3)
  %cmp.i.i743.3 = icmp slt i32 %call1.i.i742.3, 0
  br i1 %cmp.i.i743.3, label %tvp5150_read.exit.i751.2.tvp5150_read.exit.i751.3_crit_edge, label %if.end.i.i745.3

tvp5150_read.exit.i751.2.tvp5150_read.exit.i751.3_crit_edge: ; preds = %tvp5150_read.exit.i751.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i751.3

if.end.i.i745.3:                                  ; preds = %tvp5150_read.exit.i751.2
  call void @__sanitizer_cov_trace_pc() #11
  %352 = ptrtoint ptr %val.i.i729 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %val.i.i729, align 4
  br label %tvp5150_read.exit.i751.3

tvp5150_read.exit.i751.3:                         ; preds = %if.end.i.i745.3, %tvp5150_read.exit.i751.2.tvp5150_read.exit.i751.3_crit_edge
  %retval.0.i.i746.3 = phi i32 [ %353, %if.end.i.i745.3 ], [ %call1.i.i742.3, %tvp5150_read.exit.i751.2.tvp5150_read.exit.i751.3_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i729) #9
  %conv17.i747.3 = trunc i32 %retval.0.i.i746.3 to i8
  %arrayidx.i748.3 = getelementptr inbounds [16 x i8], ptr %buf.i730, i32 0, i32 3
  %354 = ptrtoint ptr %arrayidx.i748.3 to i32
  call void @__asan_store1_noabort(i32 %354)
  store i8 %conv17.i747.3, ptr %arrayidx.i748.3, align 1
  %355 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %356, ptr noundef nonnull @.str.247, ptr noundef nonnull @.str.199, i32 noundef 182, i32 noundef 4, ptr noundef nonnull %buf.i730) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i730) #9
  %357 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i757) #9
  %359 = ptrtoint ptr %val.i757 to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 -1, ptr %val.i757, align 4, !annotation !451
  %360 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %regmap.i, align 8
  %call1.i759 = call i32 @regmap_read(ptr noundef %361, i32 noundef 187, ptr noundef nonnull %val.i757) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i759)
  %cmp.i760 = icmp slt i32 %call1.i759, 0
  br i1 %cmp.i760, label %tvp5150_read.exit.i751.3.tvp5150_read.exit763_crit_edge, label %if.end.i761

tvp5150_read.exit.i751.3.tvp5150_read.exit763_crit_edge: ; preds = %tvp5150_read.exit.i751.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit763

if.end.i761:                                      ; preds = %tvp5150_read.exit.i751.3
  call void @__sanitizer_cov_trace_pc() #11
  %362 = ptrtoint ptr %val.i757 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %val.i757, align 4
  br label %tvp5150_read.exit763

tvp5150_read.exit763:                             ; preds = %if.end.i761, %tvp5150_read.exit.i751.3.tvp5150_read.exit763_crit_edge
  %retval.0.i762 = phi i32 [ %363, %if.end.i761 ], [ %call1.i759, %tvp5150_read.exit.i751.3.tvp5150_read.exit763_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i757) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %358, ptr noundef nonnull @.str.201, i32 noundef %retval.0.i762) #12
  %364 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i764) #9
  %366 = ptrtoint ptr %val.i764 to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 -1, ptr %val.i764, align 4, !annotation !451
  %367 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %regmap.i, align 8
  %call1.i766 = call i32 @regmap_read(ptr noundef %368, i32 noundef 192, ptr noundef nonnull %val.i764) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i766)
  %cmp.i767 = icmp slt i32 %call1.i766, 0
  br i1 %cmp.i767, label %tvp5150_read.exit763.tvp5150_read.exit770_crit_edge, label %if.end.i768

tvp5150_read.exit763.tvp5150_read.exit770_crit_edge: ; preds = %tvp5150_read.exit763
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit770

if.end.i768:                                      ; preds = %tvp5150_read.exit763
  call void @__sanitizer_cov_trace_pc() #11
  %369 = ptrtoint ptr %val.i764 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %val.i764, align 4
  br label %tvp5150_read.exit770

tvp5150_read.exit770:                             ; preds = %if.end.i768, %tvp5150_read.exit763.tvp5150_read.exit770_crit_edge
  %retval.0.i769 = phi i32 [ %370, %if.end.i768 ], [ %call1.i766, %tvp5150_read.exit763.tvp5150_read.exit770_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i764) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %365, ptr noundef nonnull @.str.204, i32 noundef %retval.0.i769) #12
  %371 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i771) #9
  %373 = ptrtoint ptr %val.i771 to i32
  call void @__asan_store4_noabort(i32 %373)
  store i32 -1, ptr %val.i771, align 4, !annotation !451
  %374 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %regmap.i, align 8
  %call1.i773 = call i32 @regmap_read(ptr noundef %375, i32 noundef 193, ptr noundef nonnull %val.i771) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i773)
  %cmp.i774 = icmp slt i32 %call1.i773, 0
  br i1 %cmp.i774, label %tvp5150_read.exit770.tvp5150_read.exit777_crit_edge, label %if.end.i775

tvp5150_read.exit770.tvp5150_read.exit777_crit_edge: ; preds = %tvp5150_read.exit770
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit777

if.end.i775:                                      ; preds = %tvp5150_read.exit770
  call void @__sanitizer_cov_trace_pc() #11
  %376 = ptrtoint ptr %val.i771 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %val.i771, align 4
  br label %tvp5150_read.exit777

tvp5150_read.exit777:                             ; preds = %if.end.i775, %tvp5150_read.exit770.tvp5150_read.exit777_crit_edge
  %retval.0.i776 = phi i32 [ %377, %if.end.i775 ], [ %call1.i773, %tvp5150_read.exit770.tvp5150_read.exit777_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i771) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %372, ptr noundef nonnull @.str.207, i32 noundef %retval.0.i776) #12
  %378 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i778) #9
  %380 = ptrtoint ptr %val.i778 to i32
  call void @__asan_store4_noabort(i32 %380)
  store i32 -1, ptr %val.i778, align 4, !annotation !451
  %381 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %regmap.i, align 8
  %call1.i780 = call i32 @regmap_read(ptr noundef %382, i32 noundef 194, ptr noundef nonnull %val.i778) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i780)
  %cmp.i781 = icmp slt i32 %call1.i780, 0
  br i1 %cmp.i781, label %tvp5150_read.exit777.tvp5150_read.exit784_crit_edge, label %if.end.i782

tvp5150_read.exit777.tvp5150_read.exit784_crit_edge: ; preds = %tvp5150_read.exit777
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit784

if.end.i782:                                      ; preds = %tvp5150_read.exit777
  call void @__sanitizer_cov_trace_pc() #11
  %383 = ptrtoint ptr %val.i778 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %val.i778, align 4
  br label %tvp5150_read.exit784

tvp5150_read.exit784:                             ; preds = %if.end.i782, %tvp5150_read.exit777.tvp5150_read.exit784_crit_edge
  %retval.0.i783 = phi i32 [ %384, %if.end.i782 ], [ %call1.i780, %tvp5150_read.exit777.tvp5150_read.exit784_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i778) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %379, ptr noundef nonnull @.str.210, i32 noundef %retval.0.i783) #12
  %385 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i785) #9
  %387 = ptrtoint ptr %val.i785 to i32
  call void @__asan_store4_noabort(i32 %387)
  store i32 -1, ptr %val.i785, align 4, !annotation !451
  %388 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %regmap.i, align 8
  %call1.i787 = call i32 @regmap_read(ptr noundef %389, i32 noundef 198, ptr noundef nonnull %val.i785) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i787)
  %cmp.i788 = icmp slt i32 %call1.i787, 0
  br i1 %cmp.i788, label %tvp5150_read.exit784.tvp5150_read.exit791_crit_edge, label %if.end.i789

tvp5150_read.exit784.tvp5150_read.exit791_crit_edge: ; preds = %tvp5150_read.exit784
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit791

if.end.i789:                                      ; preds = %tvp5150_read.exit784
  call void @__sanitizer_cov_trace_pc() #11
  %390 = ptrtoint ptr %val.i785 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %val.i785, align 4
  br label %tvp5150_read.exit791

tvp5150_read.exit791:                             ; preds = %if.end.i789, %tvp5150_read.exit784.tvp5150_read.exit791_crit_edge
  %retval.0.i790 = phi i32 [ %391, %if.end.i789 ], [ %call1.i787, %tvp5150_read.exit784.tvp5150_read.exit791_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i785) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %386, ptr noundef nonnull @.str.213, i32 noundef %retval.0.i790) #12
  %392 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i792) #9
  %394 = ptrtoint ptr %val.i792 to i32
  call void @__asan_store4_noabort(i32 %394)
  store i32 -1, ptr %val.i792, align 4, !annotation !451
  %395 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %regmap.i, align 8
  %call1.i794 = call i32 @regmap_read(ptr noundef %396, i32 noundef 199, ptr noundef nonnull %val.i792) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i794)
  %cmp.i795 = icmp slt i32 %call1.i794, 0
  br i1 %cmp.i795, label %tvp5150_read.exit791.tvp5150_read.exit798_crit_edge, label %if.end.i796

tvp5150_read.exit791.tvp5150_read.exit798_crit_edge: ; preds = %tvp5150_read.exit791
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit798

if.end.i796:                                      ; preds = %tvp5150_read.exit791
  call void @__sanitizer_cov_trace_pc() #11
  %397 = ptrtoint ptr %val.i792 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %val.i792, align 4
  br label %tvp5150_read.exit798

tvp5150_read.exit798:                             ; preds = %if.end.i796, %tvp5150_read.exit791.tvp5150_read.exit798_crit_edge
  %retval.0.i797 = phi i32 [ %398, %if.end.i796 ], [ %call1.i794, %tvp5150_read.exit791.tvp5150_read.exit798_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i792) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %393, ptr noundef nonnull @.str.216, i32 noundef %retval.0.i797) #12
  %399 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i799) #9
  %401 = ptrtoint ptr %val.i799 to i32
  call void @__asan_store4_noabort(i32 %401)
  store i32 -1, ptr %val.i799, align 4, !annotation !451
  %402 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %regmap.i, align 8
  %call1.i801 = call i32 @regmap_read(ptr noundef %403, i32 noundef 200, ptr noundef nonnull %val.i799) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i801)
  %cmp.i802 = icmp slt i32 %call1.i801, 0
  br i1 %cmp.i802, label %tvp5150_read.exit798.tvp5150_read.exit805_crit_edge, label %if.end.i803

tvp5150_read.exit798.tvp5150_read.exit805_crit_edge: ; preds = %tvp5150_read.exit798
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit805

if.end.i803:                                      ; preds = %tvp5150_read.exit798
  call void @__sanitizer_cov_trace_pc() #11
  %404 = ptrtoint ptr %val.i799 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %val.i799, align 4
  br label %tvp5150_read.exit805

tvp5150_read.exit805:                             ; preds = %if.end.i803, %tvp5150_read.exit798.tvp5150_read.exit805_crit_edge
  %retval.0.i804 = phi i32 [ %405, %if.end.i803 ], [ %call1.i801, %tvp5150_read.exit798.tvp5150_read.exit805_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i799) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %400, ptr noundef nonnull @.str.219, i32 noundef %retval.0.i804) #12
  %406 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i806) #9
  %408 = ptrtoint ptr %val.i806 to i32
  call void @__asan_store4_noabort(i32 %408)
  store i32 -1, ptr %val.i806, align 4, !annotation !451
  %409 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %regmap.i, align 8
  %call1.i808 = call i32 @regmap_read(ptr noundef %410, i32 noundef 201, ptr noundef nonnull %val.i806) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i808)
  %cmp.i809 = icmp slt i32 %call1.i808, 0
  br i1 %cmp.i809, label %tvp5150_read.exit805.tvp5150_read.exit812_crit_edge, label %if.end.i810

tvp5150_read.exit805.tvp5150_read.exit812_crit_edge: ; preds = %tvp5150_read.exit805
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit812

if.end.i810:                                      ; preds = %tvp5150_read.exit805
  call void @__sanitizer_cov_trace_pc() #11
  %411 = ptrtoint ptr %val.i806 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %val.i806, align 4
  br label %tvp5150_read.exit812

tvp5150_read.exit812:                             ; preds = %if.end.i810, %tvp5150_read.exit805.tvp5150_read.exit812_crit_edge
  %retval.0.i811 = phi i32 [ %412, %if.end.i810 ], [ %call1.i808, %tvp5150_read.exit805.tvp5150_read.exit812_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i806) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %407, ptr noundef nonnull @.str.222, i32 noundef %retval.0.i811) #12
  %413 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i813) #9
  %415 = ptrtoint ptr %val.i813 to i32
  call void @__asan_store4_noabort(i32 %415)
  store i32 -1, ptr %val.i813, align 4, !annotation !451
  %416 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %regmap.i, align 8
  %call1.i815 = call i32 @regmap_read(ptr noundef %417, i32 noundef 202, ptr noundef nonnull %val.i813) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i815)
  %cmp.i816 = icmp slt i32 %call1.i815, 0
  br i1 %cmp.i816, label %tvp5150_read.exit812.tvp5150_read.exit819_crit_edge, label %if.end.i817

tvp5150_read.exit812.tvp5150_read.exit819_crit_edge: ; preds = %tvp5150_read.exit812
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit819

if.end.i817:                                      ; preds = %tvp5150_read.exit812
  call void @__sanitizer_cov_trace_pc() #11
  %418 = ptrtoint ptr %val.i813 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %val.i813, align 4
  br label %tvp5150_read.exit819

tvp5150_read.exit819:                             ; preds = %if.end.i817, %tvp5150_read.exit812.tvp5150_read.exit819_crit_edge
  %retval.0.i818 = phi i32 [ %419, %if.end.i817 ], [ %call1.i815, %tvp5150_read.exit812.tvp5150_read.exit819_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i813) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %414, ptr noundef nonnull @.str.225, i32 noundef %retval.0.i818) #12
  %420 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i820) #9
  %422 = ptrtoint ptr %val.i820 to i32
  call void @__asan_store4_noabort(i32 %422)
  store i32 -1, ptr %val.i820, align 4, !annotation !451
  %423 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %regmap.i, align 8
  %call1.i822 = call i32 @regmap_read(ptr noundef %424, i32 noundef 204, ptr noundef nonnull %val.i820) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i822)
  %cmp.i823 = icmp slt i32 %call1.i822, 0
  br i1 %cmp.i823, label %tvp5150_read.exit819.tvp5150_read.exit826_crit_edge, label %if.end.i824

tvp5150_read.exit819.tvp5150_read.exit826_crit_edge: ; preds = %tvp5150_read.exit819
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit826

if.end.i824:                                      ; preds = %tvp5150_read.exit819
  call void @__sanitizer_cov_trace_pc() #11
  %425 = ptrtoint ptr %val.i820 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %val.i820, align 4
  br label %tvp5150_read.exit826

tvp5150_read.exit826:                             ; preds = %if.end.i824, %tvp5150_read.exit819.tvp5150_read.exit826_crit_edge
  %retval.0.i825 = phi i32 [ %426, %if.end.i824 ], [ %call1.i822, %tvp5150_read.exit819.tvp5150_read.exit826_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i820) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i827) #9
  %427 = ptrtoint ptr %val.i827 to i32
  call void @__asan_store4_noabort(i32 %427)
  store i32 -1, ptr %val.i827, align 4, !annotation !451
  %428 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %regmap.i, align 8
  %call1.i829 = call i32 @regmap_read(ptr noundef %429, i32 noundef 203, ptr noundef nonnull %val.i827) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i829)
  %cmp.i830 = icmp slt i32 %call1.i829, 0
  br i1 %cmp.i830, label %tvp5150_read.exit826.tvp5150_read.exit833_crit_edge, label %if.end.i831

tvp5150_read.exit826.tvp5150_read.exit833_crit_edge: ; preds = %tvp5150_read.exit826
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit833

if.end.i831:                                      ; preds = %tvp5150_read.exit826
  call void @__sanitizer_cov_trace_pc() #11
  %430 = ptrtoint ptr %val.i827 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %val.i827, align 4
  br label %tvp5150_read.exit833

tvp5150_read.exit833:                             ; preds = %if.end.i831, %tvp5150_read.exit826.tvp5150_read.exit833_crit_edge
  %retval.0.i832 = phi i32 [ %431, %if.end.i831 ], [ %call1.i829, %tvp5150_read.exit826.tvp5150_read.exit833_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i827) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %421, ptr noundef nonnull @.str.228, i32 noundef %retval.0.i825, i32 noundef %retval.0.i832) #12
  %432 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i834) #9
  %434 = ptrtoint ptr %val.i834 to i32
  call void @__asan_store4_noabort(i32 %434)
  store i32 -1, ptr %val.i834, align 4, !annotation !451
  %435 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %regmap.i, align 8
  %call1.i836 = call i32 @regmap_read(ptr noundef %436, i32 noundef 205, ptr noundef nonnull %val.i834) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i836)
  %cmp.i837 = icmp slt i32 %call1.i836, 0
  br i1 %cmp.i837, label %tvp5150_read.exit833.tvp5150_read.exit840_crit_edge, label %if.end.i838

tvp5150_read.exit833.tvp5150_read.exit840_crit_edge: ; preds = %tvp5150_read.exit833
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit840

if.end.i838:                                      ; preds = %tvp5150_read.exit833
  call void @__sanitizer_cov_trace_pc() #11
  %437 = ptrtoint ptr %val.i834 to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load i32, ptr %val.i834, align 4
  br label %tvp5150_read.exit840

tvp5150_read.exit840:                             ; preds = %if.end.i838, %tvp5150_read.exit833.tvp5150_read.exit840_crit_edge
  %retval.0.i839 = phi i32 [ %438, %if.end.i838 ], [ %call1.i836, %tvp5150_read.exit833.tvp5150_read.exit840_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i834) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %433, ptr noundef nonnull @.str.231, i32 noundef %retval.0.i839) #12
  %439 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i841) #9
  %441 = ptrtoint ptr %val.i841 to i32
  call void @__asan_store4_noabort(i32 %441)
  store i32 -1, ptr %val.i841, align 4, !annotation !451
  %442 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %regmap.i, align 8
  %call1.i843 = call i32 @regmap_read(ptr noundef %443, i32 noundef 207, ptr noundef nonnull %val.i841) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i843)
  %cmp.i844 = icmp slt i32 %call1.i843, 0
  br i1 %cmp.i844, label %tvp5150_read.exit840.tvp5150_read.exit847_crit_edge, label %if.end.i845

tvp5150_read.exit840.tvp5150_read.exit847_crit_edge: ; preds = %tvp5150_read.exit840
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit847

if.end.i845:                                      ; preds = %tvp5150_read.exit840
  call void @__sanitizer_cov_trace_pc() #11
  %444 = ptrtoint ptr %val.i841 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %val.i841, align 4
  br label %tvp5150_read.exit847

tvp5150_read.exit847:                             ; preds = %if.end.i845, %tvp5150_read.exit840.tvp5150_read.exit847_crit_edge
  %retval.0.i846 = phi i32 [ %445, %if.end.i845 ], [ %call1.i843, %tvp5150_read.exit840.tvp5150_read.exit847_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i841) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %440, ptr noundef nonnull @.str.234, i32 noundef %retval.0.i846) #12
  %446 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i848) #9
  %448 = ptrtoint ptr %val.i848 to i32
  call void @__asan_store4_noabort(i32 %448)
  store i32 -1, ptr %val.i848, align 4, !annotation !451
  %449 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %regmap.i, align 8
  %call1.i850 = call i32 @regmap_read(ptr noundef %450, i32 noundef 252, ptr noundef nonnull %val.i848) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i850)
  %cmp.i851 = icmp slt i32 %call1.i850, 0
  br i1 %cmp.i851, label %tvp5150_read.exit847.for.body15.i870.preheader_crit_edge, label %if.end.i852

tvp5150_read.exit847.for.body15.i870.preheader_crit_edge: ; preds = %tvp5150_read.exit847
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body15.i870.preheader

if.end.i852:                                      ; preds = %tvp5150_read.exit847
  call void @__sanitizer_cov_trace_pc() #11
  %451 = ptrtoint ptr %val.i848 to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load i32, ptr %val.i848, align 4
  br label %for.body15.i870.preheader

for.body15.i870.preheader:                        ; preds = %if.end.i852, %tvp5150_read.exit847.for.body15.i870.preheader_crit_edge
  %retval.0.i853 = phi i32 [ %452, %if.end.i852 ], [ %call1.i850, %tvp5150_read.exit847.for.body15.i870.preheader_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i848) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %447, ptr noundef nonnull @.str.237, i32 noundef %retval.0.i853) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i856) #9
  %453 = call ptr @memset(ptr %buf.i856, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i855) #9
  %454 = ptrtoint ptr %val.i.i855 to i32
  call void @__asan_store4_noabort(i32 %454)
  store i32 -1, ptr %val.i.i855, align 4, !annotation !451
  %455 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %regmap.i, align 8
  %call1.i.i868 = call i32 @regmap_read(ptr noundef %456, i32 noundef 144, ptr noundef nonnull %val.i.i855) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i868)
  %cmp.i.i869 = icmp slt i32 %call1.i.i868, 0
  br i1 %cmp.i.i869, label %for.body15.i870.preheader.tvp5150_read.exit.i877_crit_edge, label %if.end.i.i871

for.body15.i870.preheader.tvp5150_read.exit.i877_crit_edge: ; preds = %for.body15.i870.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i877

if.end.i.i871:                                    ; preds = %for.body15.i870.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %457 = ptrtoint ptr %val.i.i855 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %val.i.i855, align 4
  br label %tvp5150_read.exit.i877

tvp5150_read.exit.i877:                           ; preds = %if.end.i.i871, %for.body15.i870.preheader.tvp5150_read.exit.i877_crit_edge
  %retval.0.i.i872 = phi i32 [ %458, %if.end.i.i871 ], [ %call1.i.i868, %for.body15.i870.preheader.tvp5150_read.exit.i877_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i855) #9
  %conv17.i873 = trunc i32 %retval.0.i.i872 to i8
  %459 = ptrtoint ptr %buf.i856 to i32
  call void @__asan_store1_noabort(i32 %459)
  store i8 %conv17.i873, ptr %buf.i856, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i855) #9
  %460 = ptrtoint ptr %val.i.i855 to i32
  call void @__asan_store4_noabort(i32 %460)
  store i32 -1, ptr %val.i.i855, align 4, !annotation !451
  %461 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %regmap.i, align 8
  %call1.i.i868.1 = call i32 @regmap_read(ptr noundef %462, i32 noundef 145, ptr noundef nonnull %val.i.i855) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i868.1)
  %cmp.i.i869.1 = icmp slt i32 %call1.i.i868.1, 0
  br i1 %cmp.i.i869.1, label %tvp5150_read.exit.i877.tvp5150_read.exit.i877.1_crit_edge, label %if.end.i.i871.1

tvp5150_read.exit.i877.tvp5150_read.exit.i877.1_crit_edge: ; preds = %tvp5150_read.exit.i877
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i877.1

if.end.i.i871.1:                                  ; preds = %tvp5150_read.exit.i877
  call void @__sanitizer_cov_trace_pc() #11
  %463 = ptrtoint ptr %val.i.i855 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load i32, ptr %val.i.i855, align 4
  br label %tvp5150_read.exit.i877.1

tvp5150_read.exit.i877.1:                         ; preds = %if.end.i.i871.1, %tvp5150_read.exit.i877.tvp5150_read.exit.i877.1_crit_edge
  %retval.0.i.i872.1 = phi i32 [ %464, %if.end.i.i871.1 ], [ %call1.i.i868.1, %tvp5150_read.exit.i877.tvp5150_read.exit.i877.1_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i855) #9
  %conv17.i873.1 = trunc i32 %retval.0.i.i872.1 to i8
  %arrayidx.i874.1 = getelementptr inbounds [16 x i8], ptr %buf.i856, i32 0, i32 1
  %465 = ptrtoint ptr %arrayidx.i874.1 to i32
  call void @__asan_store1_noabort(i32 %465)
  store i8 %conv17.i873.1, ptr %arrayidx.i874.1, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i855) #9
  %466 = ptrtoint ptr %val.i.i855 to i32
  call void @__asan_store4_noabort(i32 %466)
  store i32 -1, ptr %val.i.i855, align 4, !annotation !451
  %467 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %regmap.i, align 8
  %call1.i.i868.2 = call i32 @regmap_read(ptr noundef %468, i32 noundef 146, ptr noundef nonnull %val.i.i855) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i868.2)
  %cmp.i.i869.2 = icmp slt i32 %call1.i.i868.2, 0
  br i1 %cmp.i.i869.2, label %tvp5150_read.exit.i877.1.tvp5150_read.exit.i877.2_crit_edge, label %if.end.i.i871.2

tvp5150_read.exit.i877.1.tvp5150_read.exit.i877.2_crit_edge: ; preds = %tvp5150_read.exit.i877.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i877.2

if.end.i.i871.2:                                  ; preds = %tvp5150_read.exit.i877.1
  call void @__sanitizer_cov_trace_pc() #11
  %469 = ptrtoint ptr %val.i.i855 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load i32, ptr %val.i.i855, align 4
  br label %tvp5150_read.exit.i877.2

tvp5150_read.exit.i877.2:                         ; preds = %if.end.i.i871.2, %tvp5150_read.exit.i877.1.tvp5150_read.exit.i877.2_crit_edge
  %retval.0.i.i872.2 = phi i32 [ %470, %if.end.i.i871.2 ], [ %call1.i.i868.2, %tvp5150_read.exit.i877.1.tvp5150_read.exit.i877.2_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i855) #9
  %conv17.i873.2 = trunc i32 %retval.0.i.i872.2 to i8
  %arrayidx.i874.2 = getelementptr inbounds [16 x i8], ptr %buf.i856, i32 0, i32 2
  %471 = ptrtoint ptr %arrayidx.i874.2 to i32
  call void @__asan_store1_noabort(i32 %471)
  store i8 %conv17.i873.2, ptr %arrayidx.i874.2, align 1
  %472 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %473, ptr noundef nonnull @.str.247, ptr noundef nonnull @.str.239, i32 noundef 144, i32 noundef 3, ptr noundef nonnull %buf.i856) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i856) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i884) #9
  %474 = call ptr @memset(ptr %buf.i884, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i883) #9
  %475 = ptrtoint ptr %val.i.i883 to i32
  call void @__asan_store4_noabort(i32 %475)
  store i32 -1, ptr %val.i.i883, align 4, !annotation !451
  %476 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %regmap.i, align 8
  %call1.i.i896 = call i32 @regmap_read(ptr noundef %477, i32 noundef 148, ptr noundef nonnull %val.i.i883) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i896)
  %cmp.i.i897 = icmp slt i32 %call1.i.i896, 0
  br i1 %cmp.i.i897, label %tvp5150_read.exit.i877.2.tvp5150_read.exit.i905_crit_edge, label %if.end.i.i899

tvp5150_read.exit.i877.2.tvp5150_read.exit.i905_crit_edge: ; preds = %tvp5150_read.exit.i877.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i905

if.end.i.i899:                                    ; preds = %tvp5150_read.exit.i877.2
  call void @__sanitizer_cov_trace_pc() #11
  %478 = ptrtoint ptr %val.i.i883 to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load i32, ptr %val.i.i883, align 4
  br label %tvp5150_read.exit.i905

tvp5150_read.exit.i905:                           ; preds = %if.end.i.i899, %tvp5150_read.exit.i877.2.tvp5150_read.exit.i905_crit_edge
  %retval.0.i.i900 = phi i32 [ %479, %if.end.i.i899 ], [ %call1.i.i896, %tvp5150_read.exit.i877.2.tvp5150_read.exit.i905_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i883) #9
  %conv17.i901 = trunc i32 %retval.0.i.i900 to i8
  %480 = ptrtoint ptr %buf.i884 to i32
  call void @__asan_store1_noabort(i32 %480)
  store i8 %conv17.i901, ptr %buf.i884, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i883) #9
  %481 = ptrtoint ptr %val.i.i883 to i32
  call void @__asan_store4_noabort(i32 %481)
  store i32 -1, ptr %val.i.i883, align 4, !annotation !451
  %482 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %regmap.i, align 8
  %call1.i.i896.1 = call i32 @regmap_read(ptr noundef %483, i32 noundef 149, ptr noundef nonnull %val.i.i883) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i896.1)
  %cmp.i.i897.1 = icmp slt i32 %call1.i.i896.1, 0
  br i1 %cmp.i.i897.1, label %tvp5150_read.exit.i905.tvp5150_read.exit.i905.1_crit_edge, label %if.end.i.i899.1

tvp5150_read.exit.i905.tvp5150_read.exit.i905.1_crit_edge: ; preds = %tvp5150_read.exit.i905
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i905.1

if.end.i.i899.1:                                  ; preds = %tvp5150_read.exit.i905
  call void @__sanitizer_cov_trace_pc() #11
  %484 = ptrtoint ptr %val.i.i883 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %val.i.i883, align 4
  br label %tvp5150_read.exit.i905.1

tvp5150_read.exit.i905.1:                         ; preds = %if.end.i.i899.1, %tvp5150_read.exit.i905.tvp5150_read.exit.i905.1_crit_edge
  %retval.0.i.i900.1 = phi i32 [ %485, %if.end.i.i899.1 ], [ %call1.i.i896.1, %tvp5150_read.exit.i905.tvp5150_read.exit.i905.1_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i883) #9
  %conv17.i901.1 = trunc i32 %retval.0.i.i900.1 to i8
  %arrayidx.i902.1 = getelementptr inbounds [16 x i8], ptr %buf.i884, i32 0, i32 1
  %486 = ptrtoint ptr %arrayidx.i902.1 to i32
  call void @__asan_store1_noabort(i32 %486)
  store i8 %conv17.i901.1, ptr %arrayidx.i902.1, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i883) #9
  %487 = ptrtoint ptr %val.i.i883 to i32
  call void @__asan_store4_noabort(i32 %487)
  store i32 -1, ptr %val.i.i883, align 4, !annotation !451
  %488 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %regmap.i, align 8
  %call1.i.i896.2 = call i32 @regmap_read(ptr noundef %489, i32 noundef 150, ptr noundef nonnull %val.i.i883) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i896.2)
  %cmp.i.i897.2 = icmp slt i32 %call1.i.i896.2, 0
  br i1 %cmp.i.i897.2, label %tvp5150_read.exit.i905.1.tvp5150_read.exit.i905.2_crit_edge, label %if.end.i.i899.2

tvp5150_read.exit.i905.1.tvp5150_read.exit.i905.2_crit_edge: ; preds = %tvp5150_read.exit.i905.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i905.2

if.end.i.i899.2:                                  ; preds = %tvp5150_read.exit.i905.1
  call void @__sanitizer_cov_trace_pc() #11
  %490 = ptrtoint ptr %val.i.i883 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %val.i.i883, align 4
  br label %tvp5150_read.exit.i905.2

tvp5150_read.exit.i905.2:                         ; preds = %if.end.i.i899.2, %tvp5150_read.exit.i905.1.tvp5150_read.exit.i905.2_crit_edge
  %retval.0.i.i900.2 = phi i32 [ %491, %if.end.i.i899.2 ], [ %call1.i.i896.2, %tvp5150_read.exit.i905.1.tvp5150_read.exit.i905.2_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i883) #9
  %conv17.i901.2 = trunc i32 %retval.0.i.i900.2 to i8
  %arrayidx.i902.2 = getelementptr inbounds [16 x i8], ptr %buf.i884, i32 0, i32 2
  %492 = ptrtoint ptr %arrayidx.i902.2 to i32
  call void @__asan_store1_noabort(i32 %492)
  store i8 %conv17.i901.2, ptr %arrayidx.i902.2, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i883) #9
  %493 = ptrtoint ptr %val.i.i883 to i32
  call void @__asan_store4_noabort(i32 %493)
  store i32 -1, ptr %val.i.i883, align 4, !annotation !451
  %494 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %regmap.i, align 8
  %call1.i.i896.3 = call i32 @regmap_read(ptr noundef %495, i32 noundef 151, ptr noundef nonnull %val.i.i883) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i896.3)
  %cmp.i.i897.3 = icmp slt i32 %call1.i.i896.3, 0
  br i1 %cmp.i.i897.3, label %tvp5150_read.exit.i905.2.tvp5150_read.exit.i905.3_crit_edge, label %if.end.i.i899.3

tvp5150_read.exit.i905.2.tvp5150_read.exit.i905.3_crit_edge: ; preds = %tvp5150_read.exit.i905.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i905.3

if.end.i.i899.3:                                  ; preds = %tvp5150_read.exit.i905.2
  call void @__sanitizer_cov_trace_pc() #11
  %496 = ptrtoint ptr %val.i.i883 to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load i32, ptr %val.i.i883, align 4
  br label %tvp5150_read.exit.i905.3

tvp5150_read.exit.i905.3:                         ; preds = %if.end.i.i899.3, %tvp5150_read.exit.i905.2.tvp5150_read.exit.i905.3_crit_edge
  %retval.0.i.i900.3 = phi i32 [ %497, %if.end.i.i899.3 ], [ %call1.i.i896.3, %tvp5150_read.exit.i905.2.tvp5150_read.exit.i905.3_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i883) #9
  %conv17.i901.3 = trunc i32 %retval.0.i.i900.3 to i8
  %arrayidx.i902.3 = getelementptr inbounds [16 x i8], ptr %buf.i884, i32 0, i32 3
  %498 = ptrtoint ptr %arrayidx.i902.3 to i32
  call void @__asan_store1_noabort(i32 %498)
  store i8 %conv17.i901.3, ptr %arrayidx.i902.3, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i883) #9
  %499 = ptrtoint ptr %val.i.i883 to i32
  call void @__asan_store4_noabort(i32 %499)
  store i32 -1, ptr %val.i.i883, align 4, !annotation !451
  %500 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %regmap.i, align 8
  %call1.i.i896.4 = call i32 @regmap_read(ptr noundef %501, i32 noundef 152, ptr noundef nonnull %val.i.i883) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i896.4)
  %cmp.i.i897.4 = icmp slt i32 %call1.i.i896.4, 0
  br i1 %cmp.i.i897.4, label %tvp5150_read.exit.i905.3.tvp5150_read.exit.i905.4_crit_edge, label %if.end.i.i899.4

tvp5150_read.exit.i905.3.tvp5150_read.exit.i905.4_crit_edge: ; preds = %tvp5150_read.exit.i905.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i905.4

if.end.i.i899.4:                                  ; preds = %tvp5150_read.exit.i905.3
  call void @__sanitizer_cov_trace_pc() #11
  %502 = ptrtoint ptr %val.i.i883 to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load i32, ptr %val.i.i883, align 4
  br label %tvp5150_read.exit.i905.4

tvp5150_read.exit.i905.4:                         ; preds = %if.end.i.i899.4, %tvp5150_read.exit.i905.3.tvp5150_read.exit.i905.4_crit_edge
  %retval.0.i.i900.4 = phi i32 [ %503, %if.end.i.i899.4 ], [ %call1.i.i896.4, %tvp5150_read.exit.i905.3.tvp5150_read.exit.i905.4_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i883) #9
  %conv17.i901.4 = trunc i32 %retval.0.i.i900.4 to i8
  %arrayidx.i902.4 = getelementptr inbounds [16 x i8], ptr %buf.i884, i32 0, i32 4
  %504 = ptrtoint ptr %arrayidx.i902.4 to i32
  call void @__asan_store1_noabort(i32 %504)
  store i8 %conv17.i901.4, ptr %arrayidx.i902.4, align 1
  %505 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %506, ptr noundef nonnull @.str.247, ptr noundef nonnull @.str.240, i32 noundef 148, i32 noundef 5, ptr noundef nonnull %buf.i884) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i884) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i912) #9
  %507 = getelementptr inbounds i8, ptr %buf.i912, i32 3
  %508 = call ptr @memset(ptr %507, i32 255, i32 13)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i911) #9
  %509 = ptrtoint ptr %val.i.i911 to i32
  call void @__asan_store4_noabort(i32 %509)
  store i32 -1, ptr %val.i.i911, align 4, !annotation !451
  %510 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %regmap.i, align 8
  %call1.i.i924 = call i32 @regmap_read(ptr noundef %511, i32 noundef 154, ptr noundef nonnull %val.i.i911) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i924)
  %cmp.i.i925 = icmp slt i32 %call1.i.i924, 0
  br i1 %cmp.i.i925, label %tvp5150_read.exit.i905.4.tvp5150_read.exit.i933_crit_edge, label %if.end.i.i927

tvp5150_read.exit.i905.4.tvp5150_read.exit.i933_crit_edge: ; preds = %tvp5150_read.exit.i905.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i933

if.end.i.i927:                                    ; preds = %tvp5150_read.exit.i905.4
  call void @__sanitizer_cov_trace_pc() #11
  %512 = ptrtoint ptr %val.i.i911 to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load i32, ptr %val.i.i911, align 4
  br label %tvp5150_read.exit.i933

tvp5150_read.exit.i933:                           ; preds = %if.end.i.i927, %tvp5150_read.exit.i905.4.tvp5150_read.exit.i933_crit_edge
  %retval.0.i.i928 = phi i32 [ %513, %if.end.i.i927 ], [ %call1.i.i924, %tvp5150_read.exit.i905.4.tvp5150_read.exit.i933_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i911) #9
  %conv17.i929 = trunc i32 %retval.0.i.i928 to i8
  %514 = ptrtoint ptr %buf.i912 to i32
  call void @__asan_store1_noabort(i32 %514)
  store i8 %conv17.i929, ptr %buf.i912, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i911) #9
  %515 = ptrtoint ptr %val.i.i911 to i32
  call void @__asan_store4_noabort(i32 %515)
  store i32 -1, ptr %val.i.i911, align 4, !annotation !451
  %516 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %regmap.i, align 8
  %call1.i.i924.1995 = call i32 @regmap_read(ptr noundef %517, i32 noundef 155, ptr noundef nonnull %val.i.i911) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i924.1995)
  %cmp.i.i925.1996 = icmp slt i32 %call1.i.i924.1995, 0
  br i1 %cmp.i.i925.1996, label %tvp5150_read.exit.i933.tvp5150_read.exit.i933.11001_crit_edge, label %if.end.i.i927.1998

tvp5150_read.exit.i933.tvp5150_read.exit.i933.11001_crit_edge: ; preds = %tvp5150_read.exit.i933
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i933.11001

if.end.i.i927.1998:                               ; preds = %tvp5150_read.exit.i933
  call void @__sanitizer_cov_trace_pc() #11
  %518 = ptrtoint ptr %val.i.i911 to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load i32, ptr %val.i.i911, align 4
  br label %tvp5150_read.exit.i933.11001

tvp5150_read.exit.i933.11001:                     ; preds = %if.end.i.i927.1998, %tvp5150_read.exit.i933.tvp5150_read.exit.i933.11001_crit_edge
  %retval.0.i.i928.1999 = phi i32 [ %519, %if.end.i.i927.1998 ], [ %call1.i.i924.1995, %tvp5150_read.exit.i933.tvp5150_read.exit.i933.11001_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i911) #9
  %conv17.i929.11000 = trunc i32 %retval.0.i.i928.1999 to i8
  %arrayidx.i930.1 = getelementptr inbounds [16 x i8], ptr %buf.i912, i32 0, i32 1
  %520 = ptrtoint ptr %arrayidx.i930.1 to i32
  call void @__asan_store1_noabort(i32 %520)
  store i8 %conv17.i929.11000, ptr %arrayidx.i930.1, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i911) #9
  %521 = ptrtoint ptr %val.i.i911 to i32
  call void @__asan_store4_noabort(i32 %521)
  store i32 -1, ptr %val.i.i911, align 4, !annotation !451
  %522 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %regmap.i, align 8
  %call1.i.i924.2 = call i32 @regmap_read(ptr noundef %523, i32 noundef 156, ptr noundef nonnull %val.i.i911) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i924.2)
  %cmp.i.i925.2 = icmp slt i32 %call1.i.i924.2, 0
  br i1 %cmp.i.i925.2, label %tvp5150_read.exit.i933.11001.tvp5150_read.exit.i933.2_crit_edge, label %if.end.i.i927.2

tvp5150_read.exit.i933.11001.tvp5150_read.exit.i933.2_crit_edge: ; preds = %tvp5150_read.exit.i933.11001
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i933.2

if.end.i.i927.2:                                  ; preds = %tvp5150_read.exit.i933.11001
  call void @__sanitizer_cov_trace_pc() #11
  %524 = ptrtoint ptr %val.i.i911 to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load i32, ptr %val.i.i911, align 4
  br label %tvp5150_read.exit.i933.2

tvp5150_read.exit.i933.2:                         ; preds = %if.end.i.i927.2, %tvp5150_read.exit.i933.11001.tvp5150_read.exit.i933.2_crit_edge
  %retval.0.i.i928.2 = phi i32 [ %525, %if.end.i.i927.2 ], [ %call1.i.i924.2, %tvp5150_read.exit.i933.11001.tvp5150_read.exit.i933.2_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i911) #9
  %conv17.i929.2 = trunc i32 %retval.0.i.i928.2 to i8
  %arrayidx.i930.2 = getelementptr inbounds [16 x i8], ptr %buf.i912, i32 0, i32 2
  %526 = ptrtoint ptr %arrayidx.i930.2 to i32
  call void @__asan_store1_noabort(i32 %526)
  store i8 %conv17.i929.2, ptr %arrayidx.i930.2, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i911) #9
  %527 = ptrtoint ptr %val.i.i911 to i32
  call void @__asan_store4_noabort(i32 %527)
  store i32 -1, ptr %val.i.i911, align 4, !annotation !451
  %528 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %regmap.i, align 8
  %call1.i.i924.3 = call i32 @regmap_read(ptr noundef %529, i32 noundef 157, ptr noundef nonnull %val.i.i911) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i924.3)
  %cmp.i.i925.3 = icmp slt i32 %call1.i.i924.3, 0
  br i1 %cmp.i.i925.3, label %tvp5150_read.exit.i933.2.tvp5150_read.exit.i933.3_crit_edge, label %if.end.i.i927.3

tvp5150_read.exit.i933.2.tvp5150_read.exit.i933.3_crit_edge: ; preds = %tvp5150_read.exit.i933.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i933.3

if.end.i.i927.3:                                  ; preds = %tvp5150_read.exit.i933.2
  call void @__sanitizer_cov_trace_pc() #11
  %530 = ptrtoint ptr %val.i.i911 to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load i32, ptr %val.i.i911, align 4
  br label %tvp5150_read.exit.i933.3

tvp5150_read.exit.i933.3:                         ; preds = %if.end.i.i927.3, %tvp5150_read.exit.i933.2.tvp5150_read.exit.i933.3_crit_edge
  %retval.0.i.i928.3 = phi i32 [ %531, %if.end.i.i927.3 ], [ %call1.i.i924.3, %tvp5150_read.exit.i933.2.tvp5150_read.exit.i933.3_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i911) #9
  %conv17.i929.3 = trunc i32 %retval.0.i.i928.3 to i8
  %arrayidx.i930.3 = getelementptr inbounds [16 x i8], ptr %buf.i912, i32 0, i32 3
  %532 = ptrtoint ptr %arrayidx.i930.3 to i32
  call void @__asan_store1_noabort(i32 %532)
  store i8 %conv17.i929.3, ptr %arrayidx.i930.3, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i911) #9
  %533 = ptrtoint ptr %val.i.i911 to i32
  call void @__asan_store4_noabort(i32 %533)
  store i32 -1, ptr %val.i.i911, align 4, !annotation !451
  %534 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %regmap.i, align 8
  %call1.i.i924.4 = call i32 @regmap_read(ptr noundef %535, i32 noundef 158, ptr noundef nonnull %val.i.i911) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i924.4)
  %cmp.i.i925.4 = icmp slt i32 %call1.i.i924.4, 0
  br i1 %cmp.i.i925.4, label %tvp5150_read.exit.i933.3.tvp5150_read.exit.i933.4_crit_edge, label %if.end.i.i927.4

tvp5150_read.exit.i933.3.tvp5150_read.exit.i933.4_crit_edge: ; preds = %tvp5150_read.exit.i933.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i933.4

if.end.i.i927.4:                                  ; preds = %tvp5150_read.exit.i933.3
  call void @__sanitizer_cov_trace_pc() #11
  %536 = ptrtoint ptr %val.i.i911 to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load i32, ptr %val.i.i911, align 4
  br label %tvp5150_read.exit.i933.4

tvp5150_read.exit.i933.4:                         ; preds = %if.end.i.i927.4, %tvp5150_read.exit.i933.3.tvp5150_read.exit.i933.4_crit_edge
  %retval.0.i.i928.4 = phi i32 [ %537, %if.end.i.i927.4 ], [ %call1.i.i924.4, %tvp5150_read.exit.i933.3.tvp5150_read.exit.i933.4_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i911) #9
  %conv17.i929.4 = trunc i32 %retval.0.i.i928.4 to i8
  %arrayidx.i930.4 = getelementptr inbounds [16 x i8], ptr %buf.i912, i32 0, i32 4
  %538 = ptrtoint ptr %arrayidx.i930.4 to i32
  call void @__asan_store1_noabort(i32 %538)
  store i8 %conv17.i929.4, ptr %arrayidx.i930.4, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i911) #9
  %539 = ptrtoint ptr %val.i.i911 to i32
  call void @__asan_store4_noabort(i32 %539)
  store i32 -1, ptr %val.i.i911, align 4, !annotation !451
  %540 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %regmap.i, align 8
  %call1.i.i924.5 = call i32 @regmap_read(ptr noundef %541, i32 noundef 159, ptr noundef nonnull %val.i.i911) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i924.5)
  %cmp.i.i925.5 = icmp slt i32 %call1.i.i924.5, 0
  br i1 %cmp.i.i925.5, label %tvp5150_read.exit.i933.4.tvp5150_read.exit.i933.5_crit_edge, label %if.end.i.i927.5

tvp5150_read.exit.i933.4.tvp5150_read.exit.i933.5_crit_edge: ; preds = %tvp5150_read.exit.i933.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i933.5

if.end.i.i927.5:                                  ; preds = %tvp5150_read.exit.i933.4
  call void @__sanitizer_cov_trace_pc() #11
  %542 = ptrtoint ptr %val.i.i911 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load i32, ptr %val.i.i911, align 4
  br label %tvp5150_read.exit.i933.5

tvp5150_read.exit.i933.5:                         ; preds = %if.end.i.i927.5, %tvp5150_read.exit.i933.4.tvp5150_read.exit.i933.5_crit_edge
  %retval.0.i.i928.5 = phi i32 [ %543, %if.end.i.i927.5 ], [ %call1.i.i924.5, %tvp5150_read.exit.i933.4.tvp5150_read.exit.i933.5_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i911) #9
  %conv17.i929.5 = trunc i32 %retval.0.i.i928.5 to i8
  %arrayidx.i930.5 = getelementptr inbounds [16 x i8], ptr %buf.i912, i32 0, i32 5
  %544 = ptrtoint ptr %arrayidx.i930.5 to i32
  call void @__asan_store1_noabort(i32 %544)
  store i8 %conv17.i929.5, ptr %arrayidx.i930.5, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i911) #9
  %545 = ptrtoint ptr %val.i.i911 to i32
  call void @__asan_store4_noabort(i32 %545)
  store i32 -1, ptr %val.i.i911, align 4, !annotation !451
  %546 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %regmap.i, align 8
  %call1.i.i924.6 = call i32 @regmap_read(ptr noundef %547, i32 noundef 160, ptr noundef nonnull %val.i.i911) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i924.6)
  %cmp.i.i925.6 = icmp slt i32 %call1.i.i924.6, 0
  br i1 %cmp.i.i925.6, label %tvp5150_read.exit.i933.5.tvp5150_read.exit.i933.6_crit_edge, label %if.end.i.i927.6

tvp5150_read.exit.i933.5.tvp5150_read.exit.i933.6_crit_edge: ; preds = %tvp5150_read.exit.i933.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i933.6

if.end.i.i927.6:                                  ; preds = %tvp5150_read.exit.i933.5
  call void @__sanitizer_cov_trace_pc() #11
  %548 = ptrtoint ptr %val.i.i911 to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load i32, ptr %val.i.i911, align 4
  br label %tvp5150_read.exit.i933.6

tvp5150_read.exit.i933.6:                         ; preds = %if.end.i.i927.6, %tvp5150_read.exit.i933.5.tvp5150_read.exit.i933.6_crit_edge
  %retval.0.i.i928.6 = phi i32 [ %549, %if.end.i.i927.6 ], [ %call1.i.i924.6, %tvp5150_read.exit.i933.5.tvp5150_read.exit.i933.6_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i911) #9
  %conv17.i929.6 = trunc i32 %retval.0.i.i928.6 to i8
  %arrayidx.i930.6 = getelementptr inbounds [16 x i8], ptr %buf.i912, i32 0, i32 6
  %550 = ptrtoint ptr %arrayidx.i930.6 to i32
  call void @__asan_store1_noabort(i32 %550)
  store i8 %conv17.i929.6, ptr %arrayidx.i930.6, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i911) #9
  %551 = ptrtoint ptr %val.i.i911 to i32
  call void @__asan_store4_noabort(i32 %551)
  store i32 -1, ptr %val.i.i911, align 4, !annotation !451
  %552 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %regmap.i, align 8
  %call1.i.i924.7 = call i32 @regmap_read(ptr noundef %553, i32 noundef 161, ptr noundef nonnull %val.i.i911) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i924.7)
  %cmp.i.i925.7 = icmp slt i32 %call1.i.i924.7, 0
  br i1 %cmp.i.i925.7, label %tvp5150_read.exit.i933.6.for.body15.i926.preheader.1_crit_edge, label %if.end.i.i927.7

tvp5150_read.exit.i933.6.for.body15.i926.preheader.1_crit_edge: ; preds = %tvp5150_read.exit.i933.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body15.i926.preheader.1

if.end.i.i927.7:                                  ; preds = %tvp5150_read.exit.i933.6
  call void @__sanitizer_cov_trace_pc() #11
  %554 = ptrtoint ptr %val.i.i911 to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load i32, ptr %val.i.i911, align 4
  br label %for.body15.i926.preheader.1

for.body15.i926.preheader.1:                      ; preds = %if.end.i.i927.7, %tvp5150_read.exit.i933.6.for.body15.i926.preheader.1_crit_edge
  %retval.0.i.i928.7 = phi i32 [ %555, %if.end.i.i927.7 ], [ %call1.i.i924.7, %tvp5150_read.exit.i933.6.for.body15.i926.preheader.1_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i911) #9
  %conv17.i929.7 = trunc i32 %retval.0.i.i928.7 to i8
  %arrayidx.i930.7 = getelementptr inbounds [16 x i8], ptr %buf.i912, i32 0, i32 7
  %556 = ptrtoint ptr %arrayidx.i930.7 to i32
  call void @__asan_store1_noabort(i32 %556)
  store i8 %conv17.i929.7, ptr %arrayidx.i930.7, align 1
  %557 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %558, ptr noundef nonnull @.str.247, ptr noundef nonnull @.str.241, i32 noundef 154, i32 noundef 8, ptr noundef nonnull %buf.i912) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i911) #9
  %559 = ptrtoint ptr %val.i.i911 to i32
  call void @__asan_store4_noabort(i32 %559)
  store i32 -1, ptr %val.i.i911, align 4, !annotation !451
  %560 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %regmap.i, align 8
  %call1.i.i924.1 = call i32 @regmap_read(ptr noundef %561, i32 noundef 162, ptr noundef nonnull %val.i.i911) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i924.1)
  %cmp.i.i925.1 = icmp slt i32 %call1.i.i924.1, 0
  br i1 %cmp.i.i925.1, label %for.body15.i926.preheader.1.tvp5150_read.exit.i933.1_crit_edge, label %if.end.i.i927.1

for.body15.i926.preheader.1.tvp5150_read.exit.i933.1_crit_edge: ; preds = %for.body15.i926.preheader.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i933.1

if.end.i.i927.1:                                  ; preds = %for.body15.i926.preheader.1
  call void @__sanitizer_cov_trace_pc() #11
  %562 = ptrtoint ptr %val.i.i911 to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load i32, ptr %val.i.i911, align 4
  br label %tvp5150_read.exit.i933.1

tvp5150_read.exit.i933.1:                         ; preds = %if.end.i.i927.1, %for.body15.i926.preheader.1.tvp5150_read.exit.i933.1_crit_edge
  %retval.0.i.i928.1 = phi i32 [ %563, %if.end.i.i927.1 ], [ %call1.i.i924.1, %for.body15.i926.preheader.1.tvp5150_read.exit.i933.1_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i911) #9
  %conv17.i929.1 = trunc i32 %retval.0.i.i928.1 to i8
  %564 = ptrtoint ptr %buf.i912 to i32
  call void @__asan_store1_noabort(i32 %564)
  store i8 %conv17.i929.1, ptr %buf.i912, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i911) #9
  %565 = ptrtoint ptr %val.i.i911 to i32
  call void @__asan_store4_noabort(i32 %565)
  store i32 -1, ptr %val.i.i911, align 4, !annotation !451
  %566 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %regmap.i, align 8
  %call1.i.i924.1.1 = call i32 @regmap_read(ptr noundef %567, i32 noundef 163, ptr noundef nonnull %val.i.i911) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i924.1.1)
  %cmp.i.i925.1.1 = icmp slt i32 %call1.i.i924.1.1, 0
  br i1 %cmp.i.i925.1.1, label %tvp5150_read.exit.i933.1.tvp5150_read.exit.i933.1.1_crit_edge, label %if.end.i.i927.1.1

tvp5150_read.exit.i933.1.tvp5150_read.exit.i933.1.1_crit_edge: ; preds = %tvp5150_read.exit.i933.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i933.1.1

if.end.i.i927.1.1:                                ; preds = %tvp5150_read.exit.i933.1
  call void @__sanitizer_cov_trace_pc() #11
  %568 = ptrtoint ptr %val.i.i911 to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load i32, ptr %val.i.i911, align 4
  br label %tvp5150_read.exit.i933.1.1

tvp5150_read.exit.i933.1.1:                       ; preds = %if.end.i.i927.1.1, %tvp5150_read.exit.i933.1.tvp5150_read.exit.i933.1.1_crit_edge
  %retval.0.i.i928.1.1 = phi i32 [ %569, %if.end.i.i927.1.1 ], [ %call1.i.i924.1.1, %tvp5150_read.exit.i933.1.tvp5150_read.exit.i933.1.1_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i911) #9
  %conv17.i929.1.1 = trunc i32 %retval.0.i.i928.1.1 to i8
  %arrayidx.i930.1.1 = getelementptr inbounds [16 x i8], ptr %buf.i912, i32 0, i32 1
  %570 = ptrtoint ptr %arrayidx.i930.1.1 to i32
  call void @__asan_store1_noabort(i32 %570)
  store i8 %conv17.i929.1.1, ptr %arrayidx.i930.1.1, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i911) #9
  %571 = ptrtoint ptr %val.i.i911 to i32
  call void @__asan_store4_noabort(i32 %571)
  store i32 -1, ptr %val.i.i911, align 4, !annotation !451
  %572 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %regmap.i, align 8
  %call1.i.i924.1.2 = call i32 @regmap_read(ptr noundef %573, i32 noundef 164, ptr noundef nonnull %val.i.i911) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i924.1.2)
  %cmp.i.i925.1.2 = icmp slt i32 %call1.i.i924.1.2, 0
  br i1 %cmp.i.i925.1.2, label %tvp5150_read.exit.i933.1.1.tvp5150_read.exit.i933.1.2_crit_edge, label %if.end.i.i927.1.2

tvp5150_read.exit.i933.1.1.tvp5150_read.exit.i933.1.2_crit_edge: ; preds = %tvp5150_read.exit.i933.1.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i933.1.2

if.end.i.i927.1.2:                                ; preds = %tvp5150_read.exit.i933.1.1
  call void @__sanitizer_cov_trace_pc() #11
  %574 = ptrtoint ptr %val.i.i911 to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load i32, ptr %val.i.i911, align 4
  br label %tvp5150_read.exit.i933.1.2

tvp5150_read.exit.i933.1.2:                       ; preds = %if.end.i.i927.1.2, %tvp5150_read.exit.i933.1.1.tvp5150_read.exit.i933.1.2_crit_edge
  %retval.0.i.i928.1.2 = phi i32 [ %575, %if.end.i.i927.1.2 ], [ %call1.i.i924.1.2, %tvp5150_read.exit.i933.1.1.tvp5150_read.exit.i933.1.2_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i911) #9
  %conv17.i929.1.2 = trunc i32 %retval.0.i.i928.1.2 to i8
  %arrayidx.i930.1.2 = getelementptr inbounds [16 x i8], ptr %buf.i912, i32 0, i32 2
  %576 = ptrtoint ptr %arrayidx.i930.1.2 to i32
  call void @__asan_store1_noabort(i32 %576)
  store i8 %conv17.i929.1.2, ptr %arrayidx.i930.1.2, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i911) #9
  %577 = ptrtoint ptr %val.i.i911 to i32
  call void @__asan_store4_noabort(i32 %577)
  store i32 -1, ptr %val.i.i911, align 4, !annotation !451
  %578 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %regmap.i, align 8
  %call1.i.i924.1.3 = call i32 @regmap_read(ptr noundef %579, i32 noundef 165, ptr noundef nonnull %val.i.i911) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i924.1.3)
  %cmp.i.i925.1.3 = icmp slt i32 %call1.i.i924.1.3, 0
  br i1 %cmp.i.i925.1.3, label %tvp5150_read.exit.i933.1.2.for.body15.i954.preheader_crit_edge, label %if.end.i.i927.1.3

tvp5150_read.exit.i933.1.2.for.body15.i954.preheader_crit_edge: ; preds = %tvp5150_read.exit.i933.1.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body15.i954.preheader

if.end.i.i927.1.3:                                ; preds = %tvp5150_read.exit.i933.1.2
  call void @__sanitizer_cov_trace_pc() #11
  %580 = ptrtoint ptr %val.i.i911 to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load i32, ptr %val.i.i911, align 4
  br label %for.body15.i954.preheader

for.body15.i954.preheader:                        ; preds = %if.end.i.i927.1.3, %tvp5150_read.exit.i933.1.2.for.body15.i954.preheader_crit_edge
  %retval.0.i.i928.1.3 = phi i32 [ %581, %if.end.i.i927.1.3 ], [ %call1.i.i924.1.3, %tvp5150_read.exit.i933.1.2.for.body15.i954.preheader_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i911) #9
  %conv17.i929.1.3 = trunc i32 %retval.0.i.i928.1.3 to i8
  %arrayidx.i930.1.3 = getelementptr inbounds [16 x i8], ptr %buf.i912, i32 0, i32 3
  %582 = ptrtoint ptr %arrayidx.i930.1.3 to i32
  call void @__asan_store1_noabort(i32 %582)
  store i8 %conv17.i929.1.3, ptr %arrayidx.i930.1.3, align 1
  %583 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %584, ptr noundef nonnull @.str.247, ptr noundef nonnull @.str.241, i32 noundef 162, i32 noundef 4, ptr noundef nonnull %buf.i912) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i912) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i940) #9
  %585 = call ptr @memset(ptr %buf.i940, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i939) #9
  %586 = ptrtoint ptr %val.i.i939 to i32
  call void @__asan_store4_noabort(i32 %586)
  store i32 -1, ptr %val.i.i939, align 4, !annotation !451
  %587 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %regmap.i, align 8
  %call1.i.i952 = call i32 @regmap_read(ptr noundef %588, i32 noundef 167, ptr noundef nonnull %val.i.i939) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i952)
  %cmp.i.i953 = icmp slt i32 %call1.i.i952, 0
  br i1 %cmp.i.i953, label %for.body15.i954.preheader.tvp5150_read.exit.i961_crit_edge, label %if.end.i.i955

for.body15.i954.preheader.tvp5150_read.exit.i961_crit_edge: ; preds = %for.body15.i954.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i961

if.end.i.i955:                                    ; preds = %for.body15.i954.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %589 = ptrtoint ptr %val.i.i939 to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load i32, ptr %val.i.i939, align 4
  br label %tvp5150_read.exit.i961

tvp5150_read.exit.i961:                           ; preds = %if.end.i.i955, %for.body15.i954.preheader.tvp5150_read.exit.i961_crit_edge
  %retval.0.i.i956 = phi i32 [ %590, %if.end.i.i955 ], [ %call1.i.i952, %for.body15.i954.preheader.tvp5150_read.exit.i961_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i939) #9
  %conv17.i957 = trunc i32 %retval.0.i.i956 to i8
  %591 = ptrtoint ptr %buf.i940 to i32
  call void @__asan_store1_noabort(i32 %591)
  store i8 %conv17.i957, ptr %buf.i940, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i939) #9
  %592 = ptrtoint ptr %val.i.i939 to i32
  call void @__asan_store4_noabort(i32 %592)
  store i32 -1, ptr %val.i.i939, align 4, !annotation !451
  %593 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load ptr, ptr %regmap.i, align 8
  %call1.i.i952.1 = call i32 @regmap_read(ptr noundef %594, i32 noundef 168, ptr noundef nonnull %val.i.i939) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i952.1)
  %cmp.i.i953.1 = icmp slt i32 %call1.i.i952.1, 0
  br i1 %cmp.i.i953.1, label %tvp5150_read.exit.i961.tvp5150_read.exit.i961.1_crit_edge, label %if.end.i.i955.1

tvp5150_read.exit.i961.tvp5150_read.exit.i961.1_crit_edge: ; preds = %tvp5150_read.exit.i961
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i961.1

if.end.i.i955.1:                                  ; preds = %tvp5150_read.exit.i961
  call void @__sanitizer_cov_trace_pc() #11
  %595 = ptrtoint ptr %val.i.i939 to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load i32, ptr %val.i.i939, align 4
  br label %tvp5150_read.exit.i961.1

tvp5150_read.exit.i961.1:                         ; preds = %if.end.i.i955.1, %tvp5150_read.exit.i961.tvp5150_read.exit.i961.1_crit_edge
  %retval.0.i.i956.1 = phi i32 [ %596, %if.end.i.i955.1 ], [ %call1.i.i952.1, %tvp5150_read.exit.i961.tvp5150_read.exit.i961.1_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i939) #9
  %conv17.i957.1 = trunc i32 %retval.0.i.i956.1 to i8
  %arrayidx.i958.1 = getelementptr inbounds [16 x i8], ptr %buf.i940, i32 0, i32 1
  %597 = ptrtoint ptr %arrayidx.i958.1 to i32
  call void @__asan_store1_noabort(i32 %597)
  store i8 %conv17.i957.1, ptr %arrayidx.i958.1, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i939) #9
  %598 = ptrtoint ptr %val.i.i939 to i32
  call void @__asan_store4_noabort(i32 %598)
  store i32 -1, ptr %val.i.i939, align 4, !annotation !451
  %599 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load ptr, ptr %regmap.i, align 8
  %call1.i.i952.2 = call i32 @regmap_read(ptr noundef %600, i32 noundef 169, ptr noundef nonnull %val.i.i939) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i952.2)
  %cmp.i.i953.2 = icmp slt i32 %call1.i.i952.2, 0
  br i1 %cmp.i.i953.2, label %tvp5150_read.exit.i961.1.tvp5150_read.exit.i961.2_crit_edge, label %if.end.i.i955.2

tvp5150_read.exit.i961.1.tvp5150_read.exit.i961.2_crit_edge: ; preds = %tvp5150_read.exit.i961.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i961.2

if.end.i.i955.2:                                  ; preds = %tvp5150_read.exit.i961.1
  call void @__sanitizer_cov_trace_pc() #11
  %601 = ptrtoint ptr %val.i.i939 to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load i32, ptr %val.i.i939, align 4
  br label %tvp5150_read.exit.i961.2

tvp5150_read.exit.i961.2:                         ; preds = %if.end.i.i955.2, %tvp5150_read.exit.i961.1.tvp5150_read.exit.i961.2_crit_edge
  %retval.0.i.i956.2 = phi i32 [ %602, %if.end.i.i955.2 ], [ %call1.i.i952.2, %tvp5150_read.exit.i961.1.tvp5150_read.exit.i961.2_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i939) #9
  %conv17.i957.2 = trunc i32 %retval.0.i.i956.2 to i8
  %arrayidx.i958.2 = getelementptr inbounds [16 x i8], ptr %buf.i940, i32 0, i32 2
  %603 = ptrtoint ptr %arrayidx.i958.2 to i32
  call void @__asan_store1_noabort(i32 %603)
  store i8 %conv17.i957.2, ptr %arrayidx.i958.2, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i939) #9
  %604 = ptrtoint ptr %val.i.i939 to i32
  call void @__asan_store4_noabort(i32 %604)
  store i32 -1, ptr %val.i.i939, align 4, !annotation !451
  %605 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load ptr, ptr %regmap.i, align 8
  %call1.i.i952.3 = call i32 @regmap_read(ptr noundef %606, i32 noundef 170, ptr noundef nonnull %val.i.i939) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i952.3)
  %cmp.i.i953.3 = icmp slt i32 %call1.i.i952.3, 0
  br i1 %cmp.i.i953.3, label %tvp5150_read.exit.i961.2.tvp5150_read.exit.i961.3_crit_edge, label %if.end.i.i955.3

tvp5150_read.exit.i961.2.tvp5150_read.exit.i961.3_crit_edge: ; preds = %tvp5150_read.exit.i961.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i961.3

if.end.i.i955.3:                                  ; preds = %tvp5150_read.exit.i961.2
  call void @__sanitizer_cov_trace_pc() #11
  %607 = ptrtoint ptr %val.i.i939 to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load i32, ptr %val.i.i939, align 4
  br label %tvp5150_read.exit.i961.3

tvp5150_read.exit.i961.3:                         ; preds = %if.end.i.i955.3, %tvp5150_read.exit.i961.2.tvp5150_read.exit.i961.3_crit_edge
  %retval.0.i.i956.3 = phi i32 [ %608, %if.end.i.i955.3 ], [ %call1.i.i952.3, %tvp5150_read.exit.i961.2.tvp5150_read.exit.i961.3_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i939) #9
  %conv17.i957.3 = trunc i32 %retval.0.i.i956.3 to i8
  %arrayidx.i958.3 = getelementptr inbounds [16 x i8], ptr %buf.i940, i32 0, i32 3
  %609 = ptrtoint ptr %arrayidx.i958.3 to i32
  call void @__asan_store1_noabort(i32 %609)
  store i8 %conv17.i957.3, ptr %arrayidx.i958.3, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i939) #9
  %610 = ptrtoint ptr %val.i.i939 to i32
  call void @__asan_store4_noabort(i32 %610)
  store i32 -1, ptr %val.i.i939, align 4, !annotation !451
  %611 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load ptr, ptr %regmap.i, align 8
  %call1.i.i952.4 = call i32 @regmap_read(ptr noundef %612, i32 noundef 171, ptr noundef nonnull %val.i.i939) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i952.4)
  %cmp.i.i953.4 = icmp slt i32 %call1.i.i952.4, 0
  br i1 %cmp.i.i953.4, label %tvp5150_read.exit.i961.3.tvp5150_read.exit.i961.4_crit_edge, label %if.end.i.i955.4

tvp5150_read.exit.i961.3.tvp5150_read.exit.i961.4_crit_edge: ; preds = %tvp5150_read.exit.i961.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i961.4

if.end.i.i955.4:                                  ; preds = %tvp5150_read.exit.i961.3
  call void @__sanitizer_cov_trace_pc() #11
  %613 = ptrtoint ptr %val.i.i939 to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load i32, ptr %val.i.i939, align 4
  br label %tvp5150_read.exit.i961.4

tvp5150_read.exit.i961.4:                         ; preds = %if.end.i.i955.4, %tvp5150_read.exit.i961.3.tvp5150_read.exit.i961.4_crit_edge
  %retval.0.i.i956.4 = phi i32 [ %614, %if.end.i.i955.4 ], [ %call1.i.i952.4, %tvp5150_read.exit.i961.3.tvp5150_read.exit.i961.4_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i939) #9
  %conv17.i957.4 = trunc i32 %retval.0.i.i956.4 to i8
  %arrayidx.i958.4 = getelementptr inbounds [16 x i8], ptr %buf.i940, i32 0, i32 4
  %615 = ptrtoint ptr %arrayidx.i958.4 to i32
  call void @__asan_store1_noabort(i32 %615)
  store i8 %conv17.i957.4, ptr %arrayidx.i958.4, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i939) #9
  %616 = ptrtoint ptr %val.i.i939 to i32
  call void @__asan_store4_noabort(i32 %616)
  store i32 -1, ptr %val.i.i939, align 4, !annotation !451
  %617 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load ptr, ptr %regmap.i, align 8
  %call1.i.i952.5 = call i32 @regmap_read(ptr noundef %618, i32 noundef 172, ptr noundef nonnull %val.i.i939) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i952.5)
  %cmp.i.i953.5 = icmp slt i32 %call1.i.i952.5, 0
  br i1 %cmp.i.i953.5, label %tvp5150_read.exit.i961.4.tvp5150_read.exit.i961.5_crit_edge, label %if.end.i.i955.5

tvp5150_read.exit.i961.4.tvp5150_read.exit.i961.5_crit_edge: ; preds = %tvp5150_read.exit.i961.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i961.5

if.end.i.i955.5:                                  ; preds = %tvp5150_read.exit.i961.4
  call void @__sanitizer_cov_trace_pc() #11
  %619 = ptrtoint ptr %val.i.i939 to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load i32, ptr %val.i.i939, align 4
  br label %tvp5150_read.exit.i961.5

tvp5150_read.exit.i961.5:                         ; preds = %if.end.i.i955.5, %tvp5150_read.exit.i961.4.tvp5150_read.exit.i961.5_crit_edge
  %retval.0.i.i956.5 = phi i32 [ %620, %if.end.i.i955.5 ], [ %call1.i.i952.5, %tvp5150_read.exit.i961.4.tvp5150_read.exit.i961.5_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i939) #9
  %conv17.i957.5 = trunc i32 %retval.0.i.i956.5 to i8
  %arrayidx.i958.5 = getelementptr inbounds [16 x i8], ptr %buf.i940, i32 0, i32 5
  %621 = ptrtoint ptr %arrayidx.i958.5 to i32
  call void @__asan_store1_noabort(i32 %621)
  store i8 %conv17.i957.5, ptr %arrayidx.i958.5, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i939) #9
  %622 = ptrtoint ptr %val.i.i939 to i32
  call void @__asan_store4_noabort(i32 %622)
  store i32 -1, ptr %val.i.i939, align 4, !annotation !451
  %623 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load ptr, ptr %regmap.i, align 8
  %call1.i.i952.6 = call i32 @regmap_read(ptr noundef %624, i32 noundef 173, ptr noundef nonnull %val.i.i939) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i952.6)
  %cmp.i.i953.6 = icmp slt i32 %call1.i.i952.6, 0
  br i1 %cmp.i.i953.6, label %tvp5150_read.exit.i961.5.tvp5150_read.exit.i961.6_crit_edge, label %if.end.i.i955.6

tvp5150_read.exit.i961.5.tvp5150_read.exit.i961.6_crit_edge: ; preds = %tvp5150_read.exit.i961.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i961.6

if.end.i.i955.6:                                  ; preds = %tvp5150_read.exit.i961.5
  call void @__sanitizer_cov_trace_pc() #11
  %625 = ptrtoint ptr %val.i.i939 to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load i32, ptr %val.i.i939, align 4
  br label %tvp5150_read.exit.i961.6

tvp5150_read.exit.i961.6:                         ; preds = %if.end.i.i955.6, %tvp5150_read.exit.i961.5.tvp5150_read.exit.i961.6_crit_edge
  %retval.0.i.i956.6 = phi i32 [ %626, %if.end.i.i955.6 ], [ %call1.i.i952.6, %tvp5150_read.exit.i961.5.tvp5150_read.exit.i961.6_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i939) #9
  %conv17.i957.6 = trunc i32 %retval.0.i.i956.6 to i8
  %arrayidx.i958.6 = getelementptr inbounds [16 x i8], ptr %buf.i940, i32 0, i32 6
  %627 = ptrtoint ptr %arrayidx.i958.6 to i32
  call void @__asan_store1_noabort(i32 %627)
  store i8 %conv17.i957.6, ptr %arrayidx.i958.6, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i939) #9
  %628 = ptrtoint ptr %val.i.i939 to i32
  call void @__asan_store4_noabort(i32 %628)
  store i32 -1, ptr %val.i.i939, align 4, !annotation !451
  %629 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %629)
  %630 = load ptr, ptr %regmap.i, align 8
  %call1.i.i952.7 = call i32 @regmap_read(ptr noundef %630, i32 noundef 174, ptr noundef nonnull %val.i.i939) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i952.7)
  %cmp.i.i953.7 = icmp slt i32 %call1.i.i952.7, 0
  br i1 %cmp.i.i953.7, label %tvp5150_read.exit.i961.6.tvp5150_read.exit.i961.7_crit_edge, label %if.end.i.i955.7

tvp5150_read.exit.i961.6.tvp5150_read.exit.i961.7_crit_edge: ; preds = %tvp5150_read.exit.i961.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i961.7

if.end.i.i955.7:                                  ; preds = %tvp5150_read.exit.i961.6
  call void @__sanitizer_cov_trace_pc() #11
  %631 = ptrtoint ptr %val.i.i939 to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load i32, ptr %val.i.i939, align 4
  br label %tvp5150_read.exit.i961.7

tvp5150_read.exit.i961.7:                         ; preds = %if.end.i.i955.7, %tvp5150_read.exit.i961.6.tvp5150_read.exit.i961.7_crit_edge
  %retval.0.i.i956.7 = phi i32 [ %632, %if.end.i.i955.7 ], [ %call1.i.i952.7, %tvp5150_read.exit.i961.6.tvp5150_read.exit.i961.7_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i939) #9
  %conv17.i957.7 = trunc i32 %retval.0.i.i956.7 to i8
  %arrayidx.i958.7 = getelementptr inbounds [16 x i8], ptr %buf.i940, i32 0, i32 7
  %633 = ptrtoint ptr %arrayidx.i958.7 to i32
  call void @__asan_store1_noabort(i32 %633)
  store i8 %conv17.i957.7, ptr %arrayidx.i958.7, align 1
  %634 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %635, ptr noundef nonnull @.str.247, ptr noundef nonnull @.str.242, i32 noundef 167, i32 noundef 8, ptr noundef nonnull %buf.i940) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i940) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i968) #9
  %636 = call ptr @memset(ptr %buf.i968, i32 255, i32 16)
  %arrayidx.i986.1 = getelementptr inbounds [16 x i8], ptr %buf.i968, i32 0, i32 1
  %arrayidx.i986.2 = getelementptr inbounds [16 x i8], ptr %buf.i968, i32 0, i32 2
  %arrayidx.i986.3 = getelementptr inbounds [16 x i8], ptr %buf.i968, i32 0, i32 3
  %arrayidx.i986.4 = getelementptr inbounds [16 x i8], ptr %buf.i968, i32 0, i32 4
  %arrayidx.i986.5 = getelementptr inbounds [16 x i8], ptr %buf.i968, i32 0, i32 5
  %arrayidx.i986.6 = getelementptr inbounds [16 x i8], ptr %buf.i968, i32 0, i32 6
  %arrayidx.i986.7 = getelementptr inbounds [16 x i8], ptr %buf.i968, i32 0, i32 7
  br label %for.body15.i982.preheader

for.body15.i982.preheader:                        ; preds = %do.end21.i993.for.body15.i982.preheader_crit_edge, %tvp5150_read.exit.i961.7
  %indvars.iv.i971 = phi i32 [ 43, %tvp5150_read.exit.i961.7 ], [ %indvars.iv.next.i992, %do.end21.i993.for.body15.i982.preheader_crit_edge ]
  %i.050.i972 = phi i32 [ 208, %tvp5150_read.exit.i961.7 ], [ %add26.i990, %do.end21.i993.for.body15.i982.preheader_crit_edge ]
  %smin.i973 = call i32 @llvm.smin.i32(i32 %indvars.iv.i971, i32 8) #9
  %sub.i974 = sub nuw nsw i32 251, %i.050.i972
  %637 = call i32 @llvm.smin.i32(i32 %sub.i974, i32 8) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i967) #9
  %638 = ptrtoint ptr %val.i.i967 to i32
  call void @__asan_store4_noabort(i32 %638)
  store i32 -1, ptr %val.i.i967, align 4, !annotation !451
  %639 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %639)
  %640 = load ptr, ptr %regmap.i, align 8
  %call1.i.i980 = call i32 @regmap_read(ptr noundef %640, i32 noundef %i.050.i972, ptr noundef nonnull %val.i.i967) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i980)
  %cmp.i.i981 = icmp slt i32 %call1.i.i980, 0
  br i1 %cmp.i.i981, label %for.body15.i982.preheader.tvp5150_read.exit.i989_crit_edge, label %if.end.i.i983

for.body15.i982.preheader.tvp5150_read.exit.i989_crit_edge: ; preds = %for.body15.i982.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i989

if.end.i.i983:                                    ; preds = %for.body15.i982.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %641 = ptrtoint ptr %val.i.i967 to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load i32, ptr %val.i.i967, align 4
  br label %tvp5150_read.exit.i989

tvp5150_read.exit.i989:                           ; preds = %if.end.i.i983, %for.body15.i982.preheader.tvp5150_read.exit.i989_crit_edge
  %retval.0.i.i984 = phi i32 [ %642, %if.end.i.i983 ], [ %call1.i.i980, %for.body15.i982.preheader.tvp5150_read.exit.i989_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i967) #9
  %conv17.i985 = trunc i32 %retval.0.i.i984 to i8
  %643 = ptrtoint ptr %buf.i968 to i32
  call void @__asan_store1_noabort(i32 %643)
  store i8 %conv17.i985, ptr %buf.i968, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %smin.i973)
  %exitcond.not.i988 = icmp eq i32 %smin.i973, 1
  br i1 %exitcond.not.i988, label %tvp5150_read.exit.i989.do.end21.i993_crit_edge, label %for.body15.i982.1

tvp5150_read.exit.i989.do.end21.i993_crit_edge:   ; preds = %tvp5150_read.exit.i989
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21.i993

for.body15.i982.1:                                ; preds = %tvp5150_read.exit.i989
  %add.i978.1 = or i32 %i.050.i972, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i967) #9
  %644 = ptrtoint ptr %val.i.i967 to i32
  call void @__asan_store4_noabort(i32 %644)
  store i32 -1, ptr %val.i.i967, align 4, !annotation !451
  %645 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load ptr, ptr %regmap.i, align 8
  %call1.i.i980.1 = call i32 @regmap_read(ptr noundef %646, i32 noundef %add.i978.1, ptr noundef nonnull %val.i.i967) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i980.1)
  %cmp.i.i981.1 = icmp slt i32 %call1.i.i980.1, 0
  br i1 %cmp.i.i981.1, label %for.body15.i982.1.tvp5150_read.exit.i989.1_crit_edge, label %if.end.i.i983.1

for.body15.i982.1.tvp5150_read.exit.i989.1_crit_edge: ; preds = %for.body15.i982.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i989.1

if.end.i.i983.1:                                  ; preds = %for.body15.i982.1
  call void @__sanitizer_cov_trace_pc() #11
  %647 = ptrtoint ptr %val.i.i967 to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load i32, ptr %val.i.i967, align 4
  br label %tvp5150_read.exit.i989.1

tvp5150_read.exit.i989.1:                         ; preds = %if.end.i.i983.1, %for.body15.i982.1.tvp5150_read.exit.i989.1_crit_edge
  %retval.0.i.i984.1 = phi i32 [ %648, %if.end.i.i983.1 ], [ %call1.i.i980.1, %for.body15.i982.1.tvp5150_read.exit.i989.1_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i967) #9
  %conv17.i985.1 = trunc i32 %retval.0.i.i984.1 to i8
  %649 = ptrtoint ptr %arrayidx.i986.1 to i32
  call void @__asan_store1_noabort(i32 %649)
  store i8 %conv17.i985.1, ptr %arrayidx.i986.1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smin.i973)
  %exitcond.not.i988.1 = icmp eq i32 %smin.i973, 2
  br i1 %exitcond.not.i988.1, label %tvp5150_read.exit.i989.1.do.end21.i993_crit_edge, label %for.body15.i982.2

tvp5150_read.exit.i989.1.do.end21.i993_crit_edge: ; preds = %tvp5150_read.exit.i989.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21.i993

for.body15.i982.2:                                ; preds = %tvp5150_read.exit.i989.1
  %add.i978.2 = or i32 %i.050.i972, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i967) #9
  %650 = ptrtoint ptr %val.i.i967 to i32
  call void @__asan_store4_noabort(i32 %650)
  store i32 -1, ptr %val.i.i967, align 4, !annotation !451
  %651 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load ptr, ptr %regmap.i, align 8
  %call1.i.i980.2 = call i32 @regmap_read(ptr noundef %652, i32 noundef %add.i978.2, ptr noundef nonnull %val.i.i967) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i980.2)
  %cmp.i.i981.2 = icmp slt i32 %call1.i.i980.2, 0
  br i1 %cmp.i.i981.2, label %for.body15.i982.2.tvp5150_read.exit.i989.2_crit_edge, label %if.end.i.i983.2

for.body15.i982.2.tvp5150_read.exit.i989.2_crit_edge: ; preds = %for.body15.i982.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i989.2

if.end.i.i983.2:                                  ; preds = %for.body15.i982.2
  call void @__sanitizer_cov_trace_pc() #11
  %653 = ptrtoint ptr %val.i.i967 to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load i32, ptr %val.i.i967, align 4
  br label %tvp5150_read.exit.i989.2

tvp5150_read.exit.i989.2:                         ; preds = %if.end.i.i983.2, %for.body15.i982.2.tvp5150_read.exit.i989.2_crit_edge
  %retval.0.i.i984.2 = phi i32 [ %654, %if.end.i.i983.2 ], [ %call1.i.i980.2, %for.body15.i982.2.tvp5150_read.exit.i989.2_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i967) #9
  %conv17.i985.2 = trunc i32 %retval.0.i.i984.2 to i8
  %655 = ptrtoint ptr %arrayidx.i986.2 to i32
  call void @__asan_store1_noabort(i32 %655)
  store i8 %conv17.i985.2, ptr %arrayidx.i986.2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smin.i973)
  %exitcond.not.i988.2 = icmp eq i32 %smin.i973, 3
  br i1 %exitcond.not.i988.2, label %tvp5150_read.exit.i989.2.do.end21.i993_crit_edge, label %for.body15.i982.3

tvp5150_read.exit.i989.2.do.end21.i993_crit_edge: ; preds = %tvp5150_read.exit.i989.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21.i993

for.body15.i982.3:                                ; preds = %tvp5150_read.exit.i989.2
  %add.i978.3 = or i32 %i.050.i972, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i967) #9
  %656 = ptrtoint ptr %val.i.i967 to i32
  call void @__asan_store4_noabort(i32 %656)
  store i32 -1, ptr %val.i.i967, align 4, !annotation !451
  %657 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load ptr, ptr %regmap.i, align 8
  %call1.i.i980.3 = call i32 @regmap_read(ptr noundef %658, i32 noundef %add.i978.3, ptr noundef nonnull %val.i.i967) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i980.3)
  %cmp.i.i981.3 = icmp slt i32 %call1.i.i980.3, 0
  br i1 %cmp.i.i981.3, label %for.body15.i982.3.tvp5150_read.exit.i989.3_crit_edge, label %if.end.i.i983.3

for.body15.i982.3.tvp5150_read.exit.i989.3_crit_edge: ; preds = %for.body15.i982.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i989.3

if.end.i.i983.3:                                  ; preds = %for.body15.i982.3
  call void @__sanitizer_cov_trace_pc() #11
  %659 = ptrtoint ptr %val.i.i967 to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load i32, ptr %val.i.i967, align 4
  br label %tvp5150_read.exit.i989.3

tvp5150_read.exit.i989.3:                         ; preds = %if.end.i.i983.3, %for.body15.i982.3.tvp5150_read.exit.i989.3_crit_edge
  %retval.0.i.i984.3 = phi i32 [ %660, %if.end.i.i983.3 ], [ %call1.i.i980.3, %for.body15.i982.3.tvp5150_read.exit.i989.3_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i967) #9
  %conv17.i985.3 = trunc i32 %retval.0.i.i984.3 to i8
  %661 = ptrtoint ptr %arrayidx.i986.3 to i32
  call void @__asan_store1_noabort(i32 %661)
  store i8 %conv17.i985.3, ptr %arrayidx.i986.3, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %smin.i973)
  %exitcond.not.i988.3 = icmp eq i32 %smin.i973, 4
  br i1 %exitcond.not.i988.3, label %tvp5150_read.exit.i989.3.do.end21.i993_crit_edge, label %for.body15.i982.4

tvp5150_read.exit.i989.3.do.end21.i993_crit_edge: ; preds = %tvp5150_read.exit.i989.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21.i993

for.body15.i982.4:                                ; preds = %tvp5150_read.exit.i989.3
  %add.i978.4 = or i32 %i.050.i972, 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i967) #9
  %662 = ptrtoint ptr %val.i.i967 to i32
  call void @__asan_store4_noabort(i32 %662)
  store i32 -1, ptr %val.i.i967, align 4, !annotation !451
  %663 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load ptr, ptr %regmap.i, align 8
  %call1.i.i980.4 = call i32 @regmap_read(ptr noundef %664, i32 noundef %add.i978.4, ptr noundef nonnull %val.i.i967) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i980.4)
  %cmp.i.i981.4 = icmp slt i32 %call1.i.i980.4, 0
  br i1 %cmp.i.i981.4, label %for.body15.i982.4.tvp5150_read.exit.i989.4_crit_edge, label %if.end.i.i983.4

for.body15.i982.4.tvp5150_read.exit.i989.4_crit_edge: ; preds = %for.body15.i982.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i989.4

if.end.i.i983.4:                                  ; preds = %for.body15.i982.4
  call void @__sanitizer_cov_trace_pc() #11
  %665 = ptrtoint ptr %val.i.i967 to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load i32, ptr %val.i.i967, align 4
  br label %tvp5150_read.exit.i989.4

tvp5150_read.exit.i989.4:                         ; preds = %if.end.i.i983.4, %for.body15.i982.4.tvp5150_read.exit.i989.4_crit_edge
  %retval.0.i.i984.4 = phi i32 [ %666, %if.end.i.i983.4 ], [ %call1.i.i980.4, %for.body15.i982.4.tvp5150_read.exit.i989.4_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i967) #9
  %conv17.i985.4 = trunc i32 %retval.0.i.i984.4 to i8
  %667 = ptrtoint ptr %arrayidx.i986.4 to i32
  call void @__asan_store1_noabort(i32 %667)
  store i8 %conv17.i985.4, ptr %arrayidx.i986.4, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %smin.i973)
  %exitcond.not.i988.4 = icmp eq i32 %smin.i973, 5
  br i1 %exitcond.not.i988.4, label %tvp5150_read.exit.i989.4.do.end21.i993_crit_edge, label %for.body15.i982.5

tvp5150_read.exit.i989.4.do.end21.i993_crit_edge: ; preds = %tvp5150_read.exit.i989.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21.i993

for.body15.i982.5:                                ; preds = %tvp5150_read.exit.i989.4
  %add.i978.5 = or i32 %i.050.i972, 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i967) #9
  %668 = ptrtoint ptr %val.i.i967 to i32
  call void @__asan_store4_noabort(i32 %668)
  store i32 -1, ptr %val.i.i967, align 4, !annotation !451
  %669 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load ptr, ptr %regmap.i, align 8
  %call1.i.i980.5 = call i32 @regmap_read(ptr noundef %670, i32 noundef %add.i978.5, ptr noundef nonnull %val.i.i967) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i980.5)
  %cmp.i.i981.5 = icmp slt i32 %call1.i.i980.5, 0
  br i1 %cmp.i.i981.5, label %for.body15.i982.5.tvp5150_read.exit.i989.5_crit_edge, label %if.end.i.i983.5

for.body15.i982.5.tvp5150_read.exit.i989.5_crit_edge: ; preds = %for.body15.i982.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i989.5

if.end.i.i983.5:                                  ; preds = %for.body15.i982.5
  call void @__sanitizer_cov_trace_pc() #11
  %671 = ptrtoint ptr %val.i.i967 to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load i32, ptr %val.i.i967, align 4
  br label %tvp5150_read.exit.i989.5

tvp5150_read.exit.i989.5:                         ; preds = %if.end.i.i983.5, %for.body15.i982.5.tvp5150_read.exit.i989.5_crit_edge
  %retval.0.i.i984.5 = phi i32 [ %672, %if.end.i.i983.5 ], [ %call1.i.i980.5, %for.body15.i982.5.tvp5150_read.exit.i989.5_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i967) #9
  %conv17.i985.5 = trunc i32 %retval.0.i.i984.5 to i8
  %673 = ptrtoint ptr %arrayidx.i986.5 to i32
  call void @__asan_store1_noabort(i32 %673)
  store i8 %conv17.i985.5, ptr %arrayidx.i986.5, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %smin.i973)
  %exitcond.not.i988.5 = icmp eq i32 %smin.i973, 6
  br i1 %exitcond.not.i988.5, label %tvp5150_read.exit.i989.5.do.end21.i993_crit_edge, label %for.body15.i982.6

tvp5150_read.exit.i989.5.do.end21.i993_crit_edge: ; preds = %tvp5150_read.exit.i989.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21.i993

for.body15.i982.6:                                ; preds = %tvp5150_read.exit.i989.5
  %add.i978.6 = or i32 %i.050.i972, 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i967) #9
  %674 = ptrtoint ptr %val.i.i967 to i32
  call void @__asan_store4_noabort(i32 %674)
  store i32 -1, ptr %val.i.i967, align 4, !annotation !451
  %675 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load ptr, ptr %regmap.i, align 8
  %call1.i.i980.6 = call i32 @regmap_read(ptr noundef %676, i32 noundef %add.i978.6, ptr noundef nonnull %val.i.i967) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i980.6)
  %cmp.i.i981.6 = icmp slt i32 %call1.i.i980.6, 0
  br i1 %cmp.i.i981.6, label %for.body15.i982.6.tvp5150_read.exit.i989.6_crit_edge, label %if.end.i.i983.6

for.body15.i982.6.tvp5150_read.exit.i989.6_crit_edge: ; preds = %for.body15.i982.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i989.6

if.end.i.i983.6:                                  ; preds = %for.body15.i982.6
  call void @__sanitizer_cov_trace_pc() #11
  %677 = ptrtoint ptr %val.i.i967 to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load i32, ptr %val.i.i967, align 4
  br label %tvp5150_read.exit.i989.6

tvp5150_read.exit.i989.6:                         ; preds = %if.end.i.i983.6, %for.body15.i982.6.tvp5150_read.exit.i989.6_crit_edge
  %retval.0.i.i984.6 = phi i32 [ %678, %if.end.i.i983.6 ], [ %call1.i.i980.6, %for.body15.i982.6.tvp5150_read.exit.i989.6_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i967) #9
  %conv17.i985.6 = trunc i32 %retval.0.i.i984.6 to i8
  %679 = ptrtoint ptr %arrayidx.i986.6 to i32
  call void @__asan_store1_noabort(i32 %679)
  store i8 %conv17.i985.6, ptr %arrayidx.i986.6, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %smin.i973)
  %exitcond.not.i988.6 = icmp eq i32 %smin.i973, 7
  br i1 %exitcond.not.i988.6, label %tvp5150_read.exit.i989.6.do.end21.i993_crit_edge, label %for.body15.i982.7

tvp5150_read.exit.i989.6.do.end21.i993_crit_edge: ; preds = %tvp5150_read.exit.i989.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21.i993

for.body15.i982.7:                                ; preds = %tvp5150_read.exit.i989.6
  %add.i978.7 = or i32 %i.050.i972, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i967) #9
  %680 = ptrtoint ptr %val.i.i967 to i32
  call void @__asan_store4_noabort(i32 %680)
  store i32 -1, ptr %val.i.i967, align 4, !annotation !451
  %681 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %681)
  %682 = load ptr, ptr %regmap.i, align 8
  %call1.i.i980.7 = call i32 @regmap_read(ptr noundef %682, i32 noundef %add.i978.7, ptr noundef nonnull %val.i.i967) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i980.7)
  %cmp.i.i981.7 = icmp slt i32 %call1.i.i980.7, 0
  br i1 %cmp.i.i981.7, label %for.body15.i982.7.tvp5150_read.exit.i989.7_crit_edge, label %if.end.i.i983.7

for.body15.i982.7.tvp5150_read.exit.i989.7_crit_edge: ; preds = %for.body15.i982.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i989.7

if.end.i.i983.7:                                  ; preds = %for.body15.i982.7
  call void @__sanitizer_cov_trace_pc() #11
  %683 = ptrtoint ptr %val.i.i967 to i32
  call void @__asan_load4_noabort(i32 %683)
  %684 = load i32, ptr %val.i.i967, align 4
  br label %tvp5150_read.exit.i989.7

tvp5150_read.exit.i989.7:                         ; preds = %if.end.i.i983.7, %for.body15.i982.7.tvp5150_read.exit.i989.7_crit_edge
  %retval.0.i.i984.7 = phi i32 [ %684, %if.end.i.i983.7 ], [ %call1.i.i980.7, %for.body15.i982.7.tvp5150_read.exit.i989.7_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i967) #9
  %conv17.i985.7 = trunc i32 %retval.0.i.i984.7 to i8
  %685 = ptrtoint ptr %arrayidx.i986.7 to i32
  call void @__asan_store1_noabort(i32 %685)
  store i8 %conv17.i985.7, ptr %arrayidx.i986.7, align 1
  br label %do.end21.i993

do.end21.i993:                                    ; preds = %tvp5150_read.exit.i989.7, %tvp5150_read.exit.i989.6.do.end21.i993_crit_edge, %tvp5150_read.exit.i989.5.do.end21.i993_crit_edge, %tvp5150_read.exit.i989.4.do.end21.i993_crit_edge, %tvp5150_read.exit.i989.3.do.end21.i993_crit_edge, %tvp5150_read.exit.i989.2.do.end21.i993_crit_edge, %tvp5150_read.exit.i989.1.do.end21.i993_crit_edge, %tvp5150_read.exit.i989.do.end21.i993_crit_edge
  %686 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %687, ptr noundef nonnull @.str.247, ptr noundef nonnull @.str.243, i32 noundef %i.050.i972, i32 noundef %637, ptr noundef nonnull %buf.i968) #12
  %add26.i990 = add nuw nsw i32 %i.050.i972, 8
  %cmp5.i991 = icmp ult i32 %i.050.i972, 243
  %indvars.iv.next.i992 = add nsw i32 %indvars.iv.i971, -8
  br i1 %cmp5.i991, label %do.end21.i993.for.body15.i982.preheader_crit_edge, label %dump_reg_range.exit994

do.end21.i993.for.body15.i982.preheader_crit_edge: ; preds = %do.end21.i993
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body15.i982.preheader

dump_reg_range.exit994:                           ; preds = %do.end21.i993
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i968) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tvp5150_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.252)
  switch i32 %reg, label %sw.default [
    i32 132, label %entry.return_crit_edge
    i32 133, label %entry.return_crit_edge1
    i32 192, label %entry.return_crit_edge2
    i32 134, label %entry.return_crit_edge3
    i32 135, label %entry.return_crit_edge4
    i32 136, label %entry.return_crit_edge5
    i32 137, label %entry.return_crit_edge6
    i32 138, label %entry.return_crit_edge7
    i32 139, label %entry.return_crit_edge8
    i32 140, label %entry.return_crit_edge9
    i32 176, label %entry.return_crit_edge10
    i32 198, label %entry.return_crit_edge11
    i32 199, label %entry.return_crit_edge12
  ]

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp5150_g_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef %reg) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %reg1, align 1
  %conv = trunc i64 %1 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !451
  %regmap.i = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 7
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 8
  %conv.i = and i32 %conv, 255
  %call1.i = call i32 @regmap_read(ptr noundef %4, i32 noundef %conv.i, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %tvp5150_read.exit.thread, label %tvp5150_read.exit

tvp5150_read.exit.thread:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  br label %do.end

tvp5150_read.exit:                                ; preds = %entry
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %tvp5150_read.exit.do.end_crit_edge, label %if.end

tvp5150_read.exit.do.end_crit_edge:               ; preds = %tvp5150_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %tvp5150_read.exit.do.end_crit_edge, %tvp5150_read.exit.thread
  %retval.0.i12 = phi i32 [ %call1.i, %tvp5150_read.exit.thread ], [ %6, %tvp5150_read.exit.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 14
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %retval.0.i12) #12
  br label %cleanup

if.end:                                           ; preds = %tvp5150_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv313 = zext i32 %6 to i64
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %9 = ptrtoint ptr %val to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %conv313, ptr %val, align 1
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %10 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 1, ptr %size, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %retval.0.i12, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp5150_s_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 7
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 8
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %2 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %reg1, align 1
  %4 = trunc i64 %3 to i32
  %conv = and i32 %4, 255
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %5 = ptrtoint ptr %val to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %val, align 1
  %7 = trunc i64 %6 to i32
  %conv3 = and i32 %7, 255
  %call4 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %conv, i32 noundef %conv3) #9
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp5150_subscribe_event(ptr noundef %sd, ptr noundef %fh, ptr noundef %sub) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sub, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.253)
  switch i32 %1, label %entry.return_crit_edge [
    i32 5, label %sw.bb
    i32 3, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @v4l2_src_change_event_subdev_subscribe(ptr noundef %sd, ptr noundef %fh, ptr noundef %sub) #9
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @v4l2_ctrl_subdev_subscribe_event(ptr noundef %sd, ptr noundef %fh, ptr noundef %sub) #9
  br label %return

return:                                           ; preds = %sw.bb1, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subdev_unsubscribe(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_src_change_event_subdev_subscribe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subdev_subscribe_event(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp5150_g_tuner(ptr nocapture noundef readonly %sd, ptr nocapture noundef writeonly %vt) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !451
  %regmap.i = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 7
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 8
  %call1.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 136, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %entry.tvp5150_read.exit_crit_edge, label %if.end.i

entry.tvp5150_read.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  br label %tvp5150_read.exit

tvp5150_read.exit:                                ; preds = %if.end.i, %entry.tvp5150_read.exit_crit_edge
  %retval.0.i = phi i32 [ %4, %if.end.i ], [ %call1.i, %entry.tvp5150_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  %5 = and i32 %retval.0.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %.not = icmp eq i32 %5, 6
  %6 = select i1 %.not, i32 65535, i32 0
  %signal = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 8
  %7 = ptrtoint ptr %signal to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %signal, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp5150_s_routing(ptr nocapture noundef %sd, i32 noundef %input, i32 noundef %output, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %input1 = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %input1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %input, ptr %input1, align 8
  %output2 = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 12
  %1 = ptrtoint ptr %output2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %output, ptr %output2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %output)
  %cmp = icmp ne i32 %output, 1
  %spec.select = zext i1 %cmp to i32
  %2 = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 14
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.select, ptr %2, align 4
  tail call fastcc void @tvp5150_selmux(ptr noundef %sd)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tvp5150_g_std(ptr nocapture noundef readonly %sd, ptr nocapture noundef writeonly %std) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %norm = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 9
  %0 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %norm, align 8
  %2 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %std, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp5150_s_std(ptr nocapture noundef %sd, i64 noundef %std) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_connector = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 3
  %0 = ptrtoint ptr %cur_connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_connector, align 8
  %norm = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 9
  %2 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %norm, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %std)
  %cmp = icmp eq i64 %3, %std
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %connectors_num = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 4
  %4 = ptrtoint ptr %connectors_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %connectors_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end.if.end2_crit_edge, label %if.else

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %connector = getelementptr inbounds %struct.v4l2_fwnode_connector, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %connector to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %connector, align 8
  br label %if.end2

if.end2:                                          ; preds = %if.else, %if.end.if.end2_crit_edge
  %supported_stds.0 = phi i64 [ %7, %if.else ], [ 16777215, %if.end.if.end2_crit_edge ]
  %and = and i64 %supported_stds.0, %std
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp3 = icmp eq i64 %and, 0
  br i1 %cmp3, label %if.end2.cleanup_crit_edge, label %if.end5

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  %and6 = and i64 %std, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and6)
  %tobool7.not = icmp eq i64 %and6, 0
  %spec.select = select i1 %tobool7.not, i32 576, i32 480
  %8 = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 6, i32 3
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.select, ptr %8, align 4
  %10 = ptrtoint ptr %norm to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %and, ptr %norm, align 8
  call void @__sanitizer_cov_trace_switch(i64 %std, ptr @__sancov_gen_cov_switch_values.254)
  switch i64 %std, label %if.else7.i [
    i64 16384, label %if.end5.do.body.i_crit_edge
    i64 256, label %if.then2.i
    i64 512, label %if.end5.if.then6.i_crit_edge
    i64 1024, label %if.end5.if.then6.i_crit_edge29
  ]

if.end5.if.then6.i_crit_edge29:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i

if.end5.if.then6.i_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i

if.end5.do.body.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.then2.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.then6.i:                                       ; preds = %if.end5.if.then6.i_crit_edge, %if.end5.if.then6.i_crit_edge29
  br label %do.body.i

if.else7.i:                                       ; preds = %if.end5
  %and.i = and i64 %std, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.else9.i, label %if.else7.i.do.body.i_crit_edge

if.else7.i.do.body.i_crit_edge:                   ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.else9.i:                                       ; preds = %if.else7.i
  %and10.i = and i64 %std, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and10.i)
  %tobool11.not.i = icmp eq i64 %and10.i, 0
  br i1 %tobool11.not.i, label %if.else13.i, label %if.else9.i.do.body.i_crit_edge

if.else9.i.do.body.i_crit_edge:                   ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.else13.i:                                      ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #11
  %and14.i = and i64 %std, 16711680
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and14.i)
  %tobool15.not.i = icmp eq i64 %and14.i, 0
  %spec.select.i = select i1 %tobool15.not.i, i32 0, i32 12
  br label %do.body.i

do.body.i:                                        ; preds = %if.else13.i, %if.else9.i.do.body.i_crit_edge, %if.else7.i.do.body.i_crit_edge, %if.then6.i, %if.then2.i, %if.end5.do.body.i_crit_edge
  %fmt.0.i = phi i32 [ 6, %if.then2.i ], [ 8, %if.then6.i ], [ 10, %if.end5.do.body.i_crit_edge ], [ 2, %if.else7.i.do.body.i_crit_edge ], [ 4, %if.else9.i.do.body.i_crit_edge ], [ %spec.select.i, %if.else13.i ]
  %11 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp22.i = icmp sgt i32 %11, 0
  br i1 %cmp22.i, label %do.end.i, label %do.body.i.tvp5150_set_std.exit_crit_edge

do.body.i.tvp5150_set_std.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_set_std.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 14
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %13, ptr noundef nonnull @.str.23, i32 noundef %fmt.0.i) #12
  br label %tvp5150_set_std.exit

tvp5150_set_std.exit:                             ; preds = %do.end.i, %do.body.i.tvp5150_set_std.exit_crit_edge
  %regmap.i = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 7
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 8
  %call28.i = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 40, i32 noundef %fmt.0.i) #9
  br label %cleanup

cleanup:                                          ; preds = %tvp5150_set_std.exit, %if.end2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %tvp5150_set_std.exit ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp5150_querystd(ptr nocapture noundef readonly %sd, ptr nocapture noundef writeonly %std_id) #2 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  %status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #9
  %0 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status.i, align 4, !annotation !451
  %irq.i = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 8
  %1 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %query_lock.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %lock.i = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 15
  %3 = ptrtoint ptr %lock.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %lock.i, align 8, !range !453
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.i.not = icmp eq i8 %4, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #9
  br i1 %tobool1.i.not, label %if.then.i.cond.end_crit_edge, label %if.then.i.cond.true_crit_edge

if.then.i.cond.true_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.true

if.then.i.cond.end_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

query_lock.exit:                                  ; preds = %entry
  %regmap.i = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 7
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 8
  %call2.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 136, ptr noundef nonnull %status.i) #9
  %7 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status.i, align 4
  %and.i = and i32 %8, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #9
  br i1 %cmp.i, label %query_lock.exit.cond.true_crit_edge, label %query_lock.exit.cond.end_crit_edge

query_lock.exit.cond.end_crit_edge:               ; preds = %query_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

query_lock.exit.cond.true_crit_edge:              ; preds = %query_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.true

cond.true:                                        ; preds = %query_lock.exit.cond.true_crit_edge, %if.then.i.cond.true_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #9
  %9 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %val.i.i, align 4, !annotation !451
  %regmap.i.i = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 7
  %10 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i.i, align 8
  %call1.i.i = call i32 @regmap_read(ptr noundef %11, i32 noundef 140, ptr noundef nonnull %val.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i.i, label %cond.true.tvp5150_read.exit.i_crit_edge, label %if.end.i.i

cond.true.tvp5150_read.exit.i_crit_edge:          ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i

if.end.i.i:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val.i.i, align 4
  br label %tvp5150_read.exit.i

tvp5150_read.exit.i:                              ; preds = %if.end.i.i, %cond.true.tvp5150_read.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %13, %if.end.i.i ], [ %call1.i.i, %cond.true.tvp5150_read.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #9
  %and.i3 = and i32 %retval.0.i.i, 15
  %14 = zext i32 %and.i3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.255)
  switch i32 %and.i3, label %sw.default.i [
    i32 1, label %tvp5150_read.exit.i.cond.end_crit_edge
    i32 3, label %sw.bb1.i
    i32 5, label %sw.bb2.i
    i32 7, label %sw.bb3.i
    i32 9, label %sw.bb4.i
    i32 11, label %sw.bb5.i
  ]

tvp5150_read.exit.i.cond.end_crit_edge:           ; preds = %tvp5150_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

sw.bb1.i:                                         ; preds = %tvp5150_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

sw.bb2.i:                                         ; preds = %tvp5150_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

sw.bb3.i:                                         ; preds = %tvp5150_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

sw.bb4.i:                                         ; preds = %tvp5150_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

sw.bb5.i:                                         ; preds = %tvp5150_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

sw.default.i:                                     ; preds = %tvp5150_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.end:                                         ; preds = %sw.default.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %tvp5150_read.exit.i.cond.end_crit_edge, %query_lock.exit.cond.end_crit_edge, %if.then.i.cond.end_crit_edge
  %cond = phi i64 [ 0, %query_lock.exit.cond.end_crit_edge ], [ 0, %sw.default.i ], [ 16711680, %sw.bb5.i ], [ 16384, %sw.bb4.i ], [ 1536, %sw.bb3.i ], [ 256, %sw.bb2.i ], [ 255, %sw.bb1.i ], [ 45056, %tvp5150_read.exit.i.cond.end_crit_edge ], [ 0, %if.then.i.cond.end_crit_edge ]
  %15 = ptrtoint ptr %std_id to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %cond, ptr %std_id, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp5150_s_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  %val.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %dev11 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 14
  %0 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev11, align 4
  br i1 %tobool.not, label %if.else10, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %if.then
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !454
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !455
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !456
  br label %cleanup

if.end:                                           ; preds = %if.then
  %regmap.i.i = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 7
  %3 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i.i, align 8
  %call5.i.i = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 1, i32 noundef 21) #9
  %5 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i.i, align 8
  %call5.i.1.i = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 3, i32 noundef 111) #9
  %7 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i.i, align 8
  %call5.i.2.i = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 4, i32 noundef 0) #9
  %9 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i.i, align 8
  %call5.i.3.i = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 13, i32 noundef 71) #9
  %11 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i.i, align 8
  %call5.i.4.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 26, i32 noundef 12) #9
  %13 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i.i, align 8
  %call5.i.5.i = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 27, i32 noundef 84) #9
  %15 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i.i, align 8
  %call5.i.6.i = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 39, i32 noundef 32) #9
  %norm.i = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 9
  %17 = ptrtoint ptr %norm.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %norm.i, align 8
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.256)
  switch i64 %18, label %if.else7.i.i [
    i64 16777215, label %if.then.i27
    i64 16384, label %if.end.do.body.i.i_crit_edge
    i64 256, label %if.end.if.then2.i.i_crit_edge
    i64 512, label %if.end.if.then6.i.i_crit_edge
    i64 1024, label %if.end.if.then6.i.i_crit_edge32
  ]

if.end.if.then6.i.i_crit_edge32:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i.i

if.end.if.then6.i.i_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i.i

if.end.if.then2.i.i_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.i.i

if.end.do.body.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

if.then.i27:                                      ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i) #9
  %19 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %val.i.i.i, align 4, !annotation !451
  %20 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i.i, align 8
  %call1.i.i.i = call i32 @regmap_read(ptr noundef %21, i32 noundef 140, ptr noundef nonnull %val.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call1.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i27.tvp5150_read.exit.i.i_crit_edge, label %if.end.i.i.i

if.then.i27.tvp5150_read.exit.i.i_crit_edge:      ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val.i.i.i, align 4
  br label %tvp5150_read.exit.i.i

tvp5150_read.exit.i.i:                            ; preds = %if.end.i.i.i, %if.then.i27.tvp5150_read.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %23, %if.end.i.i.i ], [ %call1.i.i.i, %if.then.i27.tvp5150_read.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #9
  %and.i.i = and i32 %retval.0.i.i.i, 15
  %24 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.257)
  switch i32 %and.i.i, label %sw.default.i.i [
    i32 1, label %if.else7.i.thread13.i
    i32 3, label %if.else9.i.thread21.i
    i32 5, label %tvp5150_read.exit.i.i.if.then2.i.i_crit_edge
    i32 7, label %tvp5150_read.exit.i.i.if.else13.i.i_crit_edge
    i32 9, label %tvp5150_read.exit.i.i.do.body.i.i_crit_edge
    i32 11, label %sw.bb5.i.i
  ]

tvp5150_read.exit.i.i.do.body.i.i_crit_edge:      ; preds = %tvp5150_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

tvp5150_read.exit.i.i.if.else13.i.i_crit_edge:    ; preds = %tvp5150_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else13.i.i

tvp5150_read.exit.i.i.if.then2.i.i_crit_edge:     ; preds = %tvp5150_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.i.i

if.else9.i.thread21.i:                            ; preds = %tvp5150_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

if.else7.i.thread13.i:                            ; preds = %tvp5150_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

sw.bb5.i.i:                                       ; preds = %tvp5150_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else13.i.i

sw.default.i.i:                                   ; preds = %tvp5150_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else13.i.i

if.then2.i.i:                                     ; preds = %tvp5150_read.exit.i.i.if.then2.i.i_crit_edge, %if.end.if.then2.i.i_crit_edge
  br label %do.body.i.i

if.then6.i.i:                                     ; preds = %if.end.if.then6.i.i_crit_edge, %if.end.if.then6.i.i_crit_edge32
  br label %do.body.i.i

if.else7.i.i:                                     ; preds = %if.end
  %and.i1.i = and i64 %18, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i1.i)
  %tobool.not.i.i = icmp eq i64 %and.i1.i, 0
  br i1 %tobool.not.i.i, label %if.else9.i.i, label %if.else7.i.i.do.body.i.i_crit_edge

if.else7.i.i.do.body.i.i_crit_edge:               ; preds = %if.else7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

if.else9.i.i:                                     ; preds = %if.else7.i.i
  %and10.i.i = and i64 %18, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and10.i.i)
  %tobool11.not.i.i = icmp eq i64 %and10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.else9.i.i.if.else13.i.i_crit_edge, label %if.else9.i.i.do.body.i.i_crit_edge

if.else9.i.i.do.body.i.i_crit_edge:               ; preds = %if.else9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

if.else9.i.i.if.else13.i.i_crit_edge:             ; preds = %if.else9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else13.i.i

if.else13.i.i:                                    ; preds = %if.else9.i.i.if.else13.i.i_crit_edge, %sw.default.i.i, %sw.bb5.i.i, %tvp5150_read.exit.i.i.if.else13.i.i_crit_edge
  %std.041220.i = phi i64 [ %18, %if.else9.i.i.if.else13.i.i_crit_edge ], [ 16711680, %sw.bb5.i.i ], [ 0, %sw.default.i.i ], [ 1536, %tvp5150_read.exit.i.i.if.else13.i.i_crit_edge ]
  %and14.i.i = and i64 %std.041220.i, 16711680
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and14.i.i)
  %tobool15.not.i.i = icmp eq i64 %and14.i.i, 0
  %spec.select.i.i = select i1 %tobool15.not.i.i, i32 0, i32 12
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.else13.i.i, %if.else9.i.i.do.body.i.i_crit_edge, %if.else7.i.i.do.body.i.i_crit_edge, %if.then6.i.i, %if.then2.i.i, %if.else7.i.thread13.i, %if.else9.i.thread21.i, %tvp5150_read.exit.i.i.do.body.i.i_crit_edge, %if.end.do.body.i.i_crit_edge
  %fmt.0.i.i = phi i32 [ 6, %if.then2.i.i ], [ 8, %if.then6.i.i ], [ 2, %if.else7.i.i.do.body.i.i_crit_edge ], [ 4, %if.else9.i.i.do.body.i.i_crit_edge ], [ %spec.select.i.i, %if.else13.i.i ], [ 10, %tvp5150_read.exit.i.i.do.body.i.i_crit_edge ], [ 2, %if.else7.i.thread13.i ], [ 4, %if.else9.i.thread21.i ], [ 10, %if.end.do.body.i.i_crit_edge ]
  %25 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp22.i.i = icmp sgt i32 %25, 0
  br i1 %cmp22.i.i, label %do.end.i.i, label %do.body.i.i.tvp5150_set_std.exit.i_crit_edge

do.body.i.i.tvp5150_set_std.exit.i_crit_edge:     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_set_std.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev11, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %27, ptr noundef nonnull @.str.23, i32 noundef %fmt.0.i.i) #12
  br label %tvp5150_set_std.exit.i

tvp5150_set_std.exit.i:                           ; preds = %do.end.i.i, %do.body.i.i.tvp5150_set_std.exit.i_crit_edge
  %28 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i.i, align 8
  %call28.i.i = call i32 @regmap_write(ptr noundef %29, i32 noundef 40, i32 noundef %fmt.0.i.i) #9
  %mbus_type.i = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 18
  %30 = ptrtoint ptr %mbus_type.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mbus_type.i, align 8
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.258)
  switch i32 %31, label %tvp5150_set_std.exit.i.tvp5150_enable.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %tvp5150_set_std.exit.i.cleanup.sink.split.i_crit_edge
  ]

tvp5150_set_std.exit.i.cleanup.sink.split.i_crit_edge: ; preds = %tvp5150_set_std.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

tvp5150_set_std.exit.i.tvp5150_enable.exit_crit_edge: ; preds = %tvp5150_set_std.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_enable.exit

sw.bb.i:                                          ; preds = %tvp5150_set_std.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap.i.i, align 8
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 13, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.bb.i, %tvp5150_set_std.exit.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 13, %sw.bb.i ], [ 9, %tvp5150_set_std.exit.i.cleanup.sink.split.i_crit_edge ]
  %oe.i = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 13
  %35 = ptrtoint ptr %oe.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink.i, ptr %oe.i, align 8
  br label %tvp5150_enable.exit

tvp5150_enable.exit:                              ; preds = %cleanup.sink.split.i, %tvp5150_set_std.exit.i.tvp5150_enable.exit_crit_edge
  %irq = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 8
  %36 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool4.not = icmp eq i32 %37, 0
  br i1 %tobool4.not, label %tvp5150_enable.exit.if.end8.sink.split_crit_edge, label %if.then5

tvp5150_enable.exit.if.end8.sink.split_crit_edge: ; preds = %tvp5150_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.sink.split

if.then5:                                         ; preds = %tvp5150_enable.exit
  %lock = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 15
  %38 = ptrtoint ptr %lock to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %lock, align 8, !range !453
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool6.not = icmp eq i8 %39, 0
  br i1 %tobool6.not, label %if.then5.if.end8_crit_edge, label %if.then5.if.end8.sink.split_crit_edge

if.then5.if.end8.sink.split_crit_edge:            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.sink.split

if.then5.if.end8_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end8.sink.split:                               ; preds = %if.then5.if.end8.sink.split_crit_edge, %tvp5150_enable.exit.if.end8.sink.split_crit_edge
  %oe = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 13
  %40 = ptrtoint ptr %oe to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %oe, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.end8.sink.split, %if.then5.if.end8_crit_edge
  %val.0 = phi i32 [ 0, %if.then5.if.end8_crit_edge ], [ %41, %if.end8.sink.split ]
  call void @v4l2_subdev_notify_event(ptr noundef %sd, ptr noundef nonnull @tvp5150_ev_fmt) #9
  br label %if.end13

if.else10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i28 = tail call i32 @__pm_runtime_idle(ptr noundef %1, i32 noundef 5) #9
  br label %if.end13

if.end13:                                         ; preds = %if.else10, %if.end8
  %val.1 = phi i32 [ %val.0, %if.end8 ], [ 0, %if.else10 ]
  %regmap = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 7
  %42 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap, align 8
  %call.i29 = call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef 3, i32 noundef 13, i32 noundef %val.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tvp5150_selmux(ptr nocapture noundef readonly %sd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_id = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 16
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %dev_id, align 2
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.259)
  switch i16 %1, label %entry.if.end15_crit_edge [
    i16 20816, label %land.lhs.true
    i16 20817, label %land.lhs.true9
  ]

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

land.lhs.true:                                    ; preds = %entry
  %rom_ver = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 17
  %3 = ptrtoint ptr %rom_ver to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %rom_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %4)
  %cmp3 = icmp eq i16 %4, 1024
  br i1 %cmp3, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

land.lhs.true9:                                   ; preds = %entry
  %rom_ver10 = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 17
  %5 = ptrtoint ptr %rom_ver10 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %rom_ver10, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %6)
  %cmp12 = icmp eq i16 %6, 256
  br i1 %cmp12, label %land.lhs.true9.if.then_crit_edge, label %land.lhs.true9.if.end15_crit_edge

land.lhs.true9.if.end15_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

land.lhs.true9.if.then_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %land.lhs.true9.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %enable = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 14
  %7 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %spec.select = select i1 %tobool.not, i32 8, i32 0
  br label %if.end15

if.end15:                                         ; preds = %if.then, %land.lhs.true9.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %entry.if.end15_crit_edge
  %input.0 = phi i32 [ 0, %land.lhs.true9.if.end15_crit_edge ], [ %spec.select, %if.then ], [ 0, %land.lhs.true.if.end15_crit_edge ], [ 0, %entry.if.end15_crit_edge ]
  %input16 = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 11
  %9 = ptrtoint ptr %input16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %input16, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.260)
  switch i32 %10, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %if.end15.do.body_crit_edge
  ]

if.end15.do.body_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb:                                            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %input.0, 2
  br label %do.body

sw.default:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %or18 = or i32 %input.0, 1
  br label %do.body

do.body:                                          ; preds = %sw.default, %sw.bb, %if.end15.do.body_crit_edge
  %input.1 = phi i32 [ %or18, %sw.default ], [ %input.0, %if.end15.do.body_crit_edge ], [ %or, %sw.bb ]
  %12 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp19 = icmp sgt i32 %12, 0
  br i1 %cmp19, label %do.end, label %do.body.do.end35_crit_edge

do.body.do.end35_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 14
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp24 = icmp eq i32 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp27 = icmp eq i32 %10, 2
  %cond = select i1 %cmp27, ptr @.str.19, ptr @.str.20
  %cond29 = select i1 %cmp24, ptr @.str.18, ptr %cond
  %output = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 12
  %15 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %output, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp30 = icmp eq i32 %16, 0
  %cond32 = select i1 %cmp30, ptr @.str.21, ptr @.str.22
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %14, ptr noundef nonnull @.str.16, ptr noundef nonnull %cond29, ptr noundef nonnull %cond32, i32 noundef %input.1, i32 noundef 0) #12
  br label %do.end35

do.end35:                                         ; preds = %do.end, %do.body.do.end35_crit_edge
  %regmap = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 7
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 8
  %call36 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 2, i32 noundef 0) #9
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 8
  %call38 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 0, i32 noundef %input.1) #9
  %21 = ptrtoint ptr %input16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %input16, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp40 = icmp eq i32 %22, 2
  %. = select i1 %cmp40, i32 16, i32 64
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 3, i32 noundef 80, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_notify_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp5150_g_sliced_vbi_cap(ptr nocapture noundef readonly %sd, ptr nocapture noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 14
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %2, ptr noundef nonnull @.str.26) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %3 = call ptr @memset(ptr %cap, i32 0, i32 116)
  %service_lines = getelementptr inbounds %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %do.end3
  %i.039 = phi i32 [ 0, %do.end3 ], [ %inc23, %cleanup.for.body_crit_edge ]
  %type = getelementptr [13 x %struct.i2c_vbi_ram_value], ptr @vbi_ram_default, i32 0, i32 %i.039, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end6

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %for.body
  %ini_line = getelementptr [13 x %struct.i2c_vbi_ram_value], ptr @vbi_ram_default, i32 0, i32 %i.039, i32 1, i32 1
  %6 = ptrtoint ptr %ini_line to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ini_line, align 4
  %end_line = getelementptr [13 x %struct.i2c_vbi_ram_value], ptr @vbi_ram_default, i32 0, i32 %i.039, i32 1, i32 2
  %8 = ptrtoint ptr %end_line to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end_line, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp10.not37 = icmp ugt i32 %7, %9
  %.pre = trunc i32 %5 to i16
  br i1 %cmp10.not37, label %if.end6.for.end_crit_edge, label %if.end6.for.body11_crit_edge

if.end6.for.body11_crit_edge:                     ; preds = %if.end6
  br label %for.body11

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body11:                                       ; preds = %for.body11.for.body11_crit_edge, %if.end6.for.body11_crit_edge
  %line.038 = phi i32 [ %inc, %for.body11.for.body11_crit_edge ], [ %7, %if.end6.for.body11_crit_edge ]
  %arrayidx15 = getelementptr [24 x i16], ptr %service_lines, i32 0, i32 %line.038
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx15, align 2
  %conv16 = or i16 %11, %.pre
  store i16 %conv16, ptr %arrayidx15, align 2
  %inc = add i32 %line.038, 1
  %cmp10.not = icmp ugt i32 %inc, %9
  br i1 %cmp10.not, label %for.body11.for.end_crit_edge, label %for.body11.for.body11_crit_edge

for.body11.for.body11_crit_edge:                  ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body11

for.body11.for.end_crit_edge:                     ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body11.for.end_crit_edge, %if.end6.for.end_crit_edge
  %12 = ptrtoint ptr %cap to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %cap, align 4
  %conv21 = or i16 %13, %.pre
  store i16 %conv21, ptr %cap, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge
  %inc23 = add nuw nsw i32 %i.039, 1
  %exitcond.not = icmp eq i32 %inc23, 13
  br i1 %exitcond.not, label %for.end24, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end24:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp5150_s_raw_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sample_format = getelementptr inbounds %struct.v4l2_vbi_format, ptr %fmt, i32 0, i32 3
  %0 = ptrtoint ptr %sample_format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sample_format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1497715271, i32 %1)
  %cmp = icmp eq i32 %1, 1497715271
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %regmap = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 7
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 8
  %call1 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 7, i32 noundef 112) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %count = getelementptr inbounds %struct.v4l2_vbi_format, ptr %fmt, i32 0, i32 5
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %5)
  %cmp2 = icmp eq i32 %5, 18
  br i1 %cmp2, label %land.lhs.true, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %arrayidx4 = getelementptr %struct.v4l2_vbi_format, ptr %fmt, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %7)
  %cmp5 = icmp eq i32 %7, 18
  br i1 %cmp5, label %if.then6, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %regmap7 = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 7
  %8 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap7, align 8
  %call8 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 24, i32 noundef 0) #9
  %10 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap7, align 8
  %call10 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 25, i32 noundef 1) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp5150_g_sliced_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef writeonly %svbi) #2 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %service_lines = getelementptr inbounds %struct.v4l2_sliced_vbi_format, ptr %svbi, i32 0, i32 1
  %0 = call ptr @memset(ptr %service_lines, i32 0, i32 96)
  %norm.i = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 9
  %regmap.i.i = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 7
  %dev20.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %tvp5150_get_vbi.exit.for.body_crit_edge, %entry
  %mask.018 = phi i32 [ 0, %entry ], [ %or, %tvp5150_get_vbi.exit.for.body_crit_edge ]
  %i.016 = phi i32 [ 0, %entry ], [ %inc, %tvp5150_get_vbi.exit.for.body_crit_edge ]
  %1 = ptrtoint ptr %norm.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %norm.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 16777215, i64 %2)
  %cmp.i = icmp eq i64 %2, 16777215
  br i1 %cmp.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %dev20.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev20.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.28) #12
  br label %tvp5150_get_vbi.exit

if.else.i:                                        ; preds = %for.body
  %and.i = and i64 %2, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %add.i = add nuw nsw i32 %i.016, 3
  %spec.select.i = select i1 %tobool.not.i, i32 %i.016, i32 %add.i
  %5 = add nsw i32 %spec.select.i, -28
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %5)
  %6 = icmp ult i32 %5, -22
  br i1 %6, label %if.else.i.tvp5150_get_vbi.exit_crit_edge, label %if.end6.i

if.else.i.tvp5150_get_vbi.exit_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_get_vbi.exit

if.end6.i:                                        ; preds = %if.else.i
  %7 = shl nuw nsw i32 %spec.select.i, 1
  %conv.i = add nuw nsw i32 %7, 196
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #9
  %8 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val.i.i, align 4, !annotation !451
  %9 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i.i, align 8
  %conv.i.i = and i32 %conv.i, 254
  %call1.i.i = call i32 @regmap_read(ptr noundef %10, i32 noundef %conv.i.i, ptr noundef nonnull %val.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i.i, label %if.end6.i.tvp5150_read.exit.thread.i_crit_edge, label %tvp5150_read.exit.i

if.end6.i.tvp5150_read.exit.thread.i_crit_edge:   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.thread.i

tvp5150_read.exit.thread.i:                       ; preds = %for.inc.i.tvp5150_read.exit.thread.i_crit_edge, %if.end6.i.tvp5150_read.exit.thread.i_crit_edge
  %call1.i.lcssa.i = phi i32 [ %call1.i.i, %if.end6.i.tvp5150_read.exit.thread.i_crit_edge ], [ %call1.i.1.i, %for.inc.i.tvp5150_read.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #9
  br label %do.end19.i

tvp5150_read.exit.i:                              ; preds = %if.end6.i
  %11 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp14.i = icmp slt i32 %12, 0
  br i1 %cmp14.i, label %tvp5150_read.exit.i.do.end19.i_crit_edge, label %if.end21.i

tvp5150_read.exit.i.do.end19.i_crit_edge:         ; preds = %tvp5150_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end19.i

do.end19.i:                                       ; preds = %tvp5150_read.exit.1.i.do.end19.i_crit_edge, %tvp5150_read.exit.i.do.end19.i_crit_edge, %tvp5150_read.exit.thread.i
  %retval.0.i49.i = phi i32 [ %call1.i.lcssa.i, %tvp5150_read.exit.thread.i ], [ %12, %tvp5150_read.exit.i.do.end19.i_crit_edge ], [ %21, %tvp5150_read.exit.1.i.do.end19.i_crit_edge ]
  %13 = ptrtoint ptr %dev20.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev20.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.29, i32 noundef %retval.0.i49.i) #12
  br label %tvp5150_get_vbi.exit

if.end21.i:                                       ; preds = %tvp5150_read.exit.i
  %and22.i = and i32 %12, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %and22.i)
  %cmp23.i = icmp ult i32 %and22.i, 13
  br i1 %cmp23.i, label %if.then25.i, label %if.end21.i.for.inc.i_crit_edge

if.end21.i.for.inc.i_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then25.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  %type26.i = getelementptr [13 x %struct.i2c_vbi_ram_value], ptr @vbi_ram_default, i32 0, i32 %and22.i, i32 1
  %15 = ptrtoint ptr %type26.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type26.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then25.i, %if.end21.i.for.inc.i_crit_edge
  %type.1.i = phi i32 [ %16, %if.then25.i ], [ 0, %if.end21.i.for.inc.i_crit_edge ]
  %add11.1.i = add nuw nsw i32 %7, 197
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #9
  %17 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %val.i.i, align 4, !annotation !451
  %18 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i.i, align 8
  %call1.i.1.i = call i32 @regmap_read(ptr noundef %19, i32 noundef %add11.1.i, ptr noundef nonnull %val.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.1.i)
  %cmp.i.1.i = icmp slt i32 %call1.i.1.i, 0
  br i1 %cmp.i.1.i, label %for.inc.i.tvp5150_read.exit.thread.i_crit_edge, label %tvp5150_read.exit.1.i

for.inc.i.tvp5150_read.exit.thread.i_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.thread.i

tvp5150_read.exit.1.i:                            ; preds = %for.inc.i
  %20 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp14.1.i = icmp slt i32 %21, 0
  br i1 %cmp14.1.i, label %tvp5150_read.exit.1.i.do.end19.i_crit_edge, label %if.end21.1.i

tvp5150_read.exit.1.i.do.end19.i_crit_edge:       ; preds = %tvp5150_read.exit.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end19.i

if.end21.1.i:                                     ; preds = %tvp5150_read.exit.1.i
  %and22.1.i = and i32 %21, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %and22.1.i)
  %cmp23.1.i = icmp ult i32 %and22.1.i, 13
  br i1 %cmp23.1.i, label %if.then25.1.i, label %if.end21.1.i.tvp5150_get_vbi.exit_crit_edge

if.end21.1.i.tvp5150_get_vbi.exit_crit_edge:      ; preds = %if.end21.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_get_vbi.exit

if.then25.1.i:                                    ; preds = %if.end21.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %type26.1.i = getelementptr [13 x %struct.i2c_vbi_ram_value], ptr @vbi_ram_default, i32 0, i32 %and22.1.i, i32 1
  %22 = ptrtoint ptr %type26.1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %type26.1.i, align 4
  %or.1.i = or i32 %23, %type.1.i
  br label %tvp5150_get_vbi.exit

tvp5150_get_vbi.exit:                             ; preds = %if.then25.1.i, %if.end21.1.i.tvp5150_get_vbi.exit_crit_edge, %do.end19.i, %if.else.i.tvp5150_get_vbi.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ 0, %do.end19.i ], [ 0, %if.else.i.tvp5150_get_vbi.exit_crit_edge ], [ %or.1.i, %if.then25.1.i ], [ %type.1.i, %if.end21.1.i.tvp5150_get_vbi.exit_crit_edge ]
  %conv = trunc i32 %retval.0.i to i16
  %arrayidx2 = getelementptr [24 x i16], ptr %service_lines, i32 0, i32 %i.016
  %24 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv, ptr %arrayidx2, align 2
  %conv6 = and i32 %retval.0.i, 65535
  %or = or i32 %conv6, %mask.018
  %inc = add nuw nsw i32 %i.016, 1
  %exitcond.not = icmp eq i32 %inc, 24
  br i1 %exitcond.not, label %for.end, label %tvp5150_get_vbi.exit.for.body_crit_edge

tvp5150_get_vbi.exit.for.body_crit_edge:          ; preds = %tvp5150_get_vbi.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %tvp5150_get_vbi.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv7 = trunc i32 %or to i16
  %25 = ptrtoint ptr %svbi to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv7, ptr %svbi, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp5150_s_sliced_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef %svbi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %svbi to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %svbi, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not = icmp eq i16 %1, 0
  br i1 %cmp.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %service_lines = getelementptr inbounds %struct.v4l2_sliced_vbi_format, ptr %svbi, i32 0, i32 1
  %norm.i = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 9
  %regmap.i = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 7
  %dev.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %tvp5150_set_vbi.exit.for.body_crit_edge, %for.cond.preheader
  %i.043 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %tvp5150_set_vbi.exit.for.body_crit_edge ]
  %arrayidx4 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %svbi, i32 0, i32 1, i32 1, i32 %i.043
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %arrayidx4, align 2
  %arrayidx7 = getelementptr [24 x i16], ptr %service_lines, i32 0, i32 %i.043
  %3 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx7, align 2
  %conv8 = zext i16 %4 to i32
  %5 = ptrtoint ptr %norm.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %norm.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 16777215, i64 %6)
  %cmp.i = icmp eq i64 %6, 16777215
  br i1 %cmp.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.28) #12
  br label %tvp5150_set_vbi.exit

if.else.i:                                        ; preds = %for.body
  %and.i = and i64 %6, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %add.i = add nuw nsw i32 %i.043, 3
  %spec.select.i = select i1 %tobool.not.i, i32 %i.043, i32 %add.i
  %9 = add nsw i32 %spec.select.i, -28
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %9)
  %10 = icmp ult i32 %9, -22
  br i1 %10, label %if.else.i.tvp5150_set_vbi.exit_crit_edge, label %if.else.i.for.body.i_crit_edge

if.else.i.for.body.i_crit_edge:                   ; preds = %if.else.i
  br label %for.body.i

if.else.i.tvp5150_set_vbi.exit_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_set_vbi.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.else.i.for.body.i_crit_edge
  %pos.09.i = phi i32 [ %pos.1.ph.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.else.i.for.body.i_crit_edge ]
  %i.06.i = phi i32 [ %inc23.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.else.i.for.body.i_crit_edge ]
  %type8.i = getelementptr [13 x %struct.i2c_vbi_ram_value], ptr @vbi_ram_default, i32 0, i32 %i.06.i, i32 1
  %11 = ptrtoint ptr %type8.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool9.not.i = icmp eq i32 %12, 0
  br i1 %tobool9.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end11.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end11.i:                                       ; preds = %for.body.i
  %and14.i = and i32 %12, %conv8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end11.i.if.end22.i_crit_edge, label %land.lhs.true.i

if.end11.i.if.end22.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

land.lhs.true.i:                                  ; preds = %if.end11.i
  %ini_line.i = getelementptr [13 x %struct.i2c_vbi_ram_value], ptr @vbi_ram_default, i32 0, i32 %i.06.i, i32 1, i32 1
  %13 = ptrtoint ptr %ini_line.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ini_line.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %14)
  %cmp17.not.i = icmp ult i32 %spec.select.i, %14
  br i1 %cmp17.not.i, label %land.lhs.true.i.if.end22.i_crit_edge, label %land.lhs.true18.i

land.lhs.true.i.if.end22.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

land.lhs.true18.i:                                ; preds = %land.lhs.true.i
  %end_line.i = getelementptr [13 x %struct.i2c_vbi_ram_value], ptr @vbi_ram_default, i32 0, i32 %i.06.i, i32 1, i32 2
  %15 = ptrtoint ptr %end_line.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %end_line.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %16)
  %cmp20.not.i = icmp ugt i32 %spec.select.i, %16
  br i1 %cmp20.not.i, label %land.lhs.true18.i.if.end22.i_crit_edge, label %land.lhs.true18.i.for.end.i_crit_edge

land.lhs.true18.i.for.end.i_crit_edge:            ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

land.lhs.true18.i.if.end22.i_crit_edge:           ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.end22.i:                                       ; preds = %land.lhs.true18.i.if.end22.i_crit_edge, %land.lhs.true.i.if.end22.i_crit_edge, %if.end11.i.if.end22.i_crit_edge
  %inc.i = add i32 %pos.09.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end22.i, %for.body.i.for.inc.i_crit_edge
  %pos.1.ph.i = phi i32 [ %pos.09.i, %for.body.i.for.inc.i_crit_edge ], [ %inc.i, %if.end22.i ]
  %inc23.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc23.i, 13
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %land.lhs.true18.i.for.end.i_crit_edge
  %pos.0.lcssa.i = phi i32 [ %pos.09.i, %land.lhs.true18.i.for.end.i_crit_edge ], [ %pos.1.ph.i, %for.inc.i.for.end.i_crit_edge ]
  %or.i = or i32 %pos.0.lcssa.i, 240
  %line.addr.0.tr.i = trunc i32 %spec.select.i to i8
  %17 = shl i8 %line.addr.0.tr.i, 1
  %conv26.i = add i8 %17, -60
  %18 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i, align 8
  %conv30.i = zext i8 %conv26.i to i32
  %call31.i = tail call i32 @regmap_write(ptr noundef %19, i32 noundef %conv30.i, i32 noundef %or.i) #9
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 8
  %22 = or i8 %conv26.i, 1
  %add38.i = zext i8 %22 to i32
  %call39.i = tail call i32 @regmap_write(ptr noundef %21, i32 noundef %add38.i, i32 noundef %or.i) #9
  br label %tvp5150_set_vbi.exit

tvp5150_set_vbi.exit:                             ; preds = %for.end.i, %if.else.i.tvp5150_set_vbi.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %or.i, %for.end.i ], [ 0, %if.else.i.tvp5150_set_vbi.exit_crit_edge ]
  %conv10 = trunc i32 %retval.0.i to i16
  %23 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv10, ptr %arrayidx7, align 2
  %inc = add nuw nsw i32 %i.043, 1
  %exitcond.not = icmp eq i32 %inc, 24
  br i1 %exitcond.not, label %for.end, label %tvp5150_set_vbi.exit.for.body_crit_edge

tvp5150_set_vbi.exit.for.body_crit_edge:          ; preds = %tvp5150_set_vbi.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %tvp5150_set_vbi.exit
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i, align 8
  %call14 = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 205, i32 noundef 1) #9
  br label %if.end

if.else:                                          ; preds = %entry
  %regmap15 = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 7
  %26 = ptrtoint ptr %regmap15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap15, align 8
  %call16 = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 205, i32 noundef 0) #9
  %28 = ptrtoint ptr %regmap15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap15, align 8
  %call18 = tail call i32 @regmap_write(ptr noundef %29, i32 noundef 207, i32 noundef 0) #9
  br label %for.body22

for.body22:                                       ; preds = %for.body22.for.body22_crit_edge, %if.else
  %i.145 = phi i32 [ 208, %if.else ], [ %inc26, %for.body22.for.body22_crit_edge ]
  %30 = ptrtoint ptr %regmap15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap15, align 8
  %call24 = tail call i32 @regmap_write(ptr noundef %31, i32 noundef %i.145, i32 noundef 255) #9
  %inc26 = add nuw nsw i32 %i.145, 1
  %exitcond46.not = icmp eq i32 %inc26, 252
  br i1 %exitcond46.not, label %for.body22.if.end_crit_edge, label %for.body22.for.body22_crit_edge

for.body22.for.body22_crit_edge:                  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body22

for.body22.if.end_crit_edge:                      ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %for.body22.if.end_crit_edge, %for.end
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp5150_init_cfg(ptr nocapture noundef %sd, ptr nocapture noundef readnone %sd_state) #2 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %norm = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 9
  %0 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %norm, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 16777215, i64 %1)
  %cmp = icmp eq i64 %1, 16777215
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #9
  %2 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i.i, align 4, !annotation !451
  %regmap.i.i = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 7
  %3 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i.i, align 8
  %call1.i.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 140, ptr noundef nonnull %val.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i.i, label %if.then.tvp5150_read.exit.i_crit_edge, label %if.end.i.i

if.then.tvp5150_read.exit.i_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i.i, align 4
  br label %tvp5150_read.exit.i

tvp5150_read.exit.i:                              ; preds = %if.end.i.i, %if.then.tvp5150_read.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %6, %if.end.i.i ], [ %call1.i.i, %if.then.tvp5150_read.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #9
  %and.i = and i32 %retval.0.i.i, 15
  %7 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.261)
  switch i32 %and.i, label %sw.default.i [
    i32 1, label %tvp5150_read.exit.i.tvp5150_read_std.exit_crit_edge
    i32 3, label %sw.bb1.i
    i32 5, label %sw.bb2.i
    i32 7, label %sw.bb3.i
    i32 9, label %sw.bb4.i
    i32 11, label %sw.bb5.i
  ]

tvp5150_read.exit.i.tvp5150_read_std.exit_crit_edge: ; preds = %tvp5150_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read_std.exit

sw.bb1.i:                                         ; preds = %tvp5150_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read_std.exit

sw.bb2.i:                                         ; preds = %tvp5150_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read_std.exit

sw.bb3.i:                                         ; preds = %tvp5150_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read_std.exit

sw.bb4.i:                                         ; preds = %tvp5150_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read_std.exit

sw.bb5.i:                                         ; preds = %tvp5150_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read_std.exit

sw.default.i:                                     ; preds = %tvp5150_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read_std.exit

tvp5150_read_std.exit:                            ; preds = %sw.default.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %tvp5150_read.exit.i.tvp5150_read_std.exit_crit_edge
  %retval.0.i = phi i64 [ 0, %sw.default.i ], [ 16711680, %sw.bb5.i ], [ 16384, %sw.bb4.i ], [ 1536, %sw.bb3.i ], [ 256, %sw.bb2.i ], [ 255, %sw.bb1.i ], [ 45056, %tvp5150_read.exit.i.tvp5150_read_std.exit_crit_edge ]
  %detected_norm = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 10
  %8 = ptrtoint ptr %detected_norm to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %detected_norm, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i, i64 %9)
  %cmp2.not = icmp eq i64 %retval.0.i, %9
  br i1 %cmp2.not, label %tvp5150_read_std.exit.if.end5_crit_edge, label %if.then3

tvp5150_read_std.exit.if.end5_crit_edge:          ; preds = %tvp5150_read_std.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %tvp5150_read_std.exit
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %detected_norm to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %retval.0.i, ptr %detected_norm, align 8
  %rect = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 6
  %top.i = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %top.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %top.i, align 4
  %12 = ptrtoint ptr %rect to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %rect, align 4
  %width.i = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 6, i32 2
  %13 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 720, ptr %width.i, align 4
  %and.i12 = and i64 %retval.0.i, 61696
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i12)
  %tobool.not.i = icmp eq i64 %and.i12, 0
  %spec.select.i = select i1 %tobool.not.i, i32 576, i32 480
  %14 = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 6, i32 3
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.select.i, ptr %14, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %tvp5150_read_std.exit.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tvp5150_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %code2 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %4 = ptrtoint ptr %code2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8198, ptr %code2, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tvp5150_enum_frame_size(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp = icmp ugt i32 %1, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %2 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8198, i32 %3)
  %cmp1.not = icmp eq i32 %3, 8198
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8198, ptr %code, align 4
  %width = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 6, i32 2
  %5 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %width, align 8
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %7 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %min_width, align 4
  %8 = load i32, ptr %width, align 8
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %9 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %max_width, align 4
  %height = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 6, i32 3
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  %div18 = lshr i32 %11, 1
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %12 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div18, ptr %min_height, align 4
  %13 = load i32, ptr %height, align 4
  %div819 = lshr i32 %13, 1
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %14 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div819, ptr %max_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp5150_fill_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %format, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %width = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 6, i32 2
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 8
  %4 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %format1, align 4
  %height = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 6, i32 3
  %5 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %height, align 4
  %div24 = lshr i32 %6, 1
  %height4 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %height4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div24, ptr %height4, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8198, ptr %code, align 4
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %9 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 7, ptr %field, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %10 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %colorspace, align 4
  %11 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp5 = icmp sgt i32 %11, 0
  br i1 %cmp5, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 14
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %13, ptr noundef nonnull @.str.33, i32 noundef %3, i32 noundef %div24) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp5150_get_selection(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sel) #2 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %0 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %target, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.262)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 0, label %sw.bb10
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %3 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %top, align 4
  %width = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %5 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 720, ptr %width, align 4
  %norm = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 9
  %6 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %norm, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 16777215, i64 %7)
  %cmp = icmp eq i64 %7, 16777215
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #9
  %8 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val.i.i, align 4, !annotation !451
  %regmap.i.i = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 7
  %9 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i.i, align 8
  %call1.i.i = call i32 @regmap_read(ptr noundef %10, i32 noundef 140, ptr noundef nonnull %val.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i.i, label %if.then.tvp5150_read.exit.i_crit_edge, label %if.end.i.i

if.then.tvp5150_read.exit.i_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val.i.i, align 4
  br label %tvp5150_read.exit.i

tvp5150_read.exit.i:                              ; preds = %if.end.i.i, %if.then.tvp5150_read.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %12, %if.end.i.i ], [ %call1.i.i, %if.then.tvp5150_read.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #9
  %and.i = and i32 %retval.0.i.i, 15
  %13 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.263)
  switch i32 %and.i, label %tvp5150_read.exit.i.if.else6_crit_edge [
    i32 1, label %tvp5150_read.exit.i.if.then4_crit_edge
    i32 9, label %tvp5150_read.exit.i.if.then4_crit_edge45
    i32 5, label %tvp5150_read.exit.i.if.then4_crit_edge46
  ]

tvp5150_read.exit.i.if.then4_crit_edge46:         ; preds = %tvp5150_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

tvp5150_read.exit.i.if.then4_crit_edge45:         ; preds = %tvp5150_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

tvp5150_read.exit.i.if.then4_crit_edge:           ; preds = %tvp5150_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

tvp5150_read.exit.i.if.else6_crit_edge:           ; preds = %tvp5150_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else6

if.end:                                           ; preds = %sw.bb
  %and = and i64 %7, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end.if.else6_crit_edge, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

if.end.if.else6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else6

if.then4:                                         ; preds = %if.end.if.then4_crit_edge, %tvp5150_read.exit.i.if.then4_crit_edge, %tvp5150_read.exit.i.if.then4_crit_edge45, %tvp5150_read.exit.i.if.then4_crit_edge46
  %height = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %14 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 480, ptr %height, align 4
  br label %cleanup

if.else6:                                         ; preds = %if.end.if.else6_crit_edge, %tvp5150_read.exit.i.if.else6_crit_edge
  %height8 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %15 = ptrtoint ptr %height8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 576, ptr %height8, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %16 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sel, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.264)
  switch i32 %17, label %sw.bb10.if.then13_crit_edge [
    i32 1, label %sw.bb.i
    i32 0, label %sw.bb1.i32
  ]

sw.bb10.if.then13_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

sw.bb.i:                                          ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  %rect.i = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 6
  br label %tvp5150_get_pad_crop.exit

sw.bb1.i32:                                       ; preds = %sw.bb10
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %19 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pad, align 4
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %21 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %20, %conv.i.i
  br i1 %cmp.not.i.i, label %sw.bb1.i32.v4l2_subdev_get_try_crop.exit.i_crit_edge, label %do.end.i.i, !prof !457

sw.bb1.i32.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %sw.bb1.i32
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i:                                       ; preds = %sw.bb1.i32
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 1016, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i, %sw.bb1.i32.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %20, %sw.bb1.i32.v4l2_subdev_get_try_crop.exit.i_crit_edge ]
  %23 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %24, i32 %spec.select.i.i, i32 1
  br label %tvp5150_get_pad_crop.exit

tvp5150_get_pad_crop.exit:                        ; preds = %v4l2_subdev_get_try_crop.exit.i, %sw.bb.i
  %retval.0.i33 = phi ptr [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ %rect.i, %sw.bb.i ]
  %cmp.i = icmp ugt ptr %retval.0.i33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %tvp5150_get_pad_crop.exit.if.then13_crit_edge, label %if.end15

tvp5150_get_pad_crop.exit.if.then13_crit_edge:    ; preds = %tvp5150_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

if.then13:                                        ; preds = %tvp5150_get_pad_crop.exit.if.then13_crit_edge, %sw.bb10.if.then13_crit_edge
  %retval.0.i3344 = phi ptr [ %retval.0.i33, %tvp5150_get_pad_crop.exit.if.then13_crit_edge ], [ inttoptr (i32 -22 to ptr), %sw.bb10.if.then13_crit_edge ]
  %25 = ptrtoint ptr %retval.0.i3344 to i32
  br label %cleanup

if.end15:                                         ; preds = %tvp5150_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #11
  %r16 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %26 = call ptr @memcpy(ptr %r16, ptr %retval.0.i33, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then13, %if.else6, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %25, %if.then13 ], [ 0, %if.end15 ], [ 0, %if.else6 ], [ 0, %if.then4 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp5150_set_selection(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr noundef %sel) #2 align 64 {
entry:
  %val.i.i.i.i = alloca i32, align 4
  %val.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %0 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp1 = icmp sgt i32 %2, 0
  br i1 %cmp1, label %do.end, label %do.body.do.end6_crit_edge

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 14
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %5 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %top, align 4
  %width = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %9 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %11 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %4, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12) #12
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  %13 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %r, align 4
  %15 = tail call i32 @llvm.smax.i32(i32 %14, i32 0)
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 511)
  %17 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %r, align 4
  %top16 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %top16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %top16, align 4
  %20 = tail call i32 @llvm.smax.i32(i32 %19, i32 0)
  %21 = tail call i32 @llvm.umin.i32(i32 %20, i32 127)
  %22 = ptrtoint ptr %top16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %top16, align 4
  %norm.i = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 9
  %23 = ptrtoint ptr %norm.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %norm.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 16777215, i64 %24)
  %cmp.i = icmp eq i64 %24, 16777215
  br i1 %cmp.i, label %if.then.i, label %do.end6.tvp5150_get_hmax.exit_crit_edge

do.end6.tvp5150_get_hmax.exit_crit_edge:          ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_get_hmax.exit

if.then.i:                                        ; preds = %do.end6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i) #9
  %25 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %val.i.i.i, align 4, !annotation !451
  %regmap.i.i.i = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 7
  %26 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i.i.i, align 8
  %call1.i.i.i = call i32 @regmap_read(ptr noundef %27, i32 noundef 140, ptr noundef nonnull %val.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call1.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.tvp5150_read.exit.i.i_crit_edge, label %if.end.i.i.i

if.then.i.tvp5150_read.exit.i.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val.i.i.i, align 4
  br label %tvp5150_read.exit.i.i

tvp5150_read.exit.i.i:                            ; preds = %if.end.i.i.i, %if.then.i.tvp5150_read.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %29, %if.end.i.i.i ], [ %call1.i.i.i, %if.then.i.tvp5150_read.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #9
  %and.i.i = and i32 %retval.0.i.i.i, 15
  %30 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.265)
  switch i32 %and.i.i, label %sw.default.i.i [
    i32 1, label %tvp5150_read.exit.i.i.tvp5150_get_hmax.exit_crit_edge
    i32 3, label %sw.bb1.i.i
    i32 5, label %sw.bb2.i.i
    i32 7, label %sw.bb3.i.i
    i32 9, label %sw.bb4.i.i
    i32 11, label %sw.bb5.i.i
  ]

tvp5150_read.exit.i.i.tvp5150_get_hmax.exit_crit_edge: ; preds = %tvp5150_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_get_hmax.exit

sw.bb1.i.i:                                       ; preds = %tvp5150_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_get_hmax.exit

sw.bb2.i.i:                                       ; preds = %tvp5150_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_get_hmax.exit

sw.bb3.i.i:                                       ; preds = %tvp5150_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_get_hmax.exit

sw.bb4.i.i:                                       ; preds = %tvp5150_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_get_hmax.exit

sw.bb5.i.i:                                       ; preds = %tvp5150_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_get_hmax.exit

sw.default.i.i:                                   ; preds = %tvp5150_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_get_hmax.exit

tvp5150_get_hmax.exit:                            ; preds = %sw.default.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %tvp5150_read.exit.i.i.tvp5150_get_hmax.exit_crit_edge, %do.end6.tvp5150_get_hmax.exit_crit_edge
  %std.0.i = phi i64 [ %24, %do.end6.tvp5150_get_hmax.exit_crit_edge ], [ 0, %sw.default.i.i ], [ 16711680, %sw.bb5.i.i ], [ 16384, %sw.bb4.i.i ], [ 1536, %sw.bb3.i.i ], [ 256, %sw.bb2.i.i ], [ 255, %sw.bb1.i.i ], [ 45056, %tvp5150_read.exit.i.i.tvp5150_get_hmax.exit_crit_edge ]
  %and.i = and i64 %std.0.i, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 576, i32 480
  %width31 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %31 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %r, align 4
  %sub = sub i32 209, %32
  %sub34 = sub i32 720, %32
  %height35 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %33 = ptrtoint ptr %top16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %top16, align 4
  %sub36 = sub i32 -127, %34
  %sub38 = add i32 %sub36, %cond.i
  %sub40 = sub i32 %cond.i, %34
  call void @v4l_bound_align_image(ptr noundef %width31, i32 noundef %sub, i32 noundef %sub34, i32 noundef 1, ptr noundef %height35, i32 noundef %sub38, i32 noundef %sub40, i32 noundef 0, i32 noundef 0) #9
  %35 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sel, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.266)
  switch i32 %36, label %tvp5150_get_hmax.exit.if.then43_crit_edge [
    i32 1, label %sw.bb.i
    i32 0, label %sw.bb1.i
  ]

tvp5150_get_hmax.exit.if.then43_crit_edge:        ; preds = %tvp5150_get_hmax.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then43

sw.bb.i:                                          ; preds = %tvp5150_get_hmax.exit
  call void @__sanitizer_cov_trace_pc() #11
  %rect.i = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 6
  br label %tvp5150_get_pad_crop.exit

sw.bb1.i:                                         ; preds = %tvp5150_get_hmax.exit
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %38 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pad, align 4
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %40 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %41 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %39, %conv.i.i
  br i1 %cmp.not.i.i, label %sw.bb1.i.v4l2_subdev_get_try_crop.exit.i_crit_edge, label %do.end.i.i, !prof !457

sw.bb1.i.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i:                                       ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 1016, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i, %sw.bb1.i.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %39, %sw.bb1.i.v4l2_subdev_get_try_crop.exit.i_crit_edge ]
  %42 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %43, i32 %spec.select.i.i, i32 1
  br label %tvp5150_get_pad_crop.exit

tvp5150_get_pad_crop.exit:                        ; preds = %v4l2_subdev_get_try_crop.exit.i, %sw.bb.i
  %retval.0.i = phi ptr [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ %rect.i, %sw.bb.i ]
  %cmp.i90 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i90, label %tvp5150_get_pad_crop.exit.if.then43_crit_edge, label %if.end45

tvp5150_get_pad_crop.exit.if.then43_crit_edge:    ; preds = %tvp5150_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then43

if.then43:                                        ; preds = %tvp5150_get_pad_crop.exit.if.then43_crit_edge, %tvp5150_get_hmax.exit.if.then43_crit_edge
  %retval.0.i95 = phi ptr [ %retval.0.i, %tvp5150_get_pad_crop.exit.if.then43_crit_edge ], [ inttoptr (i32 -22 to ptr), %tvp5150_get_hmax.exit.if.then43_crit_edge ]
  %44 = ptrtoint ptr %retval.0.i95 to i32
  br label %cleanup

if.end45:                                         ; preds = %tvp5150_get_pad_crop.exit
  %45 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp47 = icmp eq i32 %46, 1
  br i1 %cmp47, label %land.lhs.true, label %if.end45.if.end50_crit_edge

if.end45.if.end50_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

land.lhs.true:                                    ; preds = %if.end45
  %47 = ptrtoint ptr %width31 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %width31, align 4
  %width1.i.i = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i, i32 0, i32 2
  %49 = ptrtoint ptr %width1.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %width1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp.i.i = icmp eq i32 %48, %50
  br i1 %cmp.i.i, label %v4l2_rect_same_size.exit.i, label %land.lhs.true.if.then49_crit_edge

land.lhs.true.if.then49_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then49

v4l2_rect_same_size.exit.i:                       ; preds = %land.lhs.true
  %51 = ptrtoint ptr %height35 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %height35, align 4
  %height2.i.i = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i, i32 0, i32 3
  %53 = ptrtoint ptr %height2.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %height2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp3.i.i = icmp eq i32 %52, %54
  br i1 %cmp3.i.i, label %land.rhs.i, label %v4l2_rect_same_size.exit.i.if.then49_crit_edge

v4l2_rect_same_size.exit.i.if.then49_crit_edge:   ; preds = %v4l2_rect_same_size.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then49

land.rhs.i:                                       ; preds = %v4l2_rect_same_size.exit.i
  %55 = ptrtoint ptr %top16 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %top16, align 4
  %top1.i.i = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i, i32 0, i32 1
  %57 = ptrtoint ptr %top1.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %top1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp.i4.i = icmp eq i32 %56, %58
  br i1 %cmp.i4.i, label %v4l2_rect_equal.exit, label %land.rhs.i.if.then49_crit_edge

land.rhs.i.if.then49_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then49

v4l2_rect_equal.exit:                             ; preds = %land.rhs.i
  %59 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %r, align 4
  %61 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %retval.0.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp3.i5.i = icmp eq i32 %60, %62
  br i1 %cmp3.i5.i, label %v4l2_rect_equal.exit.if.end50_crit_edge, label %v4l2_rect_equal.exit.if.then49_crit_edge

v4l2_rect_equal.exit.if.then49_crit_edge:         ; preds = %v4l2_rect_equal.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then49

v4l2_rect_equal.exit.if.end50_crit_edge:          ; preds = %v4l2_rect_equal.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then49:                                        ; preds = %v4l2_rect_equal.exit.if.then49_crit_edge, %land.rhs.i.if.then49_crit_edge, %v4l2_rect_same_size.exit.i.if.then49_crit_edge, %land.lhs.true.if.then49_crit_edge
  %63 = ptrtoint ptr %norm.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %norm.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 16777215, i64 %64)
  %cmp.i.i91 = icmp eq i64 %64, 16777215
  br i1 %cmp.i.i91, label %if.then.i.i, label %if.then49.tvp5150_set_hw_selection.exit_crit_edge

if.then49.tvp5150_set_hw_selection.exit_crit_edge: ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_set_hw_selection.exit

if.then.i.i:                                      ; preds = %if.then49
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i.i) #9
  %65 = ptrtoint ptr %val.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %val.i.i.i.i, align 4, !annotation !451
  %regmap.i.i.i.i = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 7
  %66 = ptrtoint ptr %regmap.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap.i.i.i.i, align 8
  %call1.i.i.i.i = call i32 @regmap_read(ptr noundef %67, i32 noundef 140, ptr noundef nonnull %val.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call1.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.tvp5150_read.exit.i.i.i_crit_edge, label %if.end.i.i.i.i

if.then.i.i.tvp5150_read.exit.i.i.i_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_read.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %val.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %val.i.i.i.i, align 4
  br label %tvp5150_read.exit.i.i.i

tvp5150_read.exit.i.i.i:                          ; preds = %if.end.i.i.i.i, %if.then.i.i.tvp5150_read.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %69, %if.end.i.i.i.i ], [ %call1.i.i.i.i, %if.then.i.i.tvp5150_read.exit.i.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i.i) #9
  %and.i.i.i = and i32 %retval.0.i.i.i.i, 15
  %70 = zext i32 %and.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.267)
  switch i32 %and.i.i.i, label %sw.default.i.i.i [
    i32 1, label %tvp5150_read.exit.i.i.i.tvp5150_set_hw_selection.exit_crit_edge
    i32 3, label %sw.bb1.i.i.i
    i32 5, label %sw.bb2.i.i.i
    i32 7, label %sw.bb3.i.i.i
    i32 9, label %sw.bb4.i.i.i
    i32 11, label %sw.bb5.i.i.i
  ]

tvp5150_read.exit.i.i.i.tvp5150_set_hw_selection.exit_crit_edge: ; preds = %tvp5150_read.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_set_hw_selection.exit

sw.bb1.i.i.i:                                     ; preds = %tvp5150_read.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_set_hw_selection.exit

sw.bb2.i.i.i:                                     ; preds = %tvp5150_read.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_set_hw_selection.exit

sw.bb3.i.i.i:                                     ; preds = %tvp5150_read.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_set_hw_selection.exit

sw.bb4.i.i.i:                                     ; preds = %tvp5150_read.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_set_hw_selection.exit

sw.bb5.i.i.i:                                     ; preds = %tvp5150_read.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_set_hw_selection.exit

sw.default.i.i.i:                                 ; preds = %tvp5150_read.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvp5150_set_hw_selection.exit

tvp5150_set_hw_selection.exit:                    ; preds = %sw.default.i.i.i, %sw.bb5.i.i.i, %sw.bb4.i.i.i, %sw.bb3.i.i.i, %sw.bb2.i.i.i, %sw.bb1.i.i.i, %tvp5150_read.exit.i.i.i.tvp5150_set_hw_selection.exit_crit_edge, %if.then49.tvp5150_set_hw_selection.exit_crit_edge
  %std.0.i.i = phi i64 [ %64, %if.then49.tvp5150_set_hw_selection.exit_crit_edge ], [ 0, %sw.default.i.i.i ], [ 16711680, %sw.bb5.i.i.i ], [ 16384, %sw.bb4.i.i.i ], [ 1536, %sw.bb3.i.i.i ], [ 256, %sw.bb2.i.i.i ], [ 255, %sw.bb1.i.i.i ], [ 45056, %tvp5150_read.exit.i.i.i.tvp5150_set_hw_selection.exit_crit_edge ]
  %and.i.i92 = and i64 %std.0.i.i, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i92)
  %tobool.not.i.i = icmp eq i64 %and.i.i92, 0
  %cond.i.neg.i = select i1 %tobool.not.i.i, i32 -576, i32 -480
  %regmap.i = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 7
  %71 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regmap.i, align 8
  %73 = ptrtoint ptr %top16 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %top16, align 4
  %call2.i = call i32 @regmap_write(ptr noundef %72, i32 noundef 24, i32 noundef %74) #9
  %75 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regmap.i, align 8
  %77 = ptrtoint ptr %top16 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %top16, align 4
  %79 = ptrtoint ptr %height35 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %height35, align 4
  %add.i = add i32 %78, %cond.i.neg.i
  %sub.i = add i32 %add.i, %80
  %call5.i = call i32 @regmap_write(ptr noundef %76, i32 noundef 25, i32 noundef %sub.i) #9
  %81 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regmap.i, align 8
  %83 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %r, align 4
  %shr.i = ashr i32 %84, 2
  %call7.i = call i32 @regmap_write(ptr noundef %82, i32 noundef 17, i32 noundef %shr.i) #9
  %85 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regmap.i, align 8
  %87 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %r, align 4
  %or.i = or i32 %88, 4
  %call10.i = call i32 @regmap_write(ptr noundef %86, i32 noundef 18, i32 noundef %or.i) #9
  %89 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regmap.i, align 8
  %91 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %r, align 4
  %93 = ptrtoint ptr %width31 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %width31, align 4
  %add13.i = add i32 %92, -511
  %sub14.i = add i32 %add13.i, %94
  %shr15.i = lshr i32 %sub14.i, 2
  %call16.i = call i32 @regmap_write(ptr noundef %90, i32 noundef 19, i32 noundef %shr15.i) #9
  %95 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regmap.i, align 8
  %97 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %r, align 4
  %99 = ptrtoint ptr %width31 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %width31, align 4
  %add20.i = add i32 %98, -511
  %sub21.i = add i32 %add20.i, %100
  %call22.i = call i32 @regmap_write(ptr noundef %96, i32 noundef 20, i32 noundef %sub21.i) #9
  br label %if.end50

if.end50:                                         ; preds = %tvp5150_set_hw_selection.exit, %v4l2_rect_equal.exit.if.end50_crit_edge, %if.end45.if.end50_crit_edge
  %101 = call ptr @memcpy(ptr %retval.0.i, ptr %r, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.then43, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %44, %if.then43 ], [ 0, %if.end50 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tvp5150_get_mbus_config(ptr nocapture noundef readonly %sd, i32 noundef %pad, ptr nocapture noundef writeonly %cfg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mbus_type = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 18
  %0 = ptrtoint ptr %mbus_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mbus_type, align 8
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %cfg, align 4
  %flags = getelementptr inbounds %struct.v4l2_mbus_config, ptr %cfg, i32 0, i32 1
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2369, ptr %flags, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp5150_registered(ptr noundef %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %connectors_num = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 4
  %0 = ptrtoint ptr %connectors_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connectors_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp125.not = icmp eq i32 %1, 0
  br i1 %cmp125.not, label %entry.cleanup75_crit_edge, label %for.body.lr.ph

entry.cleanup75_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup75

for.body.lr.ph:                                   ; preds = %entry
  %v4l2_dev = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 5
  %input = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 11
  %cur_connector = getelementptr inbounds %struct.tvp5150, ptr %sd, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0126 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.tvp5150, ptr %sd, i32 0, i32 2, i32 %i.0126
  %ent = getelementptr %struct.tvp5150, ptr %sd, i32 0, i32 2, i32 %i.0126, i32 1
  %pad3 = getelementptr %struct.tvp5150, ptr %sd, i32 0, i32 2, i32 %i.0126, i32 2
  %links = getelementptr inbounds %struct.v4l2_fwnode_connector, ptr %arrayidx, i32 0, i32 3
  %2 = ptrtoint ptr %links to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %links, align 4
  %cmp7.not = icmp eq ptr %3, %links
  %spec.select = select i1 %cmp7.not, ptr null, ptr %3
  %remote_port = getelementptr inbounds %struct.v4l2_connector_link, ptr %spec.select, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %remote_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %remote_port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0126)
  %tobool.not = icmp eq i32 %i.0126, 0
  %cond9 = zext i1 %tobool.not to i32
  %type = getelementptr inbounds %struct.v4l2_fwnode_connector, ptr %arrayidx, i32 0, i32 2
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp10 = icmp eq i32 %7, 2
  %flags11 = getelementptr %struct.tvp5150, ptr %sd, i32 0, i32 2, i32 %i.0126, i32 2, i32 4
  %8 = ptrtoint ptr %flags11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %flags11, align 4
  %call12 = tail call i32 @media_entity_pads_init(ptr noundef %ent, i16 noundef zeroext 1, ptr noundef %pad3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %for.body
  %9 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %v4l2_dev, align 4
  %mdev = getelementptr inbounds %struct.v4l2_device, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mdev, align 4
  %call14 = tail call i32 @media_device_register_entity(ptr noundef %12, ptr noundef %ent) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %conv = trunc i32 %5 to i16
  %call18 = tail call i32 @media_create_pad_link(ptr noundef %ent, i16 noundef zeroext 0, ptr noundef %sd, i16 noundef zeroext %conv, i32 noundef %cond9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end17.cleanup_crit_edge, label %if.end22

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  br i1 %cmp10, label %if.then24, label %if.end22.if.end38_crit_edge

if.end22.if.end38_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then24:                                        ; preds = %if.end22
  %prev = getelementptr inbounds %struct.v4l2_fwnode_connector, ptr %arrayidx, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev, align 4
  %remote_port30 = getelementptr inbounds %struct.v4l2_connector_link, ptr %14, i32 0, i32 1, i32 4
  %15 = ptrtoint ptr %remote_port30 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %remote_port30, align 4
  %conv32 = trunc i32 %16 to i16
  %call33 = tail call i32 @media_create_pad_link(ptr noundef %ent, i16 noundef zeroext 0, ptr noundef %sd, i16 noundef zeroext %conv32, i32 noundef %cond9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then24.cleanup_crit_edge, label %if.then24.if.end38_crit_edge

if.then24.if.end38_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end38:                                         ; preds = %if.then24.if.end38_crit_edge, %if.end22.if.end38_crit_edge
  %port.0 = phi i32 [ %16, %if.then24.if.end38_crit_edge ], [ %5, %if.end22.if.end38_crit_edge ]
  br i1 %tobool.not, label %if.then41, label %if.end38.for.inc_crit_edge

if.end38.for.inc_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port.0)
  %cmp46 = icmp ne i32 %port.0, 0
  %cond48 = zext i1 %cmp46 to i32
  %cond50 = select i1 %cmp10, i32 2, i32 %cond48
  %17 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond50, ptr %input, align 8
  tail call fastcc void @tvp5150_selmux(ptr noundef %sd)
  %18 = ptrtoint ptr %cur_connector to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx, ptr %cur_connector, align 8
  %connector = getelementptr inbounds %struct.v4l2_fwnode_connector, ptr %arrayidx, i32 0, i32 5
  %19 = ptrtoint ptr %connector to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %connector, align 8
  %call53 = tail call i32 @tvp5150_s_std(ptr noundef %sd, i64 noundef %20)
  br label %for.inc

cleanup:                                          ; preds = %if.then24.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %ret.1 = phi i32 [ %call12, %for.body.cleanup_crit_edge ], [ %call14, %if.end.cleanup_crit_edge ], [ %call18, %if.end17.cleanup_crit_edge ], [ %call33, %if.then24.cleanup_crit_edge ]
  %21 = ptrtoint ptr %connectors_num to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %connectors_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp63127.not = icmp eq i32 %22, 0
  br i1 %cmp63127.not, label %cleanup.cleanup75_crit_edge, label %cleanup.for.body65_crit_edge

cleanup.for.body65_crit_edge:                     ; preds = %cleanup
  br label %for.body65

cleanup.cleanup75_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup75

for.inc:                                          ; preds = %if.then41, %if.end38.for.inc_crit_edge
  %inc = add nuw i32 %i.0126, 1
  %23 = ptrtoint ptr %connectors_num to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %connectors_num, align 4
  %cmp = icmp ult i32 %inc, %24
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup75_crit_edge

for.inc.cleanup75_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup75

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body65:                                       ; preds = %for.body65.for.body65_crit_edge, %cleanup.for.body65_crit_edge
  %i.1128 = phi i32 [ %inc73, %for.body65.for.body65_crit_edge ], [ 0, %cleanup.for.body65_crit_edge ]
  %ent68 = getelementptr %struct.tvp5150, ptr %sd, i32 0, i32 2, i32 %i.1128, i32 1
  tail call void @media_device_unregister_entity(ptr noundef %ent68) #9
  %inc73 = add nuw i32 %i.1128, 1
  %25 = ptrtoint ptr %connectors_num to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %connectors_num, align 4
  %cmp63 = icmp ult i32 %inc73, %26
  br i1 %cmp63, label %for.body65.for.body65_crit_edge, label %for.body65.cleanup75_crit_edge

for.body65.cleanup75_crit_edge:                   ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup75

for.body65.for.body65_crit_edge:                  ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body65

cleanup75:                                        ; preds = %for.body65.cleanup75_crit_edge, %for.inc.cleanup75_crit_edge, %cleanup.cleanup75_crit_edge, %entry.cleanup75_crit_edge
  %retval.0 = phi i32 [ %ret.1, %cleanup.cleanup75_crit_edge ], [ 0, %entry.cleanup75_crit_edge ], [ %ret.1, %for.body65.cleanup75_crit_edge ], [ 0, %for.inc.cleanup75_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp5150_open(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %fh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 14
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.pm_runtime_resume_and_get.exit_crit_edge

entry.pm_runtime_resume_and_get.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_runtime_resume_and_get.exit

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !454
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !455
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.pm_runtime_resume_and_get.exit_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.pm_runtime_resume_and_get.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_runtime_resume_and_get.exit

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !456
  br label %pm_runtime_resume_and_get.exit

pm_runtime_resume_and_get.exit:                   ; preds = %do.end11.i.i.i.i.i, %if.then.i.pm_runtime_resume_and_get.exit_crit_edge, %entry.pm_runtime_resume_and_get.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.pm_runtime_resume_and_get.exit_crit_edge ], [ %call.i, %if.then.i.pm_runtime_resume_and_get.exit_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp5150_close(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %fh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 14
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %1, i32 noundef 5) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_device_register_entity(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_create_pad_link(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_graph_get_endpoint_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_graph_parse_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_connector_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_connector_add_link(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_endpoint_by_regs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp5150_link_setup(ptr noundef %entity, ptr nocapture noundef readonly %tvp5150_pad, ptr noundef %remote, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.media_pad, ptr %tvp5150_pad, i32 0, i32 2
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index, align 4
  %2 = xor i16 %1, 1
  %xor = zext i16 %2 to i32
  %arrayidx = getelementptr %struct.tvp5150, ptr %entity, i32 0, i32 1, i32 %xor
  %flags2 = getelementptr inbounds %struct.media_pad, ptr %tvp5150_pad, i32 0, i32 4
  %3 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags2, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %for.cond.preheader, label %entry.cleanup106_crit_edge

entry.cleanup106_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup106

for.cond.preheader:                               ; preds = %entry
  %connectors_num = getelementptr inbounds %struct.tvp5150, ptr %entity, i32 0, i32 4
  %5 = ptrtoint ptr %connectors_num to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %connectors_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp169.not = icmp eq i32 %6, 0
  br i1 %cmp169.not, label %for.cond.preheader.do.body_crit_edge, label %for.body.lr.ph

for.cond.preheader.do.body_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %entity5 = getelementptr inbounds %struct.media_pad, ptr %remote, i32 0, i32 1
  %7 = ptrtoint ptr %entity5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %entity5, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0170 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ent = getelementptr %struct.tvp5150, ptr %entity, i32 0, i32 2, i32 %i.0170, i32 1
  %cmp7 = icmp eq ptr %8, %ent
  br i1 %cmp7, label %if.then9, label %for.inc

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %type = getelementptr %struct.tvp5150, ptr %entity, i32 0, i32 2, i32 %i.0170, i32 0, i32 2
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp12 = icmp eq i32 %10, 2
  br label %do.body

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0170, 1
  %exitcond.not = icmp eq i32 %inc, %6
  br i1 %exitcond.not, label %for.inc.do.body_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %if.then9, %for.cond.preheader.do.body_crit_edge
  %is_svideo.0.off0 = phi i1 [ %cmp12, %if.then9 ], [ false, %for.cond.preheader.do.body_crit_edge ], [ false, %for.inc.do.body_crit_edge ]
  %11 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp15 = icmp sgt i32 %11, 0
  br i1 %cmp15, label %do.end, label %do.body.do.end29_crit_edge

do.body.do.end29_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end29

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.v4l2_subdev, ptr %entity, i32 0, i32 14
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %entity19 = getelementptr inbounds %struct.media_pad, ptr %remote, i32 0, i32 1
  %14 = ptrtoint ptr %entity19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %entity19, align 4
  %name = getelementptr inbounds %struct.media_entity, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name, align 4
  %index20 = getelementptr inbounds %struct.media_pad, ptr %remote, i32 0, i32 2
  %18 = ptrtoint ptr %index20 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %index20, align 4
  %conv21 = zext i16 %19 to i32
  %entity22 = getelementptr inbounds %struct.media_pad, ptr %tvp5150_pad, i32 0, i32 1
  %20 = ptrtoint ptr %entity22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %entity22, align 4
  %name23 = getelementptr inbounds %struct.media_entity, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %name23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name23, align 4
  %conv25 = zext i16 %1 to i32
  %and26 = and i32 %flags, 1
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %13, ptr noundef nonnull @.str.69, ptr noundef %17, i32 noundef %conv21, ptr noundef %23, i32 noundef %conv25, i32 noundef %and26) #12
  br label %do.end29

do.end29:                                         ; preds = %do.end, %do.body.do.end29_crit_edge
  br i1 %is_svideo.0.off0, label %do.body32, label %do.end29.if.end52_crit_edge

do.end29.if.end52_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

do.body32:                                        ; preds = %do.end29
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp33 = icmp sgt i32 %24, 0
  br i1 %cmp33, label %do.end38, label %do.body32.if.end52_crit_edge

do.body32.if.end52_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

do.end38:                                         ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #11
  %dev39 = getelementptr inbounds %struct.v4l2_subdev, ptr %entity, i32 0, i32 14
  %25 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev39, align 4
  %entity40 = getelementptr inbounds %struct.media_pad, ptr %remote, i32 0, i32 1
  %27 = ptrtoint ptr %entity40 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %entity40, align 4
  %name41 = getelementptr inbounds %struct.media_entity, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %name41 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name41, align 4
  %index42 = getelementptr inbounds %struct.media_pad, ptr %remote, i32 0, i32 2
  %31 = ptrtoint ptr %index42 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %index42, align 4
  %conv43 = zext i16 %32 to i32
  %entity44 = getelementptr %struct.tvp5150, ptr %entity, i32 0, i32 1, i32 %xor, i32 1
  %33 = ptrtoint ptr %entity44 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %entity44, align 4
  %name45 = getelementptr inbounds %struct.media_entity, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %name45 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name45, align 4
  %index46 = getelementptr %struct.tvp5150, ptr %entity, i32 0, i32 1, i32 %xor, i32 2
  %37 = ptrtoint ptr %index46 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %index46, align 4
  %conv47 = zext i16 %38 to i32
  %and48 = and i32 %flags, 1
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %26, ptr noundef nonnull @.str.69, ptr noundef %30, i32 noundef %conv43, ptr noundef %36, i32 noundef %conv47, i32 noundef %and48) #12
  br label %if.end52

if.end52:                                         ; preds = %do.end38, %do.body32.if.end52_crit_edge, %do.end29.if.end52_crit_edge
  %arrayidx.i = getelementptr %struct.tvp5150, ptr %entity, i32 0, i32 1, i32 0
  %call.i = tail call ptr @media_entity_remote_pad(ptr noundef %arrayidx.i) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end52.for.inc.i_crit_edge, label %if.end.i

if.end52.for.inc.i_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %if.end52
  %call.i.i = tail call ptr @media_entity_find_link(ptr noundef nonnull %call.i, ptr noundef %arrayidx.i) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.cleanup106_crit_edge, label %tvp5150_set_link.exit.thread.i

if.end.i.cleanup106_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup106

tvp5150_set_link.exit.thread.i:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %flags1.i.i = getelementptr inbounds %struct.media_link, ptr %call.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %flags1.i.i, align 4
  %reverse.i.i = getelementptr inbounds %struct.media_link, ptr %call.i.i, i32 0, i32 4
  %40 = ptrtoint ptr %reverse.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reverse.i.i, align 4
  %flags3.i.i = getelementptr inbounds %struct.media_link, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %flags3.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %flags3.i.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %tvp5150_set_link.exit.thread.i, %if.end52.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.tvp5150, ptr %entity, i32 0, i32 1, i32 1
  %call.1.i = tail call ptr @media_entity_remote_pad(ptr noundef %arrayidx.1.i) #9
  %tobool.not.1.i = icmp eq ptr %call.1.i, null
  br i1 %tobool.not.1.i, label %for.inc.i.if.end56_crit_edge, label %if.end.1.i

for.inc.i.if.end56_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.end.1.i:                                       ; preds = %for.inc.i
  %call.i.1.i = tail call ptr @media_entity_find_link(ptr noundef nonnull %call.1.i, ptr noundef %arrayidx.1.i) #9
  %tobool.not.i.1.i = icmp eq ptr %call.i.1.i, null
  br i1 %tobool.not.i.1.i, label %if.end.1.i.cleanup106_crit_edge, label %tvp5150_set_link.exit.thread.1.i

if.end.1.i.cleanup106_crit_edge:                  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup106

tvp5150_set_link.exit.thread.1.i:                 ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %flags1.i.1.i = getelementptr inbounds %struct.media_link, ptr %call.i.1.i, i32 0, i32 5
  %43 = ptrtoint ptr %flags1.i.1.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %flags1.i.1.i, align 4
  %reverse.i.1.i = getelementptr inbounds %struct.media_link, ptr %call.i.1.i, i32 0, i32 4
  %44 = ptrtoint ptr %reverse.i.1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reverse.i.1.i, align 4
  %flags3.i.1.i = getelementptr inbounds %struct.media_link, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %flags3.i.1.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %flags3.i.1.i, align 4
  br label %if.end56

if.end56:                                         ; preds = %tvp5150_set_link.exit.thread.1.i, %for.inc.i.if.end56_crit_edge
  br i1 %is_svideo.0.off0, label %if.end56.cond.end63_crit_edge, label %cond.false60

if.end56.cond.end63_crit_edge:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end63

cond.false60:                                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %index, align 4
  %conv62 = zext i16 %48 to i32
  br label %cond.end63

cond.end63:                                       ; preds = %cond.false60, %if.end56.cond.end63_crit_edge
  %cond64 = phi i32 [ %conv62, %cond.false60 ], [ 2, %if.end56.cond.end63_crit_edge ]
  %and65 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  %49 = xor i32 %and65, 1
  %input1.i = getelementptr inbounds %struct.tvp5150, ptr %entity, i32 0, i32 11
  %50 = ptrtoint ptr %input1.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %cond64, ptr %input1.i, align 8
  %output2.i = getelementptr inbounds %struct.tvp5150, ptr %entity, i32 0, i32 12
  %51 = ptrtoint ptr %output2.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %49, ptr %output2.i, align 4
  %52 = getelementptr inbounds %struct.tvp5150, ptr %entity, i32 0, i32 14
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %and65, ptr %52, align 4
  tail call fastcc void @tvp5150_selmux(ptr noundef %entity) #9
  br i1 %tobool66.not, label %cond.end63.cleanup106_crit_edge, label %if.then71

cond.end63.cleanup106_crit_edge:                  ; preds = %cond.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup106

if.then71:                                        ; preds = %cond.end63
  br i1 %is_svideo.0.off0, label %if.then73, label %if.then71.if.end78_crit_edge

if.then71.if.end78_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

if.then73:                                        ; preds = %if.then71
  %call.i155 = tail call ptr @media_entity_find_link(ptr noundef %remote, ptr noundef %arrayidx) #9
  %tobool.not.i156 = icmp eq ptr %call.i155, null
  br i1 %tobool.not.i156, label %if.then73.cleanup106_crit_edge, label %tvp5150_set_link.exit.thread

if.then73.cleanup106_crit_edge:                   ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup106

tvp5150_set_link.exit.thread:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #11
  %flags1.i = getelementptr inbounds %struct.media_link, ptr %call.i155, i32 0, i32 5
  %54 = ptrtoint ptr %flags1.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %flags, ptr %flags1.i, align 4
  %reverse.i = getelementptr inbounds %struct.media_link, ptr %call.i155, i32 0, i32 4
  %55 = ptrtoint ptr %reverse.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %reverse.i, align 4
  %flags3.i = getelementptr inbounds %struct.media_link, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %flags, ptr %flags3.i, align 4
  br label %if.end78

if.end78:                                         ; preds = %tvp5150_set_link.exit.thread, %if.then71.if.end78_crit_edge
  %58 = ptrtoint ptr %connectors_num to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %connectors_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool80.not = icmp eq i32 %59, 0
  br i1 %tobool80.not, label %if.end78.cleanup106_crit_edge, label %if.end82

if.end78.cleanup106_crit_edge:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup106

if.end82:                                         ; preds = %if.end78
  %add.ptr85 = getelementptr i8, ptr %remote, i32 -112
  %cur_connector = getelementptr inbounds %struct.tvp5150, ptr %entity, i32 0, i32 3
  %60 = ptrtoint ptr %cur_connector to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %add.ptr85, ptr %cur_connector, align 8
  %connector = getelementptr i8, ptr %remote, i32 -88
  %norm = getelementptr inbounds %struct.tvp5150, ptr %entity, i32 0, i32 9
  %61 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %norm, align 8
  %63 = ptrtoint ptr %connector to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %connector, align 8
  %and88 = and i64 %64, %62
  %conv91 = and i64 %and88, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %62, i64 %conv91)
  %cmp92 = icmp eq i64 %62, %conv91
  br i1 %cmp92, label %if.end82.cleanup106_crit_edge, label %cleanup

if.end82.cleanup106_crit_edge:                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup106

cleanup:                                          ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  %conv89 = trunc i64 %and88 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv89)
  %tobool96.not = icmp eq i32 %conv89, 0
  %.conv91 = select i1 %tobool96.not, i64 %64, i64 %conv91
  %call103 = tail call i32 @tvp5150_s_std(ptr noundef %entity, i64 noundef %.conv91)
  br label %cleanup106

cleanup106:                                       ; preds = %cleanup, %if.end82.cleanup106_crit_edge, %if.end78.cleanup106_crit_edge, %if.then73.cleanup106_crit_edge, %cond.end63.cleanup106_crit_edge, %if.end.1.i.cleanup106_crit_edge, %if.end.i.cleanup106_crit_edge, %entry.cleanup106_crit_edge
  %retval.1 = phi i32 [ 0, %entry.cleanup106_crit_edge ], [ -22, %if.end.i.cleanup106_crit_edge ], [ -22, %if.end.1.i.cleanup106_crit_edge ], [ 0, %cleanup ], [ 0, %cond.end63.cleanup106_crit_edge ], [ -22, %if.then73.cleanup106_crit_edge ], [ 0, %if.end82.cleanup106_crit_edge ], [ 0, %if.end78.cleanup106_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_find_link(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp5150_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.268)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963777, label %sw.bb3
    i32 9963778, label %sw.bb7
    i32 9963779, label %sw.bb11
    i32 10422531, label %sw.bb15
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %regmap = getelementptr i8, ptr %1, i32 200
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 9, i32 noundef %8) #9
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %regmap4 = getelementptr i8, ptr %1, i32 200
  %9 = ptrtoint ptr %regmap4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap4, align 8
  %val5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %11 = ptrtoint ptr %val5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val5, align 4
  %call6 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 12, i32 noundef %12) #9
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %regmap8 = getelementptr i8, ptr %1, i32 200
  %13 = ptrtoint ptr %regmap8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap8, align 8
  %val9 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %15 = ptrtoint ptr %val9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val9, align 4
  %call10 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 10, i32 noundef %16) #9
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %regmap12 = getelementptr i8, ptr %1, i32 200
  %17 = ptrtoint ptr %regmap12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap12, align 8
  %val13 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %19 = ptrtoint ptr %val13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val13, align 4
  %call14 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 11, i32 noundef %20) #9
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %1, i32 -736
  %val16 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %21 = ptrtoint ptr %val16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not = icmp eq i32 %22, 0
  %cond = zext i1 %tobool.not to i32
  %enable = getelementptr i8, ptr %1, i32 236
  %23 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %cond, ptr %enable, align 4
  tail call fastcc void @tvp5150_selmux(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb15, %sw.bb11, %sw.bb7, %sw.bb3, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb15 ], [ 0, %sw.bb11 ], [ 0, %sw.bb7 ], [ 0, %sw.bb3 ], [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp5150_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %irq = getelementptr inbounds %struct.tvp5150, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %regmap = getelementptr inbounds %struct.tvp5150, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 193, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvp5150_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %irq = getelementptr inbounds %struct.tvp5150, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %regmap = getelementptr inbounds %struct.tvp5150, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 193, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 225)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 225)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !35, !36, !37, !38, !39, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !59, !60, !61, !63, !65, !67, !68, !69, !70, !71, !72, !73, !74, !75, !77, !78, !79, !80, !82, !84, !86, !88, !89, !90, !91, !93, !95, !96, !97, !98, !100, !101, !103, !104, !105, !107, !109, !110, !111, !112, !114, !116, !117, !118, !119, !121, !123, !124, !125, !126, !128, !129, !131, !133, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !174, !175, !176, !177, !179, !180, !182, !183, !184, !185, !187, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !210, !212, !214, !216, !218, !219, !220, !221, !222, !223, !225, !226, !227, !228, !230, !231, !232, !234, !235, !236, !238, !239, !240, !242, !243, !244, !246, !247, !248, !250, !251, !252, !254, !255, !256, !258, !259, !260, !262, !263, !264, !266, !267, !268, !270, !271, !272, !274, !275, !276, !278, !279, !280, !282, !283, !284, !286, !287, !288, !290, !291, !292, !294, !295, !296, !298, !299, !300, !302, !303, !304, !306, !307, !308, !310, !311, !312, !314, !315, !316, !318, !319, !320, !322, !323, !324, !326, !327, !328, !330, !331, !332, !334, !335, !336, !338, !339, !340, !342, !343, !344, !346, !347, !348, !350, !351, !352, !354, !355, !356, !358, !359, !360, !362, !364, !366, !367, !368, !370, !371, !372, !374, !375, !376, !378, !379, !380, !382, !383, !384, !386, !387, !388, !390, !391, !392, !394, !395, !396, !398, !399, !400, !402, !403, !404, !406, !407, !408, !410, !411, !412, !414, !415, !416, !418, !420, !422, !424, !426, !428, !429, !430, !431, !433, !434, !435, !437, !439}
!llvm.module.flags = !{!441, !442, !443, !444, !445, !446, !447, !448}
!llvm.ident = !{!449}

!0 = !{ptr @__UNIQUE_ID_description305, !1, !"__UNIQUE_ID_description305", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/tvp5150.c", i32 47, i32 1}
!2 = !{ptr @__UNIQUE_ID_author306, !3, !"__UNIQUE_ID_author306", i1 false, i1 false}
!3 = !{!"../drivers/media/i2c/tvp5150.c", i32 48, i32 1}
!4 = !{ptr @__UNIQUE_ID_file307, !5, !"__UNIQUE_ID_file307", i1 false, i1 false}
!5 = !{!"../drivers/media/i2c/tvp5150.c", i32 49, i32 1}
!6 = !{ptr @__UNIQUE_ID_license308, !5, !"__UNIQUE_ID_license308", i1 false, i1 false}
!7 = !{ptr @__param_debug, !8, !"__param_debug", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/tvp5150.c", i32 53, i32 1}
!9 = !{ptr @__UNIQUE_ID_debugtype309, !8, !"__UNIQUE_ID_debugtype309", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_debug310, !11, !"__UNIQUE_ID_debug310", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/tvp5150.c", i32 54, i32 1}
!12 = !{ptr @__initcall__kmod_tvp5150__323_2288_tvp5150_driver_init6, !13, !"__initcall__kmod_tvp5150__323_2288_tvp5150_driver_init6", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/tvp5150.c", i32 2288, i32 1}
!14 = !{ptr @__exitcall_tvp5150_driver_exit, !13, !"__exitcall_tvp5150_driver_exit", i1 false, i1 false}
!15 = !{ptr @debug, !16, !"debug", i1 false, i1 false}
!16 = !{!"../drivers/media/i2c/tvp5150.c", i32 52, i32 12}
!17 = !{ptr @__param_str_debug, !8, !"__param_str_debug", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/tvp5150.c", i32 2280, i32 11}
!20 = !{ptr @tvp5150_driver, !21, !"tvp5150_driver", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/tvp5150.c", i32 2277, i32 26}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/tvp5150.c", i32 2237, i32 2}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @tvp5150_remove._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @tvp5150_remove._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @tvp5150_probe._key, !31, !"_key", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/tvp5150.c", i32 2131, i32 8}
!32 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/i2c/tvp5150.c", i32 2144, i32 4}
!35 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @tvp5150_probe._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @tvp5150_probe._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @tvp5150_probe._key.10, !40, !"_key", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/tvp5150.c", i32 2179, i32 2}
!41 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/i2c/tvp5150.c", i32 1870, i32 46}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/i2c/tvp5150.c", i32 1880, i32 48}
!46 = !{ptr @tvp5150_config, !47, !"tvp5150_config", i1 false, i1 false}
!47 = !{!"../drivers/media/i2c/tvp5150.c", i32 1813, i32 29}
!48 = !{ptr @tvp5150_readable_table, !49, !"tvp5150_readable_table", i1 false, i1 false}
!49 = !{!"../drivers/media/i2c/tvp5150.c", i32 1808, i32 41}
!50 = !{ptr @tvp5150_readable_ranges, !51, !"tvp5150_readable_ranges", i1 false, i1 false}
!51 = !{!"../drivers/media/i2c/tvp5150.c", i32 1751, i32 34}
!52 = !{ptr @tvp5150_ops, !53, !"tvp5150_ops", i1 false, i1 false}
!53 = !{!"../drivers/media/i2c/tvp5150.c", i32 1733, i32 37}
!54 = !{ptr @tvp5150_core_ops, !55, !"tvp5150_core_ops", i1 false, i1 false}
!55 = !{!"../drivers/media/i2c/tvp5150.c", i32 1692, i32 42}
!56 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/i2c/tvp5150.c", i32 1562, i32 3}
!58 = !{ptr @.str.15, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @tvp5150_g_register._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @tvp5150_g_register._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @tvp5150_tuner_ops, !62, !"tvp5150_tuner_ops", i1 false, i1 false}
!62 = !{!"../drivers/media/i2c/tvp5150.c", i32 1703, i32 43}
!63 = !{ptr @tvp5150_video_ops, !64, !"tvp5150_video_ops", i1 false, i1 false}
!64 = !{!"../drivers/media/i2c/tvp5150.c", i32 1707, i32 43}
!65 = !{ptr @.str.16, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/i2c/tvp5150.c", i32 305, i32 2}
!67 = !{ptr @.str.17, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @tvp5150_selmux._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @tvp5150_selmux._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.18, !66, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.23, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/i2c/tvp5150.c", i32 782, i32 2}
!77 = !{ptr @.str.24, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @tvp5150_set_std._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @tvp5150_set_std._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = distinct !{null, !81, !"tvp5150_init_enable", i1 false, i1 false}
!81 = !{!"../drivers/media/i2c/tvp5150.c", i32 472, i32 35}
!82 = !{ptr @tvp5150_ev_fmt, !83, !"tvp5150_ev_fmt", i1 false, i1 false}
!83 = !{!"../drivers/media/i2c/tvp5150.c", i32 873, i32 32}
!84 = !{ptr @tvp5150_vbi_ops, !85, !"tvp5150_vbi_ops", i1 false, i1 false}
!85 = !{!"../drivers/media/i2c/tvp5150.c", i32 1715, i32 41}
!86 = !{ptr @.str.26, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/i2c/tvp5150.c", i32 646, i32 2}
!88 = !{ptr @.str.27, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @tvp5150_g_sliced_vbi_cap._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @tvp5150_g_sliced_vbi_cap._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @vbi_ram_default, !92, !"vbi_ram_default", i1 false, i1 false}
!92 = !{!"../drivers/media/i2c/tvp5150.c", i32 517, i32 33}
!93 = !{ptr @.str.28, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/i2c/tvp5150.c", i32 732, i32 3}
!95 = !{ptr @.str.29, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @tvp5150_get_vbi._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @tvp5150_get_vbi._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @tvp5150_get_vbi._entry.30, !99, !"_entry", i1 false, i1 false}
!99 = !{!"../drivers/media/i2c/tvp5150.c", i32 747, i32 4}
!100 = !{ptr @tvp5150_get_vbi._entry_ptr.31, !99, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.32, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/i2c/tvp5150.c", i32 688, i32 3}
!103 = !{ptr @tvp5150_set_vbi._entry, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @tvp5150_set_vbi._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @tvp5150_pad_ops, !106, !"tvp5150_pad_ops", i1 false, i1 false}
!106 = !{!"../drivers/media/i2c/tvp5150.c", i32 1722, i32 41}
!107 = !{ptr @.str.33, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/i2c/tvp5150.c", i32 1066, i32 2}
!109 = !{ptr @.str.34, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @tvp5150_fill_fmt._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @tvp5150_fill_fmt._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.35, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../include/media/v4l2-subdev.h", i32 1016, i32 6}
!114 = !{ptr @.str.36, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/i2c/tvp5150.c", i32 1118, i32 2}
!116 = !{ptr @.str.37, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @tvp5150_set_selection._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @tvp5150_set_selection._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @tvp5150_internal_ops, !120, !"tvp5150_internal_ops", i1 false, i1 false}
!120 = !{!"../drivers/media/i2c/tvp5150.c", i32 1741, i32 46}
!121 = !{ptr @.str.38, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/i2c/tvp5150.c", i32 2003, i32 3}
!123 = !{ptr @.str.39, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @tvp5150_parse_dt._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @tvp5150_parse_dt._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.40, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/i2c/tvp5150.c", i32 2025, i32 4}
!128 = !{ptr @tvp5150_parse_dt.__UNIQUE_ID_ddebug322, !127, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!129 = !{ptr @.str.41, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/i2c/tvp5150.c", i32 2066, i32 52}
!131 = !{ptr @.str.42, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/i2c/tvp5150.c", i32 2068, i32 22}
!133 = !{ptr @.str.44, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/i2c/tvp5150.c", i32 2074, i32 3}
!135 = !{ptr @tvp5150_parse_dt._entry.43, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @tvp5150_parse_dt._entry_ptr.45, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.46, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/i2c/tvp5150.c", i32 1932, i32 3}
!139 = !{ptr @.str.47, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @tvp5150_validate_connectors._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @tvp5150_validate_connectors._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.49, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/i2c/tvp5150.c", i32 1945, i32 5}
!144 = !{ptr @tvp5150_validate_connectors._entry.48, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @tvp5150_validate_connectors._entry_ptr.50, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.52, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/i2c/tvp5150.c", i32 1950, i32 5}
!148 = !{ptr @tvp5150_validate_connectors._entry.51, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @tvp5150_validate_connectors._entry_ptr.53, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.55, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/i2c/tvp5150.c", i32 1954, i32 5}
!152 = !{ptr @tvp5150_validate_connectors._entry.54, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @tvp5150_validate_connectors._entry_ptr.56, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.58, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/i2c/tvp5150.c", i32 1961, i32 5}
!156 = !{ptr @tvp5150_validate_connectors._entry.57, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @tvp5150_validate_connectors._entry_ptr.59, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.61, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/i2c/tvp5150.c", i32 1966, i32 5}
!160 = !{ptr @tvp5150_validate_connectors._entry.60, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @tvp5150_validate_connectors._entry_ptr.62, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.64, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/i2c/tvp5150.c", i32 1972, i32 5}
!164 = !{ptr @tvp5150_validate_connectors._entry.63, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @tvp5150_validate_connectors._entry_ptr.65, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.67, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/i2c/tvp5150.c", i32 1978, i32 4}
!168 = !{ptr @tvp5150_validate_connectors._entry.66, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @tvp5150_validate_connectors._entry_ptr.68, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @tvp5150_sd_media_ops, !171, !"tvp5150_sd_media_ops", i1 false, i1 false}
!171 = !{!"../drivers/media/i2c/tvp5150.c", i32 1407, i32 45}
!172 = !{ptr @.str.69, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/i2c/tvp5150.c", i32 1330, i32 2}
!174 = !{ptr @.str.70, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @tvp5150_link_setup._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @tvp5150_link_setup._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @tvp5150_link_setup._entry.71, !178, !"_entry", i1 false, i1 false}
!178 = !{!"../drivers/media/i2c/tvp5150.c", i32 1335, i32 3}
!179 = !{ptr @tvp5150_link_setup._entry_ptr.72, !178, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.73, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/i2c/tvp5150.c", i32 1837, i32 3}
!182 = !{ptr @.str.74, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @tvp5150_detect_version._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @tvp5150_detect_version._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.76, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/i2c/tvp5150.c", i32 1844, i32 2}
!187 = !{ptr @.str.77, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @tvp5150_detect_version._entry.75, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @tvp5150_detect_version._entry_ptr.78, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.80, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/i2c/tvp5150.c", i32 1849, i32 3}
!192 = !{ptr @tvp5150_detect_version._entry.79, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @tvp5150_detect_version._entry_ptr.81, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.83, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/i2c/tvp5150.c", i32 1851, i32 3}
!196 = !{ptr @tvp5150_detect_version._entry.82, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @tvp5150_detect_version._entry_ptr.84, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.86, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/i2c/tvp5150.c", i32 1856, i32 3}
!200 = !{ptr @tvp5150_detect_version._entry.85, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @tvp5150_detect_version._entry_ptr.87, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.89, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/i2c/tvp5150.c", i32 1858, i32 3}
!204 = !{ptr @tvp5150_detect_version._entry.88, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @tvp5150_detect_version._entry_ptr.90, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @tvp5150_ctrl_ops, !207, !"tvp5150_ctrl_ops", i1 false, i1 false}
!207 = !{!"../drivers/media/i2c/tvp5150.c", i32 1688, i32 35}
!208 = !{ptr @.str.91, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/i2c/tvp5150.c", i32 2105, i32 2}
!210 = !{ptr @.str.92, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/i2c/tvp5150.c", i32 2106, i32 2}
!212 = !{ptr @tvp5150_test_patterns, !213, !"tvp5150_test_patterns", i1 false, i1 false}
!213 = !{!"../drivers/media/i2c/tvp5150.c", i32 2104, i32 27}
!214 = !{ptr @tvp5150_init_default, !215, !"tvp5150_init_default", i1 false, i1 false}
!215 = !{!"../drivers/media/i2c/tvp5150.c", i32 336, i32 35}
!216 = !{ptr @.str.93, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/media/i2c/tvp5150.c", i32 893, i32 4}
!218 = !{ptr @.str.94, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @tvp5150_isr._entry, !217, !"_entry", i1 false, i1 false}
!220 = !{ptr @tvp5150_isr._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.95, !217, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @.str.96, !217, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.97, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/media/i2c/tvp5150.c", i32 143, i32 2}
!225 = !{ptr @.str.98, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @tvp5150_log_status._entry, !224, !"_entry", i1 false, i1 false}
!227 = !{ptr @tvp5150_log_status._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.100, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/media/i2c/tvp5150.c", i32 145, i32 2}
!230 = !{ptr @tvp5150_log_status._entry.99, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @tvp5150_log_status._entry_ptr.101, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.103, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/media/i2c/tvp5150.c", i32 147, i32 2}
!234 = !{ptr @tvp5150_log_status._entry.102, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @tvp5150_log_status._entry_ptr.104, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.106, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/media/i2c/tvp5150.c", i32 149, i32 2}
!238 = !{ptr @tvp5150_log_status._entry.105, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @tvp5150_log_status._entry_ptr.107, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.109, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/media/i2c/tvp5150.c", i32 151, i32 2}
!242 = !{ptr @tvp5150_log_status._entry.108, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @tvp5150_log_status._entry_ptr.110, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.112, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/media/i2c/tvp5150.c", i32 153, i32 2}
!246 = !{ptr @tvp5150_log_status._entry.111, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @tvp5150_log_status._entry_ptr.113, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.115, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/media/i2c/tvp5150.c", i32 155, i32 2}
!250 = !{ptr @tvp5150_log_status._entry.114, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @tvp5150_log_status._entry_ptr.116, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.118, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/media/i2c/tvp5150.c", i32 159, i32 2}
!254 = !{ptr @tvp5150_log_status._entry.117, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @tvp5150_log_status._entry_ptr.119, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.121, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/media/i2c/tvp5150.c", i32 161, i32 2}
!258 = !{ptr @tvp5150_log_status._entry.120, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @tvp5150_log_status._entry_ptr.122, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.124, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/media/i2c/tvp5150.c", i32 163, i32 2}
!262 = !{ptr @tvp5150_log_status._entry.123, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @tvp5150_log_status._entry_ptr.125, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.127, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/media/i2c/tvp5150.c", i32 165, i32 2}
!266 = !{ptr @tvp5150_log_status._entry.126, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @tvp5150_log_status._entry_ptr.128, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.130, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/media/i2c/tvp5150.c", i32 167, i32 2}
!270 = !{ptr @tvp5150_log_status._entry.129, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @tvp5150_log_status._entry_ptr.131, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.133, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/media/i2c/tvp5150.c", i32 169, i32 2}
!274 = !{ptr @tvp5150_log_status._entry.132, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @tvp5150_log_status._entry_ptr.134, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.136, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/media/i2c/tvp5150.c", i32 171, i32 2}
!278 = !{ptr @tvp5150_log_status._entry.135, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @tvp5150_log_status._entry_ptr.137, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.139, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/media/i2c/tvp5150.c", i32 174, i32 2}
!282 = !{ptr @tvp5150_log_status._entry.138, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @tvp5150_log_status._entry_ptr.140, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.142, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/media/i2c/tvp5150.c", i32 177, i32 2}
!286 = !{ptr @tvp5150_log_status._entry.141, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @tvp5150_log_status._entry_ptr.143, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.145, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/media/i2c/tvp5150.c", i32 179, i32 2}
!290 = !{ptr @tvp5150_log_status._entry.144, !289, !"_entry", i1 false, i1 false}
!291 = !{ptr @tvp5150_log_status._entry_ptr.146, !289, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.148, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/media/i2c/tvp5150.c", i32 181, i32 2}
!294 = !{ptr @tvp5150_log_status._entry.147, !293, !"_entry", i1 false, i1 false}
!295 = !{ptr @tvp5150_log_status._entry_ptr.149, !293, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @.str.151, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/media/i2c/tvp5150.c", i32 183, i32 2}
!298 = !{ptr @tvp5150_log_status._entry.150, !297, !"_entry", i1 false, i1 false}
!299 = !{ptr @tvp5150_log_status._entry_ptr.152, !297, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.154, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/media/i2c/tvp5150.c", i32 185, i32 2}
!302 = !{ptr @tvp5150_log_status._entry.153, !301, !"_entry", i1 false, i1 false}
!303 = !{ptr @tvp5150_log_status._entry_ptr.155, !301, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.157, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/media/i2c/tvp5150.c", i32 188, i32 2}
!306 = !{ptr @tvp5150_log_status._entry.156, !305, !"_entry", i1 false, i1 false}
!307 = !{ptr @tvp5150_log_status._entry_ptr.158, !305, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.160, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/media/i2c/tvp5150.c", i32 190, i32 2}
!310 = !{ptr @tvp5150_log_status._entry.159, !309, !"_entry", i1 false, i1 false}
!311 = !{ptr @tvp5150_log_status._entry_ptr.161, !309, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.163, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/media/i2c/tvp5150.c", i32 192, i32 2}
!314 = !{ptr @tvp5150_log_status._entry.162, !313, !"_entry", i1 false, i1 false}
!315 = !{ptr @tvp5150_log_status._entry_ptr.164, !313, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.166, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/media/i2c/tvp5150.c", i32 194, i32 2}
!318 = !{ptr @tvp5150_log_status._entry.165, !317, !"_entry", i1 false, i1 false}
!319 = !{ptr @tvp5150_log_status._entry_ptr.167, !317, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.169, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/media/i2c/tvp5150.c", i32 196, i32 2}
!322 = !{ptr @tvp5150_log_status._entry.168, !321, !"_entry", i1 false, i1 false}
!323 = !{ptr @tvp5150_log_status._entry_ptr.170, !321, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.172, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/media/i2c/tvp5150.c", i32 199, i32 2}
!326 = !{ptr @tvp5150_log_status._entry.171, !325, !"_entry", i1 false, i1 false}
!327 = !{ptr @tvp5150_log_status._entry_ptr.173, !325, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.175, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/media/i2c/tvp5150.c", i32 201, i32 2}
!330 = !{ptr @tvp5150_log_status._entry.174, !329, !"_entry", i1 false, i1 false}
!331 = !{ptr @tvp5150_log_status._entry_ptr.176, !329, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.178, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/media/i2c/tvp5150.c", i32 203, i32 2}
!334 = !{ptr @tvp5150_log_status._entry.177, !333, !"_entry", i1 false, i1 false}
!335 = !{ptr @tvp5150_log_status._entry_ptr.179, !333, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.181, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/media/i2c/tvp5150.c", i32 205, i32 2}
!338 = !{ptr @tvp5150_log_status._entry.180, !337, !"_entry", i1 false, i1 false}
!339 = !{ptr @tvp5150_log_status._entry_ptr.182, !337, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.184, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/media/i2c/tvp5150.c", i32 208, i32 2}
!342 = !{ptr @tvp5150_log_status._entry.183, !341, !"_entry", i1 false, i1 false}
!343 = !{ptr @tvp5150_log_status._entry_ptr.185, !341, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.187, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/media/i2c/tvp5150.c", i32 211, i32 2}
!346 = !{ptr @tvp5150_log_status._entry.186, !345, !"_entry", i1 false, i1 false}
!347 = !{ptr @tvp5150_log_status._entry_ptr.188, !345, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @.str.190, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/media/i2c/tvp5150.c", i32 214, i32 2}
!350 = !{ptr @tvp5150_log_status._entry.189, !349, !"_entry", i1 false, i1 false}
!351 = !{ptr @tvp5150_log_status._entry_ptr.191, !349, !"_entry_ptr", i1 false, i1 false}
!352 = !{ptr @.str.193, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/media/i2c/tvp5150.c", i32 216, i32 2}
!354 = !{ptr @tvp5150_log_status._entry.192, !353, !"_entry", i1 false, i1 false}
!355 = !{ptr @tvp5150_log_status._entry_ptr.194, !353, !"_entry_ptr", i1 false, i1 false}
!356 = !{ptr @.str.196, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/media/i2c/tvp5150.c", i32 218, i32 2}
!358 = !{ptr @tvp5150_log_status._entry.195, !357, !"_entry", i1 false, i1 false}
!359 = !{ptr @tvp5150_log_status._entry_ptr.197, !357, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @.str.198, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/media/i2c/tvp5150.c", i32 225, i32 21}
!362 = !{ptr @.str.199, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/media/i2c/tvp5150.c", i32 227, i32 21}
!364 = !{ptr @.str.201, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/media/i2c/tvp5150.c", i32 230, i32 2}
!366 = !{ptr @tvp5150_log_status._entry.200, !365, !"_entry", i1 false, i1 false}
!367 = !{ptr @tvp5150_log_status._entry_ptr.202, !365, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @.str.204, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/media/i2c/tvp5150.c", i32 232, i32 2}
!370 = !{ptr @tvp5150_log_status._entry.203, !369, !"_entry", i1 false, i1 false}
!371 = !{ptr @tvp5150_log_status._entry_ptr.205, !369, !"_entry_ptr", i1 false, i1 false}
!372 = !{ptr @.str.207, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/media/i2c/tvp5150.c", i32 234, i32 2}
!374 = !{ptr @tvp5150_log_status._entry.206, !373, !"_entry", i1 false, i1 false}
!375 = !{ptr @tvp5150_log_status._entry_ptr.208, !373, !"_entry_ptr", i1 false, i1 false}
!376 = !{ptr @.str.210, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/media/i2c/tvp5150.c", i32 236, i32 2}
!378 = !{ptr @tvp5150_log_status._entry.209, !377, !"_entry", i1 false, i1 false}
!379 = !{ptr @tvp5150_log_status._entry_ptr.211, !377, !"_entry_ptr", i1 false, i1 false}
!380 = !{ptr @.str.213, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/media/i2c/tvp5150.c", i32 238, i32 2}
!382 = !{ptr @tvp5150_log_status._entry.212, !381, !"_entry", i1 false, i1 false}
!383 = !{ptr @tvp5150_log_status._entry_ptr.214, !381, !"_entry_ptr", i1 false, i1 false}
!384 = !{ptr @.str.216, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/media/i2c/tvp5150.c", i32 240, i32 2}
!386 = !{ptr @tvp5150_log_status._entry.215, !385, !"_entry", i1 false, i1 false}
!387 = !{ptr @tvp5150_log_status._entry_ptr.217, !385, !"_entry_ptr", i1 false, i1 false}
!388 = !{ptr @.str.219, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/media/i2c/tvp5150.c", i32 242, i32 2}
!390 = !{ptr @tvp5150_log_status._entry.218, !389, !"_entry", i1 false, i1 false}
!391 = !{ptr @tvp5150_log_status._entry_ptr.220, !389, !"_entry_ptr", i1 false, i1 false}
!392 = !{ptr @.str.222, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/media/i2c/tvp5150.c", i32 244, i32 2}
!394 = !{ptr @tvp5150_log_status._entry.221, !393, !"_entry", i1 false, i1 false}
!395 = !{ptr @tvp5150_log_status._entry_ptr.223, !393, !"_entry_ptr", i1 false, i1 false}
!396 = !{ptr @.str.225, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/media/i2c/tvp5150.c", i32 246, i32 2}
!398 = !{ptr @tvp5150_log_status._entry.224, !397, !"_entry", i1 false, i1 false}
!399 = !{ptr @tvp5150_log_status._entry_ptr.226, !397, !"_entry_ptr", i1 false, i1 false}
!400 = !{ptr @.str.228, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/media/i2c/tvp5150.c", i32 248, i32 2}
!402 = !{ptr @tvp5150_log_status._entry.227, !401, !"_entry", i1 false, i1 false}
!403 = !{ptr @tvp5150_log_status._entry_ptr.229, !401, !"_entry_ptr", i1 false, i1 false}
!404 = !{ptr @.str.231, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/media/i2c/tvp5150.c", i32 251, i32 2}
!406 = !{ptr @tvp5150_log_status._entry.230, !405, !"_entry", i1 false, i1 false}
!407 = !{ptr @tvp5150_log_status._entry_ptr.232, !405, !"_entry_ptr", i1 false, i1 false}
!408 = !{ptr @.str.234, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/media/i2c/tvp5150.c", i32 253, i32 2}
!410 = !{ptr @tvp5150_log_status._entry.233, !409, !"_entry", i1 false, i1 false}
!411 = !{ptr @tvp5150_log_status._entry_ptr.235, !409, !"_entry_ptr", i1 false, i1 false}
!412 = !{ptr @.str.237, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/media/i2c/tvp5150.c", i32 255, i32 2}
!414 = !{ptr @tvp5150_log_status._entry.236, !413, !"_entry", i1 false, i1 false}
!415 = !{ptr @tvp5150_log_status._entry_ptr.238, !413, !"_entry_ptr", i1 false, i1 false}
!416 = !{ptr @.str.239, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/media/i2c/tvp5150.c", i32 258, i32 21}
!418 = !{ptr @.str.240, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/media/i2c/tvp5150.c", i32 261, i32 21}
!420 = !{ptr @.str.241, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/media/i2c/tvp5150.c", i32 264, i32 21}
!422 = !{ptr @.str.242, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/media/i2c/tvp5150.c", i32 267, i32 21}
!424 = !{ptr @.str.243, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/media/i2c/tvp5150.c", i32 270, i32 21}
!426 = !{ptr @.str.244, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/media/i2c/tvp5150.c", i32 127, i32 3}
!428 = !{ptr @.str.245, !427, !"<string literal>", i1 false, i1 false}
!429 = !{ptr @dump_reg_range._entry, !427, !"_entry", i1 false, i1 false}
!430 = !{ptr @dump_reg_range._entry_ptr, !427, !"_entry_ptr", i1 false, i1 false}
!431 = !{ptr @.str.247, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/media/i2c/tvp5150.c", i32 137, i32 3}
!433 = !{ptr @dump_reg_range._entry.246, !432, !"_entry", i1 false, i1 false}
!434 = !{ptr @dump_reg_range._entry_ptr.248, !432, !"_entry_ptr", i1 false, i1 false}
!435 = !{ptr @tvp5150_of_match, !436, !"tvp5150_of_match", i1 false, i1 false}
!436 = !{!"../drivers/media/i2c/tvp5150.c", i32 2270, i32 34}
!437 = !{ptr @tvp5150_pm_ops, !438, !"tvp5150_pm_ops", i1 false, i1 false}
!438 = !{!"../drivers/media/i2c/tvp5150.c", i32 2257, i32 32}
!439 = !{ptr @tvp5150_id, !440, !"tvp5150_id", i1 false, i1 false}
!440 = !{!"../drivers/media/i2c/tvp5150.c", i32 2263, i32 35}
!441 = !{i32 1, !"wchar_size", i32 2}
!442 = !{i32 1, !"min_enum_size", i32 4}
!443 = !{i32 8, !"branch-target-enforcement", i32 0}
!444 = !{i32 8, !"sign-return-address", i32 0}
!445 = !{i32 8, !"sign-return-address-all", i32 0}
!446 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!447 = !{i32 7, !"uwtable", i32 1}
!448 = !{i32 7, !"frame-pointer", i32 2}
!449 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!450 = !{i64 0, i64 16711681}
!451 = !{!"auto-init"}
!452 = !{i64 2149047749, i64 2149047754, i64 2149047767, i64 2149047811, i64 2149047845, i64 2149047866}
!453 = !{i8 0, i8 2}
!454 = !{i64 2148402876}
!455 = !{i64 887699, i64 887724, i64 887746, i64 887762, i64 887774, i64 887794, i64 887818, i64 887834, i64 887846}
!456 = !{i64 2148403064}
!457 = !{!"branch_weights", i32 2000, i32 1}
