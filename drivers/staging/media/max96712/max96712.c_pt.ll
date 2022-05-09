; ModuleID = '/llk/IR_all_yes/drivers/staging/media/max96712/max96712.c_pt.bc'
source_filename = "../drivers/staging/media/max96712/max96712.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
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
%struct.max96712_priv = type { ptr, ptr, ptr, %struct.v4l2_fwnode_bus_mipi_csi2, %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, [1 x %struct.media_pad], i32 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.100, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.100 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.92, %union.anon.93, i32, ptr, i32, %struct.anon.94, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.92 = type { i64 }
%union.anon.93 = type { ptr }
%struct.anon.94 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__initcall__kmod_max96712__292_436_max96712_i2c_driver_init6 = internal global ptr @max96712_i2c_driver_init, section ".initcall6.init", align 4
@max96712_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @max96712_remove, ptr @max96712_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max96712_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max96712_i2c_driver_exit = internal global ptr @max96712_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description293 = internal constant [67 x i8] c"max96712.description=Maxim MAX96712 Quad GMSL2 Deserializer Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [66 x i8] c"max96712.author=Niklas S\C3\B6derlund <niklas.soderlund@ragnatech.se>\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [54 x i8] c"max96712.file=drivers/staging/media/max96712/max96712\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [21 x i8] c"max96712.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max96712\00", [23 x i8] zeroinitializer }, align 32
@max96712_of_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max96712\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@max96712_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@max96712_i2c_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 7936, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"max96712:381:(&max96712_i2c_regmap)->lock\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max96712-pwdn\00", [18 x i8] zeroinitializer }, align 32
@max96712_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 48, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"read 0x%04x failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max96712_read\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/staging/media/max96712/max96712.c\00", [54 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max96712_read._entry_ptr = internal global ptr @max96712_read._entry, section ".printk_index", align 4
@max96712_update_bits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.6, i32 73, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"update 0x%04x failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max96712_update_bits\00", [43 x i8] zeroinitializer }, align 32
@max96712_update_bits._entry_ptr = internal global ptr @max96712_update_bits._entry, section ".printk_index", align 4
@max96712_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.6, i32 342, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Not connected to subdevice\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max96712_parse_dt\00", [46 x i8] zeroinitializer }, align 32
@max96712_parse_dt._entry_ptr = internal global ptr @max96712_parse_dt._entry, section ".printk_index", align 4
@max96712_parse_dt._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.6, i32 349, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not parse v4l2 endpoint\0A\00", [33 x i8] zeroinitializer }, align 32
@max96712_parse_dt._entry_ptr.15 = internal global ptr @max96712_parse_dt._entry.13, section ".printk_index", align 4
@max96712_parse_dt._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.6, i32 354, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Only 4 data lanes supported\0A\00", [35 x i8] zeroinitializer }, align 32
@max96712_parse_dt._entry_ptr.18 = internal global ptr @max96712_parse_dt._entry.16, section ".printk_index", align 4
@max96712_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.6, i32 61, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"write 0x%04x failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max96712_write\00", [17 x i8] zeroinitializer }, align 32
@max96712_write._entry_ptr = internal global ptr @max96712_write._entry, section ".printk_index", align 4
@max96712_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @max96712_video_ops, ptr null, ptr null, ptr null, ptr @max96712_pad_ops }, [32 x i8] zeroinitializer }, align 32
@max96712_v4l2_register._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"max96712:291:(&priv->ctrl_handler)->_lock\00", [54 x i8] zeroinitializer }, align 32
@max96712_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @max96712_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@max96712_test_pattern = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.26, ptr @.str.27], [24 x i8] zeroinitializer }, align 32
@max96712_v4l2_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.6, i32 320, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to register subdevice\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"max96712_v4l2_register\00", [41 x i8] zeroinitializer }, align 32
@max96712_v4l2_register._entry_ptr = internal global ptr @max96712_v4l2_register._entry, section ".printk_index", align 4
@max96712_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max96712_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@max96712_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr null, ptr null, ptr null, ptr @max96712_get_pad_format, ptr @max96712_get_pad_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@max96712_write_bulk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.6, i32 85, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bulk write 0x%04x failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max96712_write_bulk\00", [44 x i8] zeroinitializer }, align 32
@max96712_write_bulk._entry_ptr = internal global ptr @max96712_write_bulk._entry, section ".printk_index", align 4
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Checkerboard\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Gradient\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.28 = private unnamed_addr constant [20 x i8] c"max96712_i2c_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 427, i32 26 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 429, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [18 x i8] c"max96712_of_table\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 421, i32 34 }
@___asan_gen_.40 = private unnamed_addr constant [20 x i8] c"max96712_i2c_regmap\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 363, i32 35 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 381, i32 17 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 385, i32 59 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 390, i32 44 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 48, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 73, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 342, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 349, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 354, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 61, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [20 x i8] c"max96712_subdev_ops\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 253, i32 37 }
@___asan_gen_.112 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 291, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [18 x i8] c"max96712_ctrl_ops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 278, i32 35 }
@___asan_gen_.121 = private unnamed_addr constant [22 x i8] c"max96712_test_pattern\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 258, i32 27 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 320, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [19 x i8] c"max96712_video_ops\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 232, i32 43 }
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"max96712_pad_ops\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 248, i32 41 }
@___asan_gen_.139 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 85, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 259, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.152 = private constant [45 x i8] c"../drivers/staging/media/max96712/max96712.c\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 260, i32 2 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_max96712_i2c_driver_exit, ptr @__initcall__kmod_max96712__292_436_max96712_i2c_driver_init6, ptr @max96712_i2c_driver_exit, ptr @max96712_parse_dt._entry, ptr @max96712_parse_dt._entry.13, ptr @max96712_parse_dt._entry.16, ptr @max96712_parse_dt._entry_ptr, ptr @max96712_parse_dt._entry_ptr.15, ptr @max96712_parse_dt._entry_ptr.18, ptr @max96712_read._entry, ptr @max96712_read._entry_ptr, ptr @max96712_update_bits._entry, ptr @max96712_update_bits._entry_ptr, ptr @max96712_v4l2_register._entry, ptr @max96712_v4l2_register._entry_ptr, ptr @max96712_write._entry, ptr @max96712_write._entry_ptr, ptr @max96712_write_bulk._entry, ptr @max96712_write_bulk._entry_ptr, ptr @max96712_i2c_driver, ptr @.str, ptr @max96712_of_table, ptr @max96712_probe._key, ptr @max96712_i2c_regmap, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @max96712_subdev_ops, ptr @max96712_v4l2_register._key, ptr @.str.21, ptr @max96712_ctrl_ops, ptr @max96712_test_pattern, ptr @.str.22, ptr @.str.23, ptr @max96712_video_ops, ptr @max96712_pad_ops, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max96712_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max96712_of_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max96712_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max96712_i2c_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max96712_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max96712_update_bits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max96712_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max96712_parse_dt._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max96712_parse_dt._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max96712_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max96712_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max96712_v4l2_register._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max96712_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max96712_test_pattern to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max96712_v4l2_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max96712_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max96712_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max96712_write_bulk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max96712_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max96712_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max96712_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @max96712_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max96712_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %sd = getelementptr inbounds %struct.max96712_priv, ptr %1, i32 0, i32 4
  tail call void @v4l2_async_unregister_subdev(ptr noundef %sd) #7
  %gpiod_pwdn = getelementptr inbounds %struct.max96712_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %gpiod_pwdn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpiod_pwdn, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 0) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max96712_probe(ptr noundef %client) #2 align 64 {
entry:
  %v4l2_ep.i = alloca %struct.v4l2_fwnode_endpoint, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 452, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call2 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @max96712_i2c_regmap, ptr noundef nonnull @max96712_probe._key, ptr noundef nonnull @.str.1) #7
  %regmap = getelementptr inbounds %struct.max96712_priv, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call10 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef 7) #7
  %gpiod_pwdn = getelementptr inbounds %struct.max96712_priv, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %gpiod_pwdn to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call10, ptr %gpiod_pwdn, align 4
  %cmp.i54 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i54, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %call18 = tail call i32 @gpiod_set_consumer_name(ptr noundef %call10, ptr noundef nonnull @.str.3) #7
  %6 = ptrtoint ptr %gpiod_pwdn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpiod_pwdn, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 1) #7
  %8 = ptrtoint ptr %gpiod_pwdn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpiod_pwdn, align 4
  %tobool21.not = icmp eq ptr %9, null
  br i1 %tobool21.not, label %if.end16.if.end23_crit_edge, label %if.then22

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then22:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 4000, i32 noundef 5000, i32 noundef 2) #7
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end16.if.end23_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %val.i, align 4, !annotation !92
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call.i55 = call i32 @regmap_read(ptr noundef %12, i32 noundef 74, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool.not.i = icmp eq i32 %call.i55, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.4, i32 noundef 74) #10
  br label %max96712_read.exit

if.end.i:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val.i, align 4
  br label %max96712_read.exit

max96712_read.exit:                               ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i55, %do.end.i ], [ %16, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %retval.0.i)
  %cmp.not = icmp eq i32 %retval.0.i, 32
  br i1 %cmp.not, label %if.end26, label %max96712_read.exit.cleanup_crit_edge

max96712_read.exit.cleanup_crit_edge:             ; preds = %max96712_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %max96712_read.exit
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 19, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end26.max96712_reset.exit_crit_edge, label %do.end.i.i

if.end26.max96712_reset.exit_crit_edge:           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %max96712_reset.exit

do.end.i.i:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.9, i32 noundef 19) #10
  br label %max96712_reset.exit

max96712_reset.exit:                              ; preds = %do.end.i.i, %if.end26.max96712_reset.exit_crit_edge
  call void @msleep(i32 noundef 20) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %v4l2_ep.i) #7
  %21 = call ptr @memset(ptr %v4l2_ep.i, i32 0, i32 64)
  %22 = getelementptr inbounds { %struct.fwnode_endpoint, i32, { { i32, i8, i8, [2 x i8] }, %struct.v4l2_fwnode_bus_mipi_csi1, [3 x i8], { i32, [8 x i8], i8, i8, [9 x i8], [1 x i8] } }, ptr, i32 }, ptr %v4l2_ep.i, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 5, ptr %22, align 4
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i, align 4
  %dev.i56 = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  %call.i57 = call ptr @dev_fwnode(ptr noundef %dev.i56) #7
  %call1.i = call ptr @fwnode_graph_get_endpoint_by_id(ptr noundef %call.i57, i32 noundef 4, i32 noundef 0, i32 noundef 0) #7
  %tobool.not.i58 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i58, label %max96712_reset.exit.max96712_parse_dt.exit.thread_crit_edge, label %if.end.i60

max96712_reset.exit.max96712_parse_dt.exit.thread_crit_edge: ; preds = %max96712_reset.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %max96712_parse_dt.exit.thread

if.end.i60:                                       ; preds = %max96712_reset.exit
  %call4.i = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef nonnull %call1.i, ptr noundef nonnull %v4l2_ep.i) #7
  call void @fwnode_handle_put(ptr noundef nonnull %call1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end12.i, label %if.end.i60.max96712_parse_dt.exit.thread_crit_edge

if.end.i60.max96712_parse_dt.exit.thread_crit_edge: ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %max96712_parse_dt.exit.thread

if.end12.i:                                       ; preds = %if.end.i60
  %num_data_lanes.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %v4l2_ep.i, i32 0, i32 2, i32 2, i32 3
  %26 = ptrtoint ptr %num_data_lanes.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %num_data_lanes.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %27)
  %cmp.not.i = icmp eq i8 %27, 4
  br i1 %cmp.not.i, label %if.end30, label %if.end12.i.max96712_parse_dt.exit.thread_crit_edge

if.end12.i.max96712_parse_dt.exit.thread_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %max96712_parse_dt.exit.thread

max96712_parse_dt.exit.thread:                    ; preds = %if.end12.i.max96712_parse_dt.exit.thread_crit_edge, %if.end.i60.max96712_parse_dt.exit.thread_crit_edge, %max96712_reset.exit.max96712_parse_dt.exit.thread_crit_edge
  %.str.14.sink = phi ptr [ @.str.11, %max96712_reset.exit.max96712_parse_dt.exit.thread_crit_edge ], [ @.str.14, %if.end.i60.max96712_parse_dt.exit.thread_crit_edge ], [ @.str.17, %if.end12.i.max96712_parse_dt.exit.thread_crit_edge ]
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  %dev11.i = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11.i, ptr noundef nonnull %.str.14.sink) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %v4l2_ep.i) #7
  br label %cleanup

if.end30:                                         ; preds = %if.end12.i
  %mipi_csi2.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %v4l2_ep.i, i32 0, i32 2, i32 2
  %mipi.i = getelementptr inbounds %struct.max96712_priv, ptr %call.i, i32 0, i32 3
  %30 = call ptr @memcpy(ptr %mipi.i, ptr %mipi_csi2.i, i32 24)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %v4l2_ep.i) #7
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %call.i.i14.i.i = call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 2208, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i14.i.i)
  %tobool.not.i15.i.i = icmp eq i32 %call.i.i14.i.i, 0
  br i1 %tobool.not.i15.i.i, label %if.end30.max96712_update_bits.exit18.i.i_crit_edge, label %do.end.i17.i.i

if.end30.max96712_update_bits.exit18.i.i_crit_edge: ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %max96712_update_bits.exit18.i.i

do.end.i17.i.i:                                   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i, align 4
  %dev.i16.i.i = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i16.i.i, ptr noundef nonnull @.str.9, i32 noundef 2208) #10
  br label %max96712_update_bits.exit18.i.i

max96712_update_bits.exit18.i.i:                  ; preds = %do.end.i17.i.i, %if.end30.max96712_update_bits.exit18.i.i_crit_edge
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %call.i.i20.i.i = call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 1035, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i20.i.i)
  %tobool.not.i21.i.i = icmp eq i32 %call.i.i20.i.i, 0
  br i1 %tobool.not.i21.i.i, label %max96712_update_bits.exit18.i.i.max96712_mipi_enable.exit.i_crit_edge, label %if.end.sink.split.i.i

max96712_update_bits.exit18.i.i.max96712_mipi_enable.exit.i_crit_edge: ; preds = %max96712_update_bits.exit18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %max96712_mipi_enable.exit.i

if.end.sink.split.i.i:                            ; preds = %max96712_update_bits.exit18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 4
  %dev.i22.i.i = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i22.i.i, ptr noundef nonnull @.str.9, i32 noundef 1035) #10
  br label %max96712_mipi_enable.exit.i

max96712_mipi_enable.exit.i:                      ; preds = %if.end.sink.split.i.i, %max96712_update_bits.exit18.i.i.max96712_mipi_enable.exit.i_crit_edge
  %39 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap, align 4
  %call.i.i = call i32 @regmap_write(ptr noundef %40, i32 noundef 2208, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i62 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i62, label %max96712_mipi_enable.exit.i.max96712_write.exit.i_crit_edge, label %do.end.i.i64

max96712_mipi_enable.exit.i.max96712_write.exit.i_crit_edge: ; preds = %max96712_mipi_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %max96712_write.exit.i

do.end.i.i64:                                     ; preds = %max96712_mipi_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call.i, align 4
  %dev.i.i63 = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i63, ptr noundef nonnull @.str.19, i32 noundef 2208) #10
  br label %max96712_write.exit.i

max96712_write.exit.i:                            ; preds = %do.end.i.i64, %max96712_mipi_enable.exit.i.max96712_write.exit.i_crit_edge
  %43 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap, align 4
  %call.i36.i = call i32 @regmap_write(ptr noundef %44, i32 noundef 2378, i32 noundef 192) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i)
  %tobool.not.i37.i = icmp eq i32 %call.i36.i, 0
  br i1 %tobool.not.i37.i, label %max96712_write.exit.i.max96712_write.exit40.i_crit_edge, label %do.end.i39.i

max96712_write.exit.i.max96712_write.exit40.i_crit_edge: ; preds = %max96712_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %max96712_write.exit40.i

do.end.i39.i:                                     ; preds = %max96712_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call.i, align 4
  %dev.i38.i = getelementptr inbounds %struct.i2c_client, ptr %46, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i38.i, ptr noundef nonnull @.str.19, i32 noundef 2378) #10
  br label %max96712_write.exit40.i

max96712_write.exit40.i:                          ; preds = %do.end.i39.i, %max96712_write.exit.i.max96712_write.exit40.i_crit_edge
  %47 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap, align 4
  %call.i42.i = call i32 @regmap_write(ptr noundef %48, i32 noundef 2211, i32 noundef 228) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42.i)
  %tobool.not.i43.i = icmp eq i32 %call.i42.i, 0
  br i1 %tobool.not.i43.i, label %max96712_write.exit40.i.max96712_write.exit46.i_crit_edge, label %do.end.i45.i

max96712_write.exit40.i.max96712_write.exit46.i_crit_edge: ; preds = %max96712_write.exit40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %max96712_write.exit46.i

do.end.i45.i:                                     ; preds = %max96712_write.exit40.i
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call.i, align 4
  %dev.i44.i = getelementptr inbounds %struct.i2c_client, ptr %50, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i44.i, ptr noundef nonnull @.str.19, i32 noundef 2211) #10
  br label %max96712_write.exit46.i

max96712_write.exit46.i:                          ; preds = %do.end.i45.i, %max96712_write.exit40.i.max96712_write.exit46.i_crit_edge
  %num_data_lanes.i65 = getelementptr inbounds %struct.max96712_priv, ptr %call.i, i32 0, i32 3, i32 3
  %51 = ptrtoint ptr %num_data_lanes.i65 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %num_data_lanes.i65, align 1
  %conv.i = zext i8 %52 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %max96712_write.exit46.i
  %phy5.071.i = phi i8 [ 0, %max96712_write.exit46.i ], [ %phy5.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.069.i = phi i32 [ 0, %max96712_write.exit46.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.max96712_priv, ptr %call.i, i32 0, i32 3, i32 4, i32 %i.069.i
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i, align 1, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i66 = icmp eq i8 %54, 0
  br i1 %tobool.not.i66, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.069.i)
  %cmp5.i = icmp eq i32 %i.069.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.069.i)
  %cmp7.i = icmp ult i32 %i.069.i, 3
  %sub.i = sext i1 %cmp7.i to i32
  %spec.select.i = add i32 %i.069.i, %sub.i
  %spec.select.op.i = shl nuw i32 1, %spec.select.i
  %55 = trunc i32 %spec.select.op.i to i8
  %56 = select i1 %cmp5.i, i8 32, i8 %55
  %conv14.i = or i8 %56, %phy5.071.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %phy5.1.i = phi i8 [ %conv14.i, %if.then.i ], [ %phy5.071.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.069.i, 1
  %exitcond.i = icmp eq i32 %i.069.i, %conv.i
  br i1 %exitcond.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %57 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap, align 4
  %conv.i.i = zext i8 %phy5.1.i to i32
  %call.i48.i = call i32 @regmap_write(ptr noundef %58, i32 noundef 2213, i32 noundef %conv.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48.i)
  %tobool.not.i49.i = icmp eq i32 %call.i48.i, 0
  br i1 %tobool.not.i49.i, label %for.end.i.max96712_write.exit52.i_crit_edge, label %do.end.i51.i

for.end.i.max96712_write.exit52.i_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %max96712_write.exit52.i

do.end.i51.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %call.i, align 4
  %dev.i50.i = getelementptr inbounds %struct.i2c_client, ptr %60, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i50.i, ptr noundef nonnull @.str.19, i32 noundef 2213) #10
  br label %max96712_write.exit52.i

max96712_write.exit52.i:                          ; preds = %do.end.i51.i, %for.end.i.max96712_write.exit52.i_crit_edge
  %61 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap, align 4
  %call.i.i.i67 = call i32 @regmap_update_bits_base(ptr noundef %62, i32 noundef 1045, i32 noundef 63, i32 noundef 42, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i67)
  %tobool.not.i54.i = icmp eq i32 %call.i.i.i67, 0
  br i1 %tobool.not.i54.i, label %max96712_write.exit52.i.max96712_update_bits.exit.i_crit_edge, label %do.end.i56.i

max96712_write.exit52.i.max96712_update_bits.exit.i_crit_edge: ; preds = %max96712_write.exit52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %max96712_update_bits.exit.i

do.end.i56.i:                                     ; preds = %max96712_write.exit52.i
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call.i, align 4
  %dev.i55.i = getelementptr inbounds %struct.i2c_client, ptr %64, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i55.i, ptr noundef nonnull @.str.9, i32 noundef 1045) #10
  br label %max96712_update_bits.exit.i

max96712_update_bits.exit.i:                      ; preds = %do.end.i56.i, %max96712_write.exit52.i.max96712_update_bits.exit.i_crit_edge
  %65 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap, align 4
  %call.i.i58.i = call i32 @regmap_update_bits_base(ptr noundef %66, i32 noundef 1048, i32 noundef 63, i32 noundef 42, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i58.i)
  %tobool.not.i59.i = icmp eq i32 %call.i.i58.i, 0
  br i1 %tobool.not.i59.i, label %max96712_update_bits.exit.i.max96712_update_bits.exit62.i_crit_edge, label %do.end.i61.i

max96712_update_bits.exit.i.max96712_update_bits.exit62.i_crit_edge: ; preds = %max96712_update_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %max96712_update_bits.exit62.i

do.end.i61.i:                                     ; preds = %max96712_update_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %call.i, align 4
  %dev.i60.i = getelementptr inbounds %struct.i2c_client, ptr %68, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i60.i, ptr noundef nonnull @.str.9, i32 noundef 1048) #10
  br label %max96712_update_bits.exit62.i

max96712_update_bits.exit62.i:                    ; preds = %do.end.i61.i, %max96712_update_bits.exit.i.max96712_update_bits.exit62.i_crit_edge
  %69 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regmap, align 4
  %call.i.i64.i = call i32 @regmap_update_bits_base(ptr noundef %70, i32 noundef 2210, i32 noundef 240, i32 noundef 48, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i64.i)
  %tobool.not.i65.i = icmp eq i32 %call.i.i64.i, 0
  br i1 %tobool.not.i65.i, label %max96712_update_bits.exit62.i.max96712_mipi_configure.exit_crit_edge, label %do.end.i67.i

max96712_update_bits.exit62.i.max96712_mipi_configure.exit_crit_edge: ; preds = %max96712_update_bits.exit62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %max96712_mipi_configure.exit

do.end.i67.i:                                     ; preds = %max96712_update_bits.exit62.i
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %call.i, align 4
  %dev.i66.i = getelementptr inbounds %struct.i2c_client, ptr %72, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i66.i, ptr noundef nonnull @.str.9, i32 noundef 2210) #10
  br label %max96712_mipi_configure.exit

max96712_mipi_configure.exit:                     ; preds = %do.end.i67.i, %max96712_update_bits.exit62.i.max96712_mipi_configure.exit_crit_edge
  %sd.i = getelementptr inbounds %struct.max96712_priv, ptr %call.i, i32 0, i32 4
  %73 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %call.i, align 4
  call void @v4l2_i2c_subdev_init(ptr noundef %sd.i, ptr noundef %74, ptr noundef nonnull @max96712_subdev_ops) #7
  %flags.i = getelementptr inbounds %struct.max96712_priv, ptr %call.i, i32 0, i32 4, i32 4
  %75 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %76, 4
  store i32 %or.i, ptr %flags.i, align 4
  %function.i = getelementptr inbounds %struct.max96712_priv, ptr %call.i, i32 0, i32 4, i32 0, i32 3
  %77 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 20482, ptr %function.i, align 4
  %ctrl_handler.i = getelementptr inbounds %struct.max96712_priv, ptr %call.i, i32 0, i32 5
  %call.i68 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler.i, i32 noundef 2, ptr noundef nonnull @max96712_v4l2_register._key, ptr noundef nonnull @.str.21) #7
  %78 = ptrtoint ptr %num_data_lanes.i65 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %num_data_lanes.i65, align 1
  %div.rhs.trunc.i = zext i8 %79 to i16
  %div55.i = udiv i16 1000, %div.rhs.trunc.i
  %div.zext.i = zext i16 %div55.i to i32
  %mul.i = mul nuw nsw i32 %div.zext.i, 1000000
  %80 = zext i32 %mul.i to i64
  %call7.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef null, i32 noundef 10422530, i64 noundef %80, i64 noundef %80, i64 noundef 1, i64 noundef %80) #7
  %call9.i = call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %ctrl_handler.i, ptr noundef nonnull @max96712_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @max96712_test_pattern) #7
  %ctrl_handler12.i = getelementptr inbounds %struct.max96712_priv, ptr %call.i, i32 0, i32 4, i32 8
  %81 = ptrtoint ptr %ctrl_handler12.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %ctrl_handler.i, ptr %ctrl_handler12.i, align 4
  %error.i = getelementptr inbounds %struct.max96712_priv, ptr %call.i, i32 0, i32 5, i32 9
  %82 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.not.i70 = icmp eq i32 %83, 0
  br i1 %tobool.not.i70, label %if.end.i71, label %max96712_mipi_configure.exit.error29.i_crit_edge

max96712_mipi_configure.exit.error29.i_crit_edge: ; preds = %max96712_mipi_configure.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %error29.i

if.end.i71:                                       ; preds = %max96712_mipi_configure.exit
  %pads.i = getelementptr inbounds %struct.max96712_priv, ptr %call.i, i32 0, i32 6
  %flags14.i = getelementptr inbounds %struct.max96712_priv, ptr %call.i, i32 0, i32 6, i32 0, i32 4
  %84 = ptrtoint ptr %flags14.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 2, ptr %flags14.i, align 4
  %call18.i = call i32 @media_entity_pads_init(ptr noundef %sd.i, i16 noundef zeroext 1, ptr noundef %pads.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.end.i71.error29.i_crit_edge

if.end.i71.error29.i_crit_edge:                   ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #9
  br label %error29.i

if.end21.i:                                       ; preds = %if.end.i71
  %dev_priv.i.i = getelementptr inbounds %struct.max96712_priv, ptr %call.i, i32 0, i32 4, i32 11
  %85 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call.i, ptr %dev_priv.i.i, align 4
  %call24.i = call i32 @v4l2_async_register_subdev(ptr noundef %sd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp.i72 = icmp slt i32 %call24.i, 0
  br i1 %cmp.i72, label %do.end.i74, label %if.end21.i.cleanup_crit_edge

if.end21.i.cleanup_crit_edge:                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i74:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %call.i, align 4
  %dev.i73 = getelementptr inbounds %struct.i2c_client, ptr %87, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i73, ptr noundef nonnull @.str.22) #10
  br label %error29.i

error29.i:                                        ; preds = %do.end.i74, %if.end.i71.error29.i_crit_edge, %max96712_mipi_configure.exit.error29.i_crit_edge
  %ret.0.i = phi i32 [ %83, %max96712_mipi_configure.exit.error29.i_crit_edge ], [ %call18.i, %if.end.i71.error29.i_crit_edge ], [ %call24.i, %do.end.i74 ]
  call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler.i) #7
  br label %cleanup

cleanup:                                          ; preds = %error29.i, %if.end21.i.cleanup_crit_edge, %max96712_parse_dt.exit.thread, %max96712_read.exit.cleanup_crit_edge, %if.then13, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then5 ], [ %5, %if.then13 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %max96712_read.exit.cleanup_crit_edge ], [ -22, %max96712_parse_dt.exit.thread ], [ %ret.0.i, %error29.i ], [ 0, %if.end21.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_consumer_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_endpoint_by_id(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu_items(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max96712_s_stream(ptr nocapture noundef readonly %sd, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call fastcc void @max96712_pattern_enable(ptr noundef %1, i1 noundef zeroext true)
  %regmap.i.i = getelementptr inbounds %struct.max96712_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 1035, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.max96712_update_bits.exit.i_crit_edge, label %do.end.i.i

if.then.max96712_update_bits.exit.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %max96712_update_bits.exit.i

do.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.9, i32 noundef 1035) #10
  br label %max96712_update_bits.exit.i

max96712_update_bits.exit.i:                      ; preds = %do.end.i.i, %if.then.max96712_update_bits.exit.i_crit_edge
  %6 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i8.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 2208, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i8.i)
  %tobool.not.i9.i = icmp eq i32 %call.i.i8.i, 0
  br i1 %tobool.not.i9.i, label %max96712_update_bits.exit.i.if.end_crit_edge, label %if.end.sink.split.i

max96712_update_bits.exit.i.if.end_crit_edge:     ; preds = %max96712_update_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.sink.split.i:                              ; preds = %max96712_update_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %dev.i22.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i22.i, ptr noundef nonnull @.str.9, i32 noundef 2208) #10
  br label %if.end

if.else:                                          ; preds = %entry
  %regmap.i.i4 = getelementptr inbounds %struct.max96712_priv, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %regmap.i.i4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i.i4, align 4
  %call.i.i14.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 2208, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i14.i)
  %tobool.not.i15.i = icmp eq i32 %call.i.i14.i, 0
  br i1 %tobool.not.i15.i, label %if.else.max96712_update_bits.exit18.i_crit_edge, label %do.end.i17.i

if.else.max96712_update_bits.exit18.i_crit_edge:  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %max96712_update_bits.exit18.i

do.end.i17.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %dev.i16.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i16.i, ptr noundef nonnull @.str.9, i32 noundef 2208) #10
  br label %max96712_update_bits.exit18.i

max96712_update_bits.exit18.i:                    ; preds = %do.end.i17.i, %if.else.max96712_update_bits.exit18.i_crit_edge
  %14 = ptrtoint ptr %regmap.i.i4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i.i4, align 4
  %call.i.i20.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 1035, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i20.i)
  %tobool.not.i21.i = icmp eq i32 %call.i.i20.i, 0
  br i1 %tobool.not.i21.i, label %max96712_update_bits.exit18.i.max96712_mipi_enable.exit7_crit_edge, label %if.end.sink.split.i6

max96712_update_bits.exit18.i.max96712_mipi_enable.exit7_crit_edge: ; preds = %max96712_update_bits.exit18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %max96712_mipi_enable.exit7

if.end.sink.split.i6:                             ; preds = %max96712_update_bits.exit18.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %dev.i22.i5 = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i22.i5, ptr noundef nonnull @.str.9, i32 noundef 1035) #10
  br label %max96712_mipi_enable.exit7

max96712_mipi_enable.exit7:                       ; preds = %if.end.sink.split.i6, %max96712_update_bits.exit18.i.max96712_mipi_enable.exit7_crit_edge
  %18 = ptrtoint ptr %regmap.i.i4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i.i4, align 4
  %call.i.i = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 4177, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i8 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i8, label %max96712_mipi_enable.exit7.if.end_crit_edge, label %do.end.i.i10

max96712_mipi_enable.exit7.if.end_crit_edge:      ; preds = %max96712_mipi_enable.exit7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end.i.i10:                                     ; preds = %max96712_mipi_enable.exit7
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %dev.i.i9 = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i9, ptr noundef nonnull @.str.19, i32 noundef 4177) #10
  br label %if.end

if.end:                                           ; preds = %do.end.i.i10, %max96712_mipi_enable.exit7.if.end_crit_edge, %if.end.sink.split.i, %max96712_update_bits.exit.i.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @max96712_pattern_enable(ptr noundef readonly %priv, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  %values.i279 = alloca [4 x i8], align 4
  %values.i261 = alloca [4 x i8], align 4
  %values.i219 = alloca [4 x i8], align 4
  %values.i201 = alloca [4 x i8], align 4
  %values.i183 = alloca [4 x i8], align 4
  %values.i165 = alloca [4 x i8], align 4
  %values.i147 = alloca [4 x i8], align 4
  %values.i129 = alloca [4 x i8], align 4
  %values.i111 = alloca [4 x i8], align 4
  %values.i95 = alloca [4 x i8], align 4
  %values.i77 = alloca [4 x i8], align 4
  %values.i61 = alloca [4 x i8], align 4
  %values.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i55 = getelementptr inbounds %struct.max96712_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %regmap.i55 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i55, align 4
  br i1 %enable, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 4177, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %do.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.19, i32 noundef 4177) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i56 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 9, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool.not.i57 = icmp eq i32 %call.i56, 0
  br i1 %tobool.not.i57, label %if.end.max96712_write.exit60_crit_edge, label %do.end.i59

if.end.max96712_write.exit60_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %max96712_write.exit60

do.end.i59:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %dev.i58 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i58, ptr noundef nonnull @.str.19, i32 noundef 9) #10
  br label %max96712_write.exit60

max96712_write.exit60:                            ; preds = %do.end.i59, %if.end.max96712_write.exit60_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %values.i) #7
  %6 = ptrtoint ptr %values.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %values.i, align 4
  %7 = call ptr @memset(ptr %values.i, i32 0, i32 3)
  %8 = ptrtoint ptr %regmap.i55 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i55, align 4
  %call.i.i = call i32 @regmap_bulk_write(ptr noundef %9, i32 noundef 4178, ptr noundef nonnull %values.i, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %max96712_write.exit60.max96712_write_bulk_value.exit_crit_edge, label %do.end.i.i

max96712_write.exit60.max96712_write_bulk_value.exit_crit_edge: ; preds = %max96712_write.exit60
  call void @__sanitizer_cov_trace_pc() #9
  br label %max96712_write_bulk_value.exit

do.end.i.i:                                       ; preds = %max96712_write.exit60
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.24, i32 noundef 4178) #10
  br label %max96712_write_bulk_value.exit

max96712_write_bulk_value.exit:                   ; preds = %do.end.i.i, %max96712_write.exit60.max96712_write_bulk_value.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %values.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %values.i61) #7
  %12 = ptrtoint ptr %values.i61 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2816255, ptr %values.i61, align 4
  %13 = ptrtoint ptr %regmap.i55 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i55, align 4
  %call.i.i71 = call i32 @regmap_bulk_write(ptr noundef %14, i32 noundef 4181, ptr noundef nonnull %values.i61, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i71)
  %tobool.not.i.i72 = icmp eq i32 %call.i.i71, 0
  br i1 %tobool.not.i.i72, label %max96712_write_bulk_value.exit.max96712_write_bulk_value.exit76_crit_edge, label %do.end.i.i75

max96712_write_bulk_value.exit.max96712_write_bulk_value.exit76_crit_edge: ; preds = %max96712_write_bulk_value.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %max96712_write_bulk_value.exit76

do.end.i.i75:                                     ; preds = %max96712_write_bulk_value.exit
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 4
  %dev.i.i74 = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i74, ptr noundef nonnull @.str.24, i32 noundef 4181) #10
  br label %max96712_write_bulk_value.exit76

max96712_write_bulk_value.exit76:                 ; preds = %do.end.i.i75, %max96712_write_bulk_value.exit.max96712_write_bulk_value.exit76_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %values.i61) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %values.i77) #7
  %17 = ptrtoint ptr %values.i77 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 630784255, ptr %values.i77, align 4
  %18 = ptrtoint ptr %regmap.i55 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i55, align 4
  %call.i.i89 = call i32 @regmap_bulk_write(ptr noundef %19, i32 noundef 4184, ptr noundef nonnull %values.i77, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i89)
  %tobool.not.i.i90 = icmp eq i32 %call.i.i89, 0
  br i1 %tobool.not.i.i90, label %max96712_write_bulk_value.exit76.max96712_write_bulk_value.exit94_crit_edge, label %do.end.i.i93

max96712_write_bulk_value.exit76.max96712_write_bulk_value.exit94_crit_edge: ; preds = %max96712_write_bulk_value.exit76
  call void @__sanitizer_cov_trace_pc() #9
  br label %max96712_write_bulk_value.exit94

do.end.i.i93:                                     ; preds = %max96712_write_bulk_value.exit76
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 4
  %dev.i.i92 = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i92, ptr noundef nonnull @.str.24, i32 noundef 4184) #10
  br label %max96712_write_bulk_value.exit94

max96712_write_bulk_value.exit94:                 ; preds = %do.end.i.i93, %max96712_write_bulk_value.exit76.max96712_write_bulk_value.exit94_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %values.i77) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %values.i95) #7
  %22 = ptrtoint ptr %values.i95 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %values.i95, align 4
  %23 = call ptr @memset(ptr %values.i95, i32 0, i32 3)
  %24 = ptrtoint ptr %regmap.i55 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i55, align 4
  %call.i.i105 = call i32 @regmap_bulk_write(ptr noundef %25, i32 noundef 4187, ptr noundef nonnull %values.i95, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i105)
  %tobool.not.i.i106 = icmp eq i32 %call.i.i105, 0
  br i1 %tobool.not.i.i106, label %max96712_write_bulk_value.exit94.max96712_write_bulk_value.exit110_crit_edge, label %do.end.i.i109

max96712_write_bulk_value.exit94.max96712_write_bulk_value.exit110_crit_edge: ; preds = %max96712_write_bulk_value.exit94
  call void @__sanitizer_cov_trace_pc() #9
  br label %max96712_write_bulk_value.exit110

do.end.i.i109:                                    ; preds = %max96712_write_bulk_value.exit94
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 4
  %dev.i.i108 = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i108, ptr noundef nonnull @.str.24, i32 noundef 4187) #10
  br label %max96712_write_bulk_value.exit110

max96712_write_bulk_value.exit110:                ; preds = %do.end.i.i109, %max96712_write_bulk_value.exit94.max96712_write_bulk_value.exit110_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %values.i95) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %values.i111) #7
  %28 = ptrtoint ptr %values.i111 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2949119, ptr %values.i111, align 4
  %29 = ptrtoint ptr %regmap.i55 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap.i55, align 4
  %call.i.i123 = call i32 @regmap_bulk_write(ptr noundef %30, i32 noundef 4190, ptr noundef nonnull %values.i111, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i123)
  %tobool.not.i.i124 = icmp eq i32 %call.i.i123, 0
  br i1 %tobool.not.i.i124, label %max96712_write_bulk_value.exit110.max96712_write_bulk_value.exit128_crit_edge, label %do.end.i.i127

max96712_write_bulk_value.exit110.max96712_write_bulk_value.exit128_crit_edge: ; preds = %max96712_write_bulk_value.exit110
  call void @__sanitizer_cov_trace_pc() #9
  br label %max96712_write_bulk_value.exit128

do.end.i.i127:                                    ; preds = %max96712_write_bulk_value.exit110
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv, align 4
  %dev.i.i126 = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i126, ptr noundef nonnull @.str.24, i32 noundef 4190) #10
  br label %max96712_write_bulk_value.exit128

max96712_write_bulk_value.exit128:                ; preds = %do.end.i.i127, %max96712_write_bulk_value.exit110.max96712_write_bulk_value.exit128_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %values.i111) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %values.i129) #7
  %33 = ptrtoint ptr %values.i129 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 141361151, ptr %values.i129, align 4
  %34 = ptrtoint ptr %regmap.i55 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap.i55, align 4
  %call.i.i141 = call i32 @regmap_bulk_write(ptr noundef %35, i32 noundef 4192, ptr noundef nonnull %values.i129, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i141)
  %tobool.not.i.i142 = icmp eq i32 %call.i.i141, 0
  br i1 %tobool.not.i.i142, label %max96712_write_bulk_value.exit128.max96712_write_bulk_value.exit146_crit_edge, label %do.end.i.i145

max96712_write_bulk_value.exit128.max96712_write_bulk_value.exit146_crit_edge: ; preds = %max96712_write_bulk_value.exit128
  call void @__sanitizer_cov_trace_pc() #9
  br label %max96712_write_bulk_value.exit146

do.end.i.i145:                                    ; preds = %max96712_write_bulk_value.exit128
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv, align 4
  %dev.i.i144 = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i144, ptr noundef nonnull @.str.24, i32 noundef 4192) #10
  br label %max96712_write_bulk_value.exit146

max96712_write_bulk_value.exit146:                ; preds = %do.end.i.i145, %max96712_write_bulk_value.exit128.max96712_write_bulk_value.exit146_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %values.i129) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %values.i147) #7
  %38 = ptrtoint ptr %values.i147 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 73793535, ptr %values.i147, align 4
  %39 = ptrtoint ptr %regmap.i55 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap.i55, align 4
  %call.i.i159 = call i32 @regmap_bulk_write(ptr noundef %40, i32 noundef 4194, ptr noundef nonnull %values.i147, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i159)
  %tobool.not.i.i160 = icmp eq i32 %call.i.i159, 0
  br i1 %tobool.not.i.i160, label %max96712_write_bulk_value.exit146.max96712_write_bulk_value.exit164_crit_edge, label %do.end.i.i163

max96712_write_bulk_value.exit146.max96712_write_bulk_value.exit164_crit_edge: ; preds = %max96712_write_bulk_value.exit146
  call void @__sanitizer_cov_trace_pc() #9
  br label %max96712_write_bulk_value.exit164

do.end.i.i163:                                    ; preds = %max96712_write_bulk_value.exit146
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %priv, align 4
  %dev.i.i162 = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i162, ptr noundef nonnull @.str.24, i32 noundef 4194) #10
  br label %max96712_write_bulk_value.exit164

max96712_write_bulk_value.exit164:                ; preds = %do.end.i.i163, %max96712_write_bulk_value.exit146.max96712_write_bulk_value.exit164_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %values.i147) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %values.i165) #7
  %43 = ptrtoint ptr %values.i165 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 23140607, ptr %values.i165, align 4
  %44 = ptrtoint ptr %regmap.i55 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap.i55, align 4
  %call.i.i177 = call i32 @regmap_bulk_write(ptr noundef %45, i32 noundef 4196, ptr noundef nonnull %values.i165, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i177)
  %tobool.not.i.i178 = icmp eq i32 %call.i.i177, 0
  br i1 %tobool.not.i.i178, label %max96712_write_bulk_value.exit164.max96712_write_bulk_value.exit182_crit_edge, label %do.end.i.i181

max96712_write_bulk_value.exit164.max96712_write_bulk_value.exit182_crit_edge: ; preds = %max96712_write_bulk_value.exit164
  call void @__sanitizer_cov_trace_pc() #9
  br label %max96712_write_bulk_value.exit182

do.end.i.i181:                                    ; preds = %max96712_write_bulk_value.exit164
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %priv, align 4
  %dev.i.i180 = getelementptr inbounds %struct.i2c_client, ptr %47, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i180, ptr noundef nonnull @.str.24, i32 noundef 4196) #10
  br label %max96712_write_bulk_value.exit182

max96712_write_bulk_value.exit182:                ; preds = %do.end.i.i181, %max96712_write_bulk_value.exit164.max96712_write_bulk_value.exit182_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %values.i165) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %values.i183) #7
  %48 = ptrtoint ptr %values.i183 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 125894655, ptr %values.i183, align 4
  %49 = ptrtoint ptr %regmap.i55 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap.i55, align 4
  %call.i.i195 = call i32 @regmap_bulk_write(ptr noundef %50, i32 noundef 4199, ptr noundef nonnull %values.i183, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i195)
  %tobool.not.i.i196 = icmp eq i32 %call.i.i195, 0
  br i1 %tobool.not.i.i196, label %max96712_write_bulk_value.exit182.max96712_write_bulk_value.exit200_crit_edge, label %do.end.i.i199

max96712_write_bulk_value.exit182.max96712_write_bulk_value.exit200_crit_edge: ; preds = %max96712_write_bulk_value.exit182
  call void @__sanitizer_cov_trace_pc() #9
  br label %max96712_write_bulk_value.exit200

do.end.i.i199:                                    ; preds = %max96712_write_bulk_value.exit182
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %priv, align 4
  %dev.i.i198 = getelementptr inbounds %struct.i2c_client, ptr %52, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i198, ptr noundef nonnull @.str.24, i32 noundef 4199) #10
  br label %max96712_write_bulk_value.exit200

max96712_write_bulk_value.exit200:                ; preds = %do.end.i.i199, %max96712_write_bulk_value.exit182.max96712_write_bulk_value.exit200_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %values.i183) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %values.i201) #7
  %53 = ptrtoint ptr %values.i201 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 18415615, ptr %values.i201, align 4
  %54 = ptrtoint ptr %regmap.i55 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap.i55, align 4
  %call.i.i213 = call i32 @regmap_bulk_write(ptr noundef %55, i32 noundef 4201, ptr noundef nonnull %values.i201, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i213)
  %tobool.not.i.i214 = icmp eq i32 %call.i.i213, 0
  br i1 %tobool.not.i.i214, label %max96712_write_bulk_value.exit200.max96712_write_bulk_value.exit218_crit_edge, label %do.end.i.i217

max96712_write_bulk_value.exit200.max96712_write_bulk_value.exit218_crit_edge: ; preds = %max96712_write_bulk_value.exit200
  call void @__sanitizer_cov_trace_pc() #9
  br label %max96712_write_bulk_value.exit218

do.end.i.i217:                                    ; preds = %max96712_write_bulk_value.exit200
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %priv, align 4
  %dev.i.i216 = getelementptr inbounds %struct.i2c_client, ptr %57, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i216, ptr noundef nonnull @.str.24, i32 noundef 4201) #10
  br label %max96712_write_bulk_value.exit218

max96712_write_bulk_value.exit218:                ; preds = %do.end.i.i217, %max96712_write_bulk_value.exit200.max96712_write_bulk_value.exit218_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %values.i201) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %values.i219) #7
  %58 = ptrtoint ptr %values.i219 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 70844415, ptr %values.i219, align 4
  %59 = ptrtoint ptr %regmap.i55 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap.i55, align 4
  %call.i.i231 = call i32 @regmap_bulk_write(ptr noundef %60, i32 noundef 4203, ptr noundef nonnull %values.i219, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i231)
  %tobool.not.i.i232 = icmp eq i32 %call.i.i231, 0
  br i1 %tobool.not.i.i232, label %max96712_write_bulk_value.exit218.max96712_write_bulk_value.exit236_crit_edge, label %do.end.i.i235

max96712_write_bulk_value.exit218.max96712_write_bulk_value.exit236_crit_edge: ; preds = %max96712_write_bulk_value.exit218
  call void @__sanitizer_cov_trace_pc() #9
  br label %max96712_write_bulk_value.exit236

do.end.i.i235:                                    ; preds = %max96712_write_bulk_value.exit218
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %priv, align 4
  %dev.i.i234 = getelementptr inbounds %struct.i2c_client, ptr %62, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i234, ptr noundef nonnull @.str.24, i32 noundef 4203) #10
  br label %max96712_write_bulk_value.exit236

max96712_write_bulk_value.exit236:                ; preds = %do.end.i.i235, %max96712_write_bulk_value.exit218.max96712_write_bulk_value.exit236_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %values.i219) #7
  %63 = ptrtoint ptr %regmap.i55 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap.i55, align 4
  %call.i238 = call i32 @regmap_write(ptr noundef %64, i32 noundef 4176, i32 noundef 251) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i238)
  %tobool.not.i239 = icmp eq i32 %call.i238, 0
  br i1 %tobool.not.i239, label %max96712_write_bulk_value.exit236.max96712_write.exit242_crit_edge, label %do.end.i241

max96712_write_bulk_value.exit236.max96712_write.exit242_crit_edge: ; preds = %max96712_write_bulk_value.exit236
  call void @__sanitizer_cov_trace_pc() #9
  br label %max96712_write.exit242

do.end.i241:                                      ; preds = %max96712_write_bulk_value.exit236
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %priv, align 4
  %dev.i240 = getelementptr inbounds %struct.i2c_client, ptr %66, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i240, ptr noundef nonnull @.str.19, i32 noundef 4176) #10
  br label %max96712_write.exit242

max96712_write.exit242:                           ; preds = %do.end.i241, %max96712_write_bulk_value.exit236.max96712_write.exit242_crit_edge
  %pattern = getelementptr inbounds %struct.max96712_priv, ptr %priv, i32 0, i32 7
  %67 = ptrtoint ptr %pattern to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pattern, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp = icmp eq i32 %68, 0
  %69 = ptrtoint ptr %regmap.i55 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regmap.i55, align 4
  br i1 %cmp, label %if.then14, label %if.else

if.then14:                                        ; preds = %max96712_write.exit242
  %call.i244 = call i32 @regmap_write(ptr noundef %70, i32 noundef 4212, i32 noundef 60) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i244)
  %tobool.not.i245 = icmp eq i32 %call.i244, 0
  br i1 %tobool.not.i245, label %if.then14.max96712_write.exit248_crit_edge, label %do.end.i247

if.then14.max96712_write.exit248_crit_edge:       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %max96712_write.exit248

do.end.i247:                                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %priv, align 4
  %dev.i246 = getelementptr inbounds %struct.i2c_client, ptr %72, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i246, ptr noundef nonnull @.str.19, i32 noundef 4212) #10
  br label %max96712_write.exit248

max96712_write.exit248:                           ; preds = %do.end.i247, %if.then14.max96712_write.exit248_crit_edge
  %73 = ptrtoint ptr %regmap.i55 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regmap.i55, align 4
  %call.i250 = call i32 @regmap_write(ptr noundef %74, i32 noundef 4213, i32 noundef 60) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i250)
  %tobool.not.i251 = icmp eq i32 %call.i250, 0
  br i1 %tobool.not.i251, label %max96712_write.exit248.max96712_write.exit254_crit_edge, label %do.end.i253

max96712_write.exit248.max96712_write.exit254_crit_edge: ; preds = %max96712_write.exit248
  call void @__sanitizer_cov_trace_pc() #9
  br label %max96712_write.exit254

do.end.i253:                                      ; preds = %max96712_write.exit248
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %priv, align 4
  %dev.i252 = getelementptr inbounds %struct.i2c_client, ptr %76, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i252, ptr noundef nonnull @.str.19, i32 noundef 4213) #10
  br label %max96712_write.exit254

max96712_write.exit254:                           ; preds = %do.end.i253, %max96712_write.exit248.max96712_write.exit254_crit_edge
  %77 = ptrtoint ptr %regmap.i55 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regmap.i55, align 4
  %call.i256 = call i32 @regmap_write(ptr noundef %78, i32 noundef 4214, i32 noundef 60) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i256)
  %tobool.not.i257 = icmp eq i32 %call.i256, 0
  br i1 %tobool.not.i257, label %max96712_write.exit254.max96712_write.exit260_crit_edge, label %do.end.i259

max96712_write.exit254.max96712_write.exit260_crit_edge: ; preds = %max96712_write.exit254
  call void @__sanitizer_cov_trace_pc() #9
  br label %max96712_write.exit260

do.end.i259:                                      ; preds = %max96712_write.exit254
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %priv, align 4
  %dev.i258 = getelementptr inbounds %struct.i2c_client, ptr %80, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i258, ptr noundef nonnull @.str.19, i32 noundef 4214) #10
  br label %max96712_write.exit260

max96712_write.exit260:                           ; preds = %do.end.i259, %max96712_write.exit254.max96712_write.exit260_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %values.i261) #7
  %81 = ptrtoint ptr %values.i261 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -20184833, ptr %values.i261, align 4
  %82 = ptrtoint ptr %regmap.i55 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regmap.i55, align 4
  %call.i.i273 = call i32 @regmap_bulk_write(ptr noundef %83, i32 noundef 4206, ptr noundef nonnull %values.i261, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i273)
  %tobool.not.i.i274 = icmp eq i32 %call.i.i273, 0
  br i1 %tobool.not.i.i274, label %max96712_write.exit260.max96712_write_bulk_value.exit278_crit_edge, label %do.end.i.i277

max96712_write.exit260.max96712_write_bulk_value.exit278_crit_edge: ; preds = %max96712_write.exit260
  call void @__sanitizer_cov_trace_pc() #9
  br label %max96712_write_bulk_value.exit278

do.end.i.i277:                                    ; preds = %max96712_write.exit260
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %priv, align 4
  %dev.i.i276 = getelementptr inbounds %struct.i2c_client, ptr %85, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i276, ptr noundef nonnull @.str.24, i32 noundef 4206) #10
  br label %max96712_write_bulk_value.exit278

max96712_write_bulk_value.exit278:                ; preds = %do.end.i.i277, %max96712_write.exit260.max96712_write_bulk_value.exit278_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %values.i261) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %values.i279) #7
  %86 = ptrtoint ptr %values.i279 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 6989823, ptr %values.i279, align 4
  %87 = ptrtoint ptr %regmap.i55 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regmap.i55, align 4
  %call.i.i291 = call i32 @regmap_bulk_write(ptr noundef %88, i32 noundef 4209, ptr noundef nonnull %values.i279, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i291)
  %tobool.not.i.i292 = icmp eq i32 %call.i.i291, 0
  br i1 %tobool.not.i.i292, label %max96712_write_bulk_value.exit278.max96712_write_bulk_value.exit296_crit_edge, label %do.end.i.i295

max96712_write_bulk_value.exit278.max96712_write_bulk_value.exit296_crit_edge: ; preds = %max96712_write_bulk_value.exit278
  call void @__sanitizer_cov_trace_pc() #9
  br label %max96712_write_bulk_value.exit296

do.end.i.i295:                                    ; preds = %max96712_write_bulk_value.exit278
  call void @__sanitizer_cov_trace_pc() #9
  %89 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %priv, align 4
  %dev.i.i294 = getelementptr inbounds %struct.i2c_client, ptr %90, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i294, ptr noundef nonnull @.str.24, i32 noundef 4209) #10
  br label %max96712_write_bulk_value.exit296

max96712_write_bulk_value.exit296:                ; preds = %do.end.i.i295, %max96712_write_bulk_value.exit278.max96712_write_bulk_value.exit296_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %values.i279) #7
  %91 = ptrtoint ptr %regmap.i55 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regmap.i55, align 4
  %call.i298 = call i32 @regmap_write(ptr noundef %92, i32 noundef 4177, i32 noundef 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i298)
  %tobool.not.i299 = icmp eq i32 %call.i298, 0
  br i1 %tobool.not.i299, label %max96712_write_bulk_value.exit296.cleanup_crit_edge, label %do.end.i301

max96712_write_bulk_value.exit296.cleanup_crit_edge: ; preds = %max96712_write_bulk_value.exit296
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i301:                                      ; preds = %max96712_write_bulk_value.exit296
  call void @__sanitizer_cov_trace_pc() #9
  %93 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %priv, align 4
  %dev.i300 = getelementptr inbounds %struct.i2c_client, ptr %94, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i300, ptr noundef nonnull @.str.19, i32 noundef 4177) #10
  br label %cleanup

if.else:                                          ; preds = %max96712_write.exit242
  %call.i304 = call i32 @regmap_write(ptr noundef %70, i32 noundef 4205, i32 noundef 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i304)
  %tobool.not.i305 = icmp eq i32 %call.i304, 0
  br i1 %tobool.not.i305, label %if.else.max96712_write.exit308_crit_edge, label %do.end.i307

if.else.max96712_write.exit308_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %max96712_write.exit308

do.end.i307:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %95 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %priv, align 4
  %dev.i306 = getelementptr inbounds %struct.i2c_client, ptr %96, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i306, ptr noundef nonnull @.str.19, i32 noundef 4205) #10
  br label %max96712_write.exit308

max96712_write.exit308:                           ; preds = %do.end.i307, %if.else.max96712_write.exit308_crit_edge
  %97 = ptrtoint ptr %regmap.i55 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regmap.i55, align 4
  %call.i310 = call i32 @regmap_write(ptr noundef %98, i32 noundef 4177, i32 noundef 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i310)
  %tobool.not.i311 = icmp eq i32 %call.i310, 0
  br i1 %tobool.not.i311, label %max96712_write.exit308.cleanup_crit_edge, label %do.end.i313

max96712_write.exit308.cleanup_crit_edge:         ; preds = %max96712_write.exit308
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i313:                                      ; preds = %max96712_write.exit308
  call void @__sanitizer_cov_trace_pc() #9
  %99 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %priv, align 4
  %dev.i312 = getelementptr inbounds %struct.i2c_client, ptr %100, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i312, ptr noundef nonnull @.str.19, i32 noundef 4177) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end.i313, %max96712_write.exit308.cleanup_crit_edge, %do.end.i301, %max96712_write_bulk_value.exit296.cleanup_crit_edge, %do.end.i, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @max96712_get_pad_format(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef writeonly %format) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %0 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1920, ptr %format1, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1080, ptr %height, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4106, ptr %code, align 4
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %3 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %field, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max96712_s_ctrl(ptr nocapture noundef readonly %ctrl) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10422531, i32 %1)
  %cond1 = icmp eq i32 %1, 10422531
  br i1 %cond1, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %2 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp ne i32 %5, 0
  %cond = zext i1 %tobool.not to i32
  %pattern = getelementptr i8, ptr %3, i32 216
  %6 = ptrtoint ptr %pattern to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %pattern, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !59, !60, !61, !62, !64, !66, !68, !69, !70, !71, !73, !75, !77, !79, !81}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__initcall__kmod_max96712__292_436_max96712_i2c_driver_init6, !1, !"__initcall__kmod_max96712__292_436_max96712_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/max96712/max96712.c", i32 436, i32 1}
!2 = !{ptr @__exitcall_max96712_i2c_driver_exit, !1, !"__exitcall_max96712_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description293, !4, !"__UNIQUE_ID_description293", i1 false, i1 false}
!4 = !{!"../drivers/staging/media/max96712/max96712.c", i32 438, i32 1}
!5 = !{ptr @__UNIQUE_ID_author294, !6, !"__UNIQUE_ID_author294", i1 false, i1 false}
!6 = !{!"../drivers/staging/media/max96712/max96712.c", i32 439, i32 1}
!7 = !{ptr @__UNIQUE_ID_file295, !8, !"__UNIQUE_ID_file295", i1 false, i1 false}
!8 = !{!"../drivers/staging/media/max96712/max96712.c", i32 440, i32 1}
!9 = !{ptr @__UNIQUE_ID_license296, !8, !"__UNIQUE_ID_license296", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/media/max96712/max96712.c", i32 429, i32 11}
!12 = !{ptr @max96712_i2c_driver, !13, !"max96712_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/staging/media/max96712/max96712.c", i32 427, i32 26}
!14 = !{ptr @max96712_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/staging/media/max96712/max96712.c", i32 381, i32 17}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/staging/media/max96712/max96712.c", i32 385, i32 59}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/media/max96712/max96712.c", i32 390, i32 44}
!21 = !{ptr @max96712_i2c_regmap, !22, !"max96712_i2c_regmap", i1 false, i1 false}
!22 = !{!"../drivers/staging/media/max96712/max96712.c", i32 363, i32 35}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/staging/media/max96712/max96712.c", i32 48, i32 3}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @max96712_read._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @max96712_read._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/staging/media/max96712/max96712.c", i32 73, i32 3}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @max96712_update_bits._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @max96712_update_bits._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/media/max96712/max96712.c", i32 342, i32 3}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @max96712_parse_dt._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @max96712_parse_dt._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/staging/media/max96712/max96712.c", i32 349, i32 3}
!43 = !{ptr @max96712_parse_dt._entry.13, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @max96712_parse_dt._entry_ptr.15, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/media/max96712/max96712.c", i32 354, i32 3}
!47 = !{ptr @max96712_parse_dt._entry.16, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @max96712_parse_dt._entry_ptr.18, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/staging/media/max96712/max96712.c", i32 61, i32 3}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @max96712_write._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @max96712_write._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @max96712_v4l2_register._key, !55, !"_key", i1 false, i1 false}
!55 = !{!"../drivers/staging/media/max96712/max96712.c", i32 291, i32 2}
!56 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/staging/media/max96712/max96712.c", i32 320, i32 3}
!59 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @max96712_v4l2_register._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @max96712_v4l2_register._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @max96712_subdev_ops, !63, !"max96712_subdev_ops", i1 false, i1 false}
!63 = !{!"../drivers/staging/media/max96712/max96712.c", i32 253, i32 37}
!64 = !{ptr @max96712_video_ops, !65, !"max96712_video_ops", i1 false, i1 false}
!65 = !{!"../drivers/staging/media/max96712/max96712.c", i32 232, i32 43}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/staging/media/max96712/max96712.c", i32 85, i32 3}
!68 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @max96712_write_bulk._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @max96712_write_bulk._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @max96712_pad_ops, !72, !"max96712_pad_ops", i1 false, i1 false}
!72 = !{!"../drivers/staging/media/max96712/max96712.c", i32 248, i32 41}
!73 = !{ptr @max96712_ctrl_ops, !74, !"max96712_ctrl_ops", i1 false, i1 false}
!74 = !{!"../drivers/staging/media/max96712/max96712.c", i32 278, i32 35}
!75 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/staging/media/max96712/max96712.c", i32 259, i32 2}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/staging/media/max96712/max96712.c", i32 260, i32 2}
!79 = !{ptr @max96712_test_pattern, !80, !"max96712_test_pattern", i1 false, i1 false}
!80 = !{!"../drivers/staging/media/max96712/max96712.c", i32 258, i32 27}
!81 = !{ptr @max96712_of_table, !82, !"max96712_of_table", i1 false, i1 false}
!82 = !{!"../drivers/staging/media/max96712/max96712.c", i32 421, i32 34}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{!"auto-init"}
!93 = !{i8 0, i8 2}
