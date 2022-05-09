; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/s5k5baf.c_pt.bc'
source_filename = "../drivers/media/i2c/s5k5baf.c"
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.s5k5baf_pixfmt = type { i32, i32, i16 }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.s5k5baf = type { [2 x %struct.s5k5baf_gpio], i32, i8, [3 x %struct.regulator_bulk_data], ptr, i32, ptr, %struct.v4l2_subdev, %struct.media_pad, %struct.v4l2_subdev, [2 x %struct.media_pad], %struct.mutex, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, i32, i16, i16, i16, %struct.s5k5baf_ctrls, i8, i32 }
%struct.s5k5baf_gpio = type { i32, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.s5k5baf_ctrls = type { %struct.v4l2_ctrl_handler, %struct.anon.101, %struct.anon.102, %struct.anon.103 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.101 = type { ptr, ptr, ptr }
%struct.anon.102 = type { ptr, ptr }
%struct.anon.103 = type { ptr, ptr, ptr }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.104, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.104 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.s5k5baf_fw = type { i16, [0 x %struct.anon.100] }
%struct.anon.100 = type { i16, i16 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.v4l2_subdev_frame_interval = type { i32, %struct.v4l2_fract, [9 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_subdev_frame_interval_enum = type { i32, i32, i32, i32, i32, %struct.v4l2_fract, i32, [8 x i32] }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__param_str_debug = internal constant [14 x i8] c"s5k5baf.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype292 = internal constant [27 x i8] c"s5k5baf.parmtype=debug:int\00", section ".modinfo", align 1
@__initcall__kmod_s5k5baf__301_2059_s5k5baf_i2c_driver_init6 = internal global ptr @s5k5baf_i2c_driver_init, section ".initcall6.init", align 4
@s5k5baf_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @s5k5baf_remove, ptr @s5k5baf_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @s5k5baf_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @s5k5baf_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_s5k5baf_i2c_driver_exit = internal global ptr @s5k5baf_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description302 = internal constant [58 x i8] c"s5k5baf.description=Samsung S5K5BAF(X) UXGA camera driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author303 = internal constant [51 x i8] c"s5k5baf.author=Andrzej Hajda <a.hajda@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [39 x i8] c"s5k5baf.file=drivers/media/i2c/s5k5baf\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [23 x i8] c"s5k5baf.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"s5k5baf\00", [24 x i8] zeroinitializer }, align 32
@s5k5baf_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5k5baf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@s5k5baf_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"s5k5baf\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@s5k5baf_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&state->lock\00", [19 x i8] zeroinitializer }, align 32
@s5k5baf_cis_rect = internal global { %struct.v4l2_rect, [16 x i8] } { %struct.v4l2_rect { i32 0, i32 0, i32 1600, i32 1200 }, [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@s5k5baf_parse_device_node._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1851, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"no device-tree node provided\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"s5k5baf_parse_device_node\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/i2c/s5k5baf.c\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s5k5baf_parse_device_node._entry_ptr = internal global ptr @s5k5baf_parse_device_node._entry, section ".printk_index", align 4
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@s5k5baf_parse_device_node._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 1860, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"using default %u Hz clock frequency\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@s5k5baf_parse_device_node._entry_ptr.12 = internal global ptr @s5k5baf_parse_device_node._entry.9, section ".printk_index", align 4
@s5k5baf_parse_device_node._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.4, ptr @.str.5, i32 1869, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"no endpoint defined at node %pOF\0A\00", [62 x i8] zeroinitializer }, align 32
@s5k5baf_parse_device_node._entry_ptr.15 = internal global ptr @s5k5baf_parse_device_node._entry.13, section ".printk_index", align 4
@s5k5baf_parse_device_node._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.4, ptr @.str.5, i32 1888, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"unsupported bus in endpoint defined at node %pOF\0A\00", [46 x i8] zeroinitializer }, align 32
@s5k5baf_parse_device_node._entry_ptr.18 = internal global ptr @s5k5baf_parse_device_node._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stbyn-gpios\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rstn-gpios\00", [21 x i8] zeroinitializer }, align 32
@s5k5baf_parse_gpios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.5, i32 1833, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no %s GPIO pin provided\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"s5k5baf_parse_gpios\00", [44 x i8] zeroinitializer }, align 32
@s5k5baf_parse_gpios._entry_ptr = internal global ptr @s5k5baf_parse_gpios._entry, section ".printk_index", align 4
@s5k5baf_cis_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5k5baf_cis_pad_ops }, [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"S5K5BAF-CIS %d-%04x\00", [44 x i8] zeroinitializer }, align 32
@s5k5baf_cis_subdev_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @s5k5baf_open, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@s5k5baf_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @s5k5baf_core_ops, ptr null, ptr null, ptr @s5k5baf_video_ops, ptr null, ptr null, ptr null, ptr @s5k5baf_pad_ops }, [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"S5K5BAF-ISP %d-%04x\00", [44 x i8] zeroinitializer }, align 32
@s5k5baf_subdev_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr @s5k5baf_registered, ptr @s5k5baf_unregistered, ptr @s5k5baf_open, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@s5k5baf_configure_subdevs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.5, i32 1935, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot init media entity %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"s5k5baf_configure_subdevs\00", [38 x i8] zeroinitializer }, align 32
@s5k5baf_configure_subdevs._entry_ptr = internal global ptr @s5k5baf_configure_subdevs._entry, section ".printk_index", align 4
@s5k5baf_cis_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @s5k5baf_enum_mbus_code, ptr @s5k5baf_enum_frame_size, ptr null, ptr @s5k5baf_get_fmt, ptr @s5k5baf_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@s5k5baf_formats = internal constant { [3 x %struct.s5k5baf_pixfmt], [60 x i8] } { [3 x %struct.s5k5baf_pixfmt] [%struct.s5k5baf_pixfmt { i32 8199, i32 7, i16 5 }, %struct.s5k5baf_pixfmt { i32 8199, i32 3, i16 6 }, %struct.s5k5baf_pixfmt { i32 4103, i32 7, i16 0 }], [60 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@s5k5baf_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @v4l2_ctrl_subdev_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5k5baf_set_power, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5k5baf_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5k5baf_s_stream, ptr null, ptr @s5k5baf_g_frame_interval, ptr @s5k5baf_s_frame_interval, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@s5k5baf_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @s5k5baf_enum_mbus_code, ptr @s5k5baf_enum_frame_size, ptr @s5k5baf_enum_frame_interval, ptr @s5k5baf_get_fmt, ptr @s5k5baf_set_fmt, ptr @s5k5baf_get_selection, ptr @s5k5baf_set_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s5k5baf-cfg.bin\00", [16 x i8] zeroinitializer }, align 32
@s5k5baf_load_setfile._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.5, i32 1034, ptr @.str.31, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"firmware file (%s) not loaded\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"s5k5baf_load_setfile\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@s5k5baf_load_setfile._entry_ptr = internal global ptr @s5k5baf_load_setfile._entry, section ".printk_index", align 4
@s5k5baf_fw_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.5, i32 359, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"firmware file too short (%zu)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s5k5baf_fw_parse\00", [47 x i8] zeroinitializer }, align 32
@s5k5baf_fw_parse._entry_ptr = internal global ptr @s5k5baf_fw_parse._entry, section ".printk_index", align 4
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SF00\00", [27 x i8] zeroinitializer }, align 32
@s5k5baf_fw_parse._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.33, ptr @.str.5, i32 365, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid firmware magic number\0A\00", [33 x i8] zeroinitializer }, align 32
@s5k5baf_fw_parse._entry_ptr.37 = internal global ptr @s5k5baf_fw_parse._entry.35, section ".printk_index", align 4
@s5k5baf_fw_parse._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.33, ptr @.str.5, i32 382, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"invalid firmware header (count=%d size=%zu)\0A\00", [51 x i8] zeroinitializer }, align 32
@s5k5baf_fw_parse._entry_ptr.40 = internal global ptr @s5k5baf_fw_parse._entry.38, section ".printk_index", align 4
@s5k5baf_fw_parse._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.33, ptr @.str.5, i32 391, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"invalid firmware header (seq=%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@s5k5baf_fw_parse._entry_ptr.43 = internal global ptr @s5k5baf_fw_parse._entry.41, section ".printk_index", align 4
@s5k5baf_write_arr_seq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.5, i32 488, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: i2c_write_seq(count=%d): %*ph\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"s5k5baf_write_arr_seq\00", [42 x i8] zeroinitializer }, align 32
@s5k5baf_write_arr_seq._entry_ptr = internal global ptr @s5k5baf_write_arr_seq._entry, section ".printk_index", align 4
@s5k5baf_write_arr_seq._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.5, i32 502, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013%s: i2c_write_seq: error during transfer (%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@s5k5baf_write_arr_seq._entry_ptr.48 = internal global ptr @s5k5baf_write_arr_seq._entry.46, section ".printk_index", align 4
@s5k5baf_i2c_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.5, i32 457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: i2c_write: 0x%04x : 0x%04x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s5k5baf_i2c_write\00", [46 x i8] zeroinitializer }, align 32
@s5k5baf_i2c_write._entry_ptr = internal global ptr @s5k5baf_i2c_write._entry, section ".printk_index", align 4
@s5k5baf_i2c_write._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.5, i32 460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: i2c_write: error during transfer (%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@s5k5baf_i2c_write._entry_ptr.53 = internal global ptr @s5k5baf_i2c_write._entry.51, section ".printk_index", align 4
@s5k5baf_hw_set_clocks.nseq_clk_cfg = internal constant { [15 x i16], [34 x i8] } { [15 x i16] [i16 10, i16 454, i16 1, i16 1, i16 0, i16 6000, i16 1500, i16 12000, i16 12000, i16 1500, i16 12000, i16 2, i16 478, i16 1, i16 0], [34 x i8] zeroinitializer }, align 32
@s5k5baf_hw_set_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.5, i32 602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: error configuring PLL (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"s5k5baf_hw_set_clocks\00", [42 x i8] zeroinitializer }, align 32
@s5k5baf_hw_set_clocks._entry_ptr = internal global ptr @s5k5baf_hw_set_clocks._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@s5k5baf_synchronize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.5, i32 552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: timeout on register synchronize (%#x)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"s5k5baf_synchronize\00", [44 x i8] zeroinitializer }, align 32
@s5k5baf_synchronize._entry_ptr = internal global ptr @s5k5baf_synchronize._entry, section ".printk_index", align 4
@s5k5baf_i2c_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.5, i32 438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: i2c_read: 0x%04x : 0x%04x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s5k5baf_i2c_read\00", [47 x i8] zeroinitializer }, align 32
@s5k5baf_i2c_read._entry_ptr = internal global ptr @s5k5baf_i2c_read._entry, section ".printk_index", align 4
@s5k5baf_i2c_read._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.5, i32 441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: i2c_read: error during transfer (%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@s5k5baf_i2c_read._entry_ptr.62 = internal global ptr @s5k5baf_i2c_read._entry.60, section ".printk_index", align 4
@s5k5baf_hw_validate_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.5, i32 842, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: error setting format: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"s5k5baf_hw_validate_cfg\00", [40 x i8] zeroinitializer }, align 32
@s5k5baf_hw_validate_cfg._entry_ptr = internal global ptr @s5k5baf_hw_validate_cfg._entry, section ".printk_index", align 4
@s5k5baf_hw_find_min_fiv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.5, i32 811, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s: found valid frame interval: %d00us\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"s5k5baf_hw_find_min_fiv\00", [40 x i8] zeroinitializer }, align 32
@s5k5baf_hw_find_min_fiv._entry_ptr = internal global ptr @s5k5baf_hw_find_min_fiv._entry, section ".printk_index", align 4
@s5k5baf_hw_find_min_fiv._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.5, i32 815, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: error setting frame interval: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@s5k5baf_hw_find_min_fiv._entry_ptr.69 = internal global ptr @s5k5baf_hw_find_min_fiv._entry.67, section ".printk_index", align 4
@s5k5baf_hw_find_min_fiv._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.66, ptr @.str.5, i32 819, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: cannot find correct frame interval\0A\00", [54 x i8] zeroinitializer }, align 32
@s5k5baf_hw_find_min_fiv._entry_ptr.72 = internal global ptr @s5k5baf_hw_find_min_fiv._entry.70, section ".printk_index", align 4
@s5k5baf_hw_set_crop_rects._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.5, i32 891, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: crop error on max frame interval: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"s5k5baf_hw_set_crop_rects\00", [38 x i8] zeroinitializer }, align 32
@s5k5baf_hw_set_crop_rects._entry_ptr = internal global ptr @s5k5baf_hw_set_crop_rects._entry, section ".printk_index", align 4
@s5k5baf_hw_set_crop_rects._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.5, i32 898, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013%s: crop error: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@s5k5baf_hw_set_crop_rects._entry_ptr.77 = internal global ptr @s5k5baf_hw_set_crop_rects._entry.75, section ".printk_index", align 4
@s5k5baf_set_frame_interval._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.5, i32 1165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s: frame interval changed to %d00us\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"s5k5baf_set_frame_interval\00", [37 x i8] zeroinitializer }, align 32
@s5k5baf_set_frame_interval._entry_ptr = internal global ptr @s5k5baf_set_frame_interval._entry, section ".printk_index", align 4
@s5k5baf_set_selection.rtype = internal global { i32, [28 x i8] } zeroinitializer, align 32
@s5k5baf_registered._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.5, i32 1760, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: failed to register subdev %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"s5k5baf_registered\00", [45 x i8] zeroinitializer }, align 32
@s5k5baf_registered._entry_ptr = internal global ptr @s5k5baf_registered._entry, section ".printk_index", align 4
@.str.82 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"S5K5BAF_STBY\00", [19 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"S5K5BAF_RST\00", [20 x i8] zeroinitializer }, align 32
@s5k5baf_configure_gpios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.5, i32 1813, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: failed to request gpio %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"s5k5baf_configure_gpios\00", [40 x i8] zeroinitializer }, align 32
@s5k5baf_configure_gpios._entry_ptr = internal global ptr @s5k5baf_configure_gpios._entry, section ".printk_index", align 4
@s5k5baf_configure_regulators._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.5, i32 1951, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: failed to get regulators\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"s5k5baf_configure_regulators\00", [35 x i8] zeroinitializer }, align 32
@s5k5baf_configure_regulators._entry_ptr = internal global ptr @s5k5baf_configure_regulators._entry, section ".printk_index", align 4
@.str.88 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdda\00", [27 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vddreg\00", [25 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddio\00", [26 x i8] zeroinitializer }, align 32
@s5k5baf_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.5, i32 968, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: clock frequency: %ld\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s5k5baf_power_on\00", [47 x i8] zeroinitializer }, align 32
@s5k5baf_power_on._entry_ptr = internal global ptr @s5k5baf_power_on._entry, section ".printk_index", align 4
@s5k5baf_power_on._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.5, i32 978, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: %s() failed (%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@s5k5baf_power_on._entry_ptr.95 = internal global ptr @s5k5baf_power_on._entry.93, section ".printk_index", align 4
@s5k5baf_check_fw_revision._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.5, i32 1742, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: FW API=%#x, revision=%#x sensor_id=%#x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"s5k5baf_check_fw_revision\00", [38 x i8] zeroinitializer }, align 32
@s5k5baf_check_fw_revision._entry_ptr = internal global ptr @s5k5baf_check_fw_revision._entry, section ".printk_index", align 4
@s5k5baf_check_fw_revision._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.97, ptr @.str.5, i32 1745, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: FW API version not supported\0A\00", [60 x i8] zeroinitializer }, align 32
@s5k5baf_check_fw_revision._entry_ptr.100 = internal global ptr @s5k5baf_check_fw_revision._entry.98, section ".printk_index", align 4
@s5k5baf_power_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.5, i32 999, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: failed to disable regulators\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s5k5baf_power_off\00", [46 x i8] zeroinitializer }, align 32
@s5k5baf_power_off._entry_ptr = internal global ptr @s5k5baf_power_off._entry, section ".printk_index", align 4
@s5k5baf_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @s5k5baf_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@s5k5baf_initialize_ctrls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.103 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"s5k5baf:1641:(hdl)->_lock\00", [38 x i8] zeroinitializer }, align 32
@s5k5baf_initialize_ctrls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.5, i32 1643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: cannot init ctrl handler (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"s5k5baf_initialize_ctrls\00", [39 x i8] zeroinitializer }, align 32
@s5k5baf_initialize_ctrls._entry_ptr = internal global ptr @s5k5baf_initialize_ctrls._entry, section ".printk_index", align 4
@s5k5baf_test_pattern_menu = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117], [36 x i8] zeroinitializer }, align 32
@s5k5baf_initialize_ctrls._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.105, ptr @.str.5, i32 1692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: error creating controls (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@s5k5baf_initialize_ctrls._entry_ptr.108 = internal global ptr @s5k5baf_initialize_ctrls._entry.106, section ".printk_index", align 4
@s5k5baf_s_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.5, i32 1560, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: ctrl: %s, value: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s5k5baf_s_ctrl\00", [17 x i8] zeroinitializer }, align 32
@s5k5baf_s_ctrl._entry_ptr = internal global ptr @s5k5baf_s_ctrl._entry, section ".printk_index", align 4
@s5k5baf_hw_set_colorfx.colorfx = internal constant { [7 x i16], [18 x i8] } { [7 x i16] [i16 0, i16 1, i16 3, i16 2, i16 0, i16 5, i16 4], [18 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Blank\00", [26 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Bars\00", [27 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Gradients\00", [22 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Textile\00", [24 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Textile2\00", [23 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Squares\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 7]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 32, i64 4103, i64 8199]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 11]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 11]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 11]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 11]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 11]
@__sancov_gen_cov_switch_values.125 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 11]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 11]
@__sancov_gen_cov_switch_values.127 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 256, i64 258]
@__sancov_gen_cov_switch_values.128 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.129 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 256, i64 258]
@__sancov_gen_cov_switch_values.130 = internal global [13 x i64] [i64 11, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963788, i64 9963796, i64 9963800, i64 9963802, i64 9963803, i64 9963807, i64 10094849, i64 10422531]
@___asan_gen_.131 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 32, i32 12 }
@___asan_gen_.134 = private unnamed_addr constant [19 x i8] c"s5k5baf_i2c_driver\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2049, i32 26 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2052, i32 11 }
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"s5k5baf_of_match\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2043, i32 34 }
@___asan_gen_.143 = private unnamed_addr constant [11 x i8] c"s5k5baf_id\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2037, i32 35 }
@___asan_gen_.146 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1964, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"s5k5baf_cis_rect\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 336, i32 25 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1985, i32 45 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1851, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1855, i32 35 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1859, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1869, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1887, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1823, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1824, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1833, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant [23 x i8] c"s5k5baf_cis_subdev_ops\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1775, i32 37 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1905, i32 39 }
@___asan_gen_.221 = private unnamed_addr constant [32 x i8] c"s5k5baf_cis_subdev_internal_ops\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1779, i32 46 }
@___asan_gen_.224 = private unnamed_addr constant [19 x i8] c"s5k5baf_subdev_ops\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1794, i32 37 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1919, i32 39 }
@___asan_gen_.230 = private unnamed_addr constant [28 x i8] c"s5k5baf_subdev_internal_ops\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1783, i32 46 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1935, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant [20 x i8] c"s5k5baf_cis_pad_ops\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1527, i32 41 }
@___asan_gen_.245 = private unnamed_addr constant [16 x i8] c"s5k5baf_formats\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 329, i32 36 }
@___asan_gen_.249 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 998, i32 6 }
@___asan_gen_.251 = private unnamed_addr constant [17 x i8] c"s5k5baf_core_ops\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1789, i32 42 }
@___asan_gen_.254 = private unnamed_addr constant [18 x i8] c"s5k5baf_video_ops\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1544, i32 43 }
@___asan_gen_.257 = private unnamed_addr constant [16 x i8] c"s5k5baf_pad_ops\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1534, i32 41 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1031, i32 30 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1033, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 359, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 363, i32 21 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 365, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 381, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 391, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 487, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 502, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 457, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 460, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant [13 x i8] c"nseq_clk_cfg\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 587, i32 19 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 602, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 552, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 438, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 441, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 841, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 810, i32 4 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 814, i32 4 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 819, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 890, i32 4 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 898, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1164, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant [6 x i8] c"rtype\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1468, i32 29 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1759, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1802, i32 39 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1802, i32 55 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1813, i32 4 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1951, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 223, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 224, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 226, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 967, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 978, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1741, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1745, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 999, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant [17 x i8] c"s5k5baf_ctrl_ops\00", align 1
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1620, i32 35 }
@___asan_gen_.512 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1641, i32 8 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1643, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant [26 x i8] c"s5k5baf_test_pattern_menu\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1624, i32 27 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1691, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1560, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant [8 x i8] c"colorfx\00", align 1
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 726, i32 19 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1625, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1626, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1627, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1628, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1629, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1630, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.567 = private constant [31 x i8] c"../drivers/media/i2c/s5k5baf.c\00", align 1
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1631, i32 2 }
@llvm.compiler.used = appending global [192 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_debugtype292, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_s5k5baf_i2c_driver_exit, ptr @__initcall__kmod_s5k5baf__301_2059_s5k5baf_i2c_driver_init6, ptr @__param_debug, ptr @s5k5baf_check_fw_revision._entry, ptr @s5k5baf_check_fw_revision._entry.98, ptr @s5k5baf_check_fw_revision._entry_ptr, ptr @s5k5baf_check_fw_revision._entry_ptr.100, ptr @s5k5baf_configure_gpios._entry, ptr @s5k5baf_configure_gpios._entry_ptr, ptr @s5k5baf_configure_regulators._entry, ptr @s5k5baf_configure_regulators._entry_ptr, ptr @s5k5baf_configure_subdevs._entry, ptr @s5k5baf_configure_subdevs._entry_ptr, ptr @s5k5baf_fw_parse._entry, ptr @s5k5baf_fw_parse._entry.35, ptr @s5k5baf_fw_parse._entry.38, ptr @s5k5baf_fw_parse._entry.41, ptr @s5k5baf_fw_parse._entry_ptr, ptr @s5k5baf_fw_parse._entry_ptr.37, ptr @s5k5baf_fw_parse._entry_ptr.40, ptr @s5k5baf_fw_parse._entry_ptr.43, ptr @s5k5baf_hw_find_min_fiv._entry, ptr @s5k5baf_hw_find_min_fiv._entry.67, ptr @s5k5baf_hw_find_min_fiv._entry.70, ptr @s5k5baf_hw_find_min_fiv._entry_ptr, ptr @s5k5baf_hw_find_min_fiv._entry_ptr.69, ptr @s5k5baf_hw_find_min_fiv._entry_ptr.72, ptr @s5k5baf_hw_set_clocks._entry, ptr @s5k5baf_hw_set_clocks._entry_ptr, ptr @s5k5baf_hw_set_crop_rects._entry, ptr @s5k5baf_hw_set_crop_rects._entry.75, ptr @s5k5baf_hw_set_crop_rects._entry_ptr, ptr @s5k5baf_hw_set_crop_rects._entry_ptr.77, ptr @s5k5baf_hw_validate_cfg._entry, ptr @s5k5baf_hw_validate_cfg._entry_ptr, ptr @s5k5baf_i2c_driver_exit, ptr @s5k5baf_i2c_read._entry, ptr @s5k5baf_i2c_read._entry.60, ptr @s5k5baf_i2c_read._entry_ptr, ptr @s5k5baf_i2c_read._entry_ptr.62, ptr @s5k5baf_i2c_write._entry, ptr @s5k5baf_i2c_write._entry.51, ptr @s5k5baf_i2c_write._entry_ptr, ptr @s5k5baf_i2c_write._entry_ptr.53, ptr @s5k5baf_initialize_ctrls._entry, ptr @s5k5baf_initialize_ctrls._entry.106, ptr @s5k5baf_initialize_ctrls._entry_ptr, ptr @s5k5baf_initialize_ctrls._entry_ptr.108, ptr @s5k5baf_load_setfile._entry, ptr @s5k5baf_load_setfile._entry_ptr, ptr @s5k5baf_parse_device_node._entry, ptr @s5k5baf_parse_device_node._entry.13, ptr @s5k5baf_parse_device_node._entry.16, ptr @s5k5baf_parse_device_node._entry.9, ptr @s5k5baf_parse_device_node._entry_ptr, ptr @s5k5baf_parse_device_node._entry_ptr.12, ptr @s5k5baf_parse_device_node._entry_ptr.15, ptr @s5k5baf_parse_device_node._entry_ptr.18, ptr @s5k5baf_parse_gpios._entry, ptr @s5k5baf_parse_gpios._entry_ptr, ptr @s5k5baf_power_off._entry, ptr @s5k5baf_power_off._entry_ptr, ptr @s5k5baf_power_on._entry, ptr @s5k5baf_power_on._entry.93, ptr @s5k5baf_power_on._entry_ptr, ptr @s5k5baf_power_on._entry_ptr.95, ptr @s5k5baf_registered._entry, ptr @s5k5baf_registered._entry_ptr, ptr @s5k5baf_s_ctrl._entry, ptr @s5k5baf_s_ctrl._entry_ptr, ptr @s5k5baf_set_frame_interval._entry, ptr @s5k5baf_set_frame_interval._entry_ptr, ptr @s5k5baf_synchronize._entry, ptr @s5k5baf_synchronize._entry_ptr, ptr @s5k5baf_write_arr_seq._entry, ptr @s5k5baf_write_arr_seq._entry.46, ptr @s5k5baf_write_arr_seq._entry_ptr, ptr @s5k5baf_write_arr_seq._entry_ptr.48, ptr @debug, ptr @s5k5baf_i2c_driver, ptr @.str, ptr @s5k5baf_of_match, ptr @s5k5baf_id, ptr @s5k5baf_probe.__key, ptr @.str.1, ptr @s5k5baf_cis_rect, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @s5k5baf_cis_subdev_ops, ptr @.str.23, ptr @s5k5baf_cis_subdev_internal_ops, ptr @s5k5baf_subdev_ops, ptr @.str.24, ptr @s5k5baf_subdev_internal_ops, ptr @.str.25, ptr @.str.26, ptr @s5k5baf_cis_pad_ops, ptr @s5k5baf_formats, ptr @.str.27, ptr @s5k5baf_core_ops, ptr @s5k5baf_video_ops, ptr @s5k5baf_pad_ops, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @s5k5baf_hw_set_clocks.nseq_clk_cfg, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @s5k5baf_set_selection.rtype, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @s5k5baf_ctrl_ops, ptr @s5k5baf_initialize_ctrls._key, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @s5k5baf_test_pattern_menu, ptr @.str.107, ptr @.str.109, ptr @.str.110, ptr @s5k5baf_hw_set_colorfx.colorfx, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117], section "llvm.metadata"
@0 = internal global [146 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_cis_rect to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_parse_device_node._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_parse_device_node._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_parse_device_node._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_parse_device_node._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_parse_gpios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_cis_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_cis_subdev_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_subdev_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_configure_subdevs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_cis_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_formats to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_load_setfile._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_fw_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_fw_parse._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_fw_parse._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_fw_parse._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_write_arr_seq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_write_arr_seq._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_i2c_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_i2c_write._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_hw_set_clocks.nseq_clk_cfg to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_hw_set_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_synchronize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_i2c_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_i2c_read._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_hw_validate_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_hw_find_min_fiv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_hw_find_min_fiv._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_hw_find_min_fiv._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_hw_set_crop_rects._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_hw_set_crop_rects._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_set_frame_interval._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_set_selection.rtype to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_registered._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_configure_gpios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_configure_regulators._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_power_on._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_check_fw_revision._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_check_fw_revision._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_power_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_initialize_ctrls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_initialize_ctrls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_test_pattern_menu to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_initialize_ctrls._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_s_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k5baf_hw_set_colorfx.colorfx to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k5baf_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @s5k5baf_i2c_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s5k5baf_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @i2c_del_driver(ptr noundef nonnull @s5k5baf_i2c_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k5baf_remove(ptr nocapture noundef readonly %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %function.i.i = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %function.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %function.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131073, i32 %3)
  %cmp.i.i = icmp eq i32 %3, 131073
  %retval.0.v.i = select i1 %cmp.i.i, i32 -72, i32 -300
  %retval.0.i = getelementptr i8, ptr %1, i32 %retval.0.v.i
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #10
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_handler, align 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %5) #10
  %cis_sd = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 7
  tail call void @v4l2_device_unregister_subdev(ptr noundef %cis_sd) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k5baf_probe(ptr noundef %c) #2 align 64 {
entry:
  %flags.i.i = alloca i32, align 4
  %ep.i = alloca %struct.v4l2_fwnode_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 940, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.s5k5baf, ptr %call.i, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @s5k5baf_probe.__key) #10
  %crop_sink = getelementptr inbounds %struct.s5k5baf, ptr %call.i, i32 0, i32 13
  %0 = call ptr @memcpy(ptr %crop_sink, ptr @s5k5baf_cis_rect, i32 16)
  %compose = getelementptr inbounds %struct.s5k5baf, ptr %call.i, i32 0, i32 14
  %1 = call ptr @memcpy(ptr %compose, ptr @s5k5baf_cis_rect, i32 16)
  %crop_source = getelementptr inbounds %struct.s5k5baf, ptr %call.i, i32 0, i32 15
  %2 = call ptr @memcpy(ptr %crop_source, ptr @s5k5baf_cis_rect, i32 16)
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 4, i32 27
  %3 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ep.i) #10
  %5 = call ptr @memset(ptr %ep.i, i32 0, i32 64)
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #13
  br label %s5k5baf_parse_device_node.exit.thread

if.end.i:                                         ; preds = %do.body
  %mclk_frequency.i = getelementptr inbounds %struct.s5k5baf, ptr %call.i, i32 0, i32 5
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %4, ptr noundef nonnull @.str.8, ptr noundef %mclk_frequency.i, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %if.then1.i, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %mclk_frequency.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 24000000, ptr %mclk_frequency.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef 24000000) #13
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then1.i, %if.end.i.if.end7.i_crit_edge
  %7 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i.i) #10
  %9 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %flags.i.i, align 4, !annotation !292
  %call.i.i = call i32 @of_get_named_gpio_flags(ptr noundef %8, ptr noundef nonnull @.str.19, i32 noundef 0, ptr noundef nonnull %flags.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp1.i.i, label %if.end7.i.s5k5baf_parse_gpios.exit.thread.i_crit_edge, label %if.end.i.i

if.end7.i.s5k5baf_parse_gpios.exit.thread.i_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_parse_gpios.exit.thread.i

s5k5baf_parse_gpios.exit.thread.i:                ; preds = %if.end.i.i.s5k5baf_parse_gpios.exit.thread.i_crit_edge, %if.end7.i.s5k5baf_parse_gpios.exit.thread.i_crit_edge
  %.lcssa.i.i = phi ptr [ @.str.19, %if.end7.i.s5k5baf_parse_gpios.exit.thread.i_crit_edge ], [ @.str.20, %if.end.i.i.s5k5baf_parse_gpios.exit.thread.i_crit_edge ]
  %call.lcssa.i.i = phi i32 [ %call.i.i, %if.end7.i.s5k5baf_parse_gpios.exit.thread.i_crit_edge ], [ %call.1.i.i, %if.end.i.i.s5k5baf_parse_gpios.exit.thread.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef nonnull %.lcssa.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i.i) #10
  br label %s5k5baf_parse_device_node.exit.thread

if.end.i.i:                                       ; preds = %if.end7.i
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call.i.i, ptr %call.i, align 4
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %12, 1
  %13 = xor i32 %and.i.i, 1
  %level.i.i = getelementptr %struct.s5k5baf_gpio, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %level.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %level.i.i, align 4
  %call.1.i.i = call i32 @of_get_named_gpio_flags(ptr noundef %8, ptr noundef nonnull @.str.20, i32 noundef 0, ptr noundef nonnull %flags.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i.i)
  %cmp1.1.i.i = icmp slt i32 %call.1.i.i, 0
  br i1 %cmp1.1.i.i, label %if.end.i.i.s5k5baf_parse_gpios.exit.thread.i_crit_edge, label %if.end11.i

if.end.i.i.s5k5baf_parse_gpios.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_parse_gpios.exit.thread.i

if.end11.i:                                       ; preds = %if.end.i.i
  %arrayidx3.1.i.i = getelementptr %struct.s5k5baf_gpio, ptr %call.i, i32 1
  %15 = ptrtoint ptr %arrayidx3.1.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call.1.i.i, ptr %arrayidx3.1.i.i, align 4
  %16 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i.i, align 4
  %and.1.i.i = and i32 %17, 1
  %18 = xor i32 %and.1.i.i, 1
  %level.1.i.i = getelementptr %struct.s5k5baf_gpio, ptr %call.i, i32 1, i32 1
  %19 = ptrtoint ptr %level.1.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %level.1.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i.i) #10
  %call12.i = call ptr @of_graph_get_next_endpoint(ptr noundef nonnull %4, ptr noundef null) #10
  %tobool13.not.i = icmp eq ptr %call12.i, null
  br i1 %tobool13.not.i, label %do.end17.i, label %cond.end.i

do.end17.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef nonnull %4) #13
  br label %s5k5baf_parse_device_node.exit.thread

cond.end.i:                                       ; preds = %if.end11.i
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %call12.i, i32 0, i32 3
  %call20.i = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef %fwnode.i, ptr noundef nonnull %ep.i) #10
  call void @of_node_put(ptr noundef nonnull %call12.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %s5k5baf_parse_device_node.exit

if.end23.i:                                       ; preds = %cond.end.i
  %bus_type.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %ep.i, i32 0, i32 1
  %20 = ptrtoint ptr %bus_type.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bus_type.i, align 4
  %bus_type24.i = getelementptr inbounds %struct.s5k5baf, ptr %call.i, i32 0, i32 1
  %22 = ptrtoint ptr %bus_type24.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %bus_type24.i, align 4
  %23 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %do.end28.i [
    i32 5, label %sw.bb.i
    i32 1, label %if.end23.i.s5k5baf_parse_device_node.exit.thread104_crit_edge
  ]

if.end23.i.s5k5baf_parse_device_node.exit.thread104_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_parse_device_node.exit.thread104

sw.bb.i:                                          ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  %num_data_lanes.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %ep.i, i32 0, i32 2, i32 2, i32 3
  %24 = ptrtoint ptr %num_data_lanes.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %num_data_lanes.i, align 1
  %nlanes.i = getelementptr inbounds %struct.s5k5baf, ptr %call.i, i32 0, i32 2
  %26 = ptrtoint ptr %nlanes.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %nlanes.i, align 4
  br label %s5k5baf_parse_device_node.exit.thread104

do.end28.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef nonnull %4) #13
  br label %s5k5baf_parse_device_node.exit.thread

s5k5baf_parse_device_node.exit.thread:            ; preds = %do.end28.i, %do.end17.i, %s5k5baf_parse_gpios.exit.thread.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %call.lcssa.i.i, %s5k5baf_parse_gpios.exit.thread.i ], [ -22, %do.end.i ], [ -22, %do.end17.i ], [ -22, %do.end28.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ep.i) #10
  br label %cleanup

s5k5baf_parse_device_node.exit.thread104:         ; preds = %sw.bb.i, %if.end23.i.s5k5baf_parse_device_node.exit.thread104_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ep.i) #10
  br label %if.end4

s5k5baf_parse_device_node.exit:                   ; preds = %cond.end.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ep.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp = icmp slt i32 %call20.i, 0
  br i1 %cmp, label %s5k5baf_parse_device_node.exit.cleanup_crit_edge, label %s5k5baf_parse_device_node.exit.if.end4_crit_edge

s5k5baf_parse_device_node.exit.if.end4_crit_edge: ; preds = %s5k5baf_parse_device_node.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

s5k5baf_parse_device_node.exit.cleanup_crit_edge: ; preds = %s5k5baf_parse_device_node.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %s5k5baf_parse_device_node.exit.if.end4_crit_edge, %s5k5baf_parse_device_node.exit.thread104
  %cis_sd.i = getelementptr inbounds %struct.s5k5baf, ptr %call.i, i32 0, i32 7
  call void @v4l2_subdev_init(ptr noundef %cis_sd.i, ptr noundef nonnull @s5k5baf_cis_subdev_ops) #10
  %owner.i = getelementptr inbounds %struct.s5k5baf, ptr %call.i, i32 0, i32 7, i32 2
  %27 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %owner.i, align 4
  %dev_priv.i.i = getelementptr inbounds %struct.s5k5baf, ptr %call.i, i32 0, i32 7, i32 11
  %28 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %dev_priv.i.i, align 4
  %name.i = getelementptr inbounds %struct.s5k5baf, ptr %call.i, i32 0, i32 7, i32 9
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 3
  %29 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adapter.i, align 8
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %30, i32 0, i32 11
  %31 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nr.i.i, align 4
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 1
  %33 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %addr.i, align 2
  %conv.i = zext i16 %34 to i32
  %call1.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 32, ptr noundef nonnull @.str.23, i32 noundef %32, i32 noundef %conv.i) #10
  %internal_ops.i = getelementptr inbounds %struct.s5k5baf, ptr %call.i, i32 0, i32 7, i32 7
  %35 = ptrtoint ptr %internal_ops.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @s5k5baf_cis_subdev_internal_ops, ptr %internal_ops.i, align 4
  %flags.i = getelementptr inbounds %struct.s5k5baf, ptr %call.i, i32 0, i32 7, i32 4
  %36 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %37, 4
  store i32 %or.i, ptr %flags.i, align 4
  %cis_pad.i = getelementptr inbounds %struct.s5k5baf, ptr %call.i, i32 0, i32 8
  %flags2.i = getelementptr inbounds %struct.s5k5baf, ptr %call.i, i32 0, i32 8, i32 4
  %38 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2, ptr %flags2.i, align 4
  %function.i = getelementptr inbounds %struct.s5k5baf, ptr %call.i, i32 0, i32 7, i32 0, i32 3
  %39 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 131073, ptr %function.i, align 4
  %call5.i = call i32 @media_entity_pads_init(ptr noundef %cis_sd.i, i16 noundef zeroext 1, ptr noundef %cis_pad.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i77 = icmp slt i32 %call5.i, 0
  br i1 %cmp.i77, label %s5k5baf_configure_subdevs.exit.thread109, label %if.end.i79

s5k5baf_configure_subdevs.exit.thread109:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef %name.i) #13
  br label %cleanup

if.end.i79:                                       ; preds = %if.end4
  %sd7.i = getelementptr inbounds %struct.s5k5baf, ptr %call.i, i32 0, i32 9
  call void @v4l2_i2c_subdev_init(ptr noundef %sd7.i, ptr noundef %c, ptr noundef nonnull @s5k5baf_subdev_ops) #10
  %name8.i = getelementptr inbounds %struct.s5k5baf, ptr %call.i, i32 0, i32 9, i32 9
  %40 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %adapter.i, align 8
  %nr.i64.i = getelementptr inbounds %struct.i2c_adapter, ptr %41, i32 0, i32 11
  %42 = ptrtoint ptr %nr.i64.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nr.i64.i, align 4
  %44 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %addr.i, align 2
  %conv13.i = zext i16 %45 to i32
  %call14.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name8.i, i32 noundef 32, ptr noundef nonnull @.str.24, i32 noundef %43, i32 noundef %conv13.i) #10
  %internal_ops15.i = getelementptr inbounds %struct.s5k5baf, ptr %call.i, i32 0, i32 9, i32 7
  %46 = ptrtoint ptr %internal_ops15.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @s5k5baf_subdev_internal_ops, ptr %internal_ops15.i, align 4
  %flags16.i = getelementptr inbounds %struct.s5k5baf, ptr %call.i, i32 0, i32 9, i32 4
  %47 = ptrtoint ptr %flags16.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags16.i, align 4
  %or17.i = or i32 %48, 4
  store i32 %or17.i, ptr %flags16.i, align 4
  %pads.i = getelementptr inbounds %struct.s5k5baf, ptr %call.i, i32 0, i32 10
  %flags18.i = getelementptr inbounds %struct.s5k5baf, ptr %call.i, i32 0, i32 10, i32 0, i32 4
  %49 = ptrtoint ptr %flags18.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %flags18.i, align 4
  %flags21.i = getelementptr %struct.s5k5baf, ptr %call.i, i32 0, i32 10, i32 1, i32 4
  %50 = ptrtoint ptr %flags21.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2, ptr %flags21.i, align 4
  %function23.i = getelementptr inbounds %struct.s5k5baf, ptr %call.i, i32 0, i32 9, i32 0, i32 3
  %51 = ptrtoint ptr %function23.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 131072, ptr %function23.i, align 4
  %call27.i = call i32 @media_entity_pads_init(ptr noundef %sd7.i, i16 noundef zeroext 2, ptr noundef %pads.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool.not.i78 = icmp eq i32 %call27.i, 0
  br i1 %tobool.not.i78, label %if.end.i79.if.end8_crit_edge, label %s5k5baf_configure_subdevs.exit

if.end.i79.if.end8_crit_edge:                     ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

s5k5baf_configure_subdevs.exit:                   ; preds = %if.end.i79
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef %name8.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %cmp6 = icmp slt i32 %call27.i, 0
  br i1 %cmp6, label %s5k5baf_configure_subdevs.exit.cleanup_crit_edge, label %s5k5baf_configure_subdevs.exit.if.end8_crit_edge

s5k5baf_configure_subdevs.exit.if.end8_crit_edge: ; preds = %s5k5baf_configure_subdevs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

s5k5baf_configure_subdevs.exit.cleanup_crit_edge: ; preds = %s5k5baf_configure_subdevs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %s5k5baf_configure_subdevs.exit.if.end8_crit_edge, %if.end.i79.if.end8_crit_edge
  %dev_priv.i.i82 = getelementptr inbounds %struct.s5k5baf, ptr %call.i, i32 0, i32 9, i32 11
  %52 = ptrtoint ptr %dev_priv.i.i82 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev_priv.i.i82, align 4
  %dev.i83 = getelementptr inbounds %struct.i2c_client, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %level.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %level.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i84 = icmp eq i32 %55, 0
  %spec.select.i = select i1 %tobool.not.i84, i32 0, i32 2
  %56 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %call.i, align 4
  %call3.i = call i32 @devm_gpio_request_one(ptr noundef %dev.i83, i32 noundef %57, i32 noundef %spec.select.i, ptr noundef nonnull @.str.82) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end8.s5k5baf_configure_gpios.exit.thread_crit_edge, label %for.cond.i

if.end8.s5k5baf_configure_gpios.exit.thread_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_configure_gpios.exit.thread

for.cond.i:                                       ; preds = %if.end8
  %58 = ptrtoint ptr %level.1.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %level.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.1.i = icmp eq i32 %59, 0
  %spec.select.1.i = select i1 %tobool.not.1.i, i32 0, i32 2
  %60 = ptrtoint ptr %arrayidx3.1.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx3.1.i.i, align 4
  %call3.1.i = call i32 @devm_gpio_request_one(ptr noundef %dev.i83, i32 noundef %61, i32 noundef %spec.select.1.i, ptr noundef nonnull @.str.83) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.1.i)
  %cmp4.1.i = icmp slt i32 %call3.1.i, 0
  br i1 %cmp4.1.i, label %for.cond.i.s5k5baf_configure_gpios.exit.thread_crit_edge, label %if.end12

for.cond.i.s5k5baf_configure_gpios.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_configure_gpios.exit.thread

s5k5baf_configure_gpios.exit.thread:              ; preds = %for.cond.i.s5k5baf_configure_gpios.exit.thread_crit_edge, %if.end8.s5k5baf_configure_gpios.exit.thread_crit_edge
  %.lcssa.i = phi ptr [ @.str.82, %if.end8.s5k5baf_configure_gpios.exit.thread_crit_edge ], [ @.str.83, %for.cond.i.s5k5baf_configure_gpios.exit.thread_crit_edge ]
  %call3.lcssa.i = phi i32 [ %call3.i, %if.end8.s5k5baf_configure_gpios.exit.thread_crit_edge ], [ %call3.1.i, %for.cond.i.s5k5baf_configure_gpios.exit.thread_crit_edge ]
  %name.i85 = getelementptr inbounds %struct.i2c_client, ptr %53, i32 0, i32 2
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef %name.i85, ptr noundef nonnull %.lcssa.i) #13
  br label %cleanup

if.end12:                                         ; preds = %for.cond.i
  %62 = ptrtoint ptr %dev_priv.i.i82 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev_priv.i.i82, align 4
  %arrayidx1.i = getelementptr %struct.s5k5baf, ptr %call.i, i32 0, i32 3, i32 0
  %64 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @.str.88, ptr %arrayidx1.i, align 4
  %arrayidx1.1.i = getelementptr %struct.s5k5baf, ptr %call.i, i32 0, i32 3, i32 1
  %65 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @.str.89, ptr %arrayidx1.1.i, align 4
  %arrayidx1.2.i = getelementptr %struct.s5k5baf, ptr %call.i, i32 0, i32 3, i32 2
  %66 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @.str.90, ptr %arrayidx1.2.i, align 4
  %dev.i87 = getelementptr inbounds %struct.i2c_client, ptr %63, i32 0, i32 4
  %call3.i88 = call i32 @devm_regulator_bulk_get(ptr noundef %dev.i87, i32 noundef 3, ptr noundef %arrayidx1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i88)
  %cmp4.i89 = icmp slt i32 %call3.i88, 0
  br i1 %cmp4.i89, label %s5k5baf_configure_regulators.exit.thread, label %if.end16

s5k5baf_configure_regulators.exit.thread:         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %name.i90 = getelementptr inbounds %struct.i2c_client, ptr %63, i32 0, i32 2
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef %name.i90) #13
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %dev17 = getelementptr inbounds %struct.s5k5baf, ptr %call.i, i32 0, i32 9, i32 14
  %67 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev17, align 4
  %call18 = call ptr @devm_clk_get(ptr noundef %68, ptr noundef nonnull @.str.2) #10
  %clock = getelementptr inbounds %struct.s5k5baf, ptr %call.i, i32 0, i32 4
  %69 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call18, ptr %clock, align 4
  %cmp.i93 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i93, label %if.end16.cleanup_crit_edge, label %if.end22

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  %call23 = call fastcc i32 @s5k5baf_power_on(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end22.cleanup_crit_edge, label %if.end26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  call fastcc void @s5k5baf_hw_init(ptr noundef nonnull %call.i)
  %call.i94 = call fastcc zeroext i16 @s5k5baf_read(ptr noundef nonnull %call.i, i16 noundef zeroext 302) #10
  %call1.i95 = call fastcc zeroext i16 @s5k5baf_read(ptr noundef nonnull %call.i, i16 noundef zeroext 304) #10
  %call3.i96 = call fastcc zeroext i16 @s5k5baf_read(ptr noundef nonnull %call.i, i16 noundef zeroext 338) #10
  %error.i.i = getelementptr inbounds %struct.s5k5baf, ptr %call.i, i32 0, i32 12
  %70 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %error.i.i, align 4
  store i32 0, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp.i97 = icmp slt i32 %71, 0
  br i1 %cmp.i97, label %if.end26.s5k5baf_check_fw_revision.exit.thread_crit_edge, label %do.end.i99

if.end26.s5k5baf_check_fw_revision.exit.thread_crit_edge: ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_check_fw_revision.exit.thread

do.end.i99:                                       ; preds = %if.end26
  %72 = and i16 %call1.i95, 255
  %conv6.i = zext i16 %call.i94 to i32
  %conv7.i = zext i16 %72 to i32
  %conv8.i = zext i16 %call3.i96 to i32
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name8.i, i32 noundef %conv6.i, i32 noundef %conv7.i, i32 noundef %conv8.i) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %call.i94)
  %cmp11.not.i = icmp eq i16 %call.i94, 1
  br i1 %cmp11.not.i, label %if.end31, label %do.end16.i

do.end16.i:                                       ; preds = %do.end.i99
  call void @__sanitizer_cov_trace_pc() #12
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef %name8.i) #13
  br label %s5k5baf_check_fw_revision.exit.thread

s5k5baf_check_fw_revision.exit.thread:            ; preds = %do.end16.i, %if.end26.s5k5baf_check_fw_revision.exit.thread_crit_edge
  %retval.0.i100.ph = phi i32 [ %71, %if.end26.s5k5baf_check_fw_revision.exit.thread_crit_edge ], [ -19, %do.end16.i ]
  call fastcc void @s5k5baf_power_off(ptr noundef nonnull %call.i)
  br label %cleanup

if.end31:                                         ; preds = %do.end.i99
  call fastcc void @s5k5baf_power_off(ptr noundef nonnull %call.i)
  %call32 = call fastcc i32 @s5k5baf_initialize_ctrls(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end31.cleanup_crit_edge, label %if.end35

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  %call37 = call i32 @v4l2_async_register_subdev(ptr noundef %sd7.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %err_ctrl, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_ctrl:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %ctrl_handler = getelementptr inbounds %struct.s5k5baf, ptr %call.i, i32 0, i32 9, i32 8
  %73 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ctrl_handler, align 4
  call void @v4l2_ctrl_handler_free(ptr noundef %74) #10
  br label %cleanup

cleanup:                                          ; preds = %err_ctrl, %if.end35.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %s5k5baf_check_fw_revision.exit.thread, %if.end22.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %s5k5baf_configure_regulators.exit.thread, %s5k5baf_configure_gpios.exit.thread, %s5k5baf_configure_subdevs.exit.cleanup_crit_edge, %s5k5baf_configure_subdevs.exit.thread109, %s5k5baf_parse_device_node.exit.cleanup_crit_edge, %s5k5baf_parse_device_node.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call20.i, %s5k5baf_parse_device_node.exit.cleanup_crit_edge ], [ %call27.i, %s5k5baf_configure_subdevs.exit.cleanup_crit_edge ], [ 0, %if.end35.cleanup_crit_edge ], [ %retval.0.i.ph, %s5k5baf_parse_device_node.exit.thread ], [ %call5.i, %s5k5baf_configure_subdevs.exit.thread109 ], [ %call32, %if.end31.cleanup_crit_edge ], [ %call37, %err_ctrl ], [ -517, %if.end16.cleanup_crit_edge ], [ -517, %if.end22.cleanup_crit_edge ], [ %call3.lcssa.i, %s5k5baf_configure_gpios.exit.thread ], [ %call3.i88, %s5k5baf_configure_regulators.exit.thread ], [ %retval.0.i100.ph, %s5k5baf_check_fw_revision.exit.thread ]
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s5k5baf_power_on(ptr noundef %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %supplies = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 3
  %call = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %supplies) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.do.end25_crit_edge, label %if.end

entry.do.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25

if.end:                                           ; preds = %entry
  %clock = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 4
  %0 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clock, align 4
  %mclk_frequency = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 5
  %2 = ptrtoint ptr %mclk_frequency to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mclk_frequency, align 4
  %call1 = tail call i32 @clk_set_rate(ptr noundef %1, i32 noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.err_reg_dis_crit_edge, label %if.end4

if.end.err_reg_dis_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_reg_dis

if.end4:                                          ; preds = %if.end
  %4 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clock, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end4.clk_prepare_enable.exit_crit_edge

if.end4.clk_prepare_enable.exit_crit_edge:        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end4
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.do.body_crit_edge, label %if.then3.i

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %5) #10
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end4.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end4.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp7 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp7, label %clk_prepare_enable.exit.err_reg_dis_crit_edge, label %clk_prepare_enable.exit.do.body_crit_edge

clk_prepare_enable.exit.do.body_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

clk_prepare_enable.exit.err_reg_dis_crit_edge:    ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_reg_dis

do.body:                                          ; preds = %clk_prepare_enable.exit.do.body_crit_edge, %if.end.i.do.body_crit_edge
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp10 = icmp sgt i32 %6, 0
  br i1 %cmp10, label %do.end, label %do.body.do.end19_crit_edge

do.body.do.end19_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 9, i32 9
  %7 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clock, align 4
  %call15 = tail call i32 @clk_get_rate(ptr noundef %8) #10
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef %name, i32 noundef %call15) #13
  br label %do.end19

do.end19:                                         ; preds = %do.end, %do.body.do.end19_crit_edge
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 4
  %level.i = getelementptr [2 x %struct.s5k5baf_gpio], ptr %state, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i44 = icmp eq i32 %12, 0
  %lnot.ext.i = zext i1 %tobool.not.i44 to i32
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %10) #10
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i, i32 noundef %lnot.ext.i) #10
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #10
  %arrayidx.i = getelementptr [2 x %struct.s5k5baf_gpio], ptr %state, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %level.i45 = getelementptr [2 x %struct.s5k5baf_gpio], ptr %state, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %level.i45 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %level.i45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i46 = icmp eq i32 %16, 0
  %lnot.ext.i47 = zext i1 %tobool.not.i46 to i32
  %call.i.i48 = tail call ptr @gpio_to_desc(i32 noundef %14) #10
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i48, i32 noundef %lnot.ext.i47) #10
  br label %cleanup

err_reg_dis:                                      ; preds = %clk_prepare_enable.exit.err_reg_dis_crit_edge, %if.end.err_reg_dis_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.err_reg_dis_crit_edge ], [ %retval.0.i, %clk_prepare_enable.exit.err_reg_dis_crit_edge ]
  %call22 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #10
  br label %do.end25

do.end25:                                         ; preds = %err_reg_dis, %entry.do.end25_crit_edge
  %ret.1 = phi i32 [ %call, %entry.do.end25_crit_edge ], [ %ret.0, %err_reg_dis ]
  %name28 = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 9, i32 9
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef %name28, ptr noundef nonnull @.str.92, i32 noundef %ret.1) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %do.end19
  %retval.0 = phi i32 [ %ret.1, %do.end25 ], [ 0, %do.end19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s5k5baf_hw_init(ptr nocapture noundef %state) unnamed_addr #2 align 64 {
entry:
  %buf.i53 = alloca [4 x i8], align 1
  %buf.i37 = alloca [4 x i8], align 1
  %buf.i21 = alloca [4 x i8], align 1
  %buf.i5 = alloca [4 x i8], align 1
  %buf.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #10
  %0 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 3
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -4, ptr %buf.i, align 1
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -4, ptr %0, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -48, ptr %1, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %2, align 1
  %dev_priv.i.i = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 9, i32 11
  %7 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i.i, align 4
  %error.i = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 12
  %9 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.s5k5baf_i2c_write.exit_crit_edge

entry.s5k5baf_i2c_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_i2c_write.exit

if.end.i:                                         ; preds = %entry
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %8, ptr noundef nonnull %buf.i, i32 noundef 4, i16 noundef zeroext 0) #10
  %11 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.i = icmp sgt i32 %11, 2
  br i1 %cmp.i, label %do.end.i, label %if.end.i.do.end22.i_crit_edge

if.end.i.do.end22.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 2
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name.i, i32 noundef 64764, i32 noundef 53248) #13
  br label %do.end22.i

do.end22.i:                                       ; preds = %do.end.i, %if.end.i.do.end22.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i)
  %cmp23.not.i = icmp eq i32 %call.i.i, 4
  br i1 %cmp23.not.i, label %do.end22.i.s5k5baf_i2c_write.exit_crit_edge, label %do.end28.i

do.end22.i.s5k5baf_i2c_write.exit_crit_edge:      ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_i2c_write.exit

do.end28.i:                                       ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  %name30.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 2
  %call32.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name30.i, i32 noundef %call.i.i) #13
  %12 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call.i.i, ptr %error.i, align 4
  br label %s5k5baf_i2c_write.exit

s5k5baf_i2c_write.exit:                           ; preds = %do.end28.i, %do.end22.i.s5k5baf_i2c_write.exit_crit_edge, %entry.s5k5baf_i2c_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i5) #10
  %13 = getelementptr inbounds [4 x i8], ptr %buf.i5, i32 0, i32 1
  %14 = getelementptr inbounds [4 x i8], ptr %buf.i5, i32 0, i32 2
  %15 = getelementptr inbounds [4 x i8], ptr %buf.i5, i32 0, i32 3
  %16 = ptrtoint ptr %buf.i5 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 16, ptr %buf.i5, align 1
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 48, ptr %13, align 1
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %14, align 1
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %15, align 1
  %20 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_priv.i.i, align 4
  %22 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i8 = icmp eq i32 %23, 0
  br i1 %tobool.not.i8, label %if.end.i11, label %s5k5baf_i2c_write.exit.s5k5baf_i2c_write.exit20_crit_edge

s5k5baf_i2c_write.exit.s5k5baf_i2c_write.exit20_crit_edge: ; preds = %s5k5baf_i2c_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_i2c_write.exit20

if.end.i11:                                       ; preds = %s5k5baf_i2c_write.exit
  %call.i.i9 = call i32 @i2c_transfer_buffer_flags(ptr noundef %21, ptr noundef nonnull %buf.i5, i32 noundef 4, i16 noundef zeroext 0) #10
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp.i10 = icmp sgt i32 %24, 2
  br i1 %cmp.i10, label %do.end.i14, label %if.end.i11.do.end22.i16_crit_edge

if.end.i11.do.end22.i16_crit_edge:                ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22.i16

do.end.i14:                                       ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #12
  %name.i12 = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 2
  %call19.i13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name.i12, i32 noundef 4144, i32 noundef 0) #13
  br label %do.end22.i16

do.end22.i16:                                     ; preds = %do.end.i14, %if.end.i11.do.end22.i16_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i9)
  %cmp23.not.i15 = icmp eq i32 %call.i.i9, 4
  br i1 %cmp23.not.i15, label %do.end22.i16.s5k5baf_i2c_write.exit20_crit_edge, label %do.end28.i19

do.end22.i16.s5k5baf_i2c_write.exit20_crit_edge:  ; preds = %do.end22.i16
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_i2c_write.exit20

do.end28.i19:                                     ; preds = %do.end22.i16
  call void @__sanitizer_cov_trace_pc() #12
  %name30.i17 = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 2
  %call32.i18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name30.i17, i32 noundef %call.i.i9) #13
  %25 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call.i.i9, ptr %error.i, align 4
  br label %s5k5baf_i2c_write.exit20

s5k5baf_i2c_write.exit20:                         ; preds = %do.end28.i19, %do.end22.i16.s5k5baf_i2c_write.exit20_crit_edge, %s5k5baf_i2c_write.exit.s5k5baf_i2c_write.exit20_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i5) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i21) #10
  %26 = getelementptr inbounds [4 x i8], ptr %buf.i21, i32 0, i32 1
  %27 = getelementptr inbounds [4 x i8], ptr %buf.i21, i32 0, i32 2
  %28 = getelementptr inbounds [4 x i8], ptr %buf.i21, i32 0, i32 3
  %29 = ptrtoint ptr %buf.i21 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %buf.i21, align 1
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 20, ptr %26, align 1
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %27, align 1
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %28, align 1
  %33 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_priv.i.i, align 4
  %35 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i24 = icmp eq i32 %36, 0
  br i1 %tobool.not.i24, label %if.end.i27, label %s5k5baf_i2c_write.exit20.s5k5baf_i2c_write.exit36_crit_edge

s5k5baf_i2c_write.exit20.s5k5baf_i2c_write.exit36_crit_edge: ; preds = %s5k5baf_i2c_write.exit20
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_i2c_write.exit36

if.end.i27:                                       ; preds = %s5k5baf_i2c_write.exit20
  %call.i.i25 = call i32 @i2c_transfer_buffer_flags(ptr noundef %34, ptr noundef nonnull %buf.i21, i32 noundef 4, i16 noundef zeroext 0) #10
  %37 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp.i26 = icmp sgt i32 %37, 2
  br i1 %cmp.i26, label %do.end.i30, label %if.end.i27.do.end22.i32_crit_edge

if.end.i27.do.end22.i32_crit_edge:                ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22.i32

do.end.i30:                                       ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #12
  %name.i28 = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 2
  %call19.i29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name.i28, i32 noundef 20, i32 noundef 1) #13
  br label %do.end22.i32

do.end22.i32:                                     ; preds = %do.end.i30, %if.end.i27.do.end22.i32_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i25)
  %cmp23.not.i31 = icmp eq i32 %call.i.i25, 4
  br i1 %cmp23.not.i31, label %do.end22.i32.s5k5baf_i2c_write.exit36_crit_edge, label %do.end28.i35

do.end22.i32.s5k5baf_i2c_write.exit36_crit_edge:  ; preds = %do.end22.i32
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_i2c_write.exit36

do.end28.i35:                                     ; preds = %do.end22.i32
  call void @__sanitizer_cov_trace_pc() #12
  %name30.i33 = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 2
  %call32.i34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name30.i33, i32 noundef %call.i.i25) #13
  %38 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call.i.i25, ptr %error.i, align 4
  br label %s5k5baf_i2c_write.exit36

s5k5baf_i2c_write.exit36:                         ; preds = %do.end28.i35, %do.end22.i32.s5k5baf_i2c_write.exit36_crit_edge, %s5k5baf_i2c_write.exit20.s5k5baf_i2c_write.exit36_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i21) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i37) #10
  %39 = getelementptr inbounds [4 x i8], ptr %buf.i37, i32 0, i32 1
  %40 = getelementptr inbounds [4 x i8], ptr %buf.i37, i32 0, i32 2
  %41 = getelementptr inbounds [4 x i8], ptr %buf.i37, i32 0, i32 3
  %42 = ptrtoint ptr %buf.i37 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %buf.i37, align 1
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 44, ptr %39, align 1
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 112, ptr %40, align 1
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %41, align 1
  %46 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev_priv.i.i, align 4
  %48 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i40 = icmp eq i32 %49, 0
  br i1 %tobool.not.i40, label %if.end.i43, label %s5k5baf_i2c_write.exit36.s5k5baf_i2c_write.exit52_crit_edge

s5k5baf_i2c_write.exit36.s5k5baf_i2c_write.exit52_crit_edge: ; preds = %s5k5baf_i2c_write.exit36
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_i2c_write.exit52

if.end.i43:                                       ; preds = %s5k5baf_i2c_write.exit36
  %call.i.i41 = call i32 @i2c_transfer_buffer_flags(ptr noundef %47, ptr noundef nonnull %buf.i37, i32 noundef 4, i16 noundef zeroext 0) #10
  %50 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp.i42 = icmp sgt i32 %50, 2
  br i1 %cmp.i42, label %do.end.i46, label %if.end.i43.do.end22.i48_crit_edge

if.end.i43.do.end22.i48_crit_edge:                ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22.i48

do.end.i46:                                       ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #12
  %name.i44 = getelementptr inbounds %struct.i2c_client, ptr %47, i32 0, i32 2
  %call19.i45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name.i44, i32 noundef 44, i32 noundef 28672) #13
  br label %do.end22.i48

do.end22.i48:                                     ; preds = %do.end.i46, %if.end.i43.do.end22.i48_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i41)
  %cmp23.not.i47 = icmp eq i32 %call.i.i41, 4
  br i1 %cmp23.not.i47, label %do.end22.i48.s5k5baf_i2c_write.exit52_crit_edge, label %do.end28.i51

do.end22.i48.s5k5baf_i2c_write.exit52_crit_edge:  ; preds = %do.end22.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_i2c_write.exit52

do.end28.i51:                                     ; preds = %do.end22.i48
  call void @__sanitizer_cov_trace_pc() #12
  %name30.i49 = getelementptr inbounds %struct.i2c_client, ptr %47, i32 0, i32 2
  %call32.i50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name30.i49, i32 noundef %call.i.i41) #13
  %51 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call.i.i41, ptr %error.i, align 4
  br label %s5k5baf_i2c_write.exit52

s5k5baf_i2c_write.exit52:                         ; preds = %do.end28.i51, %do.end22.i48.s5k5baf_i2c_write.exit52_crit_edge, %s5k5baf_i2c_write.exit36.s5k5baf_i2c_write.exit52_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i37) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i53) #10
  %52 = getelementptr inbounds [4 x i8], ptr %buf.i53, i32 0, i32 1
  %53 = getelementptr inbounds [4 x i8], ptr %buf.i53, i32 0, i32 2
  %54 = getelementptr inbounds [4 x i8], ptr %buf.i53, i32 0, i32 3
  %55 = ptrtoint ptr %buf.i53 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %buf.i53, align 1
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 40, ptr %52, align 1
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 112, ptr %53, align 1
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %54, align 1
  %59 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev_priv.i.i, align 4
  %61 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i56 = icmp eq i32 %62, 0
  br i1 %tobool.not.i56, label %if.end.i59, label %s5k5baf_i2c_write.exit52.s5k5baf_i2c_write.exit68_crit_edge

s5k5baf_i2c_write.exit52.s5k5baf_i2c_write.exit68_crit_edge: ; preds = %s5k5baf_i2c_write.exit52
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_i2c_write.exit68

if.end.i59:                                       ; preds = %s5k5baf_i2c_write.exit52
  %call.i.i57 = call i32 @i2c_transfer_buffer_flags(ptr noundef %60, ptr noundef nonnull %buf.i53, i32 noundef 4, i16 noundef zeroext 0) #10
  %63 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %63)
  %cmp.i58 = icmp sgt i32 %63, 2
  br i1 %cmp.i58, label %do.end.i62, label %if.end.i59.do.end22.i64_crit_edge

if.end.i59.do.end22.i64_crit_edge:                ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22.i64

do.end.i62:                                       ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #12
  %name.i60 = getelementptr inbounds %struct.i2c_client, ptr %60, i32 0, i32 2
  %call19.i61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name.i60, i32 noundef 40, i32 noundef 28672) #13
  br label %do.end22.i64

do.end22.i64:                                     ; preds = %do.end.i62, %if.end.i59.do.end22.i64_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i57)
  %cmp23.not.i63 = icmp eq i32 %call.i.i57, 4
  br i1 %cmp23.not.i63, label %do.end22.i64.s5k5baf_i2c_write.exit68_crit_edge, label %do.end28.i67

do.end22.i64.s5k5baf_i2c_write.exit68_crit_edge:  ; preds = %do.end22.i64
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_i2c_write.exit68

do.end28.i67:                                     ; preds = %do.end22.i64
  call void @__sanitizer_cov_trace_pc() #12
  %name30.i65 = getelementptr inbounds %struct.i2c_client, ptr %60, i32 0, i32 2
  %call32.i66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name30.i65, i32 noundef %call.i.i57) #13
  %64 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %call.i.i57, ptr %error.i, align 4
  br label %s5k5baf_i2c_write.exit68

s5k5baf_i2c_write.exit68:                         ; preds = %do.end28.i67, %do.end22.i64.s5k5baf_i2c_write.exit68_crit_edge, %s5k5baf_i2c_write.exit52.s5k5baf_i2c_write.exit68_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i53) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s5k5baf_power_off(ptr noundef %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %streaming = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 21
  %0 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %streaming, align 4
  %bf.clear5 = and i8 %bf.load, 31
  store i8 %bf.clear5, ptr %streaming, align 4
  %arrayidx.i = getelementptr [2 x %struct.s5k5baf_gpio], ptr %state, i32 0, i32 1
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i, align 4
  %level.i = getelementptr [2 x %struct.s5k5baf_gpio], ptr %state, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %level.i, align 4
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %2) #10
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i, i32 noundef %4) #10
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  %level.i1 = getelementptr [2 x %struct.s5k5baf_gpio], ptr %state, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %level.i1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %level.i1, align 4
  %call.i.i2 = tail call ptr @gpio_to_desc(i32 noundef %6) #10
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i2, i32 noundef %8) #10
  %clock = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 4
  %9 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clock, align 4
  %cmp.i = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_disable(ptr noundef %10) #10
  tail call void @clk_unprepare(ptr noundef %10) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %supplies = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 3
  %call8 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 9, i32 9
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef %name) #13
  br label %if.end12

if.end12:                                         ; preds = %do.end, %if.end.if.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s5k5baf_initialize_ctrls(ptr noundef %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrls1 = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 20
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrls1, i32 noundef 16, ptr noundef nonnull @s5k5baf_initialize_ctrls._key, ptr noundef nonnull @.str.103) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 9, i32 9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef %name, i32 noundef %call) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @s5k5baf_ctrl_ops, i32 noundef 9963788, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #10
  %0 = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 20, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call4, ptr %0, align 4
  %call5 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @s5k5baf_ctrl_ops, i32 noundef 9963790, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 127) #10
  %gain_red = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 20, i32 1, i32 1
  %2 = ptrtoint ptr %gain_red to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call5, ptr %gain_red, align 4
  %call6 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @s5k5baf_ctrl_ops, i32 noundef 9963791, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 180) #10
  %gain_blue = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 20, i32 1, i32 2
  %3 = ptrtoint ptr %gain_blue to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call6, ptr %gain_blue, align 4
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 3, ptr noundef %0, i8 noundef zeroext 0, i1 noundef zeroext false) #10
  %call8 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @s5k5baf_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #10
  %4 = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 20, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8, ptr %4, align 4
  %call9 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @s5k5baf_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #10
  %vflip = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 20, i32 2, i32 1
  %6 = ptrtoint ptr %vflip to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9, ptr %vflip, align 4
  tail call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %4) #10
  %call11 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls1, ptr noundef nonnull @s5k5baf_ctrl_ops, i32 noundef 10094849, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 0) #10
  %7 = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 20, i32 3
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call11, ptr %7, align 4
  %call12 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @s5k5baf_ctrl_ops, i32 noundef 9963793, i64 noundef 0, i64 noundef 6000000, i64 noundef 1, i64 noundef 100000) #10
  %exposure = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 20, i32 3, i32 1
  %9 = ptrtoint ptr %exposure to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call12, ptr %exposure, align 4
  %call13 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @s5k5baf_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 256, i64 noundef 1, i64 noundef 256) #10
  %gain = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 20, i32 3, i32 2
  %10 = ptrtoint ptr %gain to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call13, ptr %gain, align 4
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 3, ptr noundef %7, i8 noundef zeroext 0, i1 noundef zeroext false) #10
  %call15 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls1, ptr noundef nonnull @s5k5baf_ctrl_ops, i32 noundef 9963800, i8 noundef zeroext 3, i64 noundef 0, i8 noundef zeroext 3) #10
  %call16 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls1, ptr noundef nonnull @s5k5baf_ctrl_ops, i32 noundef 9963807, i8 noundef zeroext 6, i64 noundef -112, i8 noundef zeroext 0) #10
  %call17 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @s5k5baf_ctrl_ops, i32 noundef 9963802, i64 noundef 0, i64 noundef 256, i64 noundef 1, i64 noundef 0) #10
  %call18 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @s5k5baf_ctrl_ops, i32 noundef 9963778, i64 noundef -127, i64 noundef 127, i64 noundef 1, i64 noundef 0) #10
  %call19 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @s5k5baf_ctrl_ops, i32 noundef 9963776, i64 noundef -127, i64 noundef 127, i64 noundef 1, i64 noundef 0) #10
  %call20 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @s5k5baf_ctrl_ops, i32 noundef 9963777, i64 noundef -127, i64 noundef 127, i64 noundef 1, i64 noundef 0) #10
  %call21 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @s5k5baf_ctrl_ops, i32 noundef 9963803, i64 noundef -127, i64 noundef 127, i64 noundef 1, i64 noundef 0) #10
  %call22 = tail call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %ctrls1, ptr noundef nonnull @s5k5baf_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 6, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @s5k5baf_test_pattern_menu) #10
  %error = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 20, i32 0, i32 9
  %11 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end34, label %do.end26

do.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %name29 = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 9, i32 9
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef %name29, i32 noundef %12) #13
  %13 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %error, align 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls1) #10
  br label %cleanup

if.end34:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ctrl_handler = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 9, i32 8
  %15 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %ctrls1, ptr %ctrl_handler, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %do.end26, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %14, %do.end26 ], [ 0, %if.end34 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s5k5baf_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not = icmp eq i32 %3, 0
  br i1 %cmp1.not, label %if.then.return.sink.split_crit_edge, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then.return.sink.split_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp6 = icmp ugt i32 %3, 2
  br i1 %cmp6, label %if.end4.return_crit_edge, label %if.end8

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr [3 x %struct.s5k5baf_pixfmt], ptr @s5k5baf_formats, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  br label %return.sink.split

return.sink.split:                                ; preds = %if.end8, %if.then.return.sink.split_crit_edge
  %.sink = phi i32 [ %5, %if.end8 ], [ 1, %if.then.return.sink.split_crit_edge ]
  %code11 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %6 = ptrtoint ptr %code11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink, ptr %code11, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %if.end4.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.return_crit_edge ], [ -22, %if.end4.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k5baf_enum_frame_size(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  br i1 %cmp1, label %if.then2, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  %4 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4103, i32 %5)
  %cmp6 = icmp eq i32 %5, 4103
  br i1 %cmp6, label %while.cond.preheader.while.end_crit_edge, label %while.cond.1

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %code, align 4
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %7 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1600, ptr %min_width, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %8 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1600, ptr %max_width, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %9 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1200, ptr %min_height, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  br label %cleanup.sink.split

while.cond.1:                                     ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8199, i32 %11)
  %cmp6.1 = icmp eq i32 %11, 8199
  %spec.select = zext i1 %cmp6.1 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.1, %while.cond.preheader.while.end_crit_edge
  %dec.lcssa = phi i32 [ 2, %while.cond.preheader.while.end_crit_edge ], [ %spec.select, %while.cond.1 ]
  %arrayidx9 = getelementptr [3 x %struct.s5k5baf_pixfmt], ptr @s5k5baf_formats, i32 0, i32 %dec.lcssa
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx9, align 4
  %14 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %code, align 4
  %min_width12 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %15 = ptrtoint ptr %min_width12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8, ptr %min_width12, align 4
  %max_width13 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %16 = ptrtoint ptr %max_width13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1600, ptr %max_width13, align 4
  %max_height14 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %17 = ptrtoint ptr %max_height14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 8, ptr %max_height14, align 4
  %min_height15 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %while.end, %if.then2
  %min_height15.sink = phi ptr [ %min_height15, %while.end ], [ %max_height, %if.then2 ]
  %18 = ptrtoint ptr %min_height15.sink to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1200, ptr %min_height15.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k5baf_get_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %function.i.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 3
  %0 = ptrtoint ptr %function.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %function.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131073, i32 %1)
  %cmp.i.i = icmp eq i32 %1, 131073
  %retval.0.v.i = select i1 %cmp.i.i, i32 -72, i32 -300
  %retval.0.i = getelementptr i8, ptr %sd, i32 %retval.0.v.i
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
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
  br i1 %cmp.not.i, label %if.then.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !293

if.then.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 998, i32 noundef 9, ptr noundef null) #10
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %5, %if.then.v4l2_subdev_get_try_format.exit_crit_edge ]
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %10 = call ptr @memcpy(ptr %format, ptr %arrayidx.i, i32 48)
  br label %cleanup

if.end:                                           ; preds = %entry
  %format2 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %pad3 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %11 = ptrtoint ptr %pad3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pad3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp4 = icmp eq i32 %12, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %format2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1600, ptr %format2, align 4
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1200, ptr %height.i, align 4
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %code.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 7, ptr %colorspace.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %17 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %field.i, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %18 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %field, align 4
  %lock = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %pixfmt7 = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 16
  %19 = ptrtoint ptr %pixfmt7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pixfmt7, align 4
  %arrayidx = getelementptr [3 x %struct.s5k5baf_pixfmt], ptr @s5k5baf_formats, i32 0, i32 %20
  %width = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 15, i32 2
  %21 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %width, align 4
  %23 = ptrtoint ptr %format2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %format2, align 4
  %height = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 15, i32 3
  %24 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %height, align 4
  %height10 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %height10 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %height10, align 4
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %code11 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %29 = ptrtoint ptr %code11 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %code11, align 4
  %colorspace = getelementptr [3 x %struct.s5k5baf_pixfmt], ptr @s5k5baf_formats, i32 0, i32 %20, i32 1
  %30 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %colorspace, align 4
  %colorspace12 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %32 = ptrtoint ptr %colorspace12 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %colorspace12, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %v4l2_subdev_get_try_format.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k5baf_set_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %function.i.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 3
  %0 = ptrtoint ptr %function.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %function.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131073, i32 %1)
  %cmp.i.i = icmp eq i32 %1, 131073
  %retval.0.v.i = select i1 %cmp.i.i, i32 -72, i32 -300
  %retval.0.i = getelementptr i8, ptr %sd, i32 %retval.0.v.i
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %field, align 4
  %3 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %5 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pad, align 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %7 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %6, %conv.i
  br i1 %cmp.not.i, label %if.then.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !293

if.then.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 998, i32 noundef 9, ptr noundef null) #10
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %6, %if.then.v4l2_subdev_get_try_format.exit_crit_edge ]
  %9 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %10, i32 %spec.select.i
  %11 = call ptr @memcpy(ptr %arrayidx.i, ptr %format, i32 48)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp3 = icmp eq i32 %6, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1600, ptr %format, align 4
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1200, ptr %height.i, align 4
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %code.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %15 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 7, ptr %colorspace.i, align 4
  %16 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %field, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %streaming = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 21
  %17 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %height.i40 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  tail call void @v4l_bound_align_image(ptr noundef %format, i32 noundef 8, i32 noundef 1600, i32 noundef 1, ptr noundef %height.i40, i32 noundef 8, i32 noundef 1200, i32 noundef 1, i32 noundef 0) #10
  %colorspace.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %18 = ptrtoint ptr %colorspace.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %colorspace.i.i, align 4
  %code.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %19, label %if.end8.for.inc.2.i.i_crit_edge [
    i32 7, label %if.end.i.i
    i32 3, label %if.end.1.i.i
  ]

if.end8.for.inc.2.i.i_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i.i

if.end.i.i:                                       ; preds = %if.end8
  %21 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %code.i.i, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %22, label %if.end.i.i.for.inc.2.i.i_crit_edge [
    i32 8199, label %if.end.i.i.s5k5baf_try_isp_format.exit_crit_edge
    i32 4103, label %s5k5baf_find_pixfmt.exit.fold.split.i
  ]

if.end.i.i.s5k5baf_try_isp_format.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_try_isp_format.exit

if.end.i.i.for.inc.2.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i.i

if.end.1.i.i:                                     ; preds = %if.end8
  %24 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %code.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8199, i32 %25)
  %cmp5.1.i.i = icmp eq i32 %25, 8199
  br i1 %cmp5.1.i.i, label %if.end.1.i.i.s5k5baf_try_isp_format.exit_crit_edge, label %if.end.1.i.i.for.inc.2.i.i_crit_edge

if.end.1.i.i.for.inc.2.i.i_crit_edge:             ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i.i

if.end.1.i.i.s5k5baf_try_isp_format.exit_crit_edge: ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_try_isp_format.exit

for.inc.2.i.i:                                    ; preds = %if.end.1.i.i.for.inc.2.i.i_crit_edge, %if.end.i.i.for.inc.2.i.i_crit_edge, %if.end8.for.inc.2.i.i_crit_edge
  %c.1.2.i.i = phi i32 [ 1, %if.end.1.i.i.for.inc.2.i.i_crit_edge ], [ -1, %if.end8.for.inc.2.i.i_crit_edge ], [ 0, %if.end.i.i.for.inc.2.i.i_crit_edge ]
  %26 = tail call i32 @llvm.smax.i32(i32 %c.1.2.i.i, i32 0) #10
  br label %s5k5baf_try_isp_format.exit

s5k5baf_find_pixfmt.exit.fold.split.i:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_try_isp_format.exit

s5k5baf_try_isp_format.exit:                      ; preds = %s5k5baf_find_pixfmt.exit.fold.split.i, %for.inc.2.i.i, %if.end.1.i.i.s5k5baf_try_isp_format.exit_crit_edge, %if.end.i.i.s5k5baf_try_isp_format.exit_crit_edge
  %retval.0.i.i = phi i32 [ %26, %for.inc.2.i.i ], [ 0, %if.end.i.i.s5k5baf_try_isp_format.exit_crit_edge ], [ 1, %if.end.1.i.i.s5k5baf_try_isp_format.exit_crit_edge ], [ 2, %s5k5baf_find_pixfmt.exit.fold.split.i ]
  %arrayidx.i41 = getelementptr [3 x %struct.s5k5baf_pixfmt], ptr @s5k5baf_formats, i32 0, i32 %retval.0.i.i
  %colorspace.i42 = getelementptr [3 x %struct.s5k5baf_pixfmt], ptr @s5k5baf_formats, i32 0, i32 %retval.0.i.i, i32 1
  %27 = ptrtoint ptr %colorspace.i42 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %colorspace.i42, align 4
  %29 = ptrtoint ptr %arrayidx.i41 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i41, align 4
  %31 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %field, align 4
  %pixfmt10 = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 16
  %32 = ptrtoint ptr %pixfmt10 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %retval.0.i.i, ptr %pixfmt10, align 4
  %33 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %30, ptr %code.i.i, align 4
  %34 = ptrtoint ptr %colorspace.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %28, ptr %colorspace.i.i, align 4
  %width = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 15, i32 2
  %35 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %width, align 4
  %37 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %format, align 4
  %height = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 15, i32 3
  %38 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %height, align 4
  %40 = ptrtoint ptr %height.i40 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %height.i40, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %s5k5baf_try_isp_format.exit, %if.then6, %if.then4, %v4l2_subdev_get_try_format.exit
  %retval.0 = phi i32 [ 0, %v4l2_subdev_get_try_format.exit ], [ 0, %if.then4 ], [ -16, %if.then6 ], [ 0, %s5k5baf_try_isp_format.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k5baf_open(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %fh) #2 align 64 {
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
  br i1 %cmp.not.i.not, label %do.end.i, label %entry.v4l2_subdev_get_try_format.exit_crit_edge, !prof !294

entry.v4l2_subdev_get_try_format.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 998, i32 noundef 9, ptr noundef null) #10
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %entry.v4l2_subdev_get_try_format.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1600, ptr %5, align 4
  %height.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1200, ptr %height.i, align 4
  %code.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %code.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 4
  %9 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 7, ptr %colorspace.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %field.i, align 4
  %function.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 3
  %11 = ptrtoint ptr %function.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %function.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131073, i32 %12)
  %cmp.i = icmp eq i32 %12, 131073
  br i1 %cmp.i, label %v4l2_subdev_get_try_format.exit.cleanup_crit_edge, label %if.end

v4l2_subdev_get_try_format.exit.cleanup_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %v4l2_subdev_get_try_format.exit
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %state, align 4
  %15 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %16)
  %cmp.not.i26 = icmp ugt i16 %16, 1
  br i1 %cmp.not.i26, label %if.end.v4l2_subdev_get_try_format.exit28_crit_edge, label %do.end.i27, !prof !293

if.end.v4l2_subdev_get_try_format.exit28_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_subdev_get_try_format.exit28

do.end.i27:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 998, i32 noundef 9, ptr noundef null) #10
  br label %v4l2_subdev_get_try_format.exit28

v4l2_subdev_get_try_format.exit28:                ; preds = %do.end.i27, %if.end.v4l2_subdev_get_try_format.exit28_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i27 ], [ 1, %if.end.v4l2_subdev_get_try_format.exit28_crit_edge ]
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %18, i32 %spec.select.i
  %colorspace = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i, i32 0, i32 4
  %19 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 7, ptr %colorspace, align 4
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i, i32 0, i32 2
  %20 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8199, ptr %code, align 4
  %21 = load i32, ptr getelementptr inbounds (%struct.v4l2_rect, ptr @s5k5baf_cis_rect, i32 0, i32 2), align 4
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx.i, align 4
  %23 = load i32, ptr getelementptr inbounds (%struct.v4l2_rect, ptr @s5k5baf_cis_rect, i32 0, i32 3), align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i, i32 0, i32 1
  %24 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %height, align 4
  %field = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i, i32 0, i32 3
  %25 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %field, align 4
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %state, align 4
  %28 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp.not.i31.not = icmp eq i16 %29, 0
  br i1 %cmp.not.i31.not, label %do.end.i32, label %v4l2_subdev_get_try_format.exit28.v4l2_subdev_get_try_crop.exit_crit_edge, !prof !294

v4l2_subdev_get_try_format.exit28.v4l2_subdev_get_try_crop.exit_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit28
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_subdev_get_try_crop.exit

do.end.i32:                                       ; preds = %v4l2_subdev_get_try_format.exit28
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 1016, i32 noundef 9, ptr noundef null) #10
  br label %v4l2_subdev_get_try_crop.exit

v4l2_subdev_get_try_crop.exit:                    ; preds = %do.end.i32, %v4l2_subdev_get_try_format.exit28.v4l2_subdev_get_try_crop.exit_crit_edge
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %27, align 4
  %try_crop.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %31, i32 0, i32 1
  %32 = call ptr @memcpy(ptr %try_crop.i, ptr @s5k5baf_cis_rect, i32 16)
  %33 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %state, align 4
  %35 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %cmp.not.i36.not = icmp eq i16 %36, 0
  br i1 %cmp.not.i36.not, label %do.end.i37, label %v4l2_subdev_get_try_crop.exit.v4l2_subdev_get_try_compose.exit_crit_edge, !prof !294

v4l2_subdev_get_try_crop.exit.v4l2_subdev_get_try_compose.exit_crit_edge: ; preds = %v4l2_subdev_get_try_crop.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_subdev_get_try_compose.exit

do.end.i37:                                       ; preds = %v4l2_subdev_get_try_crop.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 1034, i32 noundef 9, ptr noundef null) #10
  br label %v4l2_subdev_get_try_compose.exit

v4l2_subdev_get_try_compose.exit:                 ; preds = %do.end.i37, %v4l2_subdev_get_try_crop.exit.v4l2_subdev_get_try_compose.exit_crit_edge
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %34, align 4
  %try_compose.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %38, i32 0, i32 2
  %39 = call ptr @memcpy(ptr %try_compose.i, ptr @s5k5baf_cis_rect, i32 16)
  %40 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %state, align 4
  %42 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %43)
  %cmp.not.i41 = icmp ugt i16 %43, 1
  br i1 %cmp.not.i41, label %v4l2_subdev_get_try_compose.exit.v4l2_subdev_get_try_crop.exit45_crit_edge, label %do.end.i42, !prof !293

v4l2_subdev_get_try_compose.exit.v4l2_subdev_get_try_crop.exit45_crit_edge: ; preds = %v4l2_subdev_get_try_compose.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_subdev_get_try_crop.exit45

do.end.i42:                                       ; preds = %v4l2_subdev_get_try_compose.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 1016, i32 noundef 9, ptr noundef null) #10
  br label %v4l2_subdev_get_try_crop.exit45

v4l2_subdev_get_try_crop.exit45:                  ; preds = %do.end.i42, %v4l2_subdev_get_try_compose.exit.v4l2_subdev_get_try_crop.exit45_crit_edge
  %spec.select.i43 = phi i32 [ 0, %do.end.i42 ], [ 1, %v4l2_subdev_get_try_compose.exit.v4l2_subdev_get_try_crop.exit45_crit_edge ]
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %41, align 4
  %try_crop.i44 = getelementptr %struct.v4l2_subdev_pad_config, ptr %45, i32 %spec.select.i43, i32 1
  %46 = call ptr @memcpy(ptr %try_crop.i44, ptr @s5k5baf_cis_rect, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %v4l2_subdev_get_try_crop.exit45, %v4l2_subdev_get_try_format.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subdev_log_status(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k5baf_set_power(ptr noundef %sd, i32 noundef %on) #2 align 64 {
entry:
  %buf.i10.i = alloca [4 x i8], align 1
  %buf.i.i = alloca [4 x i8], align 1
  %.compoundliteral.i87 = alloca [3 x i16], align 2
  %.compoundliteral.i = alloca [2 x i16], align 2
  %buf.i = alloca [4 x i8], align 1
  %fw.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %function.i.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 3
  %0 = ptrtoint ptr %function.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %function.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131073, i32 %1)
  %cmp.i.i = icmp eq i32 %1, 131073
  %retval.0.v.i = select i1 %cmp.i.i, i32 -72, i32 -300
  %retval.0.i = getelementptr i8, ptr %sd, i32 %retval.0.v.i
  %lock = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %power = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 22
  %2 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %lnot.ext = zext i1 %tobool.not to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %lnot.ext)
  %cmp.not = icmp eq i32 %3, %lnot.ext
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %fw = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 6
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw, align 4
  %cmp3 = icmp eq ptr %5, null
  br i1 %cmp3, label %if.then4, label %if.then2.if.end6_crit_edge

if.then2.if.end6_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %if.then2
  %dev_priv.i.i = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 9, i32 11
  %6 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #10
  %8 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i, align 4, !annotation !292
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  %call1.i = call i32 @request_firmware(ptr noundef nonnull %fw.i, ptr noundef nonnull @.str.28, ptr noundef %dev.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28) #13
  br label %s5k5baf_load_setfile.exit

if.end.i:                                         ; preds = %if.then4
  %9 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fw.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %div1.i = lshr i32 %12, 1
  %data.i = getelementptr inbounds %struct.firmware, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %12)
  %cmp.i.i53 = icmp ult i32 %12, 6
  br i1 %cmp.i.i53, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.32, i32 noundef %div1.i) #13
  br label %s5k5baf_fw_parse.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(4) %14, ptr noundef nonnull dereferenceable(4) @.str.34, i32 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp1.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp1.not.i.i, label %if.end6.i.i, label %do.end5.i.i

do.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.36) #13
  br label %s5k5baf_fw_parse.exit.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %add.ptr.i.i = getelementptr i16, ptr %14, i32 2
  %sub.i.i = add nsw i32 %div1.i, -2
  %15 = shl nuw i32 %sub.i.i, 1
  %call5.i.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef %15, i32 noundef 3520) #10
  %tobool.not.i.i = icmp eq ptr %call5.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end6.i.i.s5k5baf_fw_parse.exit.i_crit_edge, label %if.end6.i.i.for.body.i.i_crit_edge

if.end6.i.i.for.body.i.i_crit_edge:               ; preds = %if.end6.i.i
  br label %for.body.i.i

if.end6.i.i.s5k5baf_fw_parse.exit.i_crit_edge:    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_fw_parse.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end6.i.i.for.body.i.i_crit_edge
  %conv94.i.i = phi i32 [ %conv.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end6.i.i.for.body.i.i_crit_edge ]
  %i.093.i.i = phi i16 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end6.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i16, ptr %add.ptr.i.i, i32 %conv94.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.i.i, align 2
  %18 = call i16 @llvm.bswap.i16(i16 %17) #10
  %arrayidx13.i.i = getelementptr i16, ptr %call5.i.i.i.i, i32 %conv94.i.i
  %19 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %arrayidx13.i.i, align 2
  %inc.i.i = add i16 %i.093.i.i, 1
  %conv.i.i = zext i16 %inc.i.i to i32
  %cmp10.i.i = icmp ugt i32 %sub.i.i, %conv.i.i
  br i1 %cmp10.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  %20 = ptrtoint ptr %call5.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %call5.i.i.i.i, align 2
  %conv15.i.i = zext i16 %21 to i32
  %mul.i.i = shl nuw nsw i32 %conv15.i.i, 1
  %add.i.i = or i32 %mul.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %add.i.i)
  %cmp16.i.i = icmp ult i32 %sub.i.i, %add.i.i
  br i1 %cmp16.i.i, label %do.end21.i.i, label %if.end26.i.i

do.end21.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %mul25.i.i = and i32 %12, -2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.39, i32 noundef %conv15.i.i, i32 noundef %mul25.i.i) #13
  br label %s5k5baf_fw_parse.exit.i

if.end26.i.i:                                     ; preds = %for.end.i.i
  %add.ptr27.i.i = getelementptr i16, ptr %call5.i.i.i.i, i32 %sub.i.i
  %add.ptr32.i.i = getelementptr i16, ptr %call5.i.i.i.i, i32 %add.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp3795.not.i.i = icmp eq i16 %21, 0
  br i1 %cmp3795.not.i.i, label %if.end26.i.i.for.end54.i.i_crit_edge, label %if.end26.i.i.for.body39.i.i_crit_edge

if.end26.i.i.for.body39.i.i_crit_edge:            ; preds = %if.end26.i.i
  br label %for.body39.i.i

if.end26.i.i.for.end54.i.i_crit_edge:             ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end54.i.i

for.cond33.i.i:                                   ; preds = %for.body39.i.i
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, %conv15.i.i
  br i1 %exitcond.not.i.i, label %for.cond33.i.i.for.end54.i.i_crit_edge, label %for.cond33.i.i.for.body39.i.i_crit_edge

for.cond33.i.i.for.body39.i.i_crit_edge:          ; preds = %for.cond33.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body39.i.i

for.cond33.i.i.for.end54.i.i_crit_edge:           ; preds = %for.cond33.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end54.i.i

for.body39.i.i:                                   ; preds = %for.cond33.i.i.for.body39.i.i_crit_edge, %if.end26.i.i.for.body39.i.i_crit_edge
  %indvars.iv.i.i = phi i32 [ %indvars.iv.next.i.i, %for.cond33.i.i.for.body39.i.i_crit_edge ], [ 0, %if.end26.i.i.for.body39.i.i_crit_edge ]
  %offset.i.i = getelementptr %struct.s5k5baf_fw, ptr %call5.i.i.i.i, i32 0, i32 1, i32 %indvars.iv.i.i, i32 1
  %22 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %offset.i.i, align 2
  %conv42.i.i = zext i16 %23 to i32
  %add.ptr43.i.i = getelementptr i16, ptr %add.ptr32.i.i, i32 %conv42.i.i
  %cmp44.not.i.i = icmp ugt ptr %add.ptr43.i.i, %add.ptr27.i.i
  br i1 %cmp44.not.i.i, label %do.end50.i.i, label %for.cond33.i.i

do.end50.i.i:                                     ; preds = %for.body39.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.42, i32 noundef %indvars.iv.i.i) #13
  br label %s5k5baf_fw_parse.exit.i

for.end54.i.i:                                    ; preds = %for.cond33.i.i.for.end54.i.i_crit_edge, %if.end26.i.i.for.end54.i.i_crit_edge
  %24 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call5.i.i.i.i, ptr %fw, align 4
  br label %s5k5baf_fw_parse.exit.i

s5k5baf_fw_parse.exit.i:                          ; preds = %for.end54.i.i, %do.end50.i.i, %do.end21.i.i, %if.end6.i.i.s5k5baf_fw_parse.exit.i_crit_edge, %do.end5.i.i, %do.end.i.i
  %25 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %26) #10
  br label %s5k5baf_load_setfile.exit

s5k5baf_load_setfile.exit:                        ; preds = %s5k5baf_fw_parse.exit.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #10
  br label %if.end6

if.end6:                                          ; preds = %s5k5baf_load_setfile.exit, %if.then2.if.end6_crit_edge
  %pixfmt.i = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 16
  %27 = ptrtoint ptr %pixfmt.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %pixfmt.i, align 4
  %req_fiv.i = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 18
  %28 = ptrtoint ptr %req_fiv.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 666, ptr %req_fiv.i, align 2
  %fiv.i = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 17
  %29 = ptrtoint ptr %fiv.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 666, ptr %fiv.i, align 4
  %valid_auto_alg.i = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 21
  %30 = ptrtoint ptr %valid_auto_alg.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load.i = load i8, ptr %valid_auto_alg.i, align 4
  %bf.clear.i = and i8 %bf.load.i, -17
  store i8 %bf.clear.i, ptr %valid_auto_alg.i, align 4
  %call7 = call fastcc i32 @s5k5baf_power_on(ptr noundef %retval.0.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.out.thread_crit_edge, label %if.end10

if.end6.out.thread_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

if.end10:                                         ; preds = %if.end6
  call fastcc void @s5k5baf_hw_init(ptr noundef %retval.0.i)
  %31 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fw, align 4
  %cmp.i.i54 = icmp eq ptr %32, null
  br i1 %cmp.i.i54, label %if.end10.s5k5baf_hw_patch.exit_crit_edge, label %if.end.i.i58

if.end10.s5k5baf_hw_patch.exit_crit_edge:         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_hw_patch.exit

if.end.i.i58:                                     ; preds = %if.end10
  %seq.i.i = getelementptr inbounds %struct.s5k5baf_fw, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %32, align 2
  %conv.i.i55 = zext i16 %34 to i32
  %mul.i.i56 = shl nuw nsw i32 %conv.i.i55, 1
  %add.ptr.i.i57 = getelementptr i16, ptr %seq.i.i, i32 %mul.i.i56
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp430.not.i.i = icmp eq i16 %34, 0
  br i1 %cmp430.not.i.i, label %if.end.i.i58.s5k5baf_hw_patch.exit_crit_edge, label %if.end.i.i58.for.body.i.i59_crit_edge

if.end.i.i58.for.body.i.i59_crit_edge:            ; preds = %if.end.i.i58
  br label %for.body.i.i59

if.end.i.i58.s5k5baf_hw_patch.exit_crit_edge:     ; preds = %if.end.i.i58
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_hw_patch.exit

for.body.i.i59:                                   ; preds = %for.inc.i.i.for.body.i.i59_crit_edge, %if.end.i.i58.for.body.i.i59_crit_edge
  %i.031.i.i = phi i32 [ %inc.i.i60, %for.inc.i.i.for.body.i.i59_crit_edge ], [ 0, %if.end.i.i58.for.body.i.i59_crit_edge ]
  %arrayidx7.i.i = getelementptr %struct.s5k5baf_fw, ptr %32, i32 0, i32 1, i32 %i.031.i.i
  %35 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx7.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %cmp11.i.i = icmp eq i16 %36, 0
  br i1 %cmp11.i.i, label %s5k5baf_fw_get_seq.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i59
  %inc.i.i60 = add nuw nsw i32 %i.031.i.i, 1
  %exitcond.not.i.i61 = icmp eq i32 %inc.i.i60, %conv.i.i55
  br i1 %exitcond.not.i.i61, label %for.inc.i.i.s5k5baf_hw_patch.exit_crit_edge, label %for.inc.i.i.for.body.i.i59_crit_edge

for.inc.i.i.for.body.i.i59_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i59

for.inc.i.i.s5k5baf_hw_patch.exit_crit_edge:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_hw_patch.exit

s5k5baf_fw_get_seq.exit.i:                        ; preds = %for.body.i.i59
  %offset.i.i62 = getelementptr %struct.s5k5baf_fw, ptr %32, i32 0, i32 1, i32 %i.031.i.i, i32 1
  %37 = ptrtoint ptr %offset.i.i62 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %offset.i.i62, align 2
  %conv16.i.i = zext i16 %38 to i32
  %add.ptr17.i.i = getelementptr i16, ptr %add.ptr.i.i57, i32 %conv16.i.i
  %tobool.not.i = icmp eq ptr %add.ptr17.i.i, null
  br i1 %tobool.not.i, label %s5k5baf_fw_get_seq.exit.i.s5k5baf_hw_patch.exit_crit_edge, label %if.then.i

s5k5baf_fw_get_seq.exit.i.s5k5baf_hw_patch.exit_crit_edge: ; preds = %s5k5baf_fw_get_seq.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_hw_patch.exit

if.then.i:                                        ; preds = %s5k5baf_fw_get_seq.exit.i
  %39 = ptrtoint ptr %add.ptr17.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %add.ptr17.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool.not8.i.i = icmp eq i16 %40, 0
  br i1 %tobool.not8.i.i, label %if.then.i.s5k5baf_hw_patch.exit_crit_edge, label %if.then.i.while.body.i.i_crit_edge

if.then.i.while.body.i.i_crit_edge:               ; preds = %if.then.i
  br label %while.body.i.i

if.then.i.s5k5baf_hw_patch.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_hw_patch.exit

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then.i.while.body.i.i_crit_edge
  %41 = phi i16 [ %45, %while.body.i.i.while.body.i.i_crit_edge ], [ %40, %if.then.i.while.body.i.i_crit_edge ]
  %nseq.addr.09.i.i = phi ptr [ %add.ptr.i4.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %add.ptr17.i.i, %if.then.i.while.body.i.i_crit_edge ]
  %conv.i3.i = zext i16 %41 to i32
  %incdec.ptr.i.i = getelementptr i16, ptr %nseq.addr.09.i.i, i32 1
  %incdec.ptr1.i.i = getelementptr i16, ptr %nseq.addr.09.i.i, i32 2
  %42 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %incdec.ptr.i.i, align 2
  %dec.i.i = add nsw i32 %conv.i3.i, -1
  %conv2.i.i = trunc i32 %dec.i.i to i16
  call fastcc void @s5k5baf_write_arr_seq(ptr noundef %retval.0.i, i16 noundef zeroext %43, i16 noundef zeroext %conv2.i.i, ptr noundef %incdec.ptr1.i.i) #10
  %add.ptr.i4.i = getelementptr i16, ptr %incdec.ptr1.i.i, i32 %dec.i.i
  %44 = ptrtoint ptr %add.ptr.i4.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %add.ptr.i4.i, align 2
  %tobool.not.i.i63 = icmp eq i16 %45, 0
  br i1 %tobool.not.i.i63, label %while.body.i.i.s5k5baf_hw_patch.exit_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.body.i.i.s5k5baf_hw_patch.exit_crit_edge:   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_hw_patch.exit

s5k5baf_hw_patch.exit:                            ; preds = %while.body.i.i.s5k5baf_hw_patch.exit_crit_edge, %if.then.i.s5k5baf_hw_patch.exit_crit_edge, %s5k5baf_fw_get_seq.exit.i.s5k5baf_hw_patch.exit_crit_edge, %for.inc.i.i.s5k5baf_hw_patch.exit_crit_edge, %if.end.i.i58.s5k5baf_hw_patch.exit_crit_edge, %if.end10.s5k5baf_hw_patch.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #10
  %46 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 1
  %47 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 2
  %48 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 3
  %49 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 16, ptr %buf.i, align 1
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %46, align 1
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %47, align 1
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %48, align 1
  %dev_priv.i.i65 = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 9, i32 11
  %53 = ptrtoint ptr %dev_priv.i.i65 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev_priv.i.i65, align 4
  %error.i = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 12
  %55 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i66 = icmp eq i32 %56, 0
  br i1 %tobool.not.i66, label %if.end.i68, label %s5k5baf_hw_patch.exit.s5k5baf_i2c_write.exit_crit_edge

s5k5baf_hw_patch.exit.s5k5baf_i2c_write.exit_crit_edge: ; preds = %s5k5baf_hw_patch.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_i2c_write.exit

if.end.i68:                                       ; preds = %s5k5baf_hw_patch.exit
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %54, ptr noundef nonnull %buf.i, i32 noundef 4, i16 noundef zeroext 0) #10
  %57 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %57)
  %cmp.i67 = icmp sgt i32 %57, 2
  br i1 %cmp.i67, label %do.end.i69, label %if.end.i68.do.end22.i_crit_edge

if.end.i68.do.end22.i_crit_edge:                  ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22.i

do.end.i69:                                       ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.i2c_client, ptr %54, i32 0, i32 2
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name.i, i32 noundef 4096, i32 noundef 1) #13
  br label %do.end22.i

do.end22.i:                                       ; preds = %do.end.i69, %if.end.i68.do.end22.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i)
  %cmp23.not.i = icmp eq i32 %call.i.i, 4
  br i1 %cmp23.not.i, label %do.end22.i.s5k5baf_i2c_write.exit_crit_edge, label %do.end28.i

do.end22.i.s5k5baf_i2c_write.exit_crit_edge:      ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_i2c_write.exit

do.end28.i:                                       ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  %name30.i = getelementptr inbounds %struct.i2c_client, ptr %54, i32 0, i32 2
  %call32.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name30.i, i32 noundef %call.i.i) #13
  %58 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call.i.i, ptr %error.i, align 4
  br label %s5k5baf_i2c_write.exit

s5k5baf_i2c_write.exit:                           ; preds = %do.end28.i, %do.end22.i.s5k5baf_i2c_write.exit_crit_edge, %s5k5baf_hw_patch.exit.s5k5baf_i2c_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %.compoundliteral.i)
  %mclk_frequency.i = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 5
  %59 = ptrtoint ptr %mclk_frequency.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mclk_frequency.i, align 4
  %div.i = udiv i32 %60, 1000
  %conv.i = trunc i32 %div.i to i16
  %61 = ptrtoint ptr %.compoundliteral.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv.i, ptr %.compoundliteral.i, align 2
  %arrayinit.element.i = getelementptr inbounds i16, ptr %.compoundliteral.i, i32 1
  %shr.i = lshr i32 %div.i, 16
  %conv1.i = trunc i32 %shr.i to i16
  %62 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv1.i, ptr %arrayinit.element.i, align 2
  call fastcc void @s5k5baf_write_arr_seq(ptr noundef %retval.0.i, i16 noundef zeroext 440, i16 noundef zeroext 2, ptr noundef nonnull %.compoundliteral.i) #10
  br label %while.body.i.i78

while.body.i.i78:                                 ; preds = %while.body.i.i78.while.body.i.i78_crit_edge, %s5k5baf_i2c_write.exit
  %63 = phi i16 [ %67, %while.body.i.i78.while.body.i.i78_crit_edge ], [ 10, %s5k5baf_i2c_write.exit ]
  %nseq.addr.09.i.i70 = phi ptr [ %add.ptr.i.i76, %while.body.i.i78.while.body.i.i78_crit_edge ], [ @s5k5baf_hw_set_clocks.nseq_clk_cfg, %s5k5baf_i2c_write.exit ]
  %conv.i.i71 = zext i16 %63 to i32
  %incdec.ptr.i.i72 = getelementptr i16, ptr %nseq.addr.09.i.i70, i32 1
  %incdec.ptr1.i.i73 = getelementptr i16, ptr %nseq.addr.09.i.i70, i32 2
  %64 = ptrtoint ptr %incdec.ptr.i.i72 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %incdec.ptr.i.i72, align 2
  %dec.i.i74 = add nsw i32 %conv.i.i71, -1
  %conv2.i.i75 = trunc i32 %dec.i.i74 to i16
  call fastcc void @s5k5baf_write_arr_seq(ptr noundef %retval.0.i, i16 noundef zeroext %65, i16 noundef zeroext %conv2.i.i75, ptr noundef %incdec.ptr1.i.i73) #10
  %add.ptr.i.i76 = getelementptr i16, ptr %incdec.ptr1.i.i73, i32 %dec.i.i74
  %66 = ptrtoint ptr %add.ptr.i.i76 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %add.ptr.i.i76, align 2
  %tobool.not.i.i77 = icmp eq i16 %67, 0
  br i1 %tobool.not.i.i77, label %s5k5baf_write_nseq.exit.i, label %while.body.i.i78.while.body.i.i78_crit_edge

while.body.i.i78.while.body.i.i78_crit_edge:      ; preds = %while.body.i.i78
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i78

s5k5baf_write_nseq.exit.i:                        ; preds = %while.body.i.i78
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %68 = load volatile i32, ptr @jiffies, align 128
  call fastcc void @s5k5baf_write(ptr noundef %retval.0.i, i16 noundef zeroext 480, i16 noundef zeroext 1) #10
  %.neg18.i = sub i32 -25, %68
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i81.do.body.i.i_crit_edge, %s5k5baf_write_nseq.exit.i
  %call1.i.i = call fastcc zeroext i16 @s5k5baf_read(ptr noundef %retval.0.i, i16 noundef zeroext 480) #10
  %69 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i17.i = icmp ne i32 %70, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call1.i.i)
  %tobool2.not.i.i = icmp eq i16 %call1.i.i, 0
  %or.cond.i.i = select i1 %tobool.not.i17.i, i1 true, i1 %tobool2.not.i.i
  br i1 %or.cond.i.i, label %do.body.i.i.s5k5baf_synchronize.exit.i_crit_edge, label %if.end.i.i81

do.body.i.i.s5k5baf_synchronize.exit.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_synchronize.exit.i

if.end.i.i81:                                     ; preds = %do.body.i.i
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %71 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i79 = add i32 %.neg18.i, %71
  %cmp.i.i80 = icmp slt i32 %sub.i.i79, 0
  br i1 %cmp.i.i80, label %if.end.i.i81.do.body.i.i_crit_edge, label %do.end5.i.i82

if.end.i.i81.do.body.i.i_crit_edge:               ; preds = %if.end.i.i81
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

do.end5.i.i82:                                    ; preds = %if.end.i.i81
  call void @__sanitizer_cov_trace_pc() #12
  %name.i.i = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 9, i32 9
  %call6.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %name.i.i, i32 noundef 480) #13
  %72 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -110, ptr %error.i, align 4
  br label %s5k5baf_synchronize.exit.i

s5k5baf_synchronize.exit.i:                       ; preds = %do.end5.i.i82, %do.body.i.i.s5k5baf_synchronize.exit.i_crit_edge
  %call.i = call fastcc zeroext i16 @s5k5baf_read(ptr noundef %retval.0.i, i16 noundef zeroext 482) #10
  %73 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i83 = icmp ne i32 %74, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i)
  %tobool3.not.i = icmp eq i16 %call.i, 0
  %or.cond.i = select i1 %tobool.not.i83, i1 true, i1 %tobool3.not.i
  br i1 %or.cond.i, label %s5k5baf_synchronize.exit.i.s5k5baf_hw_set_clocks.exit_crit_edge, label %do.end.i85

s5k5baf_synchronize.exit.i.s5k5baf_hw_set_clocks.exit_crit_edge: ; preds = %s5k5baf_synchronize.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_hw_set_clocks.exit

do.end.i85:                                       ; preds = %s5k5baf_synchronize.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv2.i = zext i16 %call.i to i32
  %name.i84 = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 9, i32 9
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %name.i84, i32 noundef %conv2.i) #13
  %75 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -22, ptr %error.i, align 4
  br label %s5k5baf_hw_set_clocks.exit

s5k5baf_hw_set_clocks.exit:                       ; preds = %do.end.i85, %s5k5baf_synchronize.exit.i.s5k5baf_hw_set_clocks.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %.compoundliteral.i)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %.compoundliteral.i87)
  %bus_type.i = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 1
  %76 = ptrtoint ptr %bus_type.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %bus_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %77)
  %cmp.i88 = icmp eq i32 %77, 5
  %..i = select i1 %cmp.i88, i16 195, i16 0
  %nlanes.i = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 2
  %78 = ptrtoint ptr %nlanes.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %nlanes.i, align 4
  %conv.i89 = zext i8 %79 to i16
  %80 = ptrtoint ptr %.compoundliteral.i87 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %conv.i89, ptr %.compoundliteral.i87, align 2
  %arrayinit.element.i90 = getelementptr inbounds i16, ptr %.compoundliteral.i87, i32 1
  %81 = ptrtoint ptr %arrayinit.element.i90 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %..i, ptr %arrayinit.element.i90, align 2
  %arrayinit.element1.i = getelementptr inbounds i16, ptr %.compoundliteral.i87, i32 2
  %82 = ptrtoint ptr %arrayinit.element1.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 1, ptr %arrayinit.element1.i, align 2
  call fastcc void @s5k5baf_write_arr_seq(ptr noundef %retval.0.i, i16 noundef zeroext 1010, i16 noundef zeroext 3, ptr noundef nonnull %.compoundliteral.i87) #10
  %83 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %error.i, align 4
  store i32 0, ptr %error.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %.compoundliteral.i87)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp12 = icmp slt i32 %84, 0
  br i1 %cmp12, label %s5k5baf_hw_set_clocks.exit.out.thread_crit_edge, label %if.end14

s5k5baf_hw_set_clocks.exit.out.thread_crit_edge:  ; preds = %s5k5baf_hw_set_clocks.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

if.end14:                                         ; preds = %s5k5baf_hw_set_clocks.exit
  %85 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %fw, align 4
  %cmp.i.i93 = icmp eq ptr %86, null
  br i1 %cmp.i.i93, label %if.end14.s5k5baf_hw_set_ccm.exit_crit_edge, label %if.end.i.i99

if.end14.s5k5baf_hw_set_ccm.exit_crit_edge:       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_hw_set_ccm.exit

if.end.i.i99:                                     ; preds = %if.end14
  %seq.i.i94 = getelementptr inbounds %struct.s5k5baf_fw, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %86, align 2
  %conv.i.i95 = zext i16 %88 to i32
  %mul.i.i96 = shl nuw nsw i32 %conv.i.i95, 1
  %add.ptr.i.i97 = getelementptr i16, ptr %seq.i.i94, i32 %mul.i.i96
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %cmp430.not.i.i98 = icmp eq i16 %88, 0
  br i1 %cmp430.not.i.i98, label %if.end.i.i99.s5k5baf_hw_set_cis.exit_crit_edge, label %if.end.i.i99.for.body.i.i103_crit_edge

if.end.i.i99.for.body.i.i103_crit_edge:           ; preds = %if.end.i.i99
  br label %for.body.i.i103

if.end.i.i99.s5k5baf_hw_set_cis.exit_crit_edge:   ; preds = %if.end.i.i99
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_hw_set_cis.exit

for.body.i.i103:                                  ; preds = %for.inc.i.i106.for.body.i.i103_crit_edge, %if.end.i.i99.for.body.i.i103_crit_edge
  %i.031.i.i100 = phi i32 [ %inc.i.i104, %for.inc.i.i106.for.body.i.i103_crit_edge ], [ 0, %if.end.i.i99.for.body.i.i103_crit_edge ]
  %arrayidx7.i.i101 = getelementptr %struct.s5k5baf_fw, ptr %86, i32 0, i32 1, i32 %i.031.i.i100
  %89 = ptrtoint ptr %arrayidx7.i.i101 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %arrayidx7.i.i101, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %90)
  %cmp11.i.i102 = icmp eq i16 %90, 2
  br i1 %cmp11.i.i102, label %s5k5baf_fw_get_seq.exit.i111, label %for.inc.i.i106

for.inc.i.i106:                                   ; preds = %for.body.i.i103
  %inc.i.i104 = add nuw nsw i32 %i.031.i.i100, 1
  %exitcond.not.i.i105 = icmp eq i32 %inc.i.i104, %conv.i.i95
  br i1 %exitcond.not.i.i105, label %for.inc.i.i106.s5k5baf_hw_set_cis.exit_crit_edge, label %for.inc.i.i106.for.body.i.i103_crit_edge

for.inc.i.i106.for.body.i.i103_crit_edge:         ; preds = %for.inc.i.i106
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i103

for.inc.i.i106.s5k5baf_hw_set_cis.exit_crit_edge: ; preds = %for.inc.i.i106
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_hw_set_cis.exit

s5k5baf_fw_get_seq.exit.i111:                     ; preds = %for.body.i.i103
  %offset.i.i107 = getelementptr %struct.s5k5baf_fw, ptr %86, i32 0, i32 1, i32 %i.031.i.i100, i32 1
  %91 = ptrtoint ptr %offset.i.i107 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %offset.i.i107, align 2
  %conv16.i.i108 = zext i16 %92 to i32
  %add.ptr17.i.i109 = getelementptr i16, ptr %add.ptr.i.i97, i32 %conv16.i.i108
  %tobool.not.i110 = icmp eq ptr %add.ptr17.i.i109, null
  br i1 %tobool.not.i110, label %s5k5baf_fw_get_seq.exit.i111.s5k5baf_hw_set_cis.exit_crit_edge, label %if.end.i6.i

s5k5baf_fw_get_seq.exit.i111.s5k5baf_hw_set_cis.exit_crit_edge: ; preds = %s5k5baf_fw_get_seq.exit.i111
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_hw_set_cis.exit

if.end.i6.i:                                      ; preds = %s5k5baf_fw_get_seq.exit.i111
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #10
  %93 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 1
  %94 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 2
  %95 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 3
  %96 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %buf.i.i, align 1
  %97 = ptrtoint ptr %93 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 40, ptr %93, align 1
  %98 = ptrtoint ptr %94 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 -48, ptr %94, align 1
  %99 = ptrtoint ptr %95 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %95, align 1
  %100 = ptrtoint ptr %dev_priv.i.i65 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev_priv.i.i65, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %101, ptr noundef nonnull %buf.i.i, i32 noundef 4, i16 noundef zeroext 0) #10
  %102 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %102)
  %cmp.i5.i = icmp sgt i32 %102, 2
  br i1 %cmp.i5.i, label %do.end.i.i116, label %if.end.i6.i.do.end22.i.i_crit_edge

if.end.i6.i.do.end22.i.i_crit_edge:               ; preds = %if.end.i6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22.i.i

do.end.i.i116:                                    ; preds = %if.end.i6.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i.i115 = getelementptr inbounds %struct.i2c_client, ptr %101, i32 0, i32 2
  %call19.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name.i.i115, i32 noundef 40, i32 noundef 53248) #13
  br label %do.end22.i.i

do.end22.i.i:                                     ; preds = %do.end.i.i116, %if.end.i6.i.do.end22.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.i)
  %cmp23.not.i.i = icmp eq i32 %call.i.i.i, 4
  br i1 %cmp23.not.i.i, label %do.end22.i.i.s5k5baf_i2c_write.exit.i_crit_edge, label %do.end28.i.i

do.end22.i.i.s5k5baf_i2c_write.exit.i_crit_edge:  ; preds = %do.end22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_i2c_write.exit.i

do.end28.i.i:                                     ; preds = %do.end22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %name30.i.i = getelementptr inbounds %struct.i2c_client, ptr %101, i32 0, i32 2
  %call32.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name30.i.i, i32 noundef %call.i.i.i) #13
  %103 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %call.i.i.i, ptr %error.i, align 4
  br label %s5k5baf_i2c_write.exit.i

s5k5baf_i2c_write.exit.i:                         ; preds = %do.end28.i.i, %do.end22.i.i.s5k5baf_i2c_write.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #10
  %104 = ptrtoint ptr %add.ptr17.i.i109 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %add.ptr17.i.i109, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %105)
  %tobool.not8.i.i117 = icmp eq i16 %105, 0
  br i1 %tobool.not8.i.i117, label %s5k5baf_i2c_write.exit.i.s5k5baf_write_nseq.exit.i124_crit_edge, label %s5k5baf_i2c_write.exit.i.while.body.i.i123_crit_edge

s5k5baf_i2c_write.exit.i.while.body.i.i123_crit_edge: ; preds = %s5k5baf_i2c_write.exit.i
  br label %while.body.i.i123

s5k5baf_i2c_write.exit.i.s5k5baf_write_nseq.exit.i124_crit_edge: ; preds = %s5k5baf_i2c_write.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_write_nseq.exit.i124

while.body.i.i123:                                ; preds = %while.body.i.i123.while.body.i.i123_crit_edge, %s5k5baf_i2c_write.exit.i.while.body.i.i123_crit_edge
  %106 = phi i16 [ %110, %while.body.i.i123.while.body.i.i123_crit_edge ], [ %105, %s5k5baf_i2c_write.exit.i.while.body.i.i123_crit_edge ]
  %nseq.addr.09.i.i118 = phi ptr [ %add.ptr.i8.i, %while.body.i.i123.while.body.i.i123_crit_edge ], [ %add.ptr17.i.i109, %s5k5baf_i2c_write.exit.i.while.body.i.i123_crit_edge ]
  %conv.i7.i = zext i16 %106 to i32
  %incdec.ptr.i.i119 = getelementptr i16, ptr %nseq.addr.09.i.i118, i32 1
  %incdec.ptr1.i.i120 = getelementptr i16, ptr %nseq.addr.09.i.i118, i32 2
  %107 = ptrtoint ptr %incdec.ptr.i.i119 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %incdec.ptr.i.i119, align 2
  %dec.i.i121 = add nsw i32 %conv.i7.i, -1
  %conv2.i.i122 = trunc i32 %dec.i.i121 to i16
  call fastcc void @s5k5baf_write_arr_seq(ptr noundef %retval.0.i, i16 noundef zeroext %108, i16 noundef zeroext %conv2.i.i122, ptr noundef %incdec.ptr1.i.i120) #10
  %add.ptr.i8.i = getelementptr i16, ptr %incdec.ptr1.i.i120, i32 %dec.i.i121
  %109 = ptrtoint ptr %add.ptr.i8.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %add.ptr.i8.i, align 2
  %tobool.not.i9.i = icmp eq i16 %110, 0
  br i1 %tobool.not.i9.i, label %while.body.i.i123.s5k5baf_write_nseq.exit.i124_crit_edge, label %while.body.i.i123.while.body.i.i123_crit_edge

while.body.i.i123.while.body.i.i123_crit_edge:    ; preds = %while.body.i.i123
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i123

while.body.i.i123.s5k5baf_write_nseq.exit.i124_crit_edge: ; preds = %while.body.i.i123
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_write_nseq.exit.i124

s5k5baf_write_nseq.exit.i124:                     ; preds = %while.body.i.i123.s5k5baf_write_nseq.exit.i124_crit_edge, %s5k5baf_i2c_write.exit.i.s5k5baf_write_nseq.exit.i124_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i10.i) #10
  %111 = getelementptr inbounds [4 x i8], ptr %buf.i10.i, i32 0, i32 1
  %112 = getelementptr inbounds [4 x i8], ptr %buf.i10.i, i32 0, i32 2
  %113 = getelementptr inbounds [4 x i8], ptr %buf.i10.i, i32 0, i32 3
  %114 = ptrtoint ptr %buf.i10.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %buf.i10.i, align 1
  %115 = ptrtoint ptr %111 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 40, ptr %111, align 1
  %116 = ptrtoint ptr %112 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 112, ptr %112, align 1
  %117 = ptrtoint ptr %113 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %113, align 1
  %118 = ptrtoint ptr %dev_priv.i.i65 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev_priv.i.i65, align 4
  %120 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool.not.i13.i = icmp eq i32 %121, 0
  br i1 %tobool.not.i13.i, label %if.end.i16.i, label %s5k5baf_write_nseq.exit.i124.s5k5baf_i2c_write.exit25.i_crit_edge

s5k5baf_write_nseq.exit.i124.s5k5baf_i2c_write.exit25.i_crit_edge: ; preds = %s5k5baf_write_nseq.exit.i124
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_i2c_write.exit25.i

if.end.i16.i:                                     ; preds = %s5k5baf_write_nseq.exit.i124
  %call.i.i14.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %119, ptr noundef nonnull %buf.i10.i, i32 noundef 4, i16 noundef zeroext 0) #10
  %122 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %122)
  %cmp.i15.i = icmp sgt i32 %122, 2
  br i1 %cmp.i15.i, label %do.end.i19.i, label %if.end.i16.i.do.end22.i21.i_crit_edge

if.end.i16.i.do.end22.i21.i_crit_edge:            ; preds = %if.end.i16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22.i21.i

do.end.i19.i:                                     ; preds = %if.end.i16.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i17.i = getelementptr inbounds %struct.i2c_client, ptr %119, i32 0, i32 2
  %call19.i18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name.i17.i, i32 noundef 40, i32 noundef 28672) #13
  br label %do.end22.i21.i

do.end22.i21.i:                                   ; preds = %do.end.i19.i, %if.end.i16.i.do.end22.i21.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i14.i)
  %cmp23.not.i20.i = icmp eq i32 %call.i.i14.i, 4
  br i1 %cmp23.not.i20.i, label %do.end22.i21.i.s5k5baf_i2c_write.exit25.i_crit_edge, label %do.end28.i24.i

do.end22.i21.i.s5k5baf_i2c_write.exit25.i_crit_edge: ; preds = %do.end22.i21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_i2c_write.exit25.i

do.end28.i24.i:                                   ; preds = %do.end22.i21.i
  call void @__sanitizer_cov_trace_pc() #12
  %name30.i22.i = getelementptr inbounds %struct.i2c_client, ptr %119, i32 0, i32 2
  %call32.i23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name30.i22.i, i32 noundef %call.i.i14.i) #13
  %123 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %call.i.i14.i, ptr %error.i, align 4
  br label %s5k5baf_i2c_write.exit25.i

s5k5baf_i2c_write.exit25.i:                       ; preds = %do.end28.i24.i, %do.end22.i21.i.s5k5baf_i2c_write.exit25.i_crit_edge, %s5k5baf_write_nseq.exit.i124.s5k5baf_i2c_write.exit25.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i10.i) #10
  br label %s5k5baf_hw_set_cis.exit

s5k5baf_hw_set_cis.exit:                          ; preds = %s5k5baf_i2c_write.exit25.i, %s5k5baf_fw_get_seq.exit.i111.s5k5baf_hw_set_cis.exit_crit_edge, %for.inc.i.i106.s5k5baf_hw_set_cis.exit_crit_edge, %if.end.i.i99.s5k5baf_hw_set_cis.exit_crit_edge
  %124 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %124)
  %.pr = load ptr, ptr %fw, align 4
  %cmp.i.i126 = icmp eq ptr %.pr, null
  br i1 %cmp.i.i126, label %s5k5baf_hw_set_cis.exit.s5k5baf_hw_set_ccm.exit_crit_edge, label %if.end.i.i132

s5k5baf_hw_set_cis.exit.s5k5baf_hw_set_ccm.exit_crit_edge: ; preds = %s5k5baf_hw_set_cis.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_hw_set_ccm.exit

if.end.i.i132:                                    ; preds = %s5k5baf_hw_set_cis.exit
  %seq.i.i127 = getelementptr inbounds %struct.s5k5baf_fw, ptr %.pr, i32 0, i32 1
  %125 = ptrtoint ptr %.pr to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %.pr, align 2
  %conv.i.i128 = zext i16 %126 to i32
  %mul.i.i129 = shl nuw nsw i32 %conv.i.i128, 1
  %add.ptr.i.i130 = getelementptr i16, ptr %seq.i.i127, i32 %mul.i.i129
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %126)
  %cmp430.not.i.i131 = icmp eq i16 %126, 0
  br i1 %cmp430.not.i.i131, label %if.end.i.i132.s5k5baf_hw_set_ccm.exit_crit_edge, label %if.end.i.i132.for.body.i.i136_crit_edge

if.end.i.i132.for.body.i.i136_crit_edge:          ; preds = %if.end.i.i132
  br label %for.body.i.i136

if.end.i.i132.s5k5baf_hw_set_ccm.exit_crit_edge:  ; preds = %if.end.i.i132
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_hw_set_ccm.exit

for.body.i.i136:                                  ; preds = %for.inc.i.i139.for.body.i.i136_crit_edge, %if.end.i.i132.for.body.i.i136_crit_edge
  %i.031.i.i133 = phi i32 [ %inc.i.i137, %for.inc.i.i139.for.body.i.i136_crit_edge ], [ 0, %if.end.i.i132.for.body.i.i136_crit_edge ]
  %arrayidx7.i.i134 = getelementptr %struct.s5k5baf_fw, ptr %.pr, i32 0, i32 1, i32 %i.031.i.i133
  %127 = ptrtoint ptr %arrayidx7.i.i134 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %arrayidx7.i.i134, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %128)
  %cmp11.i.i135 = icmp eq i16 %128, 1
  br i1 %cmp11.i.i135, label %s5k5baf_fw_get_seq.exit.i144, label %for.inc.i.i139

for.inc.i.i139:                                   ; preds = %for.body.i.i136
  %inc.i.i137 = add nuw nsw i32 %i.031.i.i133, 1
  %exitcond.not.i.i138 = icmp eq i32 %inc.i.i137, %conv.i.i128
  br i1 %exitcond.not.i.i138, label %for.inc.i.i139.s5k5baf_hw_set_ccm.exit_crit_edge, label %for.inc.i.i139.for.body.i.i136_crit_edge

for.inc.i.i139.for.body.i.i136_crit_edge:         ; preds = %for.inc.i.i139
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i136

for.inc.i.i139.s5k5baf_hw_set_ccm.exit_crit_edge: ; preds = %for.inc.i.i139
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_hw_set_ccm.exit

s5k5baf_fw_get_seq.exit.i144:                     ; preds = %for.body.i.i136
  %offset.i.i140 = getelementptr %struct.s5k5baf_fw, ptr %.pr, i32 0, i32 1, i32 %i.031.i.i133, i32 1
  %129 = ptrtoint ptr %offset.i.i140 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %offset.i.i140, align 2
  %conv16.i.i141 = zext i16 %130 to i32
  %add.ptr17.i.i142 = getelementptr i16, ptr %add.ptr.i.i130, i32 %conv16.i.i141
  %tobool.not.i143 = icmp eq ptr %add.ptr17.i.i142, null
  br i1 %tobool.not.i143, label %s5k5baf_fw_get_seq.exit.i144.s5k5baf_hw_set_ccm.exit_crit_edge, label %if.then.i146

s5k5baf_fw_get_seq.exit.i144.s5k5baf_hw_set_ccm.exit_crit_edge: ; preds = %s5k5baf_fw_get_seq.exit.i144
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_hw_set_ccm.exit

if.then.i146:                                     ; preds = %s5k5baf_fw_get_seq.exit.i144
  %131 = ptrtoint ptr %add.ptr17.i.i142 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %add.ptr17.i.i142, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %132)
  %tobool.not8.i.i145 = icmp eq i16 %132, 0
  br i1 %tobool.not8.i.i145, label %if.then.i146.s5k5baf_hw_set_ccm.exit_crit_edge, label %if.then.i146.while.body.i.i155_crit_edge

if.then.i146.while.body.i.i155_crit_edge:         ; preds = %if.then.i146
  br label %while.body.i.i155

if.then.i146.s5k5baf_hw_set_ccm.exit_crit_edge:   ; preds = %if.then.i146
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_hw_set_ccm.exit

while.body.i.i155:                                ; preds = %while.body.i.i155.while.body.i.i155_crit_edge, %if.then.i146.while.body.i.i155_crit_edge
  %133 = phi i16 [ %137, %while.body.i.i155.while.body.i.i155_crit_edge ], [ %132, %if.then.i146.while.body.i.i155_crit_edge ]
  %nseq.addr.09.i.i147 = phi ptr [ %add.ptr.i4.i153, %while.body.i.i155.while.body.i.i155_crit_edge ], [ %add.ptr17.i.i142, %if.then.i146.while.body.i.i155_crit_edge ]
  %conv.i3.i148 = zext i16 %133 to i32
  %incdec.ptr.i.i149 = getelementptr i16, ptr %nseq.addr.09.i.i147, i32 1
  %incdec.ptr1.i.i150 = getelementptr i16, ptr %nseq.addr.09.i.i147, i32 2
  %134 = ptrtoint ptr %incdec.ptr.i.i149 to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %incdec.ptr.i.i149, align 2
  %dec.i.i151 = add nsw i32 %conv.i3.i148, -1
  %conv2.i.i152 = trunc i32 %dec.i.i151 to i16
  call fastcc void @s5k5baf_write_arr_seq(ptr noundef %retval.0.i, i16 noundef zeroext %135, i16 noundef zeroext %conv2.i.i152, ptr noundef %incdec.ptr1.i.i150) #10
  %add.ptr.i4.i153 = getelementptr i16, ptr %incdec.ptr1.i.i150, i32 %dec.i.i151
  %136 = ptrtoint ptr %add.ptr.i4.i153 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %add.ptr.i4.i153, align 2
  %tobool.not.i.i154 = icmp eq i16 %137, 0
  br i1 %tobool.not.i.i154, label %while.body.i.i155.s5k5baf_hw_set_ccm.exit_crit_edge, label %while.body.i.i155.while.body.i.i155_crit_edge

while.body.i.i155.while.body.i.i155_crit_edge:    ; preds = %while.body.i.i155
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i155

while.body.i.i155.s5k5baf_hw_set_ccm.exit_crit_edge: ; preds = %while.body.i.i155
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_hw_set_ccm.exit

s5k5baf_hw_set_ccm.exit:                          ; preds = %while.body.i.i155.s5k5baf_hw_set_ccm.exit_crit_edge, %if.then.i146.s5k5baf_hw_set_ccm.exit_crit_edge, %s5k5baf_fw_get_seq.exit.i144.s5k5baf_hw_set_ccm.exit_crit_edge, %for.inc.i.i139.s5k5baf_hw_set_ccm.exit_crit_edge, %if.end.i.i132.s5k5baf_hw_set_ccm.exit_crit_edge, %s5k5baf_hw_set_cis.exit.s5k5baf_hw_set_ccm.exit_crit_edge, %if.end14.s5k5baf_hw_set_ccm.exit_crit_edge
  %138 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %error.i, align 4
  store i32 0, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool16.not = icmp eq i32 %139, 0
  br i1 %tobool16.not, label %if.then17, label %s5k5baf_hw_set_ccm.exit.out.thread_crit_edge

s5k5baf_hw_set_ccm.exit.out.thread_crit_edge:     ; preds = %s5k5baf_hw_set_ccm.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

if.then17:                                        ; preds = %s5k5baf_hw_set_ccm.exit
  call void @__sanitizer_cov_trace_pc() #12
  %140 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %power, align 4
  %inc = add i32 %141, 1
  store i32 %inc, ptr %power, align 4
  br label %out

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @s5k5baf_power_off(ptr noundef %retval.0.i)
  %142 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %power, align 4
  %dec = add i32 %143, -1
  store i32 %dec, ptr %power, align 4
  br label %out.thread

out.thread:                                       ; preds = %if.else, %s5k5baf_hw_set_ccm.exit.out.thread_crit_edge, %s5k5baf_hw_set_clocks.exit.out.thread_crit_edge, %if.end6.out.thread_crit_edge
  %ret.0.ph = phi i32 [ 0, %if.else ], [ %139, %s5k5baf_hw_set_ccm.exit.out.thread_crit_edge ], [ %84, %s5k5baf_hw_set_clocks.exit.out.thread_crit_edge ], [ %call7, %if.end6.out.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #10
  br label %if.end28

out:                                              ; preds = %if.then17, %entry.out_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #10
  br i1 %tobool.not, label %out.if.end28_crit_edge, label %if.then26

out.if.end28_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then26:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %ctrls = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 20
  %call27 = call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrls) #10
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %out.if.end28_crit_edge, %out.thread
  %ret.1 = phi i32 [ 0, %out.if.end28_crit_edge ], [ %call27, %if.then26 ], [ %ret.0.ph, %out.thread ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s5k5baf_write_arr_seq(ptr nocapture noundef %state, i16 noundef zeroext %addr, i16 noundef zeroext %count, ptr noundef %seq) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca [4 x i8], align 1
  %buf = alloca [65 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 9, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %buf) #10
  %2 = getelementptr inbounds i8, ptr %buf, i32 2
  %3 = call ptr @memset(ptr %2, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #10
  %4 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 3
  %7 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %buf.i, align 1
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 42, ptr %4, align 1
  %conv5.i = zext i16 %addr to i32
  %9 = lshr i16 %addr, 8
  %conv7.i = trunc i16 %9 to i8
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv7.i, ptr %5, align 1
  %conv11.i = trunc i16 %addr to i8
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv11.i, ptr %6, align 1
  %error.i = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 12
  %12 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.end.i, label %s5k5baf_i2c_write.exit.thread

s5k5baf_i2c_write.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #10
  br label %cleanup44

if.end.i:                                         ; preds = %entry
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buf.i, i32 noundef 4, i16 noundef zeroext 0) #10
  %14 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.i = icmp sgt i32 %14, 2
  br i1 %cmp.i, label %do.end.i, label %if.end.i.do.end22.i_crit_edge

if.end.i.do.end22.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 2
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name.i, i32 noundef 42, i32 noundef %conv5.i) #13
  br label %do.end22.i

do.end22.i:                                       ; preds = %do.end.i, %if.end.i.do.end22.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i)
  %cmp23.not.i = icmp eq i32 %call.i.i, 4
  br i1 %cmp23.not.i, label %s5k5baf_i2c_write.exitthread-pre-split, label %do.end28.i

do.end28.i:                                       ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  %name30.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 2
  %call32.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name30.i, i32 noundef %call.i.i) #13
  %15 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call.i.i, ptr %error.i, align 4
  br label %s5k5baf_i2c_write.exit

s5k5baf_i2c_write.exitthread-pre-split:           ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %error.i, align 4
  br label %s5k5baf_i2c_write.exit

s5k5baf_i2c_write.exit:                           ; preds = %s5k5baf_i2c_write.exitthread-pre-split, %do.end28.i
  %17 = phi i32 [ %.pr, %s5k5baf_i2c_write.exitthread-pre-split ], [ %call.i.i, %do.end28.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %do.body, label %s5k5baf_i2c_write.exit.cleanup44_crit_edge

s5k5baf_i2c_write.exit.cleanup44_crit_edge:       ; preds = %s5k5baf_i2c_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup44

do.body:                                          ; preds = %s5k5baf_i2c_write.exit
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp = icmp sgt i32 %18, 2
  br i1 %cmp, label %do.end, label %do.body.do.end10_crit_edge

do.body.do.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 2
  %conv = zext i16 %count to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %count)
  %cmp5 = icmp ult i16 %count, 32
  %mul = shl nuw nsw i32 %conv, 1
  %cond = select i1 %cmp5, i32 %mul, i32 64
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name, i32 noundef %conv, i32 noundef %cond, ptr noundef %seq) #13
  br label %do.end10

do.end10:                                         ; preds = %do.end, %do.body.do.end10_crit_edge
  %19 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 3858, ptr %buf, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %count)
  %cmp12.not78 = icmp eq i16 %count, 0
  br i1 %cmp12.not78, label %do.end10.cleanup44_crit_edge, label %do.end10.while.body_crit_edge

do.end10.while.body_crit_edge:                    ; preds = %do.end10
  br label %while.body

do.end10.cleanup44_crit_edge:                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup44

while.cond:                                       ; preds = %for.end
  %conv41 = sub i16 %count.addr.080, %20
  %cmp12.not = icmp eq i16 %conv41, 0
  br i1 %cmp12.not, label %while.cond.cleanup44_crit_edge, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.cond.cleanup44_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup44

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %do.end10.while.body_crit_edge
  %count.addr.080 = phi i16 [ %conv41, %while.cond.while.body_crit_edge ], [ %count, %do.end10.while.body_crit_edge ]
  %seq.addr.079 = phi ptr [ %incdec.ptr, %while.cond.while.body_crit_edge ], [ %seq, %do.end10.while.body_crit_edge ]
  %20 = call i16 @llvm.umin.i16(i16 %count.addr.080, i16 64)
  %narrow = add nuw nsw i16 %20, 1
  %21 = zext i16 %narrow to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %while.body
  %i.076 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %while.body ]
  %seq.addr.175 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %seq.addr.079, %while.body ]
  %incdec.ptr = getelementptr i16, ptr %seq.addr.175, i32 1
  %22 = ptrtoint ptr %seq.addr.175 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %seq.addr.175, align 2
  %arrayidx24 = getelementptr [65 x i16], ptr %buf, i32 0, i32 %i.076
  %24 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %arrayidx24, align 2
  %inc = add nuw nsw i32 %i.076, 1
  %exitcond = icmp eq i32 %inc, %21
  br i1 %exitcond, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %mul25 = shl nuw nsw i32 %21, 1
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buf, i32 noundef %mul25, i16 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %mul25)
  %cmp28.not = icmp eq i32 %call.i, %mul25
  br i1 %cmp28.not, label %while.cond, label %cleanup.thread

cleanup.thread:                                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %name35 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 2
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %name35, i32 noundef %call.i) #13
  %25 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call.i, ptr %error.i, align 4
  br label %cleanup44

cleanup44:                                        ; preds = %cleanup.thread, %while.cond.cleanup44_crit_edge, %do.end10.cleanup44_crit_edge, %s5k5baf_i2c_write.exit.cleanup44_crit_edge, %s5k5baf_i2c_write.exit.thread
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %buf) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @s5k5baf_read(ptr nocapture noundef %state, i16 noundef zeroext %addr) unnamed_addr #2 align 64 {
entry:
  %w.i = alloca i16, align 2
  %r.i = alloca i16, align 2
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #10
  %0 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 3
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %buf.i, align 1
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 46, ptr %0, align 1
  %conv5.i = zext i16 %addr to i32
  %5 = lshr i16 %addr, 8
  %conv7.i = trunc i16 %5 to i8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv7.i, ptr %1, align 1
  %conv11.i = trunc i16 %addr to i8
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv11.i, ptr %2, align 1
  %dev_priv.i.i = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 9, i32 11
  %8 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_priv.i.i, align 4
  %error.i = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 12
  %10 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.s5k5baf_i2c_write.exit_crit_edge

entry.s5k5baf_i2c_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_i2c_write.exit

if.end.i:                                         ; preds = %entry
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %9, ptr noundef nonnull %buf.i, i32 noundef 4, i16 noundef zeroext 0) #10
  %12 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp.i = icmp sgt i32 %12, 2
  br i1 %cmp.i, label %do.end.i, label %if.end.i.do.end22.i_crit_edge

if.end.i.do.end22.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 2
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name.i, i32 noundef 46, i32 noundef %conv5.i) #13
  br label %do.end22.i

do.end22.i:                                       ; preds = %do.end.i, %if.end.i.do.end22.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i)
  %cmp23.not.i = icmp eq i32 %call.i.i, 4
  br i1 %cmp23.not.i, label %do.end22.i.s5k5baf_i2c_write.exit_crit_edge, label %do.end28.i

do.end22.i.s5k5baf_i2c_write.exit_crit_edge:      ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_i2c_write.exit

do.end28.i:                                       ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  %name30.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 2
  %call32.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name30.i, i32 noundef %call.i.i) #13
  %13 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call.i.i, ptr %error.i, align 4
  br label %s5k5baf_i2c_write.exit

s5k5baf_i2c_write.exit:                           ; preds = %do.end28.i, %do.end22.i.s5k5baf_i2c_write.exit_crit_edge, %entry.s5k5baf_i2c_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #10
  %14 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w.i) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %r.i) #10
  %16 = ptrtoint ptr %r.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %r.i, align 2, !annotation !292
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #10
  %17 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %18 = call ptr @memset(ptr %17, i32 255, i32 16)
  %addr2.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 1
  %19 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %addr2.i, align 2
  %21 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %flags.i, align 2
  %23 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 2, ptr %17, align 4
  %buf.i3 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %24 = ptrtoint ptr %buf.i3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %w.i, ptr %buf.i3, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %25 = load i16, ptr %addr2.i, align 2
  %26 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %27 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %28 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 2, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %29 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %r.i, ptr %buf7.i, align 4
  %30 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i5 = icmp eq i32 %31, 0
  br i1 %tobool.not.i5, label %if.end.i7, label %s5k5baf_i2c_write.exit.s5k5baf_i2c_read.exit_crit_edge

s5k5baf_i2c_write.exit.s5k5baf_i2c_read.exit_crit_edge: ; preds = %s5k5baf_i2c_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_i2c_read.exit

if.end.i7:                                        ; preds = %s5k5baf_i2c_write.exit
  %32 = ptrtoint ptr %w.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 3858, ptr %w.i, align 2
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 3
  %33 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adapter.i, align 8
  %call8.i = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %msg.i, i32 noundef 2) #10
  %35 = ptrtoint ptr %r.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %r.i, align 2
  %37 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp.i6 = icmp sgt i32 %37, 2
  br i1 %cmp.i6, label %do.end.i9, label %if.end.i7.do.end16.i_crit_edge

if.end.i7.do.end16.i_crit_edge:                   ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end16.i

do.end.i9:                                        ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #12
  %name.i8 = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 2
  %conv12.i = zext i16 %36 to i32
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %name.i8, i32 noundef 3858, i32 noundef %conv12.i) #13
  br label %do.end16.i

do.end16.i:                                       ; preds = %do.end.i9, %if.end.i7.do.end16.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call8.i)
  %cmp17.not.i = icmp eq i32 %call8.i, 2
  br i1 %cmp17.not.i, label %do.end16.i.s5k5baf_i2c_read.exit_crit_edge, label %do.end22.i10

do.end16.i.s5k5baf_i2c_read.exit_crit_edge:       ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_i2c_read.exit

do.end22.i10:                                     ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %name24.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 2
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %name24.i, i32 noundef %call8.i) #13
  %38 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call8.i, ptr %error.i, align 4
  br label %s5k5baf_i2c_read.exit

s5k5baf_i2c_read.exit:                            ; preds = %do.end22.i10, %do.end16.i.s5k5baf_i2c_read.exit_crit_edge, %s5k5baf_i2c_write.exit.s5k5baf_i2c_read.exit_crit_edge
  %retval.0.i = phi i16 [ 0, %s5k5baf_i2c_write.exit.s5k5baf_i2c_read.exit_crit_edge ], [ %36, %do.end22.i10 ], [ %36, %do.end16.i.s5k5baf_i2c_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %r.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w.i) #10
  ret i16 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s5k5baf_write(ptr nocapture noundef %state, i16 noundef zeroext %addr, i16 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  %buf.i2 = alloca [4 x i8], align 1
  %buf.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #10
  %0 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 3
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %buf.i, align 1
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 42, ptr %0, align 1
  %conv5.i = zext i16 %addr to i32
  %5 = lshr i16 %addr, 8
  %conv7.i = trunc i16 %5 to i8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv7.i, ptr %1, align 1
  %conv11.i = trunc i16 %addr to i8
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv11.i, ptr %2, align 1
  %dev_priv.i.i = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 9, i32 11
  %8 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_priv.i.i, align 4
  %error.i = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 12
  %10 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.s5k5baf_i2c_write.exit_crit_edge

entry.s5k5baf_i2c_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_i2c_write.exit

if.end.i:                                         ; preds = %entry
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %9, ptr noundef nonnull %buf.i, i32 noundef 4, i16 noundef zeroext 0) #10
  %12 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp.i = icmp sgt i32 %12, 2
  br i1 %cmp.i, label %do.end.i, label %if.end.i.do.end22.i_crit_edge

if.end.i.do.end22.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 2
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name.i, i32 noundef 42, i32 noundef %conv5.i) #13
  br label %do.end22.i

do.end22.i:                                       ; preds = %do.end.i, %if.end.i.do.end22.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i)
  %cmp23.not.i = icmp eq i32 %call.i.i, 4
  br i1 %cmp23.not.i, label %do.end22.i.s5k5baf_i2c_write.exit_crit_edge, label %do.end28.i

do.end22.i.s5k5baf_i2c_write.exit_crit_edge:      ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_i2c_write.exit

do.end28.i:                                       ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  %name30.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 2
  %call32.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name30.i, i32 noundef %call.i.i) #13
  %13 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call.i.i, ptr %error.i, align 4
  br label %s5k5baf_i2c_write.exit

s5k5baf_i2c_write.exit:                           ; preds = %do.end28.i, %do.end22.i.s5k5baf_i2c_write.exit_crit_edge, %entry.s5k5baf_i2c_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i2) #10
  %14 = getelementptr inbounds [4 x i8], ptr %buf.i2, i32 0, i32 1
  %15 = getelementptr inbounds [4 x i8], ptr %buf.i2, i32 0, i32 2
  %16 = getelementptr inbounds [4 x i8], ptr %buf.i2, i32 0, i32 3
  %17 = ptrtoint ptr %buf.i2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 15, ptr %buf.i2, align 1
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 18, ptr %14, align 1
  %conv5.i3 = zext i16 %val to i32
  %19 = lshr i16 %val, 8
  %conv7.i4 = trunc i16 %19 to i8
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv7.i4, ptr %15, align 1
  %conv11.i5 = trunc i16 %val to i8
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv11.i5, ptr %16, align 1
  %22 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_priv.i.i, align 4
  %24 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i8 = icmp eq i32 %25, 0
  br i1 %tobool.not.i8, label %if.end.i11, label %s5k5baf_i2c_write.exit.s5k5baf_i2c_write.exit20_crit_edge

s5k5baf_i2c_write.exit.s5k5baf_i2c_write.exit20_crit_edge: ; preds = %s5k5baf_i2c_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_i2c_write.exit20

if.end.i11:                                       ; preds = %s5k5baf_i2c_write.exit
  %call.i.i9 = call i32 @i2c_transfer_buffer_flags(ptr noundef %23, ptr noundef nonnull %buf.i2, i32 noundef 4, i16 noundef zeroext 0) #10
  %26 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp.i10 = icmp sgt i32 %26, 2
  br i1 %cmp.i10, label %do.end.i14, label %if.end.i11.do.end22.i16_crit_edge

if.end.i11.do.end22.i16_crit_edge:                ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22.i16

do.end.i14:                                       ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #12
  %name.i12 = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 2
  %call19.i13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name.i12, i32 noundef 3858, i32 noundef %conv5.i3) #13
  br label %do.end22.i16

do.end22.i16:                                     ; preds = %do.end.i14, %if.end.i11.do.end22.i16_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i9)
  %cmp23.not.i15 = icmp eq i32 %call.i.i9, 4
  br i1 %cmp23.not.i15, label %do.end22.i16.s5k5baf_i2c_write.exit20_crit_edge, label %do.end28.i19

do.end22.i16.s5k5baf_i2c_write.exit20_crit_edge:  ; preds = %do.end22.i16
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_i2c_write.exit20

do.end28.i19:                                     ; preds = %do.end22.i16
  call void @__sanitizer_cov_trace_pc() #12
  %name30.i17 = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 2
  %call32.i18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name30.i17, i32 noundef %call.i.i9) #13
  %27 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call.i.i9, ptr %error.i, align 4
  br label %s5k5baf_i2c_write.exit20

s5k5baf_i2c_write.exit20:                         ; preds = %do.end28.i19, %do.end22.i16.s5k5baf_i2c_write.exit20_crit_edge, %s5k5baf_i2c_write.exit.s5k5baf_i2c_write.exit20_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k5baf_s_stream(ptr noundef %sd, i32 noundef %on) #2 align 64 {
entry:
  %.compoundliteral.i38 = alloca [2 x i16], align 2
  %buf.i = alloca [4 x i8], align 1
  %.compoundliteral.i36 = alloca [2 x i16], align 2
  %.compoundliteral.i = alloca [11 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %function.i.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 3
  %0 = ptrtoint ptr %function.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %function.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131073, i32 %1)
  %cmp.i.i = icmp eq i32 %1, 131073
  %retval.0.v.i = select i1 %cmp.i.i, i32 -72, i32 -300
  %retval.0.i = getelementptr i8, ptr %sd, i32 %retval.0.v.i
  %lock = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %streaming = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 21
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %streaming, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool = icmp ne i32 %on, 0
  %3 = zext i1 %tobool to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.lshr, i8 %3)
  %cmp = icmp eq i8 %bf.lshr, %3
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  br i1 %tobool, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %.compoundliteral.i)
  %pixfmt.i = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 16
  %4 = ptrtoint ptr %pixfmt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixfmt.i, align 4
  %reg_p_fmt.i = getelementptr [3 x %struct.s5k5baf_pixfmt], ptr @s5k5baf_formats, i32 0, i32 %5, i32 2
  %6 = ptrtoint ptr %reg_p_fmt.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %reg_p_fmt.i, align 4
  %width.i = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 15, i32 2
  %8 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width.i, align 4
  %conv.i = trunc i32 %9 to i16
  %10 = ptrtoint ptr %.compoundliteral.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %.compoundliteral.i, align 2
  %arrayinit.element.i = getelementptr inbounds i16, ptr %.compoundliteral.i, i32 1
  %height.i = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 15, i32 3
  %11 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height.i, align 4
  %conv1.i = trunc i32 %12 to i16
  %13 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv1.i, ptr %arrayinit.element.i, align 2
  %arrayinit.element2.i = getelementptr inbounds i16, ptr %.compoundliteral.i, i32 2
  %14 = ptrtoint ptr %arrayinit.element2.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %7, ptr %arrayinit.element2.i, align 2
  %arrayinit.element3.i = getelementptr inbounds i16, ptr %.compoundliteral.i, i32 3
  %15 = ptrtoint ptr %arrayinit.element3.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 12000, ptr %arrayinit.element3.i, align 2
  %arrayinit.element4.i = getelementptr inbounds i16, ptr %.compoundliteral.i, i32 4
  %16 = ptrtoint ptr %arrayinit.element4.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1500, ptr %arrayinit.element4.i, align 2
  %arrayinit.element5.i = getelementptr inbounds i16, ptr %.compoundliteral.i, i32 5
  %17 = ptrtoint ptr %arrayinit.element5.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 82, ptr %arrayinit.element5.i, align 2
  %arrayinit.element6.i = getelementptr inbounds i16, ptr %.compoundliteral.i, i32 6
  %18 = ptrtoint ptr %arrayinit.element6.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %arrayinit.element6.i, align 2
  %arrayinit.element7.i = getelementptr inbounds i16, ptr %.compoundliteral.i, i32 7
  %19 = ptrtoint ptr %arrayinit.element7.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %arrayinit.element7.i, align 2
  %arrayinit.element8.i = getelementptr inbounds i16, ptr %.compoundliteral.i, i32 8
  %20 = ptrtoint ptr %arrayinit.element8.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %arrayinit.element8.i, align 2
  %arrayinit.element9.i = getelementptr inbounds i16, ptr %.compoundliteral.i, i32 9
  %req_fiv.i = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 18
  %21 = ptrtoint ptr %req_fiv.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %req_fiv.i, align 2
  %23 = ptrtoint ptr %arrayinit.element9.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %arrayinit.element9.i, align 2
  %arrayinit.element10.i = getelementptr inbounds i16, ptr %.compoundliteral.i, i32 10
  %24 = ptrtoint ptr %arrayinit.element10.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 333, ptr %arrayinit.element10.i, align 2
  call fastcc void @s5k5baf_write_arr_seq(ptr noundef %retval.0.i, i16 noundef zeroext 578, i16 noundef zeroext 11, ptr noundef nonnull %.compoundliteral.i) #10
  call fastcc void @s5k5baf_hw_sync_cfg(ptr noundef %retval.0.i) #10
  call fastcc void @s5k5baf_hw_validate_cfg(ptr noundef %retval.0.i) #10
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %.compoundliteral.i)
  %call4 = call fastcc i32 @s5k5baf_hw_set_crop_rects(ptr noundef %retval.0.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then3.out_crit_edge, label %if.end7

if.then3.out_crit_edge:                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end7:                                          ; preds = %if.then3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %.compoundliteral.i36)
  %25 = ptrtoint ptr %.compoundliteral.i36 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 1, ptr %.compoundliteral.i36, align 2
  %arrayinit.element.i37 = getelementptr inbounds i16, ptr %.compoundliteral.i36, i32 1
  %26 = ptrtoint ptr %arrayinit.element.i37 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1, ptr %arrayinit.element.i37, align 2
  call fastcc void @s5k5baf_write_arr_seq(ptr noundef %retval.0.i, i16 noundef zeroext 496, i16 noundef zeroext 2, ptr noundef nonnull %.compoundliteral.i36) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %.compoundliteral.i36)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #10
  %27 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 1
  %28 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 2
  %29 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 3
  %30 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -80, ptr %buf.i, align 1
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -52, ptr %27, align 1
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %28, align 1
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 11, ptr %29, align 1
  %dev_priv.i.i = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 9, i32 11
  %34 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_priv.i.i, align 4
  %error.i = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 12
  %36 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end7.s5k5baf_i2c_write.exit_crit_edge

if.end7.s5k5baf_i2c_write.exit_crit_edge:         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_i2c_write.exit

if.end.i:                                         ; preds = %if.end7
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %35, ptr noundef nonnull %buf.i, i32 noundef 4, i16 noundef zeroext 0) #10
  %38 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %cmp.i = icmp sgt i32 %38, 2
  br i1 %cmp.i, label %do.end.i, label %if.end.i.do.end22.i_crit_edge

if.end.i.do.end22.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 2
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name.i, i32 noundef 45260, i32 noundef 11) #13
  br label %do.end22.i

do.end22.i:                                       ; preds = %do.end.i, %if.end.i.do.end22.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i)
  %cmp23.not.i = icmp eq i32 %call.i.i, 4
  br i1 %cmp23.not.i, label %do.end22.i.s5k5baf_i2c_write.exit_crit_edge, label %do.end28.i

do.end22.i.s5k5baf_i2c_write.exit_crit_edge:      ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_i2c_write.exit

do.end28.i:                                       ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  %name30.i = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 2
  %call32.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name30.i, i32 noundef %call.i.i) #13
  %39 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call.i.i, ptr %error.i, align 4
  br label %s5k5baf_i2c_write.exit

s5k5baf_i2c_write.exit:                           ; preds = %do.end28.i, %do.end22.i.s5k5baf_i2c_write.exit_crit_edge, %if.end7.s5k5baf_i2c_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #10
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %.compoundliteral.i38)
  %40 = ptrtoint ptr %.compoundliteral.i38 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %.compoundliteral.i38, align 2
  %arrayinit.element.i39 = getelementptr inbounds i16, ptr %.compoundliteral.i38, i32 1
  %41 = ptrtoint ptr %arrayinit.element.i39 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %arrayinit.element.i39, align 2
  call fastcc void @s5k5baf_write_arr_seq(ptr noundef %retval.0.i, i16 noundef zeroext 496, i16 noundef zeroext 2, ptr noundef nonnull %.compoundliteral.i38) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %.compoundliteral.i38)
  br label %if.end8

if.end8:                                          ; preds = %if.else, %s5k5baf_i2c_write.exit
  %error.i40 = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 12
  %42 = ptrtoint ptr %error.i40 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %error.i40, align 4
  store i32 0, ptr %error.i40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool10.not = icmp eq i32 %43, 0
  br i1 %tobool10.not, label %if.then11, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load13 = load i8, ptr %streaming, align 4
  %bf.set = xor i8 %bf.load13, -128
  store i8 %bf.set, ptr %streaming, align 4
  br label %out

out:                                              ; preds = %if.then11, %if.end8.out_crit_edge, %if.then3.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call4, %if.then3.out_crit_edge ], [ %43, %if.end8.out_crit_edge ], [ 0, %if.then11 ], [ 0, %entry.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k5baf_g_frame_interval(ptr noundef %sd, ptr nocapture noundef writeonly %fi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %function.i.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 3
  %0 = ptrtoint ptr %function.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %function.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131073, i32 %1)
  %cmp.i.i = icmp eq i32 %1, 131073
  %retval.0.v.i = select i1 %cmp.i.i, i32 -72, i32 -300
  %retval.0.i = getelementptr i8, ptr %sd, i32 %retval.0.v.i
  %lock = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %fiv = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 17
  %2 = ptrtoint ptr %fiv to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %fiv, align 4
  %conv = zext i16 %3 to i32
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1
  %4 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %interval, align 4
  %denominator = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 10000, ptr %denominator, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k5baf_s_frame_interval(ptr noundef %sd, ptr nocapture noundef %fi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %function.i.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 3
  %0 = ptrtoint ptr %function.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %function.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131073, i32 %1)
  %cmp.i.i = icmp eq i32 %1, 131073
  %retval.0.v.i = select i1 %cmp.i.i, i32 -72, i32 -300
  %retval.0.i = getelementptr i8, ptr %sd, i32 %retval.0.v.i
  %lock = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %interval.i = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1
  %denominator.i = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %denominator.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %denominator.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %entry.if.end.i_crit_edge, label %if.else.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %interval.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %interval.i, align 4
  %mul.i = mul i32 %5, 10000
  %div.i = udiv i32 %mul.i, %3
  %6 = tail call i32 @llvm.umax.i32(i32 %div.i, i32 333) #10
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 6500) #10
  %conv.i = trunc i32 %7 to i16
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %entry.if.end.i_crit_edge
  %conv.sink.i = phi i16 [ %conv.i, %if.else.i ], [ 6500, %entry.if.end.i_crit_edge ]
  %8 = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 18
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.sink.i, ptr %8, align 2
  %fiv.i = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 17
  %10 = ptrtoint ptr %fiv.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.sink.i, ptr %fiv.i, align 4
  %apply_cfg.i = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 21
  %11 = ptrtoint ptr %apply_cfg.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i = load i8, ptr %apply_cfg.i, align 4
  %12 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.end.i.if.end14.i_crit_edge, label %if.then12.i

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @s5k5baf_write(ptr noundef %retval.0.i, i16 noundef zeroext 596, i16 noundef zeroext %conv.sink.i) #10
  tail call fastcc void @s5k5baf_hw_sync_cfg(ptr noundef %retval.0.i) #10
  tail call fastcc void @s5k5baf_hw_validate_cfg(ptr noundef %retval.0.i) #10
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %if.end.i.if.end14.i_crit_edge
  %13 = ptrtoint ptr %fiv.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %fiv.i, align 4
  %conv17.i = zext i16 %14 to i32
  %15 = ptrtoint ptr %interval.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv17.i, ptr %interval.i, align 4
  %16 = ptrtoint ptr %denominator.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 10000, ptr %denominator.i, align 4
  %17 = load i16, ptr %fiv.i, align 4
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %8, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %19)
  %cmp23.i = icmp eq i16 %17, %19
  br i1 %cmp23.i, label %do.end.i, label %if.end14.i.s5k5baf_set_frame_interval.exit_crit_edge

if.end14.i.s5k5baf_set_frame_interval.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_set_frame_interval.exit

do.end.i:                                         ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv20.i = zext i16 %17 to i32
  %name.i = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 9, i32 9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name.i, i32 noundef %conv20.i) #13
  br label %s5k5baf_set_frame_interval.exit

s5k5baf_set_frame_interval.exit:                  ; preds = %do.end.i, %if.end14.i.s5k5baf_set_frame_interval.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s5k5baf_hw_set_crop_rects(ptr noundef %state) unnamed_addr #2 align 64 {
entry:
  %.compoundliteral = alloca [4 x i16], align 2
  %.compoundliteral7 = alloca [4 x i16], align 2
  %.compoundliteral48 = alloca [2 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %crop_sink = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 13
  %width = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 13, i32 2
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width, align 4
  %conv = trunc i32 %1 to i16
  %2 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %.compoundliteral, align 2
  %arrayinit.element = getelementptr inbounds i16, ptr %.compoundliteral, i32 1
  %height = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 13, i32 3
  %3 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %height, align 4
  %conv1 = trunc i32 %4 to i16
  %5 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv1, ptr %arrayinit.element, align 2
  %arrayinit.element2 = getelementptr inbounds i16, ptr %.compoundliteral, i32 2
  %6 = ptrtoint ptr %crop_sink to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %crop_sink, align 4
  %conv3 = trunc i32 %7 to i16
  %8 = ptrtoint ptr %arrayinit.element2 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv3, ptr %arrayinit.element2, align 2
  %arrayinit.element4 = getelementptr inbounds i16, ptr %.compoundliteral, i32 3
  %top = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 13, i32 1
  %9 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %top, align 4
  %conv5 = trunc i32 %10 to i16
  %11 = ptrtoint ptr %arrayinit.element4 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv5, ptr %arrayinit.element4, align 2
  call fastcc void @s5k5baf_write_arr_seq(ptr noundef %state, i16 noundef zeroext 506, i16 noundef zeroext 4, ptr noundef nonnull %.compoundliteral)
  %crop_source = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 15
  %12 = ptrtoint ptr %crop_source to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %crop_source, align 4
  %14 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width, align 4
  %mul.i = mul i32 %15, %13
  %width1.i = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 14, i32 2
  %16 = ptrtoint ptr %width1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %width1.i, align 4
  %div.i = udiv i32 %mul.i, %17
  %top.i = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 15, i32 1
  %18 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %top.i, align 4
  %20 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height, align 4
  %mul3.i = mul i32 %21, %19
  %height4.i = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 14, i32 3
  %22 = ptrtoint ptr %height4.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height4.i, align 4
  %div5.i = udiv i32 %mul3.i, %23
  %width7.i = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 15, i32 2
  %24 = ptrtoint ptr %width7.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %width7.i, align 4
  %mul9.i = mul i32 %25, %15
  %div11.i = udiv i32 %mul9.i, %17
  %height13.i = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 15, i32 3
  %26 = ptrtoint ptr %height13.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %height13.i, align 4
  %mul15.i = mul i32 %27, %21
  %div17.i = udiv i32 %mul15.i, %23
  %conv10 = trunc i32 %div11.i to i16
  %28 = ptrtoint ptr %.compoundliteral7 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv10, ptr %.compoundliteral7, align 2
  %arrayinit.element11 = getelementptr inbounds i16, ptr %.compoundliteral7, i32 1
  %conv13 = trunc i32 %div17.i to i16
  %29 = ptrtoint ptr %arrayinit.element11 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv13, ptr %arrayinit.element11, align 2
  %arrayinit.element14 = getelementptr inbounds i16, ptr %.compoundliteral7, i32 2
  %conv16 = trunc i32 %div.i to i16
  %30 = ptrtoint ptr %arrayinit.element14 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv16, ptr %arrayinit.element14, align 2
  %arrayinit.element17 = getelementptr inbounds i16, ptr %.compoundliteral7, i32 3
  %conv19 = trunc i32 %div5.i to i16
  %31 = ptrtoint ptr %arrayinit.element17 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv19, ptr %arrayinit.element17, align 2
  call fastcc void @s5k5baf_write_arr_seq(ptr noundef %state, i16 noundef zeroext 522, i16 noundef zeroext 4, ptr noundef nonnull %.compoundliteral7)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  call fastcc void @s5k5baf_write(ptr noundef %state, i16 noundef zeroext 538, i16 noundef zeroext 1) #10
  %error.i = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 12
  %.neg121 = sub i32 -50, %32
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %entry
  %call1.i = call fastcc zeroext i16 @s5k5baf_read(ptr noundef %state, i16 noundef zeroext 538) #10
  %33 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i = icmp ne i32 %34, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call1.i)
  %tobool2.not.i = icmp eq i16 %call1.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i, label %do.body.i.s5k5baf_synchronize.exit_crit_edge, label %if.end.i

do.body.i.s5k5baf_synchronize.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_synchronize.exit

if.end.i:                                         ; preds = %do.body.i
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %.neg121, %35
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end.i.do.body.i_crit_edge, label %do.end5.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 9, i32 9
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %name.i, i32 noundef 538) #13
  %36 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -110, ptr %error.i, align 4
  br label %s5k5baf_synchronize.exit

s5k5baf_synchronize.exit:                         ; preds = %do.end5.i, %do.body.i.s5k5baf_synchronize.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  call fastcc void @s5k5baf_write(ptr noundef %state, i16 noundef zeroext 554, i16 noundef zeroext 1) #10
  %.neg123 = sub i32 -50, %37
  br label %do.body.i102

do.body.i102:                                     ; preds = %if.end.i105.do.body.i102_crit_edge, %s5k5baf_synchronize.exit
  %call1.i98 = call fastcc zeroext i16 @s5k5baf_read(ptr noundef %state, i16 noundef zeroext 554) #10
  %38 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i99 = icmp ne i32 %39, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call1.i98)
  %tobool2.not.i100 = icmp eq i16 %call1.i98, 0
  %or.cond.i101 = select i1 %tobool.not.i99, i1 true, i1 %tobool2.not.i100
  br i1 %or.cond.i101, label %do.body.i102.s5k5baf_synchronize.exit109_crit_edge, label %if.end.i105

do.body.i102.s5k5baf_synchronize.exit109_crit_edge: ; preds = %do.body.i102
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_synchronize.exit109

if.end.i105:                                      ; preds = %do.body.i102
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %sub.i103 = add i32 %.neg123, %40
  %cmp.i104 = icmp slt i32 %sub.i103, 0
  br i1 %cmp.i104, label %if.end.i105.do.body.i102_crit_edge, label %do.end5.i108

if.end.i105.do.body.i102_crit_edge:               ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i102

do.end5.i108:                                     ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #12
  %name.i106 = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 9, i32 9
  %call6.i107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %name.i106, i32 noundef 554) #13
  %41 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -110, ptr %error.i, align 4
  br label %s5k5baf_synchronize.exit109

s5k5baf_synchronize.exit109:                      ; preds = %do.end5.i108, %do.body.i102.s5k5baf_synchronize.exit109_crit_edge
  %call.i = call fastcc zeroext i16 @s5k5baf_read(ptr noundef %state, i16 noundef zeroext 546) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i)
  %tobool.not.i110 = icmp eq i16 %call.i, 0
  br i1 %tobool.not.i110, label %s5k5baf_synchronize.exit109.s5k5baf_get_cfg_error.exit_crit_edge, label %if.then.i

s5k5baf_synchronize.exit109.s5k5baf_get_cfg_error.exit_crit_edge: ; preds = %s5k5baf_synchronize.exit109
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_get_cfg_error.exit

if.then.i:                                        ; preds = %s5k5baf_synchronize.exit109
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @s5k5baf_write(ptr noundef %state, i16 noundef zeroext 546, i16 noundef zeroext 0) #10
  br label %s5k5baf_get_cfg_error.exit

s5k5baf_get_cfg_error.exit:                       ; preds = %if.then.i, %s5k5baf_synchronize.exit109.s5k5baf_get_cfg_error.exit_crit_edge
  %42 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %error.i, align 4
  store i32 0, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp = icmp slt i32 %43, 0
  br i1 %cmp, label %s5k5baf_get_cfg_error.exit.cleanup_crit_edge, label %if.end

s5k5baf_get_cfg_error.exit.cleanup_crit_edge:     ; preds = %s5k5baf_get_cfg_error.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %s5k5baf_get_cfg_error.exit
  %44 = zext i16 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.120)
  switch i16 %call.i, label %do.end37 [
    i16 0, label %if.end.sw.epilog_crit_edge
    i16 11, label %sw.bb
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call fastcc void @s5k5baf_write(ptr noundef %state, i16 noundef zeroext 596, i16 noundef zeroext 6500) #10
  call fastcc void @s5k5baf_hw_sync_cfg(ptr noundef %state) #10
  %call.i113 = call fastcc zeroext i16 @s5k5baf_read(ptr noundef %state, i16 noundef zeroext 546) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i113)
  %tobool.not.i114 = icmp eq i16 %call.i113, 0
  br i1 %tobool.not.i114, label %s5k5baf_get_cfg_error.exit117, label %s5k5baf_get_cfg_error.exit117.thread

s5k5baf_get_cfg_error.exit117:                    ; preds = %sw.bb
  %45 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %error.i, align 4
  store i32 0, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp26 = icmp slt i32 %46, 0
  br i1 %cmp26, label %s5k5baf_get_cfg_error.exit117.cleanup_crit_edge, label %s5k5baf_get_cfg_error.exit117.if.end34_crit_edge

s5k5baf_get_cfg_error.exit117.if.end34_crit_edge: ; preds = %s5k5baf_get_cfg_error.exit117
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

s5k5baf_get_cfg_error.exit117.cleanup_crit_edge:  ; preds = %s5k5baf_get_cfg_error.exit117
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

s5k5baf_get_cfg_error.exit117.thread:             ; preds = %sw.bb
  call fastcc void @s5k5baf_write(ptr noundef %state, i16 noundef zeroext 546, i16 noundef zeroext 0) #10
  %47 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %error.i, align 4
  store i32 0, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp26120 = icmp slt i32 %48, 0
  br i1 %cmp26120, label %s5k5baf_get_cfg_error.exit117.thread.cleanup_crit_edge, label %do.end

s5k5baf_get_cfg_error.exit117.thread.cleanup_crit_edge: ; preds = %s5k5baf_get_cfg_error.exit117.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %s5k5baf_get_cfg_error.exit117.thread
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 9, i32 9
  %conv32 = zext i16 %call.i113 to i32
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %name, i32 noundef %conv32) #13
  %49 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -22, ptr %error.i, align 4
  br label %if.end34

if.end34:                                         ; preds = %do.end, %s5k5baf_get_cfg_error.exit117.if.end34_crit_edge
  %req_fiv = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 18
  %50 = ptrtoint ptr %req_fiv to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %req_fiv, align 2
  call fastcc void @s5k5baf_write(ptr noundef %state, i16 noundef zeroext 596, i16 noundef zeroext %51) #10
  call fastcc void @s5k5baf_hw_sync_cfg(ptr noundef %state) #10
  call fastcc void @s5k5baf_hw_validate_cfg(ptr noundef %state)
  br label %sw.epilog

do.end37:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv23 = zext i16 %call.i to i32
  %name40 = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 9, i32 9
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef %name40, i32 noundef %conv23) #13
  br label %cleanup

sw.epilog:                                        ; preds = %if.end34, %if.end.sw.epilog_crit_edge
  %apply_cfg = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 21
  %52 = ptrtoint ptr %apply_cfg to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load = load i8, ptr %apply_cfg, align 4
  %53 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool44.not = icmp eq i8 %53, 0
  br i1 %tobool44.not, label %sw.epilog.cleanup_crit_edge, label %if.end46

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end46:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %width7.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %width7.i, align 4
  %conv51 = trunc i32 %55 to i16
  %56 = ptrtoint ptr %.compoundliteral48 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv51, ptr %.compoundliteral48, align 2
  %arrayinit.element52 = getelementptr inbounds i16, ptr %.compoundliteral48, i32 1
  %57 = ptrtoint ptr %height13.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %height13.i, align 4
  %conv54 = trunc i32 %58 to i16
  %59 = ptrtoint ptr %arrayinit.element52 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv54, ptr %arrayinit.element52, align 2
  call fastcc void @s5k5baf_write_arr_seq(ptr noundef %state, i16 noundef zeroext 578, i16 noundef zeroext 2, ptr noundef nonnull %.compoundliteral48)
  %req_fiv56 = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 18
  %60 = ptrtoint ptr %req_fiv56 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %req_fiv56, align 2
  call fastcc void @s5k5baf_write(ptr noundef %state, i16 noundef zeroext 596, i16 noundef zeroext %61) #10
  call fastcc void @s5k5baf_hw_sync_cfg(ptr noundef %state) #10
  call fastcc void @s5k5baf_hw_validate_cfg(ptr noundef %state)
  %62 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %error.i, align 4
  store i32 0, ptr %error.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %sw.epilog.cleanup_crit_edge, %do.end37, %s5k5baf_get_cfg_error.exit117.thread.cleanup_crit_edge, %s5k5baf_get_cfg_error.exit117.cleanup_crit_edge, %s5k5baf_get_cfg_error.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end37 ], [ %63, %if.end46 ], [ %43, %s5k5baf_get_cfg_error.exit.cleanup_crit_edge ], [ %46, %s5k5baf_get_cfg_error.exit117.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ %48, %s5k5baf_get_cfg_error.exit117.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s5k5baf_hw_sync_cfg(ptr noundef %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @s5k5baf_write(ptr noundef %state, i16 noundef zeroext 542, i16 noundef zeroext 1)
  %apply_crop = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 21
  %0 = ptrtoint ptr %apply_crop to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %apply_crop, align 4
  %1 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @s5k5baf_write(ptr noundef %state, i16 noundef zeroext 538, i16 noundef zeroext 1)
  tail call fastcc void @s5k5baf_write(ptr noundef %state, i16 noundef zeroext 554, i16 noundef zeroext 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  tail call fastcc void @s5k5baf_write(ptr noundef %state, i16 noundef zeroext 504, i16 noundef zeroext 1) #10
  %error.i = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 12
  %.neg5 = sub i32 -50, %2
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.end
  %call1.i = tail call fastcc zeroext i16 @s5k5baf_read(ptr noundef %state, i16 noundef zeroext 504) #10
  %3 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp ne i32 %4, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call1.i)
  %tobool2.not.i = icmp eq i16 %call1.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i, label %do.body.i.s5k5baf_synchronize.exit_crit_edge, label %if.end.i

do.body.i.s5k5baf_synchronize.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_synchronize.exit

if.end.i:                                         ; preds = %do.body.i
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %.neg5, %5
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end.i.do.body.i_crit_edge, label %do.end5.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 9, i32 9
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %name.i, i32 noundef 504) #13
  %6 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -110, ptr %error.i, align 4
  br label %s5k5baf_synchronize.exit

s5k5baf_synchronize.exit:                         ; preds = %do.end5.i, %do.body.i.s5k5baf_synchronize.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s5k5baf_hw_validate_cfg(ptr noundef %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc zeroext i16 @s5k5baf_read(ptr noundef %state, i16 noundef zeroext 546) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i)
  %tobool.not.i = icmp eq i16 %call.i, 0
  br i1 %tobool.not.i, label %entry.s5k5baf_get_cfg_error.exit_crit_edge, label %if.then.i

entry.s5k5baf_get_cfg_error.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_get_cfg_error.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @s5k5baf_write(ptr noundef %state, i16 noundef zeroext 546, i16 noundef zeroext 0) #10
  br label %s5k5baf_get_cfg_error.exit

s5k5baf_get_cfg_error.exit:                       ; preds = %if.then.i, %entry.s5k5baf_get_cfg_error.exit_crit_edge
  %error = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 12
  %0 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %s5k5baf_get_cfg_error.exit.cleanup_crit_edge

s5k5baf_get_cfg_error.exit.cleanup_crit_edge:     ; preds = %s5k5baf_get_cfg_error.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %s5k5baf_get_cfg_error.exit
  %2 = zext i16 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.121)
  switch i16 %call.i, label %do.end [
    i16 0, label %sw.bb
    i16 11, label %sw.bb1
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %apply_cfg = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 21
  %3 = ptrtoint ptr %apply_cfg to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %apply_cfg, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %apply_cfg, align 4
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  %call.i21 = tail call fastcc zeroext i16 @s5k5baf_read(ptr noundef %state, i16 noundef zeroext 570) #10
  %4 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i22 = icmp eq i32 %5, 0
  br i1 %tobool.not.i22, label %for.cond.preheader.i, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader.i:                             ; preds = %sw.bb1
  %name15.i = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 9, i32 9
  tail call fastcc void @s5k5baf_write(ptr noundef %state, i16 noundef zeroext 596, i16 noundef zeroext %call.i21) #10
  tail call fastcc void @s5k5baf_hw_sync_cfg(ptr noundef %state) #10
  %call.i.i = tail call fastcc zeroext i16 @s5k5baf_read(ptr noundef %state, i16 noundef zeroext 546) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i.i)
  %tobool.not.i.i = icmp eq i16 %call.i.i, 0
  br i1 %tobool.not.i.i, label %for.cond.preheader.i.s5k5baf_get_cfg_error.exit.i_crit_edge, label %if.then.i.i

for.cond.preheader.i.s5k5baf_get_cfg_error.exit.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_get_cfg_error.exit.i

if.then.i.i:                                      ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @s5k5baf_write(ptr noundef %state, i16 noundef zeroext 546, i16 noundef zeroext 0) #10
  br label %s5k5baf_get_cfg_error.exit.i

s5k5baf_get_cfg_error.exit.i:                     ; preds = %if.then.i.i, %for.cond.preheader.i.s5k5baf_get_cfg_error.exit.i_crit_edge
  %6 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not.i = icmp eq i32 %7, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %s5k5baf_get_cfg_error.exit.i.cleanup_crit_edge

s5k5baf_get_cfg_error.exit.i.cleanup_crit_edge:   ; preds = %s5k5baf_get_cfg_error.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5.i:                                        ; preds = %s5k5baf_get_cfg_error.exit.i
  %8 = zext i16 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.122)
  switch i16 %call.i.i, label %do.end12.i [
    i16 11, label %sw.bb.i
    i16 0, label %if.end5.i.s5k5baf_hw_find_min_fiv.exit_crit_edge
  ]

if.end5.i.s5k5baf_hw_find_min_fiv.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_hw_find_min_fiv.exit

sw.bb.i:                                          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i = add i16 %call.i21, 1
  br label %for.inc.i

do.end12.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i16 %call.i.i to i32
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %name15.i, i32 noundef %conv.i) #13
  %9 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -22, ptr %error, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end12.i, %sw.bb.i
  %fiv.1.i = phi i16 [ %call.i21, %do.end12.i ], [ %inc.i, %sw.bb.i ]
  tail call fastcc void @s5k5baf_write(ptr noundef %state, i16 noundef zeroext 596, i16 noundef zeroext %fiv.1.i) #10
  tail call fastcc void @s5k5baf_hw_sync_cfg(ptr noundef %state) #10
  %call.i.1.i = tail call fastcc zeroext i16 @s5k5baf_read(ptr noundef %state, i16 noundef zeroext 546) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i.1.i)
  %tobool.not.i.1.i = icmp eq i16 %call.i.1.i, 0
  br i1 %tobool.not.i.1.i, label %for.inc.i.s5k5baf_get_cfg_error.exit.1.i_crit_edge, label %if.then.i.1.i

for.inc.i.s5k5baf_get_cfg_error.exit.1.i_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_get_cfg_error.exit.1.i

if.then.i.1.i:                                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @s5k5baf_write(ptr noundef %state, i16 noundef zeroext 546, i16 noundef zeroext 0) #10
  br label %s5k5baf_get_cfg_error.exit.1.i

s5k5baf_get_cfg_error.exit.1.i:                   ; preds = %if.then.i.1.i, %for.inc.i.s5k5baf_get_cfg_error.exit.1.i_crit_edge
  %10 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not.1.i = icmp eq i32 %11, 0
  br i1 %tobool3.not.1.i, label %if.end5.1.i, label %s5k5baf_get_cfg_error.exit.1.i.cleanup_crit_edge

s5k5baf_get_cfg_error.exit.1.i.cleanup_crit_edge: ; preds = %s5k5baf_get_cfg_error.exit.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5.1.i:                                      ; preds = %s5k5baf_get_cfg_error.exit.1.i
  %12 = zext i16 %call.i.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.123)
  switch i16 %call.i.1.i, label %do.end12.1.i [
    i16 11, label %sw.bb.1.i
    i16 0, label %if.end5.1.i.s5k5baf_hw_find_min_fiv.exit_crit_edge
  ]

if.end5.1.i.s5k5baf_hw_find_min_fiv.exit_crit_edge: ; preds = %if.end5.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_hw_find_min_fiv.exit

sw.bb.1.i:                                        ; preds = %if.end5.1.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc.1.i = add i16 %fiv.1.i, 1
  br label %for.inc.1.i

do.end12.1.i:                                     ; preds = %if.end5.1.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.1.i = zext i16 %call.i.1.i to i32
  %call18.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %name15.i, i32 noundef %conv.1.i) #13
  %13 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -22, ptr %error, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %do.end12.1.i, %sw.bb.1.i
  %fiv.1.1.i = phi i16 [ %fiv.1.i, %do.end12.1.i ], [ %inc.1.i, %sw.bb.1.i ]
  tail call fastcc void @s5k5baf_write(ptr noundef %state, i16 noundef zeroext 596, i16 noundef zeroext %fiv.1.1.i) #10
  tail call fastcc void @s5k5baf_hw_sync_cfg(ptr noundef %state) #10
  %call.i.2.i = tail call fastcc zeroext i16 @s5k5baf_read(ptr noundef %state, i16 noundef zeroext 546) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i.2.i)
  %tobool.not.i.2.i = icmp eq i16 %call.i.2.i, 0
  br i1 %tobool.not.i.2.i, label %for.inc.1.i.s5k5baf_get_cfg_error.exit.2.i_crit_edge, label %if.then.i.2.i

for.inc.1.i.s5k5baf_get_cfg_error.exit.2.i_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_get_cfg_error.exit.2.i

if.then.i.2.i:                                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @s5k5baf_write(ptr noundef %state, i16 noundef zeroext 546, i16 noundef zeroext 0) #10
  br label %s5k5baf_get_cfg_error.exit.2.i

s5k5baf_get_cfg_error.exit.2.i:                   ; preds = %if.then.i.2.i, %for.inc.1.i.s5k5baf_get_cfg_error.exit.2.i_crit_edge
  %14 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool3.not.2.i = icmp eq i32 %15, 0
  br i1 %tobool3.not.2.i, label %if.end5.2.i, label %s5k5baf_get_cfg_error.exit.2.i.cleanup_crit_edge

s5k5baf_get_cfg_error.exit.2.i.cleanup_crit_edge: ; preds = %s5k5baf_get_cfg_error.exit.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5.2.i:                                      ; preds = %s5k5baf_get_cfg_error.exit.2.i
  %16 = zext i16 %call.i.2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.124)
  switch i16 %call.i.2.i, label %do.end12.2.i [
    i16 11, label %sw.bb.2.i
    i16 0, label %if.end5.2.i.s5k5baf_hw_find_min_fiv.exit_crit_edge
  ]

if.end5.2.i.s5k5baf_hw_find_min_fiv.exit_crit_edge: ; preds = %if.end5.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_hw_find_min_fiv.exit

sw.bb.2.i:                                        ; preds = %if.end5.2.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc.2.i = add i16 %fiv.1.1.i, 1
  br label %for.inc.2.i

do.end12.2.i:                                     ; preds = %if.end5.2.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.2.i = zext i16 %call.i.2.i to i32
  %call18.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %name15.i, i32 noundef %conv.2.i) #13
  %17 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -22, ptr %error, align 4
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %do.end12.2.i, %sw.bb.2.i
  %fiv.1.2.i = phi i16 [ %fiv.1.1.i, %do.end12.2.i ], [ %inc.2.i, %sw.bb.2.i ]
  tail call fastcc void @s5k5baf_write(ptr noundef %state, i16 noundef zeroext 596, i16 noundef zeroext %fiv.1.2.i) #10
  tail call fastcc void @s5k5baf_hw_sync_cfg(ptr noundef %state) #10
  %call.i.3.i = tail call fastcc zeroext i16 @s5k5baf_read(ptr noundef %state, i16 noundef zeroext 546) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i.3.i)
  %tobool.not.i.3.i = icmp eq i16 %call.i.3.i, 0
  br i1 %tobool.not.i.3.i, label %for.inc.2.i.s5k5baf_get_cfg_error.exit.3.i_crit_edge, label %if.then.i.3.i

for.inc.2.i.s5k5baf_get_cfg_error.exit.3.i_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_get_cfg_error.exit.3.i

if.then.i.3.i:                                    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @s5k5baf_write(ptr noundef %state, i16 noundef zeroext 546, i16 noundef zeroext 0) #10
  br label %s5k5baf_get_cfg_error.exit.3.i

s5k5baf_get_cfg_error.exit.3.i:                   ; preds = %if.then.i.3.i, %for.inc.2.i.s5k5baf_get_cfg_error.exit.3.i_crit_edge
  %18 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool3.not.3.i = icmp eq i32 %19, 0
  br i1 %tobool3.not.3.i, label %if.end5.3.i, label %s5k5baf_get_cfg_error.exit.3.i.cleanup_crit_edge

s5k5baf_get_cfg_error.exit.3.i.cleanup_crit_edge: ; preds = %s5k5baf_get_cfg_error.exit.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5.3.i:                                      ; preds = %s5k5baf_get_cfg_error.exit.3.i
  %20 = zext i16 %call.i.3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.125)
  switch i16 %call.i.3.i, label %do.end12.3.i [
    i16 11, label %sw.bb.3.i
    i16 0, label %if.end5.3.i.s5k5baf_hw_find_min_fiv.exit_crit_edge
  ]

if.end5.3.i.s5k5baf_hw_find_min_fiv.exit_crit_edge: ; preds = %if.end5.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_hw_find_min_fiv.exit

sw.bb.3.i:                                        ; preds = %if.end5.3.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc.3.i = add i16 %fiv.1.2.i, 1
  br label %for.inc.3.i

do.end12.3.i:                                     ; preds = %if.end5.3.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.3.i = zext i16 %call.i.3.i to i32
  %call18.3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %name15.i, i32 noundef %conv.3.i) #13
  %21 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -22, ptr %error, align 4
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %do.end12.3.i, %sw.bb.3.i
  %fiv.1.3.i = phi i16 [ %fiv.1.2.i, %do.end12.3.i ], [ %inc.3.i, %sw.bb.3.i ]
  tail call fastcc void @s5k5baf_write(ptr noundef %state, i16 noundef zeroext 596, i16 noundef zeroext %fiv.1.3.i) #10
  tail call fastcc void @s5k5baf_hw_sync_cfg(ptr noundef %state) #10
  %call.i.4.i = tail call fastcc zeroext i16 @s5k5baf_read(ptr noundef %state, i16 noundef zeroext 546) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i.4.i)
  %tobool.not.i.4.i = icmp eq i16 %call.i.4.i, 0
  br i1 %tobool.not.i.4.i, label %for.inc.3.i.s5k5baf_get_cfg_error.exit.4.i_crit_edge, label %if.then.i.4.i

for.inc.3.i.s5k5baf_get_cfg_error.exit.4.i_crit_edge: ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_get_cfg_error.exit.4.i

if.then.i.4.i:                                    ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @s5k5baf_write(ptr noundef %state, i16 noundef zeroext 546, i16 noundef zeroext 0) #10
  br label %s5k5baf_get_cfg_error.exit.4.i

s5k5baf_get_cfg_error.exit.4.i:                   ; preds = %if.then.i.4.i, %for.inc.3.i.s5k5baf_get_cfg_error.exit.4.i_crit_edge
  %22 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool3.not.4.i = icmp eq i32 %23, 0
  br i1 %tobool3.not.4.i, label %if.end5.4.i, label %s5k5baf_get_cfg_error.exit.4.i.cleanup_crit_edge

s5k5baf_get_cfg_error.exit.4.i.cleanup_crit_edge: ; preds = %s5k5baf_get_cfg_error.exit.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5.4.i:                                      ; preds = %s5k5baf_get_cfg_error.exit.4.i
  %24 = zext i16 %call.i.4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.126)
  switch i16 %call.i.4.i, label %do.end12.4.i [
    i16 11, label %if.end5.4.i.for.inc.4.i_crit_edge
    i16 0, label %if.end5.4.i.s5k5baf_hw_find_min_fiv.exit_crit_edge
  ]

if.end5.4.i.s5k5baf_hw_find_min_fiv.exit_crit_edge: ; preds = %if.end5.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_hw_find_min_fiv.exit

if.end5.4.i.for.inc.4.i_crit_edge:                ; preds = %if.end5.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4.i

do.end12.4.i:                                     ; preds = %if.end5.4.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.4.i = zext i16 %call.i.4.i to i32
  %call18.4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %name15.i, i32 noundef %conv.4.i) #13
  %25 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -22, ptr %error, align 4
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %do.end12.4.i, %if.end5.4.i.for.inc.4.i_crit_edge
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %name15.i) #13
  %26 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -34, ptr %error, align 4
  br label %cleanup

s5k5baf_hw_find_min_fiv.exit:                     ; preds = %if.end5.4.i.s5k5baf_hw_find_min_fiv.exit_crit_edge, %if.end5.3.i.s5k5baf_hw_find_min_fiv.exit_crit_edge, %if.end5.2.i.s5k5baf_hw_find_min_fiv.exit_crit_edge, %if.end5.1.i.s5k5baf_hw_find_min_fiv.exit_crit_edge, %if.end5.i.s5k5baf_hw_find_min_fiv.exit_crit_edge
  %fiv.049.lcssa50.i = phi i16 [ %call.i21, %if.end5.i.s5k5baf_hw_find_min_fiv.exit_crit_edge ], [ %fiv.1.i, %if.end5.1.i.s5k5baf_hw_find_min_fiv.exit_crit_edge ], [ %fiv.1.1.i, %if.end5.2.i.s5k5baf_hw_find_min_fiv.exit_crit_edge ], [ %fiv.1.2.i, %if.end5.3.i.s5k5baf_hw_find_min_fiv.exit_crit_edge ], [ %fiv.1.3.i, %if.end5.4.i.s5k5baf_hw_find_min_fiv.exit_crit_edge ]
  %fiv7.i = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 17
  %27 = ptrtoint ptr %fiv7.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %fiv.049.lcssa50.i, ptr %fiv7.i, align 4
  %conv8.i = zext i16 %fiv.049.lcssa50.i to i32
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %name15.i, i32 noundef %conv8.i) #13
  %28 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool3.not = icmp eq i32 %.pr, 0
  br i1 %tobool3.not, label %if.then4, label %s5k5baf_hw_find_min_fiv.exit.cleanup_crit_edge

s5k5baf_hw_find_min_fiv.exit.cleanup_crit_edge:   ; preds = %s5k5baf_hw_find_min_fiv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then4:                                         ; preds = %s5k5baf_hw_find_min_fiv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %apply_cfg5 = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 21
  %29 = ptrtoint ptr %apply_cfg5 to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load6 = load i8, ptr %apply_cfg5, align 4
  %bf.set8 = or i8 %bf.load6, 64
  store i8 %bf.set8, ptr %apply_cfg5, align 4
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i16 %call.i to i32
  %name = getelementptr inbounds %struct.s5k5baf, ptr %state, i32 0, i32 9, i32 9
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %name, i32 noundef %conv) #13
  %30 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -22, ptr %error, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then4, %s5k5baf_hw_find_min_fiv.exit.cleanup_crit_edge, %for.inc.4.i, %s5k5baf_get_cfg_error.exit.4.i.cleanup_crit_edge, %s5k5baf_get_cfg_error.exit.3.i.cleanup_crit_edge, %s5k5baf_get_cfg_error.exit.2.i.cleanup_crit_edge, %s5k5baf_get_cfg_error.exit.1.i.cleanup_crit_edge, %s5k5baf_get_cfg_error.exit.i.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %sw.bb, %s5k5baf_get_cfg_error.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k5baf_enum_frame_interval(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr noundef %fie) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6167, i32 %1)
  %cmp = icmp ugt i32 %1, 6167
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not = icmp eq i32 %3, 0
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %width = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 3
  %height = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 4
  tail call void @v4l_bound_align_image(ptr noundef %width, i32 noundef 8, i32 noundef 1600, i32 noundef 1, ptr noundef %height, i32 noundef 8, i32 noundef 1200, i32 noundef 1, i32 noundef 0) #10
  %4 = ptrtoint ptr %fie to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fie, align 4
  %add = add i32 %5, 333
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 5
  %6 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %interval, align 4
  %denominator = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 10000, ptr %denominator, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k5baf_get_selection(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %function.i.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 3
  %0 = ptrtoint ptr %function.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %function.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131073, i32 %1)
  %cmp.i.i = icmp eq i32 %1, 131073
  %retval.0.v.i = select i1 %cmp.i.i, i32 -72, i32 -300
  %retval.0.i = getelementptr i8, ptr %sd, i32 %retval.0.v.i
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb.i
    i32 0, label %sw.bb1.i
    i32 258, label %sw.bb4.i
    i32 256, label %sw.bb7.i
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %sw.bb2, label %sw.bb.i.sw.epilog_crit_edge

sw.bb.i.sw.epilog_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not.i = icmp eq i32 %3, 0
  %spec.select = select i1 %tobool2.not.i, i32 1, i32 3
  br label %sw.epilog

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5.not.i = icmp eq i32 %3, 0
  br i1 %tobool5.not.i, label %sw.epilog.thread, label %sw.bb4.i.cleanup_crit_edge

sw.bb4.i.cleanup_crit_edge:                       ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb7.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool8.not.i = icmp eq i32 %3, 0
  br i1 %tobool8.not.i, label %sw.bb7.i.sw.epilog_crit_edge, label %sw.bb7.i.cleanup_crit_edge

sw.bb7.i.cleanup_crit_edge:                       ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb7.i.sw.epilog_crit_edge:                     ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb2:                                           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %7 = call ptr @memcpy(ptr %r, ptr @s5k5baf_cis_rect, i32 16)
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb7.i.sw.epilog_crit_edge, %sw.bb1.i, %sw.bb.i.sw.epilog_crit_edge
  %retval.0.i50.ph = phi i32 [ 2, %sw.bb.i.sw.epilog_crit_edge ], [ 2, %sw.bb7.i.sw.epilog_crit_edge ], [ %spec.select, %sw.bb1.i ]
  %8 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end11

sw.epilog.thread:                                 ; preds = %sw.bb4.i
  %10 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp65 = icmp eq i32 %11, 0
  br i1 %cmp65, label %sw.epilog.thread.if.else_crit_edge, label %if.end11.thread

sw.epilog.thread.if.else_crit_edge:               ; preds = %sw.epilog.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.end11.thread:                                  ; preds = %sw.epilog.thread
  call void @__sanitizer_cov_trace_pc() #12
  %lock71 = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %lock71, i32 noundef 0) #10
  br label %sw.bb12

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retval.0.i50.ph)
  %cmp3 = icmp eq i32 %retval.0.i50.ph, 2
  br i1 %cmp3, label %if.then4, label %if.then.if.else_crit_edge

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then4:                                         ; preds = %if.then
  %r5 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %12 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %3, %conv.i
  br i1 %cmp.not.i, label %if.then4.v4l2_subdev_get_try_compose.exit_crit_edge, label %do.end.i, !prof !293

if.then4.v4l2_subdev_get_try_compose.exit_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_subdev_get_try_compose.exit

do.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 1034, i32 noundef 9, ptr noundef null) #10
  br label %v4l2_subdev_get_try_compose.exit

v4l2_subdev_get_try_compose.exit:                 ; preds = %do.end.i, %if.then4.v4l2_subdev_get_try_compose.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %3, %if.then4.v4l2_subdev_get_try_compose.exit_crit_edge ]
  %14 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sd_state, align 4
  %try_compose.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %15, i32 %spec.select.i, i32 2
  %16 = call ptr @memcpy(ptr %r5, ptr %try_compose.i, i32 16)
  br label %cleanup

if.else:                                          ; preds = %if.then.if.else_crit_edge, %sw.epilog.thread.if.else_crit_edge
  %r8 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %num_pads.i51 = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %17 = ptrtoint ptr %num_pads.i51 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %num_pads.i51, align 4
  %conv.i52 = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i52)
  %cmp.not.i53 = icmp ult i32 %3, %conv.i52
  br i1 %cmp.not.i53, label %if.else.v4l2_subdev_get_try_crop.exit_crit_edge, label %do.end.i54, !prof !293

if.else.v4l2_subdev_get_try_crop.exit_crit_edge:  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_subdev_get_try_crop.exit

do.end.i54:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 1016, i32 noundef 9, ptr noundef null) #10
  br label %v4l2_subdev_get_try_crop.exit

v4l2_subdev_get_try_crop.exit:                    ; preds = %do.end.i54, %if.else.v4l2_subdev_get_try_crop.exit_crit_edge
  %spec.select.i55 = phi i32 [ 0, %do.end.i54 ], [ %3, %if.else.v4l2_subdev_get_try_crop.exit_crit_edge ]
  %19 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sd_state, align 4
  %try_crop.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %20, i32 %spec.select.i55, i32 1
  %21 = call ptr @memcpy(ptr %r8, ptr %try_crop.i, i32 16)
  br label %cleanup

if.end11:                                         ; preds = %sw.epilog
  %lock = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %22 = zext i32 %retval.0.i50.ph to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %retval.0.i50.ph, label %if.end11.sw.epilog19_crit_edge [
    i32 1, label %if.end11.sw.bb12_crit_edge
    i32 2, label %sw.bb14
    i32 3, label %sw.bb16
  ]

if.end11.sw.bb12_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

if.end11.sw.epilog19_crit_edge:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog19

sw.bb12:                                          ; preds = %if.end11.sw.bb12_crit_edge, %if.end11.thread
  %lock72 = phi ptr [ %lock71, %if.end11.thread ], [ %lock, %if.end11.sw.bb12_crit_edge ]
  %r13 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %crop_sink = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 13
  %23 = call ptr @memcpy(ptr %r13, ptr %crop_sink, i32 16)
  br label %sw.epilog19

sw.bb14:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %r15 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %compose = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 14
  %24 = call ptr @memcpy(ptr %r15, ptr %compose, i32 16)
  br label %sw.epilog19

sw.bb16:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %r17 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %crop_source = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 15
  %25 = call ptr @memcpy(ptr %r17, ptr %crop_source, i32 16)
  br label %sw.epilog19

sw.epilog19:                                      ; preds = %sw.bb16, %sw.bb14, %sw.bb12, %if.end11.sw.epilog19_crit_edge
  %lock73 = phi ptr [ %lock, %if.end11.sw.epilog19_crit_edge ], [ %lock, %sw.bb16 ], [ %lock, %sw.bb14 ], [ %lock72, %sw.bb12 ]
  %26 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %target, align 4
  %28 = and i32 %27, -257
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %.not = icmp eq i32 %28, 2
  br i1 %.not, label %if.then22, label %sw.epilog19.if.end25_crit_edge

sw.epilog19.if.end25_crit_edge:                   ; preds = %sw.epilog19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then22:                                        ; preds = %sw.epilog19
  call void @__sanitizer_cov_trace_pc() #12
  %r23 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %29 = ptrtoint ptr %r23 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %r23, align 4
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %top, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %sw.epilog19.if.end25_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock73) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %v4l2_subdev_get_try_crop.exit, %v4l2_subdev_get_try_compose.exit, %sw.bb2, %sw.bb7.i.cleanup_crit_edge, %sw.bb4.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25 ], [ 0, %sw.bb2 ], [ 0, %v4l2_subdev_get_try_crop.exit ], [ 0, %v4l2_subdev_get_try_compose.exit ], [ -22, %sw.bb7.i.cleanup_crit_edge ], [ -22, %sw.bb4.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k5baf_set_selection(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sel) #2 align 64 {
entry:
  %.compoundliteral = alloca [4 x ptr], align 4
  %.compoundliteral17 = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %function.i.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 3
  %0 = ptrtoint ptr %function.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %function.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131073, i32 %1)
  %cmp.i.i = icmp eq i32 %1, 131073
  %retval.0.v.i = select i1 %cmp.i.i, i32 -72, i32 -300
  %retval.0.i = getelementptr i8, ptr %sd, i32 %retval.0.v.i
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %5, label %entry.s5k5baf_get_sel_rect.exit_crit_edge [
    i32 2, label %sw.bb.i
    i32 0, label %if.end
    i32 258, label %sw.bb4.i
    i32 256, label %sw.bb7.i
  ]

entry.s5k5baf_get_sel_rect.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_get_sel_rect.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 2
  br label %lor.lhs.false

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5.not.i = icmp eq i32 %3, 0
  br i1 %tobool5.not.i, label %sw.bb4.i.lor.lhs.false_crit_edge, label %sw.bb4.i.s5k5baf_get_sel_rect.exit_crit_edge

sw.bb4.i.s5k5baf_get_sel_rect.exit_crit_edge:     ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_get_sel_rect.exit

sw.bb4.i.lor.lhs.false_crit_edge:                 ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

sw.bb7.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool8.not.i = icmp eq i32 %3, 0
  br i1 %tobool8.not.i, label %if.end.thread, label %sw.bb7.i.s5k5baf_get_sel_rect.exit_crit_edge

sw.bb7.i.s5k5baf_get_sel_rect.exit_crit_edge:     ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_get_sel_rect.exit

if.end.thread:                                    ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #12
  store i32 2, ptr @s5k5baf_set_selection.rtype, align 4
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %7 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %top, align 4
  br label %if.end7

s5k5baf_get_sel_rect.exit:                        ; preds = %sw.bb7.i.s5k5baf_get_sel_rect.exit_crit_edge, %sw.bb4.i.s5k5baf_get_sel_rect.exit_crit_edge, %entry.s5k5baf_get_sel_rect.exit_crit_edge
  store i32 4, ptr @s5k5baf_set_selection.rtype, align 4
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb4.i.lor.lhs.false_crit_edge, %sw.bb.i
  %retval.0.i113.ph = phi i32 [ %cond.i, %sw.bb.i ], [ 1, %sw.bb4.i.lor.lhs.false_crit_edge ]
  store i32 %retval.0.i113.ph, ptr @s5k5baf_set_selection.rtype, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not.i = icmp eq i32 %3, 0
  %cond3.i = select i1 %tobool2.not.i, i32 1, i32 3
  store i32 %cond3.i, ptr @s5k5baf_set_selection.rtype, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.end.thread
  %9 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp8 = icmp eq i32 %10, 0
  br i1 %cmp8, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.end7
  %11 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @s5k5baf_cis_rect, ptr %.compoundliteral, align 4
  %arrayinit.element = getelementptr inbounds ptr, ptr %.compoundliteral, i32 1
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %12 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp.not.i.not = icmp eq i16 %13, 0
  br i1 %cmp.not.i.not, label %v4l2_subdev_get_try_crop.exit, label %v4l2_subdev_get_try_crop.exit.thread, !prof !294

v4l2_subdev_get_try_crop.exit.thread:             ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sd_state, align 4
  %try_crop.i173 = getelementptr %struct.v4l2_subdev_pad_config, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %try_crop.i173, ptr %arrayinit.element, align 4
  %arrayinit.element11174 = getelementptr inbounds ptr, ptr %.compoundliteral, i32 2
  br label %v4l2_subdev_get_try_compose.exit

v4l2_subdev_get_try_crop.exit:                    ; preds = %if.then9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 1016, i32 noundef 9, ptr noundef null) #10
  %17 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %.pr = load i16, ptr %num_pads.i, align 4
  %18 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sd_state, align 4
  %try_crop.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %try_crop.i, ptr %arrayinit.element, align 4
  %arrayinit.element11 = getelementptr inbounds ptr, ptr %.compoundliteral, i32 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr)
  %cmp.not.i116.not = icmp eq i16 %.pr, 0
  br i1 %cmp.not.i116.not, label %do.end.i117, label %v4l2_subdev_get_try_crop.exit.v4l2_subdev_get_try_compose.exit_crit_edge, !prof !294

v4l2_subdev_get_try_crop.exit.v4l2_subdev_get_try_compose.exit_crit_edge: ; preds = %v4l2_subdev_get_try_crop.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_subdev_get_try_compose.exit

do.end.i117:                                      ; preds = %v4l2_subdev_get_try_crop.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 1034, i32 noundef 9, ptr noundef null) #10
  br label %v4l2_subdev_get_try_compose.exit

v4l2_subdev_get_try_compose.exit:                 ; preds = %do.end.i117, %v4l2_subdev_get_try_crop.exit.v4l2_subdev_get_try_compose.exit_crit_edge, %v4l2_subdev_get_try_crop.exit.thread
  %arrayinit.element11176 = phi ptr [ %arrayinit.element11174, %v4l2_subdev_get_try_crop.exit.thread ], [ %arrayinit.element11, %v4l2_subdev_get_try_crop.exit.v4l2_subdev_get_try_compose.exit_crit_edge ], [ %arrayinit.element11, %do.end.i117 ]
  %21 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sd_state, align 4
  %try_compose.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %arrayinit.element11176 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %try_compose.i, ptr %arrayinit.element11176, align 4
  %arrayinit.element13 = getelementptr inbounds ptr, ptr %.compoundliteral, i32 3
  %24 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %25)
  %cmp.not.i120 = icmp ugt i16 %25, 1
  br i1 %cmp.not.i120, label %v4l2_subdev_get_try_compose.exit.v4l2_subdev_get_try_crop.exit123_crit_edge, label %do.end.i121, !prof !293

v4l2_subdev_get_try_compose.exit.v4l2_subdev_get_try_crop.exit123_crit_edge: ; preds = %v4l2_subdev_get_try_compose.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_subdev_get_try_crop.exit123

do.end.i121:                                      ; preds = %v4l2_subdev_get_try_compose.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 1016, i32 noundef 9, ptr noundef null) #10
  br label %v4l2_subdev_get_try_crop.exit123

v4l2_subdev_get_try_crop.exit123:                 ; preds = %do.end.i121, %v4l2_subdev_get_try_compose.exit.v4l2_subdev_get_try_crop.exit123_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i121 ], [ 1, %v4l2_subdev_get_try_compose.exit.v4l2_subdev_get_try_crop.exit123_crit_edge ]
  %26 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sd_state, align 4
  %try_crop.i122 = getelementptr %struct.v4l2_subdev_pad_config, ptr %27, i32 %spec.select.i, i32 1
  %28 = ptrtoint ptr %arrayinit.element13 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %try_crop.i122, ptr %arrayinit.element13, align 4
  %29 = load i32, ptr @s5k5baf_set_selection.rtype, align 4
  %r15 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %arrayidx.i = getelementptr ptr, ptr %.compoundliteral, i32 %29
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i, align 4
  %32 = call ptr @memcpy(ptr %31, ptr %r15, i32 16)
  br label %do.body.i

do.body.i:                                        ; preds = %s5k5baf_bound_rect.exit.i.do.body.i_crit_edge, %v4l2_subdev_get_try_crop.exit123
  %i.0.i = phi i32 [ %29, %v4l2_subdev_get_try_crop.exit123 ], [ %inc.i, %s5k5baf_bound_rect.exit.i.do.body.i_crit_edge ]
  %arrayidx1.i = getelementptr ptr, ptr %.compoundliteral, i32 %i.0.i
  %33 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx1.i, align 4
  %sub.i = add i32 %i.0.i, -1
  %arrayidx2.i = getelementptr ptr, ptr %.compoundliteral, i32 %sub.i
  %35 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx2.i, align 4
  %width.i = getelementptr inbounds %struct.v4l2_rect, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %width.i, align 4
  %height.i = getelementptr inbounds %struct.v4l2_rect, ptr %36, i32 0, i32 3
  %39 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %height.i, align 4
  %width1.i.i = getelementptr inbounds %struct.v4l2_rect, ptr %34, i32 0, i32 2
  %41 = ptrtoint ptr %width1.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %width1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %38)
  %cmp.i.i.i = icmp ugt i32 %42, %38
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.body.i.if.end.i.i.i_crit_edge

do.body.i.if.end.i.i.i_crit_edge:                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %width1.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %38, ptr %width1.i.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %do.body.i.if.end.i.i.i_crit_edge
  %44 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %34, align 4
  %46 = ptrtoint ptr %width1.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %width1.i.i, align 4
  %add.i.i.i = add i32 %47, %45
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %38)
  %cmp1.i.i.i = icmp ugt i32 %add.i.i.i, %38
  br i1 %cmp1.i.i.i, label %if.then2.i.i.i, label %if.end.i.i.i.s5k5baf_bound_range.exit.i.i_crit_edge

if.end.i.i.i.s5k5baf_bound_range.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_bound_range.exit.i.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i = sub i32 %38, %47
  %48 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %sub.i.i.i, ptr %34, align 4
  br label %s5k5baf_bound_range.exit.i.i

s5k5baf_bound_range.exit.i.i:                     ; preds = %if.then2.i.i.i, %if.end.i.i.i.s5k5baf_bound_range.exit.i.i_crit_edge
  %49 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %34, align 4
  %and.i.i.i = and i32 %50, -2
  store i32 %and.i.i.i, ptr %34, align 4
  %and4.i.i.i = and i32 %47, -2
  %51 = tail call i32 @llvm.umax.i32(i32 %and4.i.i.i, i32 8) #10
  %52 = ptrtoint ptr %width1.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %width1.i.i, align 4
  %top.i.i = getelementptr inbounds %struct.v4l2_rect, ptr %34, i32 0, i32 1
  %height2.i.i = getelementptr inbounds %struct.v4l2_rect, ptr %34, i32 0, i32 3
  %53 = ptrtoint ptr %height2.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %height2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %40)
  %cmp.i6.i.i = icmp ugt i32 %54, %40
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %s5k5baf_bound_range.exit.i.i.if.end.i10.i.i_crit_edge

s5k5baf_bound_range.exit.i.i.if.end.i10.i.i_crit_edge: ; preds = %s5k5baf_bound_range.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i10.i.i

if.then.i7.i.i:                                   ; preds = %s5k5baf_bound_range.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %height2.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %40, ptr %height2.i.i, align 4
  br label %if.end.i10.i.i

if.end.i10.i.i:                                   ; preds = %if.then.i7.i.i, %s5k5baf_bound_range.exit.i.i.if.end.i10.i.i_crit_edge
  %56 = ptrtoint ptr %top.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %top.i.i, align 4
  %58 = ptrtoint ptr %height2.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %height2.i.i, align 4
  %add.i8.i.i = add i32 %59, %57
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i8.i.i, i32 %40)
  %cmp1.i9.i.i = icmp ugt i32 %add.i8.i.i, %40
  br i1 %cmp1.i9.i.i, label %if.then2.i12.i.i, label %if.end.i10.i.i.s5k5baf_bound_rect.exit.i_crit_edge

if.end.i10.i.i.s5k5baf_bound_rect.exit.i_crit_edge: ; preds = %if.end.i10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_bound_rect.exit.i

if.then2.i12.i.i:                                 ; preds = %if.end.i10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i11.i.i = sub i32 %40, %59
  %60 = ptrtoint ptr %top.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %sub.i11.i.i, ptr %top.i.i, align 4
  br label %s5k5baf_bound_rect.exit.i

s5k5baf_bound_rect.exit.i:                        ; preds = %if.then2.i12.i.i, %if.end.i10.i.i.s5k5baf_bound_rect.exit.i_crit_edge
  %61 = ptrtoint ptr %top.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %top.i.i, align 4
  %and.i13.i.i = and i32 %62, -2
  store i32 %and.i13.i.i, ptr %top.i.i, align 4
  %and4.i14.i.i = and i32 %59, -2
  %63 = tail call i32 @llvm.umax.i32(i32 %and4.i14.i.i, i32 8) #10
  %64 = ptrtoint ptr %height2.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %height2.i.i, align 4
  %inc.i = add i32 %i.0.i, 1
  %cmp.not.i124 = icmp eq i32 %inc.i, 4
  br i1 %cmp.not.i124, label %s5k5baf_set_rect_and_adjust.exit, label %s5k5baf_bound_rect.exit.i.do.body.i_crit_edge

s5k5baf_bound_rect.exit.i.do.body.i_crit_edge:    ; preds = %s5k5baf_bound_rect.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

s5k5baf_set_rect_and_adjust.exit:                 ; preds = %s5k5baf_bound_rect.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %65 = call ptr @memcpy(ptr %r15, ptr %31, i32 16)
  br label %cleanup

if.end16:                                         ; preds = %if.end7
  %66 = ptrtoint ptr %.compoundliteral17 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @s5k5baf_cis_rect, ptr %.compoundliteral17, align 4
  %arrayinit.element19 = getelementptr inbounds ptr, ptr %.compoundliteral17, i32 1
  %crop_sink = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 13
  %67 = ptrtoint ptr %arrayinit.element19 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %crop_sink, ptr %arrayinit.element19, align 4
  %arrayinit.element20 = getelementptr inbounds ptr, ptr %.compoundliteral17, i32 2
  %compose = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 14
  %68 = ptrtoint ptr %arrayinit.element20 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %compose, ptr %arrayinit.element20, align 4
  %arrayinit.element21 = getelementptr inbounds ptr, ptr %.compoundliteral17, i32 3
  %crop_source = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 15
  %69 = ptrtoint ptr %arrayinit.element21 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %crop_source, ptr %arrayinit.element21, align 4
  %lock = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %streaming = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 21
  %70 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load = load i8, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool23.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool23.not, label %if.end16.if.end56_crit_edge, label %if.then24

if.end16.if.end56_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then24:                                        ; preds = %if.end16
  %71 = load i32, ptr @s5k5baf_set_selection.rtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %71)
  %cmp25 = icmp ult i32 %71, 3
  br i1 %cmp25, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.then24
  %width = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %72 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %width, align 4
  %width29 = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 15, i32 2
  %74 = ptrtoint ptr %width29 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %width29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %75)
  %cmp30 = icmp ult i32 %73, %75
  br i1 %cmp30, label %if.then31, label %if.then26.if.end36_crit_edge

if.then26.if.end36_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then31:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %width, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %if.then26.if.end36_crit_edge
  %height = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %77 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %height, align 4
  %height39 = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 15, i32 3
  %79 = ptrtoint ptr %height39 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %height39, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %80)
  %cmp40 = icmp ult i32 %78, %80
  br i1 %cmp40, label %if.then41, label %if.end36.if.end56_crit_edge

if.end36.if.end56_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %81 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %height, align 4
  br label %if.end56

if.else:                                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  %width48 = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 15, i32 2
  %82 = ptrtoint ptr %width48 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %width48, align 4
  %width50 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %84 = ptrtoint ptr %width50 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %width50, align 4
  %height52 = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 15, i32 3
  %85 = ptrtoint ptr %height52 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %height52, align 4
  %height54 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %87 = ptrtoint ptr %height54 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %height54, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.else, %if.then41, %if.end36.if.end56_crit_edge, %if.end16.if.end56_crit_edge
  %88 = load i32, ptr @s5k5baf_set_selection.rtype, align 4
  %r57 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %arrayidx.i126 = getelementptr ptr, ptr %.compoundliteral17, i32 %88
  %89 = ptrtoint ptr %arrayidx.i126 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx.i126, align 4
  %91 = call ptr @memcpy(ptr %90, ptr %r57, i32 16)
  br label %do.body.i135

do.body.i135:                                     ; preds = %s5k5baf_bound_rect.exit.i158.do.body.i135_crit_edge, %if.end56
  %i.0.i127 = phi i32 [ %88, %if.end56 ], [ %inc.i156, %s5k5baf_bound_rect.exit.i158.do.body.i135_crit_edge ]
  %arrayidx1.i128 = getelementptr ptr, ptr %.compoundliteral17, i32 %i.0.i127
  %92 = ptrtoint ptr %arrayidx1.i128 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx1.i128, align 4
  %sub.i129 = add i32 %i.0.i127, -1
  %arrayidx2.i130 = getelementptr ptr, ptr %.compoundliteral17, i32 %sub.i129
  %94 = ptrtoint ptr %arrayidx2.i130 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx2.i130, align 4
  %width.i131 = getelementptr inbounds %struct.v4l2_rect, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %width.i131 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %width.i131, align 4
  %height.i132 = getelementptr inbounds %struct.v4l2_rect, ptr %95, i32 0, i32 3
  %98 = ptrtoint ptr %height.i132 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %height.i132, align 4
  %width1.i.i133 = getelementptr inbounds %struct.v4l2_rect, ptr %93, i32 0, i32 2
  %100 = ptrtoint ptr %width1.i.i133 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %width1.i.i133, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %97)
  %cmp.i.i.i134 = icmp ugt i32 %101, %97
  br i1 %cmp.i.i.i134, label %if.then.i.i.i136, label %do.body.i135.if.end.i.i.i139_crit_edge

do.body.i135.if.end.i.i.i139_crit_edge:           ; preds = %do.body.i135
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i139

if.then.i.i.i136:                                 ; preds = %do.body.i135
  call void @__sanitizer_cov_trace_pc() #12
  %102 = ptrtoint ptr %width1.i.i133 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %97, ptr %width1.i.i133, align 4
  br label %if.end.i.i.i139

if.end.i.i.i139:                                  ; preds = %if.then.i.i.i136, %do.body.i135.if.end.i.i.i139_crit_edge
  %103 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %93, align 4
  %105 = ptrtoint ptr %width1.i.i133 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %width1.i.i133, align 4
  %add.i.i.i137 = add i32 %106, %104
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i137, i32 %97)
  %cmp1.i.i.i138 = icmp ugt i32 %add.i.i.i137, %97
  br i1 %cmp1.i.i.i138, label %if.then2.i.i.i141, label %if.end.i.i.i139.s5k5baf_bound_range.exit.i.i147_crit_edge

if.end.i.i.i139.s5k5baf_bound_range.exit.i.i147_crit_edge: ; preds = %if.end.i.i.i139
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_bound_range.exit.i.i147

if.then2.i.i.i141:                                ; preds = %if.end.i.i.i139
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i140 = sub i32 %97, %106
  %107 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %sub.i.i.i140, ptr %93, align 4
  br label %s5k5baf_bound_range.exit.i.i147

s5k5baf_bound_range.exit.i.i147:                  ; preds = %if.then2.i.i.i141, %if.end.i.i.i139.s5k5baf_bound_range.exit.i.i147_crit_edge
  %108 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %93, align 4
  %and.i.i.i142 = and i32 %109, -2
  store i32 %and.i.i.i142, ptr %93, align 4
  %and4.i.i.i143 = and i32 %106, -2
  %110 = tail call i32 @llvm.umax.i32(i32 %and4.i.i.i143, i32 8) #10
  %111 = ptrtoint ptr %width1.i.i133 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %width1.i.i133, align 4
  %top.i.i144 = getelementptr inbounds %struct.v4l2_rect, ptr %93, i32 0, i32 1
  %height2.i.i145 = getelementptr inbounds %struct.v4l2_rect, ptr %93, i32 0, i32 3
  %112 = ptrtoint ptr %height2.i.i145 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %height2.i.i145, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %113, i32 %99)
  %cmp.i6.i.i146 = icmp ugt i32 %113, %99
  br i1 %cmp.i6.i.i146, label %if.then.i7.i.i148, label %s5k5baf_bound_range.exit.i.i147.if.end.i10.i.i151_crit_edge

s5k5baf_bound_range.exit.i.i147.if.end.i10.i.i151_crit_edge: ; preds = %s5k5baf_bound_range.exit.i.i147
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i10.i.i151

if.then.i7.i.i148:                                ; preds = %s5k5baf_bound_range.exit.i.i147
  call void @__sanitizer_cov_trace_pc() #12
  %114 = ptrtoint ptr %height2.i.i145 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %99, ptr %height2.i.i145, align 4
  br label %if.end.i10.i.i151

if.end.i10.i.i151:                                ; preds = %if.then.i7.i.i148, %s5k5baf_bound_range.exit.i.i147.if.end.i10.i.i151_crit_edge
  %115 = ptrtoint ptr %top.i.i144 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %top.i.i144, align 4
  %117 = ptrtoint ptr %height2.i.i145 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %height2.i.i145, align 4
  %add.i8.i.i149 = add i32 %118, %116
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i8.i.i149, i32 %99)
  %cmp1.i9.i.i150 = icmp ugt i32 %add.i8.i.i149, %99
  br i1 %cmp1.i9.i.i150, label %if.then2.i12.i.i153, label %if.end.i10.i.i151.s5k5baf_bound_rect.exit.i158_crit_edge

if.end.i10.i.i151.s5k5baf_bound_rect.exit.i158_crit_edge: ; preds = %if.end.i10.i.i151
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_bound_rect.exit.i158

if.then2.i12.i.i153:                              ; preds = %if.end.i10.i.i151
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i11.i.i152 = sub i32 %99, %118
  %119 = ptrtoint ptr %top.i.i144 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %sub.i11.i.i152, ptr %top.i.i144, align 4
  br label %s5k5baf_bound_rect.exit.i158

s5k5baf_bound_rect.exit.i158:                     ; preds = %if.then2.i12.i.i153, %if.end.i10.i.i151.s5k5baf_bound_rect.exit.i158_crit_edge
  %120 = ptrtoint ptr %top.i.i144 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %top.i.i144, align 4
  %and.i13.i.i154 = and i32 %121, -2
  store i32 %and.i13.i.i154, ptr %top.i.i144, align 4
  %and4.i14.i.i155 = and i32 %118, -2
  %122 = tail call i32 @llvm.umax.i32(i32 %and4.i14.i.i155, i32 8) #10
  %123 = ptrtoint ptr %height2.i.i145 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %height2.i.i145, align 4
  %inc.i156 = add i32 %i.0.i127, 1
  %cmp.not.i157 = icmp eq i32 %inc.i156, 4
  br i1 %cmp.not.i157, label %s5k5baf_set_rect_and_adjust.exit160, label %s5k5baf_bound_rect.exit.i158.do.body.i135_crit_edge

s5k5baf_bound_rect.exit.i158.do.body.i135_crit_edge: ; preds = %s5k5baf_bound_rect.exit.i158
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i135

s5k5baf_set_rect_and_adjust.exit160:              ; preds = %s5k5baf_bound_rect.exit.i158
  %124 = call ptr @memcpy(ptr %r57, ptr %90, i32 16)
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %crop_sink, ptr noundef nonnull dereferenceable(16) @s5k5baf_cis_rect, i32 16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i161 = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i161, label %lor.lhs.false60, label %s5k5baf_set_rect_and_adjust.exit160.if.then63_crit_edge

s5k5baf_set_rect_and_adjust.exit160.if.then63_crit_edge: ; preds = %s5k5baf_set_rect_and_adjust.exit160
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then63

lor.lhs.false60:                                  ; preds = %s5k5baf_set_rect_and_adjust.exit160
  %bcmp.i162 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %compose, ptr noundef nonnull dereferenceable(16) @s5k5baf_cis_rect, i32 16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i162)
  %tobool.not.i163 = icmp eq i32 %bcmp.i162, 0
  br i1 %tobool.not.i163, label %if.end65thread-pre-split, label %lor.lhs.false60.if.then63_crit_edge

lor.lhs.false60.if.then63_crit_edge:              ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then63

if.then63:                                        ; preds = %lor.lhs.false60.if.then63_crit_edge, %s5k5baf_set_rect_and_adjust.exit160.if.then63_crit_edge
  %125 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %125)
  %bf.load64 = load i8, ptr %streaming, align 4
  %bf.set = or i8 %bf.load64, 32
  store i8 %bf.set, ptr %streaming, align 4
  br label %if.end65

if.end65thread-pre-split:                         ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #12
  %126 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %126)
  %bf.load67.pr = load i8, ptr %streaming, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.end65thread-pre-split, %if.then63
  %bf.load67 = phi i8 [ %bf.load67.pr, %if.end65thread-pre-split ], [ %bf.set, %if.then63 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load67)
  %tobool70.not = icmp sgt i8 %bf.load67, -1
  br i1 %tobool70.not, label %if.end65.if.end73_crit_edge, label %if.then71

if.end65.if.end73_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.then71:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  %call72 = tail call fastcc i32 @s5k5baf_hw_set_crop_rects(ptr noundef %retval.0.i)
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.end65.if.end73_crit_edge
  %ret.0 = phi i32 [ %call72, %if.then71 ], [ 0, %if.end65.if.end73_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %s5k5baf_set_rect_and_adjust.exit, %lor.lhs.false, %s5k5baf_get_sel_rect.exit
  %retval.0 = phi i32 [ 0, %s5k5baf_set_rect_and_adjust.exit ], [ %ret.0, %if.end73 ], [ -22, %lor.lhs.false ], [ -22, %s5k5baf_get_sel_rect.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k5baf_registered(ptr noundef %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %function.i.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 3
  %0 = ptrtoint ptr %function.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %function.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131073, i32 %1)
  %cmp.i.i = icmp eq i32 %1, 131073
  %retval.0.v.i = select i1 %cmp.i.i, i32 -72, i32 -300
  %retval.0.i = getelementptr i8, ptr %sd, i32 %retval.0.v.i
  %v4l2_dev = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 5
  %2 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v4l2_dev, align 4
  %cis_sd = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 7
  %call1 = tail call i32 @v4l2_device_register_subdev(ptr noundef %3, ptr noundef %cis_sd) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %name3 = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 7, i32 9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %name, ptr noundef %name3) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sd7 = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 9
  %call9 = tail call i32 @media_create_pad_link(ptr noundef %cis_sd, i16 noundef zeroext 0, ptr noundef %sd7, i16 noundef zeroext 0, i32 noundef 3) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %ret.0 = phi i32 [ %call1, %do.end ], [ %call9, %if.else ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s5k5baf_unregistered(ptr noundef %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %function.i.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 3
  %0 = ptrtoint ptr %function.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %function.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131073, i32 %1)
  %cmp.i.i = icmp eq i32 %1, 131073
  %retval.0.v.i = select i1 %cmp.i.i, i32 -72, i32 -300
  %retval.0.i = getelementptr i8, ptr %sd, i32 %retval.0.v.i
  %cis_sd = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 7
  tail call void @v4l2_device_unregister_subdev(ptr noundef %cis_sd) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register_subdev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_create_pad_link(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu_items(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k5baf_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %buf.i36.i = alloca [4 x i8], align 1
  %buf.i20.i = alloca [4 x i8], align 1
  %buf.i4.i = alloca [4 x i8], align 1
  %buf.i.i = alloca [4 x i8], align 1
  %.compoundliteral.i90 = alloca [2 x i16], align 2
  %.compoundliteral.i8.i = alloca [2 x i16], align 2
  %.compoundliteral.i.i = alloca [3 x i16], align 2
  %.compoundliteral.i = alloca [7 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %sd.i = getelementptr i8, ptr %1, i32 -416
  %function.i.i = getelementptr i8, ptr %1, i32 -392
  %2 = ptrtoint ptr %function.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %function.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131073, i32 %3)
  %cmp.i.i = icmp eq i32 %3, 131073
  %retval.0.v.i = select i1 %cmp.i.i, i32 -72, i32 -300
  %retval.0.i = getelementptr i8, ptr %sd.i, i32 %retval.0.v.i
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr i8, ptr %1, i32 -300
  %name3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 9
  %5 = ptrtoint ptr %name3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name3, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef %name, ptr noundef %6, i32 noundef %8) #13
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %lock = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %power = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 22
  %9 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %power, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp7 = icmp eq i32 %10, 0
  br i1 %cmp7, label %do.end6.unlock_crit_edge, label %if.end9

do.end6.unlock_crit_edge:                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end9:                                          ; preds = %do.end6
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 8
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %12, label %if.end9.unlock_crit_edge [
    i32 9963788, label %sw.bb
    i32 9963776, label %sw.bb11
    i32 9963807, label %sw.bb13
    i32 9963777, label %sw.bb15
    i32 10094849, label %sw.bb18
    i32 9963796, label %sw.bb20
    i32 9963800, label %sw.bb21
    i32 9963778, label %sw.bb23
    i32 9963803, label %sw.bb26
    i32 9963802, label %sw.bb29
    i32 10422531, label %sw.bb34
  ]

if.end9.unlock_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

sw.bb:                                            ; preds = %if.end9
  %val10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %14 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val10, align 4
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %.compoundliteral.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.then.i, label %sw.bb.if.end.i_crit_edge

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %gain_red.i = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 20, i32 1, i32 1
  %16 = ptrtoint ptr %gain_red.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gain_red.i, align 4
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %17, i32 0, i32 22
  %18 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val.i, align 4
  %conv.i = trunc i32 %19 to i16
  %20 = ptrtoint ptr %.compoundliteral.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i, ptr %.compoundliteral.i, align 2
  %arrayinit.element.i = getelementptr inbounds i16, ptr %.compoundliteral.i, i32 1
  %21 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1, ptr %arrayinit.element.i, align 2
  %arrayinit.element2.i = getelementptr inbounds i16, ptr %.compoundliteral.i, i32 2
  %22 = ptrtoint ptr %arrayinit.element2.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 95, ptr %arrayinit.element2.i, align 2
  %arrayinit.element3.i = getelementptr inbounds i16, ptr %.compoundliteral.i, i32 3
  %23 = ptrtoint ptr %arrayinit.element3.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %arrayinit.element3.i, align 2
  %arrayinit.element4.i = getelementptr inbounds i16, ptr %.compoundliteral.i, i32 4
  %gain_blue.i = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 20, i32 1, i32 2
  %24 = ptrtoint ptr %gain_blue.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %gain_blue.i, align 4
  %val5.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %25, i32 0, i32 22
  %26 = ptrtoint ptr %val5.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val5.i, align 4
  %conv6.i = trunc i32 %27 to i16
  %28 = ptrtoint ptr %arrayinit.element4.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv6.i, ptr %arrayinit.element4.i, align 2
  %arrayinit.element7.i = getelementptr inbounds i16, ptr %.compoundliteral.i, i32 5
  %29 = ptrtoint ptr %arrayinit.element7.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 1, ptr %arrayinit.element7.i, align 2
  %arrayinit.element8.i = getelementptr inbounds i16, ptr %.compoundliteral.i, i32 6
  %30 = ptrtoint ptr %arrayinit.element8.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 1, ptr %arrayinit.element8.i, align 2
  call fastcc void @s5k5baf_write_arr_seq(ptr noundef %retval.0.i, i16 noundef zeroext 966, i16 noundef zeroext 7, ptr noundef nonnull %.compoundliteral.i) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb.if.end.i_crit_edge
  %valid_auto_alg.i.i = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 21
  %31 = ptrtoint ptr %valid_auto_alg.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load.i.i = load i8, ptr %valid_auto_alg.i.i, align 4
  %32 = and i8 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = call fastcc zeroext i16 @s5k5baf_read(ptr noundef %retval.0.i, i16 noundef zeroext 1016) #10
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %auto_alg.i.i = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 19
  %33 = ptrtoint ptr %auto_alg.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %auto_alg.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %cur_alg.0.i.i = phi i16 [ %34, %if.else.i.i ], [ %call.i.i, %if.then.i.i ]
  %and.i.i = and i16 %cur_alg.0.i.i, -9
  %masksel.i = select i1 %tobool.not.i, i16 0, i16 8
  %cond.i.i = or i16 %and.i.i, %masksel.i
  call void @__sanitizer_cov_trace_cmp2(i16 %cond.i.i, i16 %cur_alg.0.i.i)
  %cmp.not.i.i = icmp eq i16 %cond.i.i, %cur_alg.0.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i.if.end10.i.i_crit_edge, label %if.then9.i.i

if.end.i.i.if.end10.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i.i

if.then9.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @s5k5baf_write(ptr noundef %retval.0.i, i16 noundef zeroext 1016, i16 noundef zeroext %cond.i.i) #10
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then9.i.i, %if.end.i.i.if.end10.i.i_crit_edge
  %error.i.i = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 12
  %35 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool11.not.i.i = icmp eq i32 %36, 0
  br i1 %tobool11.not.i.i, label %if.end13.i.i, label %if.end10.i.i.s5k5baf_hw_set_awb.exit_crit_edge

if.end10.i.i.s5k5baf_hw_set_awb.exit_crit_edge:   ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_hw_set_awb.exit

if.end13.i.i:                                     ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %valid_auto_alg.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load15.i.i = load i8, ptr %valid_auto_alg.i.i, align 4
  %bf.set.i.i = or i8 %bf.load15.i.i, 16
  store i8 %bf.set.i.i, ptr %valid_auto_alg.i.i, align 4
  %auto_alg17.i.i = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 19
  %38 = ptrtoint ptr %auto_alg17.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %cond.i.i, ptr %auto_alg17.i.i, align 4
  br label %s5k5baf_hw_set_awb.exit

s5k5baf_hw_set_awb.exit:                          ; preds = %if.end13.i.i, %if.end10.i.i.s5k5baf_hw_set_awb.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %.compoundliteral.i)
  br label %unlock

sw.bb11:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %val12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %39 = ptrtoint ptr %val12 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val12, align 4
  %conv = trunc i32 %40 to i16
  tail call fastcc void @s5k5baf_write(ptr noundef %retval.0.i, i16 noundef zeroext 484, i16 noundef zeroext %conv)
  br label %unlock

sw.bb13:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %val14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %41 = ptrtoint ptr %val14 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val14, align 4
  %arrayidx.i = getelementptr [7 x i16], ptr @s5k5baf_hw_set_colorfx.colorfx, i32 0, i32 %42
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx.i, align 2
  tail call fastcc void @s5k5baf_write(ptr noundef %retval.0.i, i16 noundef zeroext 494, i16 noundef zeroext %44) #10
  br label %unlock

sw.bb15:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %val16 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %45 = ptrtoint ptr %val16 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %val16, align 4
  %conv17 = trunc i32 %46 to i16
  tail call fastcc void @s5k5baf_write(ptr noundef %retval.0.i, i16 noundef zeroext 486, i16 noundef zeroext %conv17)
  br label %unlock

sw.bb18:                                          ; preds = %if.end9
  %val19 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %47 = ptrtoint ptr %val19 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %val19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i = icmp eq i32 %48, 0
  br i1 %cmp.i, label %if.then.i71, label %if.else.i

if.then.i71:                                      ; preds = %sw.bb18
  %valid_auto_alg.i.i68 = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 21
  %49 = ptrtoint ptr %valid_auto_alg.i.i68 to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load.i.i69 = load i8, ptr %valid_auto_alg.i.i68, align 4
  %50 = and i8 %bf.load.i.i69, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i.i70 = icmp eq i8 %50, 0
  br i1 %tobool.not.i.i70, label %if.then.i.i73, label %if.else.i.i75

if.then.i.i73:                                    ; preds = %if.then.i71
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i72 = tail call fastcc zeroext i16 @s5k5baf_read(ptr noundef %retval.0.i, i16 noundef zeroext 1016) #10
  br label %if.end.i.i78

if.else.i.i75:                                    ; preds = %if.then.i71
  call void @__sanitizer_cov_trace_pc() #12
  %auto_alg.i.i74 = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 19
  %51 = ptrtoint ptr %auto_alg.i.i74 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %auto_alg.i.i74, align 4
  br label %if.end.i.i78

if.end.i.i78:                                     ; preds = %if.else.i.i75, %if.then.i.i73
  %cur_alg.0.i.i76 = phi i16 [ %52, %if.else.i.i75 ], [ %call.i.i72, %if.then.i.i73 ]
  %or.i.i = or i16 %cur_alg.0.i.i76, 6
  call void @__sanitizer_cov_trace_cmp2(i16 %or.i.i, i16 %cur_alg.0.i.i76)
  %cmp.not.i.i77 = icmp eq i16 %or.i.i, %cur_alg.0.i.i76
  br i1 %cmp.not.i.i77, label %if.end.i.i78.if.end10.i.i82_crit_edge, label %if.then9.i.i79

if.end.i.i78.if.end10.i.i82_crit_edge:            ; preds = %if.end.i.i78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i.i82

if.then9.i.i79:                                   ; preds = %if.end.i.i78
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @s5k5baf_write(ptr noundef %retval.0.i, i16 noundef zeroext 1016, i16 noundef zeroext %or.i.i) #10
  br label %if.end10.i.i82

if.end10.i.i82:                                   ; preds = %if.then9.i.i79, %if.end.i.i78.if.end10.i.i82_crit_edge
  %error.i.i80 = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 12
  %53 = ptrtoint ptr %error.i.i80 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %error.i.i80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool11.not.i.i81 = icmp eq i32 %54, 0
  br i1 %tobool11.not.i.i81, label %if.end10.i.i82.if.end.sink.split.i_crit_edge, label %if.end10.i.i82.unlock_crit_edge

if.end10.i.i82.unlock_crit_edge:                  ; preds = %if.end10.i.i82
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end10.i.i82.if.end.sink.split.i_crit_edge:     ; preds = %if.end10.i.i82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split.i

if.else.i:                                        ; preds = %sw.bb18
  %exposure.i = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 20, i32 3, i32 1
  %55 = ptrtoint ptr %exposure.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %exposure.i, align 4
  %val.i83 = getelementptr inbounds %struct.v4l2_ctrl, ptr %56, i32 0, i32 22
  %57 = ptrtoint ptr %val.i83 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %val.i83, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %.compoundliteral.i.i) #10
  %div.i.i = sdiv i32 %58, 10
  %conv.i.i = trunc i32 %div.i.i to i16
  %59 = ptrtoint ptr %.compoundliteral.i.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv.i.i, ptr %.compoundliteral.i.i, align 2
  %arrayinit.element.i.i = getelementptr inbounds i16, ptr %.compoundliteral.i.i, i32 1
  %shr.i.i = lshr i32 %div.i.i, 16
  %conv1.i.i = trunc i32 %shr.i.i to i16
  %60 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv1.i.i, ptr %arrayinit.element.i.i, align 2
  %arrayinit.element2.i.i = getelementptr inbounds i16, ptr %.compoundliteral.i.i, i32 2
  %61 = ptrtoint ptr %arrayinit.element2.i.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 1, ptr %arrayinit.element2.i.i, align 2
  call fastcc void @s5k5baf_write_arr_seq(ptr noundef %retval.0.i, i16 noundef zeroext 956, i16 noundef zeroext 3, ptr noundef nonnull %.compoundliteral.i.i) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %.compoundliteral.i.i) #10
  %gain.i = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 20, i32 3, i32 2
  %62 = ptrtoint ptr %gain.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %gain.i, align 4
  %val2.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %63, i32 0, i32 22
  %64 = ptrtoint ptr %val2.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %val2.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %.compoundliteral.i8.i) #10
  %conv.i9.i = trunc i32 %65 to i16
  %66 = ptrtoint ptr %.compoundliteral.i8.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv.i9.i, ptr %.compoundliteral.i8.i, align 2
  %arrayinit.element.i10.i = getelementptr inbounds i16, ptr %.compoundliteral.i8.i, i32 1
  %67 = ptrtoint ptr %arrayinit.element.i10.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 1, ptr %arrayinit.element.i10.i, align 2
  call fastcc void @s5k5baf_write_arr_seq(ptr noundef %retval.0.i, i16 noundef zeroext 962, i16 noundef zeroext 2, ptr noundef nonnull %.compoundliteral.i8.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %.compoundliteral.i8.i) #10
  %valid_auto_alg.i11.i = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 21
  %68 = ptrtoint ptr %valid_auto_alg.i11.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load.i12.i = load i8, ptr %valid_auto_alg.i11.i, align 4
  %69 = and i8 %bf.load.i12.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i13.i = icmp eq i8 %69, 0
  br i1 %tobool.not.i13.i, label %if.then.i15.i, label %if.else.i17.i

if.then.i15.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i14.i = call fastcc zeroext i16 @s5k5baf_read(ptr noundef %retval.0.i, i16 noundef zeroext 1016) #10
  br label %if.end.i22.i

if.else.i17.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %auto_alg.i16.i = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 19
  %70 = ptrtoint ptr %auto_alg.i16.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %auto_alg.i16.i, align 4
  br label %if.end.i22.i

if.end.i22.i:                                     ; preds = %if.else.i17.i, %if.then.i15.i
  %cur_alg.0.i18.i = phi i16 [ %71, %if.else.i17.i ], [ %call.i14.i, %if.then.i15.i ]
  %and.i20.i = and i16 %cur_alg.0.i18.i, -7
  call void @__sanitizer_cov_trace_cmp2(i16 %and.i20.i, i16 %cur_alg.0.i18.i)
  %cmp.not.i21.i = icmp eq i16 %and.i20.i, %cur_alg.0.i18.i
  br i1 %cmp.not.i21.i, label %if.end.i22.i.if.end10.i26.i_crit_edge, label %if.then9.i23.i

if.end.i22.i.if.end10.i26.i_crit_edge:            ; preds = %if.end.i22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i26.i

if.then9.i23.i:                                   ; preds = %if.end.i22.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @s5k5baf_write(ptr noundef %retval.0.i, i16 noundef zeroext 1016, i16 noundef zeroext %and.i20.i) #10
  br label %if.end10.i26.i

if.end10.i26.i:                                   ; preds = %if.then9.i23.i, %if.end.i22.i.if.end10.i26.i_crit_edge
  %error.i24.i = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 12
  %72 = ptrtoint ptr %error.i24.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %error.i24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool11.not.i25.i = icmp eq i32 %73, 0
  br i1 %tobool11.not.i25.i, label %if.end10.i26.i.if.end.sink.split.i_crit_edge, label %if.end10.i26.i.unlock_crit_edge

if.end10.i26.i.unlock_crit_edge:                  ; preds = %if.end10.i26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end10.i26.i.if.end.sink.split.i_crit_edge:     ; preds = %if.end10.i26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split.i

if.end.sink.split.i:                              ; preds = %if.end10.i26.i.if.end.sink.split.i_crit_edge, %if.end10.i.i82.if.end.sink.split.i_crit_edge
  %valid_auto_alg.i11.sink32.i = phi ptr [ %valid_auto_alg.i.i68, %if.end10.i.i82.if.end.sink.split.i_crit_edge ], [ %valid_auto_alg.i11.i, %if.end10.i26.i.if.end.sink.split.i_crit_edge ]
  %and.i20.sink.i = phi i16 [ %or.i.i, %if.end10.i.i82.if.end.sink.split.i_crit_edge ], [ %and.i20.i, %if.end10.i26.i.if.end.sink.split.i_crit_edge ]
  %74 = ptrtoint ptr %valid_auto_alg.i11.sink32.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load15.i27.i = load i8, ptr %valid_auto_alg.i11.sink32.i, align 4
  %bf.set.i28.i = or i8 %bf.load15.i27.i, 16
  store i8 %bf.set.i28.i, ptr %valid_auto_alg.i11.sink32.i, align 4
  %auto_alg17.i29.i = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 19
  %75 = ptrtoint ptr %auto_alg17.i29.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %and.i20.sink.i, ptr %auto_alg17.i29.i, align 4
  br label %unlock

sw.bb20:                                          ; preds = %if.end9
  %vflip.i = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 20, i32 2, i32 1
  %76 = ptrtoint ptr %vflip.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %vflip.i, align 4
  %val.i85 = getelementptr inbounds %struct.v4l2_ctrl, ptr %77, i32 0, i32 22
  %78 = ptrtoint ptr %val.i85 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %val.i85, align 4
  %shl.i = shl i32 %79, 1
  %or.i = or i32 %shl.i, %79
  %conv.i86 = trunc i32 %or.i to i16
  tail call fastcc void @s5k5baf_write(ptr noundef %retval.0.i, i16 noundef zeroext 610, i16 noundef zeroext %conv.i86) #10
  %streaming.i = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 21
  %80 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %bf.load.i = load i8, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i87 = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i87, label %sw.bb20.unlock_crit_edge, label %if.then.i88

sw.bb20.unlock_crit_edge:                         ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.then.i88:                                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @s5k5baf_hw_sync_cfg(ptr noundef %retval.0.i) #10
  br label %unlock

sw.bb21:                                          ; preds = %if.end9
  %val22 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %81 = ptrtoint ptr %val22 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %val22, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %.compoundliteral.i90)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %82)
  %cmp.i91 = icmp eq i32 %82, 3
  br i1 %cmp.i91, label %if.then.i95, label %if.else.i110

if.then.i95:                                      ; preds = %sw.bb21
  %valid_auto_alg.i.i92 = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 21
  %83 = ptrtoint ptr %valid_auto_alg.i.i92 to i32
  call void @__asan_load1_noabort(i32 %83)
  %bf.load.i.i93 = load i8, ptr %valid_auto_alg.i.i92, align 4
  %84 = and i8 %bf.load.i.i93, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool.not.i.i94 = icmp eq i8 %84, 0
  br i1 %tobool.not.i.i94, label %if.then.i.i97, label %if.else.i.i99

if.then.i.i97:                                    ; preds = %if.then.i95
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i96 = tail call fastcc zeroext i16 @s5k5baf_read(ptr noundef %retval.0.i, i16 noundef zeroext 1016) #10
  br label %if.end.i.i103

if.else.i.i99:                                    ; preds = %if.then.i95
  call void @__sanitizer_cov_trace_pc() #12
  %auto_alg.i.i98 = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 19
  %85 = ptrtoint ptr %auto_alg.i.i98 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %auto_alg.i.i98, align 4
  br label %if.end.i.i103

if.end.i.i103:                                    ; preds = %if.else.i.i99, %if.then.i.i97
  %cur_alg.0.i.i100 = phi i16 [ %86, %if.else.i.i99 ], [ %call.i.i96, %if.then.i.i97 ]
  %or.i.i101 = or i16 %cur_alg.0.i.i100, 32
  call void @__sanitizer_cov_trace_cmp2(i16 %or.i.i101, i16 %cur_alg.0.i.i100)
  %cmp.not.i.i102 = icmp eq i16 %or.i.i101, %cur_alg.0.i.i100
  br i1 %cmp.not.i.i102, label %if.end.i.i103.if.end10.i.i107_crit_edge, label %if.then9.i.i104

if.end.i.i103.if.end10.i.i107_crit_edge:          ; preds = %if.end.i.i103
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i.i107

if.then9.i.i104:                                  ; preds = %if.end.i.i103
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @s5k5baf_write(ptr noundef %retval.0.i, i16 noundef zeroext 1016, i16 noundef zeroext %or.i.i101) #10
  br label %if.end10.i.i107

if.end10.i.i107:                                  ; preds = %if.then9.i.i104, %if.end.i.i103.if.end10.i.i107_crit_edge
  %error.i.i105 = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 12
  %87 = ptrtoint ptr %error.i.i105 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %error.i.i105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool11.not.i.i106 = icmp eq i32 %88, 0
  br i1 %tobool11.not.i.i106, label %if.end10.i.i107.if.end.sink.split.i111_crit_edge, label %if.end10.i.i107.s5k5baf_hw_set_anti_flicker.exit_crit_edge

if.end10.i.i107.s5k5baf_hw_set_anti_flicker.exit_crit_edge: ; preds = %if.end10.i.i107
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_hw_set_anti_flicker.exit

if.end10.i.i107.if.end.sink.split.i111_crit_edge: ; preds = %if.end10.i.i107
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split.i111

if.else.i110:                                     ; preds = %sw.bb21
  %conv.i108 = trunc i32 %82 to i16
  %89 = ptrtoint ptr %.compoundliteral.i90 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv.i108, ptr %.compoundliteral.i90, align 2
  %arrayinit.element.i109 = getelementptr inbounds i16, ptr %.compoundliteral.i90, i32 1
  %90 = ptrtoint ptr %arrayinit.element.i109 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 1, ptr %arrayinit.element.i109, align 2
  call fastcc void @s5k5baf_write_arr_seq(ptr noundef %retval.0.i, i16 noundef zeroext 980, i16 noundef zeroext 2, ptr noundef nonnull %.compoundliteral.i90) #10
  %valid_auto_alg.i4.i = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 21
  %91 = ptrtoint ptr %valid_auto_alg.i4.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %bf.load.i5.i = load i8, ptr %valid_auto_alg.i4.i, align 4
  %92 = and i8 %bf.load.i5.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool.not.i6.i = icmp eq i8 %92, 0
  br i1 %tobool.not.i6.i, label %if.then.i8.i, label %if.else.i10.i

if.then.i8.i:                                     ; preds = %if.else.i110
  call void @__sanitizer_cov_trace_pc() #12
  %call.i7.i = call fastcc zeroext i16 @s5k5baf_read(ptr noundef %retval.0.i, i16 noundef zeroext 1016) #10
  br label %if.end.i15.i

if.else.i10.i:                                    ; preds = %if.else.i110
  call void @__sanitizer_cov_trace_pc() #12
  %auto_alg.i9.i = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 19
  %93 = ptrtoint ptr %auto_alg.i9.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %auto_alg.i9.i, align 4
  br label %if.end.i15.i

if.end.i15.i:                                     ; preds = %if.else.i10.i, %if.then.i8.i
  %cur_alg.0.i11.i = phi i16 [ %94, %if.else.i10.i ], [ %call.i7.i, %if.then.i8.i ]
  %and.i13.i = and i16 %cur_alg.0.i11.i, -33
  call void @__sanitizer_cov_trace_cmp2(i16 %and.i13.i, i16 %cur_alg.0.i11.i)
  %cmp.not.i14.i = icmp eq i16 %and.i13.i, %cur_alg.0.i11.i
  br i1 %cmp.not.i14.i, label %if.end.i15.i.if.end10.i19.i_crit_edge, label %if.then9.i16.i

if.end.i15.i.if.end10.i19.i_crit_edge:            ; preds = %if.end.i15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i19.i

if.then9.i16.i:                                   ; preds = %if.end.i15.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @s5k5baf_write(ptr noundef %retval.0.i, i16 noundef zeroext 1016, i16 noundef zeroext %and.i13.i) #10
  br label %if.end10.i19.i

if.end10.i19.i:                                   ; preds = %if.then9.i16.i, %if.end.i15.i.if.end10.i19.i_crit_edge
  %error.i17.i = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 12
  %95 = ptrtoint ptr %error.i17.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %error.i17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool11.not.i18.i = icmp eq i32 %96, 0
  br i1 %tobool11.not.i18.i, label %if.end10.i19.i.if.end.sink.split.i111_crit_edge, label %if.end10.i19.i.s5k5baf_hw_set_anti_flicker.exit_crit_edge

if.end10.i19.i.s5k5baf_hw_set_anti_flicker.exit_crit_edge: ; preds = %if.end10.i19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_hw_set_anti_flicker.exit

if.end10.i19.i.if.end.sink.split.i111_crit_edge:  ; preds = %if.end10.i19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split.i111

if.end.sink.split.i111:                           ; preds = %if.end10.i19.i.if.end.sink.split.i111_crit_edge, %if.end10.i.i107.if.end.sink.split.i111_crit_edge
  %valid_auto_alg.i4.sink25.i = phi ptr [ %valid_auto_alg.i.i92, %if.end10.i.i107.if.end.sink.split.i111_crit_edge ], [ %valid_auto_alg.i4.i, %if.end10.i19.i.if.end.sink.split.i111_crit_edge ]
  %and.i13.sink.i = phi i16 [ %or.i.i101, %if.end10.i.i107.if.end.sink.split.i111_crit_edge ], [ %and.i13.i, %if.end10.i19.i.if.end.sink.split.i111_crit_edge ]
  %97 = ptrtoint ptr %valid_auto_alg.i4.sink25.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %bf.load15.i20.i = load i8, ptr %valid_auto_alg.i4.sink25.i, align 4
  %bf.set.i21.i = or i8 %bf.load15.i20.i, 16
  store i8 %bf.set.i21.i, ptr %valid_auto_alg.i4.sink25.i, align 4
  %auto_alg17.i22.i = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 19
  %98 = ptrtoint ptr %auto_alg17.i22.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %and.i13.sink.i, ptr %auto_alg17.i22.i, align 4
  br label %s5k5baf_hw_set_anti_flicker.exit

s5k5baf_hw_set_anti_flicker.exit:                 ; preds = %if.end.sink.split.i111, %if.end10.i19.i.s5k5baf_hw_set_anti_flicker.exit_crit_edge, %if.end10.i.i107.s5k5baf_hw_set_anti_flicker.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %.compoundliteral.i90)
  br label %unlock

sw.bb23:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %val24 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %99 = ptrtoint ptr %val24 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %val24, align 4
  %conv25 = trunc i32 %100 to i16
  tail call fastcc void @s5k5baf_write(ptr noundef %retval.0.i, i16 noundef zeroext 488, i16 noundef zeroext %conv25)
  br label %unlock

sw.bb26:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %val27 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %101 = ptrtoint ptr %val27 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %val27, align 4
  %conv28 = trunc i32 %102 to i16
  tail call fastcc void @s5k5baf_write(ptr noundef %retval.0.i, i16 noundef zeroext 490, i16 noundef zeroext %conv28)
  br label %unlock

sw.bb29:                                          ; preds = %if.end9
  %val30 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %103 = ptrtoint ptr %val30 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %val30, align 4
  %conv31 = trunc i32 %104 to i16
  tail call fastcc void @s5k5baf_write(ptr noundef %retval.0.i, i16 noundef zeroext 606, i16 noundef zeroext %conv31)
  %apply_cfg = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 21
  %105 = ptrtoint ptr %apply_cfg to i32
  call void @__asan_load1_noabort(i32 %105)
  %bf.load = load i8, ptr %apply_cfg, align 4
  %106 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool.not = icmp eq i8 %106, 0
  br i1 %tobool.not, label %sw.bb29.unlock_crit_edge, label %if.then32

sw.bb29.unlock_crit_edge:                         ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.then32:                                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @s5k5baf_hw_sync_cfg(ptr noundef %retval.0.i)
  br label %unlock

sw.bb34:                                          ; preds = %if.end9
  %val35 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %107 = ptrtoint ptr %val35 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %val35, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #10
  %109 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 1
  %110 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 2
  %111 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 3
  %112 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 49, ptr %buf.i.i, align 1
  %113 = ptrtoint ptr %109 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 24, ptr %109, align 1
  %114 = ptrtoint ptr %110 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 3, ptr %110, align 1
  %115 = ptrtoint ptr %111 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 32, ptr %111, align 1
  %dev_priv.i.i.i = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 9, i32 11
  %116 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev_priv.i.i.i, align 4
  %error.i.i113 = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 12
  %118 = ptrtoint ptr %error.i.i113 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %error.i.i113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool.not.i.i114 = icmp eq i32 %119, 0
  br i1 %tobool.not.i.i114, label %if.end.i.i116, label %sw.bb34.s5k5baf_i2c_write.exit.i_crit_edge

sw.bb34.s5k5baf_i2c_write.exit.i_crit_edge:       ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_i2c_write.exit.i

if.end.i.i116:                                    ; preds = %sw.bb34
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %117, ptr noundef nonnull %buf.i.i, i32 noundef 4, i16 noundef zeroext 0) #10
  %120 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %120)
  %cmp.i.i115 = icmp sgt i32 %120, 2
  br i1 %cmp.i.i115, label %do.end.i.i, label %if.end.i.i116.do.end22.i.i_crit_edge

if.end.i.i116.do.end22.i.i_crit_edge:             ; preds = %if.end.i.i116
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22.i.i

do.end.i.i:                                       ; preds = %if.end.i.i116
  call void @__sanitizer_cov_trace_pc() #12
  %name.i.i = getelementptr inbounds %struct.i2c_client, ptr %117, i32 0, i32 2
  %call19.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name.i.i, i32 noundef 12568, i32 noundef 800) #13
  br label %do.end22.i.i

do.end22.i.i:                                     ; preds = %do.end.i.i, %if.end.i.i116.do.end22.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.i)
  %cmp23.not.i.i = icmp eq i32 %call.i.i.i, 4
  br i1 %cmp23.not.i.i, label %do.end22.i.i.s5k5baf_i2c_write.exit.i_crit_edge, label %do.end28.i.i

do.end22.i.i.s5k5baf_i2c_write.exit.i_crit_edge:  ; preds = %do.end22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_i2c_write.exit.i

do.end28.i.i:                                     ; preds = %do.end22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %name30.i.i = getelementptr inbounds %struct.i2c_client, ptr %117, i32 0, i32 2
  %call32.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name30.i.i, i32 noundef %call.i.i.i) #13
  %121 = ptrtoint ptr %error.i.i113 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %call.i.i.i, ptr %error.i.i113, align 4
  br label %s5k5baf_i2c_write.exit.i

s5k5baf_i2c_write.exit.i:                         ; preds = %do.end28.i.i, %do.end22.i.i.s5k5baf_i2c_write.exit.i_crit_edge, %sw.bb34.s5k5baf_i2c_write.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i4.i) #10
  %122 = getelementptr inbounds [4 x i8], ptr %buf.i4.i, i32 0, i32 1
  %123 = getelementptr inbounds [4 x i8], ptr %buf.i4.i, i32 0, i32 2
  %124 = getelementptr inbounds [4 x i8], ptr %buf.i4.i, i32 0, i32 3
  %125 = ptrtoint ptr %buf.i4.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 49, ptr %buf.i4.i, align 1
  %126 = ptrtoint ptr %122 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 26, ptr %122, align 1
  %127 = ptrtoint ptr %123 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 1, ptr %123, align 1
  %128 = ptrtoint ptr %124 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 -1, ptr %124, align 1
  %129 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev_priv.i.i.i, align 4
  %131 = ptrtoint ptr %error.i.i113 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %error.i.i113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool.not.i7.i = icmp eq i32 %132, 0
  br i1 %tobool.not.i7.i, label %if.end.i10.i, label %s5k5baf_i2c_write.exit.i.s5k5baf_i2c_write.exit19.i_crit_edge

s5k5baf_i2c_write.exit.i.s5k5baf_i2c_write.exit19.i_crit_edge: ; preds = %s5k5baf_i2c_write.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_i2c_write.exit19.i

if.end.i10.i:                                     ; preds = %s5k5baf_i2c_write.exit.i
  %call.i.i8.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %130, ptr noundef nonnull %buf.i4.i, i32 noundef 4, i16 noundef zeroext 0) #10
  %133 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %133)
  %cmp.i9.i = icmp sgt i32 %133, 2
  br i1 %cmp.i9.i, label %do.end.i13.i, label %if.end.i10.i.do.end22.i15.i_crit_edge

if.end.i10.i.do.end22.i15.i_crit_edge:            ; preds = %if.end.i10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22.i15.i

do.end.i13.i:                                     ; preds = %if.end.i10.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i11.i = getelementptr inbounds %struct.i2c_client, ptr %130, i32 0, i32 2
  %call19.i12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name.i11.i, i32 noundef 12570, i32 noundef 511) #13
  br label %do.end22.i15.i

do.end22.i15.i:                                   ; preds = %do.end.i13.i, %if.end.i10.i.do.end22.i15.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i8.i)
  %cmp23.not.i14.i = icmp eq i32 %call.i.i8.i, 4
  br i1 %cmp23.not.i14.i, label %do.end22.i15.i.s5k5baf_i2c_write.exit19.i_crit_edge, label %do.end28.i18.i

do.end22.i15.i.s5k5baf_i2c_write.exit19.i_crit_edge: ; preds = %do.end22.i15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_i2c_write.exit19.i

do.end28.i18.i:                                   ; preds = %do.end22.i15.i
  call void @__sanitizer_cov_trace_pc() #12
  %name30.i16.i = getelementptr inbounds %struct.i2c_client, ptr %130, i32 0, i32 2
  %call32.i17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name30.i16.i, i32 noundef %call.i.i8.i) #13
  %134 = ptrtoint ptr %error.i.i113 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %call.i.i8.i, ptr %error.i.i113, align 4
  br label %s5k5baf_i2c_write.exit19.i

s5k5baf_i2c_write.exit19.i:                       ; preds = %do.end28.i18.i, %do.end22.i15.i.s5k5baf_i2c_write.exit19.i_crit_edge, %s5k5baf_i2c_write.exit.i.s5k5baf_i2c_write.exit19.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i4.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i20.i) #10
  %135 = getelementptr inbounds [4 x i8], ptr %buf.i20.i, i32 0, i32 1
  %136 = getelementptr inbounds [4 x i8], ptr %buf.i20.i, i32 0, i32 2
  %137 = getelementptr inbounds [4 x i8], ptr %buf.i20.i, i32 0, i32 3
  %138 = ptrtoint ptr %buf.i20.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 49, ptr %buf.i20.i, align 1
  %139 = ptrtoint ptr %135 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 28, ptr %135, align 1
  %140 = ptrtoint ptr %136 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 0, ptr %136, align 1
  %141 = ptrtoint ptr %137 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 0, ptr %137, align 1
  %142 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev_priv.i.i.i, align 4
  %144 = ptrtoint ptr %error.i.i113 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %error.i.i113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool.not.i23.i = icmp eq i32 %145, 0
  br i1 %tobool.not.i23.i, label %if.end.i26.i, label %s5k5baf_i2c_write.exit19.i.s5k5baf_i2c_write.exit35.i_crit_edge

s5k5baf_i2c_write.exit19.i.s5k5baf_i2c_write.exit35.i_crit_edge: ; preds = %s5k5baf_i2c_write.exit19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_i2c_write.exit35.i

if.end.i26.i:                                     ; preds = %s5k5baf_i2c_write.exit19.i
  %call.i.i24.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %143, ptr noundef nonnull %buf.i20.i, i32 noundef 4, i16 noundef zeroext 0) #10
  %146 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %146)
  %cmp.i25.i = icmp sgt i32 %146, 2
  br i1 %cmp.i25.i, label %do.end.i29.i, label %if.end.i26.i.do.end22.i31.i_crit_edge

if.end.i26.i.do.end22.i31.i_crit_edge:            ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22.i31.i

do.end.i29.i:                                     ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i27.i = getelementptr inbounds %struct.i2c_client, ptr %143, i32 0, i32 2
  %call19.i28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name.i27.i, i32 noundef 12572, i32 noundef 0) #13
  br label %do.end22.i31.i

do.end22.i31.i:                                   ; preds = %do.end.i29.i, %if.end.i26.i.do.end22.i31.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i24.i)
  %cmp23.not.i30.i = icmp eq i32 %call.i.i24.i, 4
  br i1 %cmp23.not.i30.i, label %do.end22.i31.i.s5k5baf_i2c_write.exit35.i_crit_edge, label %do.end28.i34.i

do.end22.i31.i.s5k5baf_i2c_write.exit35.i_crit_edge: ; preds = %do.end22.i31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_i2c_write.exit35.i

do.end28.i34.i:                                   ; preds = %do.end22.i31.i
  call void @__sanitizer_cov_trace_pc() #12
  %name30.i32.i = getelementptr inbounds %struct.i2c_client, ptr %143, i32 0, i32 2
  %call32.i33.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name30.i32.i, i32 noundef %call.i.i24.i) #13
  %147 = ptrtoint ptr %error.i.i113 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %call.i.i24.i, ptr %error.i.i113, align 4
  br label %s5k5baf_i2c_write.exit35.i

s5k5baf_i2c_write.exit35.i:                       ; preds = %do.end28.i34.i, %do.end22.i31.i.s5k5baf_i2c_write.exit35.i_crit_edge, %s5k5baf_i2c_write.exit19.i.s5k5baf_i2c_write.exit35.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i20.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i36.i) #10
  %148 = getelementptr inbounds [4 x i8], ptr %buf.i36.i, i32 0, i32 1
  %149 = getelementptr inbounds [4 x i8], ptr %buf.i36.i, i32 0, i32 2
  %150 = getelementptr inbounds [4 x i8], ptr %buf.i36.i, i32 0, i32 3
  %151 = ptrtoint ptr %buf.i36.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 49, ptr %buf.i36.i, align 1
  %152 = ptrtoint ptr %148 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 0, ptr %148, align 1
  %conv5.i.i = and i32 %108, 65535
  %153 = lshr i32 %108, 8
  %conv7.i.i = trunc i32 %153 to i8
  %154 = ptrtoint ptr %149 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %conv7.i.i, ptr %149, align 1
  %conv11.i.i = trunc i32 %108 to i8
  %155 = ptrtoint ptr %150 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %conv11.i.i, ptr %150, align 1
  %156 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dev_priv.i.i.i, align 4
  %158 = ptrtoint ptr %error.i.i113 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %error.i.i113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %tobool.not.i39.i = icmp eq i32 %159, 0
  br i1 %tobool.not.i39.i, label %if.end.i42.i, label %s5k5baf_i2c_write.exit35.i.s5k5baf_hw_set_test_pattern.exit_crit_edge

s5k5baf_i2c_write.exit35.i.s5k5baf_hw_set_test_pattern.exit_crit_edge: ; preds = %s5k5baf_i2c_write.exit35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_hw_set_test_pattern.exit

if.end.i42.i:                                     ; preds = %s5k5baf_i2c_write.exit35.i
  %call.i.i40.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %157, ptr noundef nonnull %buf.i36.i, i32 noundef 4, i16 noundef zeroext 0) #10
  %160 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %160)
  %cmp.i41.i = icmp sgt i32 %160, 2
  br i1 %cmp.i41.i, label %do.end.i45.i, label %if.end.i42.i.do.end22.i47.i_crit_edge

if.end.i42.i.do.end22.i47.i_crit_edge:            ; preds = %if.end.i42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22.i47.i

do.end.i45.i:                                     ; preds = %if.end.i42.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i43.i = getelementptr inbounds %struct.i2c_client, ptr %157, i32 0, i32 2
  %call19.i44.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name.i43.i, i32 noundef 12544, i32 noundef %conv5.i.i) #13
  br label %do.end22.i47.i

do.end22.i47.i:                                   ; preds = %do.end.i45.i, %if.end.i42.i.do.end22.i47.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i40.i)
  %cmp23.not.i46.i = icmp eq i32 %call.i.i40.i, 4
  br i1 %cmp23.not.i46.i, label %do.end22.i47.i.s5k5baf_hw_set_test_pattern.exit_crit_edge, label %do.end28.i50.i

do.end22.i47.i.s5k5baf_hw_set_test_pattern.exit_crit_edge: ; preds = %do.end22.i47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %s5k5baf_hw_set_test_pattern.exit

do.end28.i50.i:                                   ; preds = %do.end22.i47.i
  call void @__sanitizer_cov_trace_pc() #12
  %name30.i48.i = getelementptr inbounds %struct.i2c_client, ptr %157, i32 0, i32 2
  %call32.i49.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name30.i48.i, i32 noundef %call.i.i40.i) #13
  %161 = ptrtoint ptr %error.i.i113 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %call.i.i40.i, ptr %error.i.i113, align 4
  br label %s5k5baf_hw_set_test_pattern.exit

s5k5baf_hw_set_test_pattern.exit:                 ; preds = %do.end28.i50.i, %do.end22.i47.i.s5k5baf_hw_set_test_pattern.exit_crit_edge, %s5k5baf_i2c_write.exit35.i.s5k5baf_hw_set_test_pattern.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i36.i) #10
  br label %unlock

unlock:                                           ; preds = %s5k5baf_hw_set_test_pattern.exit, %if.then32, %sw.bb29.unlock_crit_edge, %sw.bb26, %sw.bb23, %s5k5baf_hw_set_anti_flicker.exit, %if.then.i88, %sw.bb20.unlock_crit_edge, %if.end.sink.split.i, %if.end10.i26.i.unlock_crit_edge, %if.end10.i.i82.unlock_crit_edge, %sw.bb15, %sw.bb13, %sw.bb11, %s5k5baf_hw_set_awb.exit, %if.end9.unlock_crit_edge, %do.end6.unlock_crit_edge
  %error.i = getelementptr inbounds %struct.s5k5baf, ptr %retval.0.i, i32 0, i32 12
  %162 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %error.i, align 4
  store i32 0, ptr %error.i, align 4
  call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %163
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 146)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 146)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !15, !16, !18, !20, !22, !23, !25, !27, !29, !30, !31, !32, !33, !34, !35, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54, !56, !58, !59, !60, !61, !63, !65, !67, !68, !69, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !89, !90, !91, !92, !94, !95, !96, !97, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !122, !123, !124, !125, !127, !128, !129, !131, !133, !134, !135, !136, !138, !139, !140, !141, !143, !144, !145, !146, !148, !149, !150, !152, !154, !155, !156, !157, !159, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !175, !177, !178, !179, !181, !182, !183, !184, !186, !188, !190, !192, !193, !194, !195, !197, !199, !201, !203, !204, !205, !206, !208, !209, !210, !211, !213, !215, !217, !219, !221, !222, !223, !224, !226, !227, !228, !230, !231, !232, !233, !235, !236, !237, !239, !240, !241, !242, !244, !245, !247, !248, !249, !250, !252, !253, !254, !256, !258, !259, !260, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281}
!llvm.module.flags = !{!283, !284, !285, !286, !287, !288, !289, !290}
!llvm.ident = !{!291}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/s5k5baf.c", i32 33, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype292, !1, !"__UNIQUE_ID_debugtype292", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_s5k5baf__301_2059_s5k5baf_i2c_driver_init6, !4, !"__initcall__kmod_s5k5baf__301_2059_s5k5baf_i2c_driver_init6", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/s5k5baf.c", i32 2059, i32 1}
!5 = !{ptr @__exitcall_s5k5baf_i2c_driver_exit, !4, !"__exitcall_s5k5baf_i2c_driver_exit", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description302, !7, !"__UNIQUE_ID_description302", i1 false, i1 false}
!7 = !{!"../drivers/media/i2c/s5k5baf.c", i32 2061, i32 1}
!8 = !{ptr @__UNIQUE_ID_author303, !9, !"__UNIQUE_ID_author303", i1 false, i1 false}
!9 = !{!"../drivers/media/i2c/s5k5baf.c", i32 2062, i32 1}
!10 = !{ptr @__UNIQUE_ID_file304, !11, !"__UNIQUE_ID_file304", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/s5k5baf.c", i32 2063, i32 1}
!12 = !{ptr @__UNIQUE_ID_license305, !11, !"__UNIQUE_ID_license305", i1 false, i1 false}
!13 = !{ptr @debug, !14, !"debug", i1 false, i1 false}
!14 = !{!"../drivers/media/i2c/s5k5baf.c", i32 32, i32 12}
!15 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/s5k5baf.c", i32 2052, i32 11}
!18 = !{ptr @s5k5baf_i2c_driver, !19, !"s5k5baf_i2c_driver", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/s5k5baf.c", i32 2049, i32 26}
!20 = !{ptr @s5k5baf_probe.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1964, i32 2}
!22 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1985, i32 45}
!25 = !{ptr @s5k5baf_cis_rect, !26, !"s5k5baf_cis_rect", i1 false, i1 false}
!26 = !{!"../drivers/media/i2c/s5k5baf.c", i32 336, i32 25}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1851, i32 3}
!29 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @s5k5baf_parse_device_node._entry, !28, !"_entry", i1 false, i1 false}
!34 = !{ptr @s5k5baf_parse_device_node._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1855, i32 35}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1859, i32 3}
!39 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @s5k5baf_parse_device_node._entry.9, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @s5k5baf_parse_device_node._entry_ptr.12, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1869, i32 3}
!44 = !{ptr @s5k5baf_parse_device_node._entry.13, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @s5k5baf_parse_device_node._entry_ptr.15, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1887, i32 3}
!48 = !{ptr @s5k5baf_parse_device_node._entry.16, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @s5k5baf_parse_device_node._entry_ptr.18, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1823, i32 3}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1824, i32 3}
!54 = distinct !{null, !55, !"names", i1 false, i1 false}
!55 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1822, i32 28}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1833, i32 4}
!58 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @s5k5baf_parse_gpios._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @s5k5baf_parse_gpios._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1905, i32 39}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1919, i32 39}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1935, i32 2}
!67 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @s5k5baf_configure_subdevs._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @s5k5baf_configure_subdevs._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @s5k5baf_cis_subdev_ops, !71, !"s5k5baf_cis_subdev_ops", i1 false, i1 false}
!71 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1775, i32 37}
!72 = !{ptr @s5k5baf_cis_pad_ops, !73, !"s5k5baf_cis_pad_ops", i1 false, i1 false}
!73 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1527, i32 41}
!74 = !{ptr @s5k5baf_formats, !75, !"s5k5baf_formats", i1 false, i1 false}
!75 = !{!"../drivers/media/i2c/s5k5baf.c", i32 329, i32 36}
!76 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!78 = !{ptr @s5k5baf_cis_subdev_internal_ops, !79, !"s5k5baf_cis_subdev_internal_ops", i1 false, i1 false}
!79 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1779, i32 46}
!80 = !{ptr @s5k5baf_subdev_ops, !81, !"s5k5baf_subdev_ops", i1 false, i1 false}
!81 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1794, i32 37}
!82 = !{ptr @s5k5baf_core_ops, !83, !"s5k5baf_core_ops", i1 false, i1 false}
!83 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1789, i32 42}
!84 = !{ptr @.str.28, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1031, i32 30}
!86 = !{ptr @.str.29, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1033, i32 3}
!88 = !{ptr @.str.30, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @s5k5baf_load_setfile._entry, !87, !"_entry", i1 false, i1 false}
!91 = !{ptr @s5k5baf_load_setfile._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.32, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/i2c/s5k5baf.c", i32 359, i32 3}
!94 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @s5k5baf_fw_parse._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @s5k5baf_fw_parse._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.34, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/i2c/s5k5baf.c", i32 363, i32 21}
!99 = !{ptr @.str.36, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/i2c/s5k5baf.c", i32 365, i32 3}
!101 = !{ptr @s5k5baf_fw_parse._entry.35, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @s5k5baf_fw_parse._entry_ptr.37, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.39, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/i2c/s5k5baf.c", i32 381, i32 3}
!105 = !{ptr @s5k5baf_fw_parse._entry.38, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @s5k5baf_fw_parse._entry_ptr.40, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.42, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/i2c/s5k5baf.c", i32 391, i32 3}
!109 = !{ptr @s5k5baf_fw_parse._entry.41, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @s5k5baf_fw_parse._entry_ptr.43, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.44, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/i2c/s5k5baf.c", i32 487, i32 2}
!113 = !{ptr @.str.45, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @s5k5baf_write_arr_seq._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @s5k5baf_write_arr_seq._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.47, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/i2c/s5k5baf.c", i32 502, i32 4}
!118 = !{ptr @s5k5baf_write_arr_seq._entry.46, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @s5k5baf_write_arr_seq._entry_ptr.48, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.49, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/i2c/s5k5baf.c", i32 457, i32 2}
!122 = !{ptr @.str.50, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @s5k5baf_i2c_write._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @s5k5baf_i2c_write._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.52, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/i2c/s5k5baf.c", i32 460, i32 3}
!127 = !{ptr @s5k5baf_i2c_write._entry.51, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @s5k5baf_i2c_write._entry_ptr.53, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @s5k5baf_hw_set_clocks.nseq_clk_cfg, !130, !"nseq_clk_cfg", i1 false, i1 false}
!130 = !{!"../drivers/media/i2c/s5k5baf.c", i32 587, i32 19}
!131 = !{ptr @.str.54, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/i2c/s5k5baf.c", i32 602, i32 3}
!133 = !{ptr @.str.55, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @s5k5baf_hw_set_clocks._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @s5k5baf_hw_set_clocks._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.56, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/i2c/s5k5baf.c", i32 552, i32 2}
!138 = !{ptr @.str.57, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @s5k5baf_synchronize._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @s5k5baf_synchronize._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.58, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/i2c/s5k5baf.c", i32 438, i32 2}
!143 = !{ptr @.str.59, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @s5k5baf_i2c_read._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @s5k5baf_i2c_read._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.61, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/i2c/s5k5baf.c", i32 441, i32 3}
!148 = !{ptr @s5k5baf_i2c_read._entry.60, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @s5k5baf_i2c_read._entry_ptr.62, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @s5k5baf_video_ops, !151, !"s5k5baf_video_ops", i1 false, i1 false}
!151 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1544, i32 43}
!152 = !{ptr @.str.63, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/i2c/s5k5baf.c", i32 841, i32 3}
!154 = !{ptr @.str.64, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @s5k5baf_hw_validate_cfg._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @s5k5baf_hw_validate_cfg._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.65, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/i2c/s5k5baf.c", i32 810, i32 4}
!159 = !{ptr @.str.66, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @s5k5baf_hw_find_min_fiv._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @s5k5baf_hw_find_min_fiv._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.68, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/i2c/s5k5baf.c", i32 814, i32 4}
!164 = !{ptr @s5k5baf_hw_find_min_fiv._entry.67, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @s5k5baf_hw_find_min_fiv._entry_ptr.69, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.71, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/i2c/s5k5baf.c", i32 819, i32 2}
!168 = !{ptr @s5k5baf_hw_find_min_fiv._entry.70, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @s5k5baf_hw_find_min_fiv._entry_ptr.72, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.73, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/i2c/s5k5baf.c", i32 890, i32 4}
!172 = !{ptr @.str.74, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @s5k5baf_hw_set_crop_rects._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @s5k5baf_hw_set_crop_rects._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.76, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/i2c/s5k5baf.c", i32 898, i32 3}
!177 = !{ptr @s5k5baf_hw_set_crop_rects._entry.75, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @s5k5baf_hw_set_crop_rects._entry_ptr.77, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.78, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1164, i32 3}
!181 = !{ptr @.str.79, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @s5k5baf_set_frame_interval._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @s5k5baf_set_frame_interval._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @s5k5baf_pad_ops, !185, !"s5k5baf_pad_ops", i1 false, i1 false}
!185 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1534, i32 41}
!186 = !{ptr @s5k5baf_set_selection.rtype, !187, !"rtype", i1 false, i1 false}
!187 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1468, i32 29}
!188 = !{ptr @s5k5baf_subdev_internal_ops, !189, !"s5k5baf_subdev_internal_ops", i1 false, i1 false}
!189 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1783, i32 46}
!190 = !{ptr @.str.80, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1759, i32 3}
!192 = !{ptr @.str.81, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @s5k5baf_registered._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @s5k5baf_registered._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.82, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1802, i32 39}
!197 = !{ptr @.str.83, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1802, i32 55}
!199 = distinct !{null, !200, !"name", i1 false, i1 false}
!200 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1802, i32 28}
!201 = !{ptr @.str.84, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1813, i32 4}
!203 = !{ptr @.str.85, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @s5k5baf_configure_gpios._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @s5k5baf_configure_gpios._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.86, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1951, i32 3}
!208 = !{ptr @.str.87, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @s5k5baf_configure_regulators._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @s5k5baf_configure_regulators._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.88, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/media/i2c/s5k5baf.c", i32 223, i32 2}
!213 = !{ptr @.str.89, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/i2c/s5k5baf.c", i32 224, i32 2}
!215 = !{ptr @.str.90, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/media/i2c/s5k5baf.c", i32 226, i32 2}
!217 = distinct !{null, !218, !"s5k5baf_supply_names", i1 false, i1 false}
!218 = !{!"../drivers/media/i2c/s5k5baf.c", i32 222, i32 27}
!219 = !{ptr @.str.91, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/media/i2c/s5k5baf.c", i32 967, i32 2}
!221 = !{ptr @.str.92, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @s5k5baf_power_on._entry, !220, !"_entry", i1 false, i1 false}
!223 = !{ptr @s5k5baf_power_on._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.94, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/media/i2c/s5k5baf.c", i32 978, i32 2}
!226 = !{ptr @s5k5baf_power_on._entry.93, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @s5k5baf_power_on._entry_ptr.95, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.96, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1741, i32 2}
!230 = !{ptr @.str.97, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @s5k5baf_check_fw_revision._entry, !229, !"_entry", i1 false, i1 false}
!232 = !{ptr @s5k5baf_check_fw_revision._entry_ptr, !229, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.99, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1745, i32 3}
!235 = !{ptr @s5k5baf_check_fw_revision._entry.98, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @s5k5baf_check_fw_revision._entry_ptr.100, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.101, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/media/i2c/s5k5baf.c", i32 999, i32 3}
!239 = !{ptr @.str.102, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @s5k5baf_power_off._entry, !238, !"_entry", i1 false, i1 false}
!241 = !{ptr @s5k5baf_power_off._entry_ptr, !238, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @s5k5baf_initialize_ctrls._key, !243, !"_key", i1 false, i1 false}
!243 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1641, i32 8}
!244 = !{ptr @.str.103, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @.str.104, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1643, i32 3}
!247 = !{ptr @.str.105, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @s5k5baf_initialize_ctrls._entry, !246, !"_entry", i1 false, i1 false}
!249 = !{ptr @s5k5baf_initialize_ctrls._entry_ptr, !246, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.107, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1691, i32 3}
!252 = !{ptr @s5k5baf_initialize_ctrls._entry.106, !251, !"_entry", i1 false, i1 false}
!253 = !{ptr @s5k5baf_initialize_ctrls._entry_ptr.108, !251, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @s5k5baf_ctrl_ops, !255, !"s5k5baf_ctrl_ops", i1 false, i1 false}
!255 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1620, i32 35}
!256 = !{ptr @.str.109, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1560, i32 2}
!258 = !{ptr @.str.110, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @s5k5baf_s_ctrl._entry, !257, !"_entry", i1 false, i1 false}
!260 = !{ptr @s5k5baf_s_ctrl._entry_ptr, !257, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @s5k5baf_hw_set_colorfx.colorfx, !262, !"colorfx", i1 false, i1 false}
!262 = !{!"../drivers/media/i2c/s5k5baf.c", i32 726, i32 19}
!263 = !{ptr @.str.111, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1625, i32 2}
!265 = !{ptr @.str.112, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1626, i32 2}
!267 = !{ptr @.str.113, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1627, i32 2}
!269 = !{ptr @.str.114, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1628, i32 2}
!271 = !{ptr @.str.115, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1629, i32 2}
!273 = !{ptr @.str.116, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1630, i32 2}
!275 = !{ptr @.str.117, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1631, i32 2}
!277 = !{ptr @s5k5baf_test_pattern_menu, !278, !"s5k5baf_test_pattern_menu", i1 false, i1 false}
!278 = !{!"../drivers/media/i2c/s5k5baf.c", i32 1624, i32 27}
!279 = !{ptr @s5k5baf_of_match, !280, !"s5k5baf_of_match", i1 false, i1 false}
!280 = !{!"../drivers/media/i2c/s5k5baf.c", i32 2043, i32 34}
!281 = !{ptr @s5k5baf_id, !282, !"s5k5baf_id", i1 false, i1 false}
!282 = !{!"../drivers/media/i2c/s5k5baf.c", i32 2037, i32 35}
!283 = !{i32 1, !"wchar_size", i32 2}
!284 = !{i32 1, !"min_enum_size", i32 4}
!285 = !{i32 8, !"branch-target-enforcement", i32 0}
!286 = !{i32 8, !"sign-return-address", i32 0}
!287 = !{i32 8, !"sign-return-address-all", i32 0}
!288 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!289 = !{i32 7, !"uwtable", i32 1}
!290 = !{i32 7, !"frame-pointer", i32 2}
!291 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!292 = !{!"auto-init"}
!293 = !{!"branch_weights", i32 2000, i32 1}
!294 = !{!"branch_weights", i32 1, i32 2000}
