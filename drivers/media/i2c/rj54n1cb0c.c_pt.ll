; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/rj54n1cb0c.c_pt.bc'
source_filename = "../drivers/media/i2c/rj54n1cb0c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.rj54n1_clock_div = type { i8, i8, i8, i8, i8 }
%struct.rj54n1_datafmt = type { i32, i32 }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rj54n1_reg_val = type { i16, i8 }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rj54n1 = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, %struct.rj54n1_clock_div, ptr, %struct.v4l2_rect, i32, i8, i16, i16, i16, i16, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.rj54n1_pdata = type { i32, i8 }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.94 }
%union.anon.94 = type { i32, [28 x i8] }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__initcall__kmod_rj54n1cb0c__308_1432_rj54n1_i2c_driver_init6 = internal global ptr @rj54n1_i2c_driver_init, section ".initcall6.init", align 4
@rj54n1_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @rj54n1_probe, ptr @rj54n1_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rj54n1_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_rj54n1_i2c_driver_exit = internal global ptr @rj54n1_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description309 = internal constant [54 x i8] c"rj54n1cb0c.description=Sharp RJ54N1CB0C Camera driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author310 = internal constant [64 x i8] c"rj54n1cb0c.author=Guennadi Liakhovetski <g.liakhovetski@gmx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file311 = internal constant [45 x i8] c"rj54n1cb0c.file=drivers/media/i2c/rj54n1cb0c\00", section ".modinfo", align 1
@__UNIQUE_ID_license312 = internal constant [26 x i8] c"rj54n1cb0c.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rj54n1cb0c\00", [21 x i8] zeroinitializer }, align 32
@rj54n1_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"rj54n1cb0c\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@rj54n1_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1309, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"RJ54N1CB0C: missing platform data!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rj54n1_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/media/i2c/rj54n1cb0c.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rj54n1_probe._entry_ptr = internal global ptr @rj54n1_probe._entry, section ".printk_index", align 4
@rj54n1_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1317, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"I2C-Adapter doesn't support I2C_FUNC_SMBUS_BYTE\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rj54n1_probe._entry_ptr.9 = internal global ptr @rj54n1_probe._entry.6, section ".printk_index", align 4
@rj54n1_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @rj54n1_subdev_core_ops, ptr null, ptr null, ptr @rj54n1_subdev_video_ops, ptr null, ptr null, ptr null, ptr @rj54n1_subdev_pad_ops }, [32 x i8] zeroinitializer }, align 32
@rj54n1_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"rj54n1cb0c:1326:(&rj54n1->hdl)->_lock\00", [58 x i8] zeroinitializer }, align 32
@rj54n1_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @rj54n1_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@clk_div = internal constant { %struct.rj54n1_clock_div, [27 x i8] } { %struct.rj54n1_clock_div { i8 3, i8 4, i8 4, i8 1, i8 9 }, [27 x i8] zeroinitializer }, align 32
@rj54n1_colour_fmts = internal constant { [9 x %struct.rj54n1_datafmt], [56 x i8] } { [9 x %struct.rj54n1_datafmt] [%struct.rj54n1_datafmt { i32 8200, i32 7 }, %struct.rj54n1_datafmt { i32 8201, i32 7 }, %struct.rj54n1_datafmt { i32 4104, i32 8 }, %struct.rj54n1_datafmt { i32 4103, i32 8 }, %struct.rj54n1_datafmt { i32 12292, i32 8 }, %struct.rj54n1_datafmt { i32 12294, i32 8 }, %struct.rj54n1_datafmt { i32 12291, i32 8 }, %struct.rj54n1_datafmt { i32 12293, i32 8 }, %struct.rj54n1_datafmt { i32 12295, i32 8 }], [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"powerup\00", [24 x i8] zeroinitializer }, align 32
@rj54n1_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1361, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unable to get GPIO \22powerup\22: %ld\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rj54n1_probe._entry_ptr.15 = internal global ptr @rj54n1_probe._entry.12, section ".printk_index", align 4
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@rj54n1_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 1370, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to get GPIO \22enable\22: %ld\0A\00", [62 x i8] zeroinitializer }, align 32
@rj54n1_probe._entry_ptr.19 = internal global ptr @rj54n1_probe._entry.17, section ".printk_index", align 4
@rj54n1_subdev_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rj54n1_g_register, ptr @rj54n1_s_register, ptr @rj54n1_s_power, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rj54n1_subdev_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rj54n1_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@rj54n1_subdev_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @rj54n1_enum_mbus_code, ptr null, ptr null, ptr @rj54n1_get_fmt, ptr @rj54n1_set_fmt, ptr @rj54n1_get_selection, ptr @rj54n1_set_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@reg_read.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.3, ptr @.str.21, i8 0, i8 109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reg_read\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"[0x%x] = 0x%x\0A\00", [17 x i8] zeroinitializer }, align 32
@reg_write.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.3, ptr @.str.21, i8 0, i8 113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reg_write\00", [22 x i8] zeroinitializer }, align 32
@reg_write.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.3, ptr @.str.21, i8 0, i8 115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rj54n1_set_fmt.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.3, ptr @.str.24, i8 0, i8 -7, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rj54n1_set_fmt\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: code = %d, width = %u, height = %u\0A\00", [56 x i8] zeroinitializer }, align 32
@bank_4 = internal constant { [18 x %struct.rj54n1_reg_val], [56 x i8] } { [18 x %struct.rj54n1_reg_val] [%struct.rj54n1_reg_val { i16 1047, i8 0 }, %struct.rj54n1_reg_val { i16 1068, i8 0 }, %struct.rj54n1_reg_val { i16 1069, i8 -16 }, %struct.rj54n1_reg_val { i16 1070, i8 0 }, %struct.rj54n1_reg_val { i16 1071, i8 80 }, %struct.rj54n1_reg_val { i16 1072, i8 -11 }, %struct.rj54n1_reg_val { i16 1073, i8 22 }, %struct.rj54n1_reg_val { i16 1074, i8 32 }, %struct.rj54n1_reg_val { i16 1075, i8 0 }, %struct.rj54n1_reg_val { i16 1076, i8 -56 }, %struct.rj54n1_reg_val { i16 1084, i8 8 }, %struct.rj54n1_reg_val { i16 1086, i8 -112 }, %struct.rj54n1_reg_val { i16 1093, i8 -125 }, %struct.rj54n1_reg_val { i16 1210, i8 88 }, %struct.rj54n1_reg_val { i16 1211, i8 4 }, %struct.rj54n1_reg_val { i16 1212, i8 32 }, %struct.rj54n1_reg_val { i16 1243, i8 4 }, %struct.rj54n1_reg_val { i16 1278, i8 2 }], [56 x i8] zeroinitializer }, align 32
@bank_5 = internal constant { [18 x %struct.rj54n1_reg_val], [56 x i8] } { [18 x %struct.rj54n1_reg_val] [%struct.rj54n1_reg_val { i16 1300, i8 0 }, %struct.rj54n1_reg_val { i16 1302, i8 0 }, %struct.rj54n1_reg_val { i16 1304, i8 0 }, %struct.rj54n1_reg_val { i16 1306, i8 0 }, %struct.rj54n1_reg_val { i16 1309, i8 -1 }, %struct.rj54n1_reg_val { i16 1391, i8 40 }, %struct.rj54n1_reg_val { i16 1397, i8 64 }, %struct.rj54n1_reg_val { i16 1468, i8 72 }, %struct.rj54n1_reg_val { i16 1473, i8 6 }, %struct.rj54n1_reg_val { i16 1509, i8 17 }, %struct.rj54n1_reg_val { i16 1510, i8 67 }, %struct.rj54n1_reg_val { i16 1511, i8 51 }, %struct.rj54n1_reg_val { i16 1512, i8 33 }, %struct.rj54n1_reg_val { i16 1513, i8 48 }, %struct.rj54n1_reg_val { i16 1514, i8 0 }, %struct.rj54n1_reg_val { i16 1515, i8 -91 }, %struct.rj54n1_reg_val { i16 1516, i8 -1 }, %struct.rj54n1_reg_val { i16 1534, i8 2 }], [56 x i8] zeroinitializer }, align 32
@bank_8 = internal constant { [185 x %struct.rj54n1_reg_val], [188 x i8] } { [185 x %struct.rj54n1_reg_val] [%struct.rj54n1_reg_val { i16 2048, i8 0 }, %struct.rj54n1_reg_val { i16 2049, i8 1 }, %struct.rj54n1_reg_val { i16 2050, i8 97 }, %struct.rj54n1_reg_val { i16 2053, i8 0 }, %struct.rj54n1_reg_val { i16 2054, i8 0 }, %struct.rj54n1_reg_val { i16 2055, i8 0 }, %struct.rj54n1_reg_val { i16 2056, i8 0 }, %struct.rj54n1_reg_val { i16 2057, i8 1 }, %struct.rj54n1_reg_val { i16 2058, i8 97 }, %struct.rj54n1_reg_val { i16 2059, i8 0 }, %struct.rj54n1_reg_val { i16 2060, i8 1 }, %struct.rj54n1_reg_val { i16 2061, i8 0 }, %struct.rj54n1_reg_val { i16 2062, i8 0 }, %struct.rj54n1_reg_val { i16 2063, i8 0 }, %struct.rj54n1_reg_val { i16 2064, i8 0 }, %struct.rj54n1_reg_val { i16 2065, i8 1 }, %struct.rj54n1_reg_val { i16 2066, i8 97 }, %struct.rj54n1_reg_val { i16 2067, i8 0 }, %struct.rj54n1_reg_val { i16 2068, i8 17 }, %struct.rj54n1_reg_val { i16 2069, i8 0 }, %struct.rj54n1_reg_val { i16 2070, i8 65 }, %struct.rj54n1_reg_val { i16 2071, i8 0 }, %struct.rj54n1_reg_val { i16 2072, i8 81 }, %struct.rj54n1_reg_val { i16 2073, i8 1 }, %struct.rj54n1_reg_val { i16 2074, i8 31 }, %struct.rj54n1_reg_val { i16 2075, i8 0 }, %struct.rj54n1_reg_val { i16 2076, i8 1 }, %struct.rj54n1_reg_val { i16 2077, i8 0 }, %struct.rj54n1_reg_val { i16 2078, i8 17 }, %struct.rj54n1_reg_val { i16 2079, i8 0 }, %struct.rj54n1_reg_val { i16 2080, i8 65 }, %struct.rj54n1_reg_val { i16 2081, i8 0 }, %struct.rj54n1_reg_val { i16 2082, i8 81 }, %struct.rj54n1_reg_val { i16 2083, i8 0 }, %struct.rj54n1_reg_val { i16 2084, i8 0 }, %struct.rj54n1_reg_val { i16 2085, i8 0 }, %struct.rj54n1_reg_val { i16 2086, i8 71 }, %struct.rj54n1_reg_val { i16 2087, i8 1 }, %struct.rj54n1_reg_val { i16 2088, i8 79 }, %struct.rj54n1_reg_val { i16 2089, i8 0 }, %struct.rj54n1_reg_val { i16 2090, i8 0 }, %struct.rj54n1_reg_val { i16 2091, i8 0 }, %struct.rj54n1_reg_val { i16 2092, i8 48 }, %struct.rj54n1_reg_val { i16 2093, i8 0 }, %struct.rj54n1_reg_val { i16 2094, i8 64 }, %struct.rj54n1_reg_val { i16 2095, i8 0 }, %struct.rj54n1_reg_val { i16 2096, i8 -77 }, %struct.rj54n1_reg_val { i16 2097, i8 0 }, %struct.rj54n1_reg_val { i16 2098, i8 -29 }, %struct.rj54n1_reg_val { i16 2099, i8 0 }, %struct.rj54n1_reg_val { i16 2100, i8 0 }, %struct.rj54n1_reg_val { i16 2101, i8 0 }, %struct.rj54n1_reg_val { i16 2102, i8 0 }, %struct.rj54n1_reg_val { i16 2103, i8 0 }, %struct.rj54n1_reg_val { i16 2104, i8 0 }, %struct.rj54n1_reg_val { i16 2105, i8 1 }, %struct.rj54n1_reg_val { i16 2106, i8 97 }, %struct.rj54n1_reg_val { i16 2107, i8 0 }, %struct.rj54n1_reg_val { i16 2108, i8 1 }, %struct.rj54n1_reg_val { i16 2109, i8 0 }, %struct.rj54n1_reg_val { i16 2110, i8 0 }, %struct.rj54n1_reg_val { i16 2111, i8 0 }, %struct.rj54n1_reg_val { i16 2112, i8 0 }, %struct.rj54n1_reg_val { i16 2113, i8 1 }, %struct.rj54n1_reg_val { i16 2114, i8 97 }, %struct.rj54n1_reg_val { i16 2115, i8 0 }, %struct.rj54n1_reg_val { i16 2116, i8 29 }, %struct.rj54n1_reg_val { i16 2117, i8 0 }, %struct.rj54n1_reg_val { i16 2118, i8 0 }, %struct.rj54n1_reg_val { i16 2119, i8 0 }, %struct.rj54n1_reg_val { i16 2120, i8 0 }, %struct.rj54n1_reg_val { i16 2121, i8 1 }, %struct.rj54n1_reg_val { i16 2122, i8 31 }, %struct.rj54n1_reg_val { i16 2123, i8 0 }, %struct.rj54n1_reg_val { i16 2124, i8 5 }, %struct.rj54n1_reg_val { i16 2125, i8 0 }, %struct.rj54n1_reg_val { i16 2126, i8 25 }, %struct.rj54n1_reg_val { i16 2127, i8 1 }, %struct.rj54n1_reg_val { i16 2128, i8 33 }, %struct.rj54n1_reg_val { i16 2129, i8 1 }, %struct.rj54n1_reg_val { i16 2130, i8 93 }, %struct.rj54n1_reg_val { i16 2131, i8 0 }, %struct.rj54n1_reg_val { i16 2132, i8 0 }, %struct.rj54n1_reg_val { i16 2133, i8 0 }, %struct.rj54n1_reg_val { i16 2134, i8 25 }, %struct.rj54n1_reg_val { i16 2135, i8 1 }, %struct.rj54n1_reg_val { i16 2136, i8 33 }, %struct.rj54n1_reg_val { i16 2137, i8 0 }, %struct.rj54n1_reg_val { i16 2138, i8 0 }, %struct.rj54n1_reg_val { i16 2139, i8 0 }, %struct.rj54n1_reg_val { i16 2140, i8 0 }, %struct.rj54n1_reg_val { i16 2141, i8 0 }, %struct.rj54n1_reg_val { i16 2142, i8 0 }, %struct.rj54n1_reg_val { i16 2143, i8 0 }, %struct.rj54n1_reg_val { i16 2144, i8 -77 }, %struct.rj54n1_reg_val { i16 2145, i8 0 }, %struct.rj54n1_reg_val { i16 2146, i8 -29 }, %struct.rj54n1_reg_val { i16 2147, i8 0 }, %struct.rj54n1_reg_val { i16 2148, i8 0 }, %struct.rj54n1_reg_val { i16 2149, i8 0 }, %struct.rj54n1_reg_val { i16 2150, i8 0 }, %struct.rj54n1_reg_val { i16 2151, i8 0 }, %struct.rj54n1_reg_val { i16 2152, i8 0 }, %struct.rj54n1_reg_val { i16 2153, i8 -30 }, %struct.rj54n1_reg_val { i16 2154, i8 0 }, %struct.rj54n1_reg_val { i16 2155, i8 1 }, %struct.rj54n1_reg_val { i16 2156, i8 6 }, %struct.rj54n1_reg_val { i16 2157, i8 0 }, %struct.rj54n1_reg_val { i16 2158, i8 0 }, %struct.rj54n1_reg_val { i16 2159, i8 0 }, %struct.rj54n1_reg_val { i16 2160, i8 96 }, %struct.rj54n1_reg_val { i16 2161, i8 -116 }, %struct.rj54n1_reg_val { i16 2162, i8 16 }, %struct.rj54n1_reg_val { i16 2163, i8 0 }, %struct.rj54n1_reg_val { i16 2164, i8 -32 }, %struct.rj54n1_reg_val { i16 2165, i8 0 }, %struct.rj54n1_reg_val { i16 2166, i8 39 }, %struct.rj54n1_reg_val { i16 2167, i8 1 }, %struct.rj54n1_reg_val { i16 2168, i8 0 }, %struct.rj54n1_reg_val { i16 2169, i8 0 }, %struct.rj54n1_reg_val { i16 2170, i8 0 }, %struct.rj54n1_reg_val { i16 2171, i8 3 }, %struct.rj54n1_reg_val { i16 2172, i8 0 }, %struct.rj54n1_reg_val { i16 2173, i8 0 }, %struct.rj54n1_reg_val { i16 2174, i8 0 }, %struct.rj54n1_reg_val { i16 2175, i8 0 }, %struct.rj54n1_reg_val { i16 2176, i8 0 }, %struct.rj54n1_reg_val { i16 2177, i8 0 }, %struct.rj54n1_reg_val { i16 2178, i8 0 }, %struct.rj54n1_reg_val { i16 2179, i8 0 }, %struct.rj54n1_reg_val { i16 2180, i8 0 }, %struct.rj54n1_reg_val { i16 2181, i8 0 }, %struct.rj54n1_reg_val { i16 2182, i8 -8 }, %struct.rj54n1_reg_val { i16 2183, i8 0 }, %struct.rj54n1_reg_val { i16 2184, i8 3 }, %struct.rj54n1_reg_val { i16 2185, i8 0 }, %struct.rj54n1_reg_val { i16 2186, i8 100 }, %struct.rj54n1_reg_val { i16 2187, i8 0 }, %struct.rj54n1_reg_val { i16 2188, i8 3 }, %struct.rj54n1_reg_val { i16 2189, i8 0 }, %struct.rj54n1_reg_val { i16 2190, i8 -79 }, %struct.rj54n1_reg_val { i16 2191, i8 0 }, %struct.rj54n1_reg_val { i16 2192, i8 3 }, %struct.rj54n1_reg_val { i16 2193, i8 1 }, %struct.rj54n1_reg_val { i16 2194, i8 29 }, %struct.rj54n1_reg_val { i16 2195, i8 0 }, %struct.rj54n1_reg_val { i16 2196, i8 3 }, %struct.rj54n1_reg_val { i16 2197, i8 1 }, %struct.rj54n1_reg_val { i16 2198, i8 75 }, %struct.rj54n1_reg_val { i16 2199, i8 0 }, %struct.rj54n1_reg_val { i16 2200, i8 -27 }, %struct.rj54n1_reg_val { i16 2201, i8 0 }, %struct.rj54n1_reg_val { i16 2202, i8 1 }, %struct.rj54n1_reg_val { i16 2203, i8 0 }, %struct.rj54n1_reg_val { i16 2204, i8 1 }, %struct.rj54n1_reg_val { i16 2205, i8 4 }, %struct.rj54n1_reg_val { i16 2206, i8 -56 }, %struct.rj54n1_reg_val { i16 2207, i8 0 }, %struct.rj54n1_reg_val { i16 2208, i8 1 }, %struct.rj54n1_reg_val { i16 2209, i8 1 }, %struct.rj54n1_reg_val { i16 2210, i8 97 }, %struct.rj54n1_reg_val { i16 2211, i8 0 }, %struct.rj54n1_reg_val { i16 2212, i8 1 }, %struct.rj54n1_reg_val { i16 2213, i8 0 }, %struct.rj54n1_reg_val { i16 2214, i8 0 }, %struct.rj54n1_reg_val { i16 2215, i8 0 }, %struct.rj54n1_reg_val { i16 2216, i8 0 }, %struct.rj54n1_reg_val { i16 2217, i8 0 }, %struct.rj54n1_reg_val { i16 2218, i8 127 }, %struct.rj54n1_reg_val { i16 2219, i8 3 }, %struct.rj54n1_reg_val { i16 2220, i8 0 }, %struct.rj54n1_reg_val { i16 2221, i8 0 }, %struct.rj54n1_reg_val { i16 2222, i8 0 }, %struct.rj54n1_reg_val { i16 2223, i8 0 }, %struct.rj54n1_reg_val { i16 2224, i8 0 }, %struct.rj54n1_reg_val { i16 2225, i8 0 }, %struct.rj54n1_reg_val { i16 2230, i8 0 }, %struct.rj54n1_reg_val { i16 2231, i8 1 }, %struct.rj54n1_reg_val { i16 2232, i8 0 }, %struct.rj54n1_reg_val { i16 2233, i8 0 }, %struct.rj54n1_reg_val { i16 2234, i8 2 }, %struct.rj54n1_reg_val { i16 2235, i8 0 }, %struct.rj54n1_reg_val { i16 2236, i8 -1 }, %struct.rj54n1_reg_val { i16 2237, i8 0 }, %struct.rj54n1_reg_val { i16 2302, i8 2 }], [188 x i8] zeroinitializer }, align 32
@rj54n1_set_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 890, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Resetting RJ54N1CB0C clock failed: %d!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rj54n1_set_clock\00", [47 x i8] zeroinitializer }, align 32
@rj54n1_set_clock._entry_ptr = internal global ptr @rj54n1_set_clock._entry, section ".printk_index", align 4
@rj54n1_sensor_scale.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.3, ptr @.str.28, i8 0, i8 -92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rj54n1_sensor_scale\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Adjusted output width: in %u, out %u\0A\00", [58 x i8] zeroinitializer }, align 32
@rj54n1_sensor_scale.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.3, ptr @.str.29, i8 0, i8 -89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Adjusted output height: in %u, out %u\0A\00", [57 x i8] zeroinitializer }, align 32
@rj54n1_sensor_scale.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.3, ptr @.str.30, i8 0, i8 -53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Scaled for %dx%d : %u = %ux%u, skip %u\0A\00", [56 x i8] zeroinitializer }, align 32
@rj54n1_set_selection.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.3, ptr @.str.32, i8 0, i8 -115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rj54n1_set_selection\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Scaling for %dx%d : %u = %dx%d\0A\00", [32 x i8] zeroinitializer }, align 32
@rj54n1_video_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 1281, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"No RJ54N1CB0C found, read 0x%x:0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rj54n1_video_probe\00", [45 x i8] zeroinitializer }, align 32
@rj54n1_video_probe._entry_ptr = internal global ptr @rj54n1_video_probe._entry, section ".printk_index", align 4
@rj54n1_video_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.3, i32 1291, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Detected a RJ54N1CB0C chip ID 0x%x:0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@rj54n1_video_probe._entry_ptr.37 = internal global ptr @rj54n1_video_probe._entry.35, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 4103, i64 4104, i64 8200, i64 8201, i64 12291, i64 12292, i64 12293, i64 12294, i64 12295]
@__sancov_gen_cov_switch_values.38 = internal global [11 x i64] [i64 9, i64 32, i64 4103, i64 4104, i64 8200, i64 8201, i64 12291, i64 12292, i64 12293, i64 12294, i64 12295]
@__sancov_gen_cov_switch_values.39 = internal global [11 x i64] [i64 9, i64 32, i64 4103, i64 4104, i64 8200, i64 8201, i64 12291, i64 12292, i64 12293, i64 12294, i64 12295]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.41 = internal global [58 x i64] [i64 56, i64 32, i64 2040, i64 2041, i64 2042, i64 2043, i64 2044, i64 2045, i64 2046, i64 2047, i64 4080, i64 4081, i64 4082, i64 4083, i64 4084, i64 4085, i64 4086, i64 4087, i64 4088, i64 4089, i64 4090, i64 4091, i64 4092, i64 4093, i64 4094, i64 4095, i64 8160, i64 8161, i64 8162, i64 8163, i64 8164, i64 8165, i64 8166, i64 8167, i64 8168, i64 8169, i64 8170, i64 8171, i64 8172, i64 8173, i64 8174, i64 8175, i64 8176, i64 8177, i64 8178, i64 8179, i64 8180, i64 8181, i64 8182, i64 8183, i64 8184, i64 8185, i64 8186, i64 8187, i64 8188, i64 8189, i64 8190, i64 8191]
@__sancov_gen_cov_switch_values.42 = internal global [6 x i64] [i64 4, i64 32, i64 9963788, i64 9963795, i64 9963796, i64 9963797]
@___asan_gen_.43 = private unnamed_addr constant [18 x i8] c"rj54n1_i2c_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1423, i32 26 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1425, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant [10 x i8] c"rj54n1_id\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1417, i32 35 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1309, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1316, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [18 x i8] c"rj54n1_subdev_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1253, i32 37 }
@___asan_gen_.82 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1326, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [16 x i8] c"rj54n1_ctrl_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1229, i32 35 }
@___asan_gen_.91 = private unnamed_addr constant [8 x i8] c"clk_div\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 417, i32 38 }
@___asan_gen_.94 = private unnamed_addr constant [19 x i8] c"rj54n1_colour_fmts\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 131, i32 36 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1357, i32 55 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1360, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1366, i32 57 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1369, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [23 x i8] c"rj54n1_subdev_core_ops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1233, i32 42 }
@___asan_gen_.121 = private unnamed_addr constant [24 x i8] c"rj54n1_subdev_video_ops\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1241, i32 43 }
@___asan_gen_.124 = private unnamed_addr constant [22 x i8] c"rj54n1_subdev_pad_ops\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1245, i32 41 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 437, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 454, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 995, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant [7 x i8] c"bank_4\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 174, i32 36 }
@___asan_gen_.145 = private unnamed_addr constant [7 x i8] c"bank_5\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 195, i32 36 }
@___asan_gen_.148 = private unnamed_addr constant [7 x i8] c"bank_8\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 224, i32 36 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 889, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 658, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 670, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 814, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 564, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1280, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.191 = private constant [34 x i8] c"../drivers/media/i2c/rj54n1cb0c.c\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1290, i32 2 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_author310, ptr @__UNIQUE_ID_description309, ptr @__UNIQUE_ID_file311, ptr @__UNIQUE_ID_license312, ptr @__exitcall_rj54n1_i2c_driver_exit, ptr @__initcall__kmod_rj54n1cb0c__308_1432_rj54n1_i2c_driver_init6, ptr @rj54n1_i2c_driver_exit, ptr @rj54n1_probe._entry, ptr @rj54n1_probe._entry.12, ptr @rj54n1_probe._entry.17, ptr @rj54n1_probe._entry.6, ptr @rj54n1_probe._entry_ptr, ptr @rj54n1_probe._entry_ptr.15, ptr @rj54n1_probe._entry_ptr.19, ptr @rj54n1_probe._entry_ptr.9, ptr @rj54n1_set_clock._entry, ptr @rj54n1_set_clock._entry_ptr, ptr @rj54n1_video_probe._entry, ptr @rj54n1_video_probe._entry.35, ptr @rj54n1_video_probe._entry_ptr, ptr @rj54n1_video_probe._entry_ptr.37, ptr @rj54n1_i2c_driver, ptr @.str, ptr @rj54n1_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @rj54n1_subdev_ops, ptr @rj54n1_probe._key, ptr @.str.10, ptr @rj54n1_ctrl_ops, ptr @clk_div, ptr @rj54n1_colour_fmts, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @rj54n1_subdev_core_ops, ptr @rj54n1_subdev_video_ops, ptr @rj54n1_subdev_pad_ops, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @bank_4, ptr @bank_5, ptr @bank_8, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rj54n1_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rj54n1_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rj54n1_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rj54n1_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rj54n1_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rj54n1_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rj54n1_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_div to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rj54n1_colour_fmts to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rj54n1_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rj54n1_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rj54n1_subdev_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rj54n1_subdev_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rj54n1_subdev_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bank_4 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bank_5 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bank_8 to i32), i32 740, i32 928, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rj54n1_set_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rj54n1_video_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rj54n1_video_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rj54n1_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @rj54n1_i2c_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rj54n1_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @rj54n1_i2c_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rj54n1_probe(ptr noundef %client, ptr nocapture noundef readnone %did) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %1) #9
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end11, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev10 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev10, ptr noundef nonnull @.str.7) #12
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 436, i32 noundef 3520) #9
  %tobool14.not = icmp eq ptr %call.i, null
  br i1 %tobool14.not, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @rj54n1_subdev_ops) #9
  %hdl = getelementptr inbounds %struct.rj54n1, ptr %call.i, i32 0, i32 1
  %call17 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 4, ptr noundef nonnull @rj54n1_probe._key, ptr noundef nonnull @.str.10) #9
  %call19 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @rj54n1_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #9
  %call21 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @rj54n1_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #9
  %call23 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @rj54n1_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 127, i64 noundef 1, i64 noundef 66) #9
  %call25 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @rj54n1_ctrl_ops, i32 noundef 9963788, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #9
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %8 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %hdl, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.rj54n1, ptr %call.i, i32 0, i32 1, i32 9
  %9 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool29.not = icmp eq i32 %10, 0
  br i1 %tobool29.not, label %if.end33, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end33:                                         ; preds = %if.end16
  %clk_div = getelementptr inbounds %struct.rj54n1, ptr %call.i, i32 0, i32 5
  %11 = call ptr @memcpy(ptr %clk_div, ptr @clk_div, i32 5)
  %rect = getelementptr inbounds %struct.rj54n1, ptr %call.i, i32 0, i32 7
  %12 = ptrtoint ptr %rect to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %rect, align 4
  %top = getelementptr inbounds %struct.rj54n1, ptr %call.i, i32 0, i32 7, i32 1
  %13 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %top, align 4
  %width = getelementptr inbounds %struct.rj54n1, ptr %call.i, i32 0, i32 7, i32 2
  %14 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1600, ptr %width, align 4
  %height = getelementptr inbounds %struct.rj54n1, ptr %call.i, i32 0, i32 7, i32 3
  %15 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1200, ptr %height, align 4
  %width37 = getelementptr inbounds %struct.rj54n1, ptr %call.i, i32 0, i32 10
  %16 = ptrtoint ptr %width37 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1600, ptr %width37, align 2
  %height38 = getelementptr inbounds %struct.rj54n1, ptr %call.i, i32 0, i32 11
  %17 = ptrtoint ptr %height38 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1200, ptr %height38, align 4
  %fmt = getelementptr inbounds %struct.rj54n1, ptr %call.i, i32 0, i32 6
  %18 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @rj54n1_colour_fmts, ptr %fmt, align 4
  %resize = getelementptr inbounds %struct.rj54n1, ptr %call.i, i32 0, i32 12
  %19 = ptrtoint ptr %resize to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1024, ptr %resize, align 2
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %3, align 4
  %div159 = lshr i32 %21, 1
  %mul = mul i32 %div159, 49
  %div42 = udiv i32 %mul, 20
  %tgclk_mhz = getelementptr inbounds %struct.rj54n1, ptr %call.i, i32 0, i32 8
  %22 = ptrtoint ptr %tgclk_mhz to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div42, ptr %tgclk_mhz, align 4
  %call44 = tail call ptr @clk_get(ptr noundef %dev, ptr noundef null) #9
  %clk = getelementptr inbounds %struct.rj54n1, ptr %call.i, i32 0, i32 2
  %23 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call44, ptr %clk, align 4
  %cmp.i161 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i161, label %if.then47, label %if.end50

if.then47:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %call44 to i32
  br label %err_free_ctrl

if.end50:                                         ; preds = %if.end33
  %call52 = tail call ptr @gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef 3) #9
  %pwup_gpio = getelementptr inbounds %struct.rj54n1, ptr %call.i, i32 0, i32 3
  %25 = ptrtoint ptr %pwup_gpio to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call52, ptr %pwup_gpio, align 4
  %cmp.i162 = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i162, label %do.end58, label %if.end64

do.end58:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %call52 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %26) #12
  %27 = ptrtoint ptr %pwup_gpio to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pwup_gpio, align 4
  %29 = ptrtoint ptr %28 to i32
  br label %err_clk_put

if.end64:                                         ; preds = %if.end50
  %call66 = tail call ptr @gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef 3) #9
  %enable_gpio = getelementptr inbounds %struct.rj54n1, ptr %call.i, i32 0, i32 4
  %30 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call66, ptr %enable_gpio, align 4
  %cmp.i163 = icmp ugt ptr %call66, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i163, label %do.end72, label %if.end78

do.end72:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %call66 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %31) #12
  %32 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %enable_gpio, align 4
  %34 = ptrtoint ptr %33 to i32
  br label %err_gpio_put

if.end78:                                         ; preds = %if.end64
  %call79 = tail call fastcc i32 @rj54n1_video_probe(ptr noundef %client, ptr noundef nonnull %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp = icmp slt i32 %call79, 0
  br i1 %cmp, label %if.end78.err_gpio_putthread-pre-split_crit_edge, label %if.end82

if.end78.err_gpio_putthread-pre-split_crit_edge:  ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_gpio_putthread-pre-split

if.end82:                                         ; preds = %if.end78
  %call84 = tail call i32 @v4l2_async_register_subdev(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end82.cleanup_crit_edge, label %if.end82.err_gpio_putthread-pre-split_crit_edge

if.end82.err_gpio_putthread-pre-split_crit_edge:  ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_gpio_putthread-pre-split

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_gpio_putthread-pre-split:                     ; preds = %if.end82.err_gpio_putthread-pre-split_crit_edge, %if.end78.err_gpio_putthread-pre-split_crit_edge
  %ret.0.ph = phi i32 [ %call84, %if.end82.err_gpio_putthread-pre-split_crit_edge ], [ %call79, %if.end78.err_gpio_putthread-pre-split_crit_edge ]
  %35 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pr = load ptr, ptr %enable_gpio, align 4
  br label %err_gpio_put

err_gpio_put:                                     ; preds = %err_gpio_putthread-pre-split, %do.end72
  %36 = phi ptr [ %.pr, %err_gpio_putthread-pre-split ], [ %33, %do.end72 ]
  %ret.0 = phi i32 [ %ret.0.ph, %err_gpio_putthread-pre-split ], [ %34, %do.end72 ]
  %tobool89.not = icmp eq ptr %36, null
  br i1 %tobool89.not, label %err_gpio_put.if.end92_crit_edge, label %if.then90

err_gpio_put.if.end92_crit_edge:                  ; preds = %err_gpio_put
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

if.then90:                                        ; preds = %err_gpio_put
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_put(ptr noundef nonnull %36) #9
  br label %if.end92

if.end92:                                         ; preds = %if.then90, %err_gpio_put.if.end92_crit_edge
  %37 = ptrtoint ptr %pwup_gpio to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pwup_gpio, align 4
  %tobool94.not = icmp eq ptr %38, null
  br i1 %tobool94.not, label %if.end92.err_clk_put_crit_edge, label %if.then95

if.end92.err_clk_put_crit_edge:                   ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_clk_put

if.then95:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_put(ptr noundef nonnull %38) #9
  br label %err_clk_put

err_clk_put:                                      ; preds = %if.then95, %if.end92.err_clk_put_crit_edge, %do.end58
  %ret.1 = phi i32 [ %29, %do.end58 ], [ %ret.0, %if.then95 ], [ %ret.0, %if.end92.err_clk_put_crit_edge ]
  %39 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %40) #9
  br label %err_free_ctrl

err_free_ctrl:                                    ; preds = %err_clk_put, %if.then47
  %ret.2 = phi i32 [ %24, %if.then47 ], [ %ret.1, %err_clk_put ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #9
  br label %cleanup

cleanup:                                          ; preds = %err_free_ctrl, %if.end82.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %do.end9, %do.end
  %retval.0 = phi i32 [ %ret.2, %err_free_ctrl ], [ -5, %do.end9 ], [ -22, %do.end ], [ -12, %if.end11.cleanup_crit_edge ], [ %10, %if.end16.cleanup_crit_edge ], [ 0, %if.end82.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rj54n1_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %enable_gpio = getelementptr inbounds %struct.rj54n1, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enable_gpio, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_put(ptr noundef nonnull %3) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pwup_gpio = getelementptr inbounds %struct.rj54n1, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %pwup_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pwup_gpio, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_put(ptr noundef nonnull %5) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %clk = getelementptr inbounds %struct.rj54n1, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %7) #9
  %hdl = getelementptr inbounds %struct.rj54n1, ptr %1, i32 0, i32 1
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #9
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rj54n1_video_probe(ptr noundef %client, ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @rj54n1_s_power(ptr noundef %1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %bank.i = getelementptr inbounds %struct.rj54n1, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bank.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %5)
  %cmp.not.i = icmp eq i8 %5, 4
  br i1 %cmp.not.i, label %if.end.if.end21.i_crit_edge, label %do.body.i

if.end.if.end21.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

do.body.i:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_read.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_video_probe, %if.then6.i)) #9
          to label %do.end.i [label %if.then6.i], !srcloc !119

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_read.__UNIQUE_ID_ddebug292, ptr noundef %dev.i, ptr noundef nonnull @.str.21, i32 noundef 255, i32 noundef 4) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %do.body.i
  %call12.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -1, i8 noundef zeroext 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %do.end.i.reg_read.exit_crit_edge, label %if.end16.i

do.end.i.reg_read.exit_crit_edge:                 ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %reg_read.exit

if.end16.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %bank.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 4, ptr %bank.i, align 2
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end16.i, %if.end.if.end21.i_crit_edge
  %call24.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 0) #9
  br label %reg_read.exit

reg_read.exit:                                    ; preds = %if.end21.i, %do.end.i.reg_read.exit_crit_edge
  %retval.0.i = phi i32 [ %call24.i, %if.end21.i ], [ %call12.i, %do.end.i.reg_read.exit_crit_edge ]
  %7 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i.i, align 4
  %bank.i39 = getelementptr inbounds %struct.rj54n1, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %bank.i39 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bank.i39, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %10)
  %cmp.not.i40 = icmp eq i8 %10, 4
  br i1 %cmp.not.i40, label %reg_read.exit.reg_read.exit51_crit_edge, label %do.body.i41

reg_read.exit.reg_read.exit51_crit_edge:          ; preds = %reg_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %reg_read.exit51

do.body.i41:                                      ; preds = %reg_read.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_read.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_video_probe, %if.then6.i43)) #9
          to label %do.end.i46 [label %if.then6.i43], !srcloc !119

if.then6.i43:                                     ; preds = %do.body.i41
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i42 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_read.__UNIQUE_ID_ddebug292, ptr noundef %dev.i42, ptr noundef nonnull @.str.21, i32 noundef 255, i32 noundef 4) #9
  br label %do.end.i46

do.end.i46:                                       ; preds = %if.then6.i43, %do.body.i41
  %call12.i44 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -1, i8 noundef zeroext 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i44)
  %cmp13.i45 = icmp slt i32 %call12.i44, 0
  br i1 %cmp13.i45, label %do.end.i46.if.then6_crit_edge, label %if.end16.i47

do.end.i46.if.then6_crit_edge:                    ; preds = %do.end.i46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.end16.i47:                                     ; preds = %do.end.i46
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %bank.i39 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 4, ptr %bank.i39, align 2
  br label %reg_read.exit51

reg_read.exit51:                                  ; preds = %if.end16.i47, %reg_read.exit.reg_read.exit51_crit_edge
  %call24.i48 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 81, i32 %retval.0.i)
  %cmp4.not = icmp eq i32 %retval.0.i, 81
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call24.i48)
  %cmp5.not = icmp eq i32 %call24.i48, 16
  %or.cond = select i1 %cmp4.not, i1 %cmp5.not, i1 false
  br i1 %or.cond, label %if.end7, label %reg_read.exit51.if.then6_crit_edge

reg_read.exit51.if.then6_crit_edge:               ; preds = %reg_read.exit51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.then6:                                         ; preds = %reg_read.exit51.if.then6_crit_edge, %do.end.i46.if.then6_crit_edge
  %retval.0.i5059 = phi i32 [ %call24.i48, %reg_read.exit51.if.then6_crit_edge ], [ %call12.i44, %do.end.i46.if.then6_crit_edge ]
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %retval.0.i, i32 noundef %retval.0.i5059) #12
  br label %done

if.end7:                                          ; preds = %reg_read.exit51
  %ioctl_high = getelementptr inbounds %struct.rj54n1_pdata, ptr %priv, i32 0, i32 1
  %12 = ptrtoint ptr %ioctl_high to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ioctl_high, align 4, !range !120
  %14 = shl nuw i8 %13, 7
  %call9 = tail call fastcc i32 @reg_write(ptr noundef %client, i16 noundef zeroext 1519, i8 noundef zeroext %14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end7.done_crit_edge, label %do.end16

if.end7.done_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

do.end16:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %dev17 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev17, ptr noundef nonnull @.str.36, i32 noundef 81, i32 noundef 16) #12
  %hdl = getelementptr inbounds %struct.rj54n1, ptr %1, i32 0, i32 1
  %call18 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl) #9
  br label %done

done:                                             ; preds = %do.end16, %if.end7.done_crit_edge, %if.then6
  %ret.0 = phi i32 [ -19, %if.then6 ], [ %call9, %if.end7.done_crit_edge ], [ %call18, %do.end16 ]
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_priv.i.i, align 4
  %driver_data.i.i.i.i52 = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4, i32 8
  %17 = ptrtoint ptr %driver_data.i.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i.i.i.i52, align 4
  %clk11.i = getelementptr inbounds %struct.rj54n1, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %clk11.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk11.i, align 4
  tail call void @clk_disable(ptr noundef %20) #9
  tail call void @clk_unprepare(ptr noundef %20) #9
  %enable_gpio12.i = getelementptr inbounds %struct.rj54n1, ptr %18, i32 0, i32 4
  %21 = ptrtoint ptr %enable_gpio12.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %enable_gpio12.i, align 4
  %tobool13.not.i = icmp eq ptr %22, null
  br i1 %tobool13.not.i, label %done.if.end16.i53_crit_edge, label %if.then14.i

done.if.end16.i53_crit_edge:                      ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i53

if.then14.i:                                      ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value(ptr noundef nonnull %22, i32 noundef 0) #9
  br label %if.end16.i53

if.end16.i53:                                     ; preds = %if.then14.i, %done.if.end16.i53_crit_edge
  %pwup_gpio17.i = getelementptr inbounds %struct.rj54n1, ptr %18, i32 0, i32 3
  %23 = ptrtoint ptr %pwup_gpio17.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pwup_gpio17.i, align 4
  %tobool18.not.i = icmp eq ptr %24, null
  br i1 %tobool18.not.i, label %if.end16.i53.cleanup_crit_edge, label %if.then19.i

if.end16.i53.cleanup_crit_edge:                   ; preds = %if.end16.i53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then19.i:                                      ; preds = %if.end16.i53
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value(ptr noundef nonnull %24, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then19.i, %if.end16.i53.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %ret.0, %if.end16.i53.cleanup_crit_edge ], [ %ret.0, %if.then19.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rj54n1_g_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %2 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %reg1, align 1
  %4 = add i64 %3, -8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 -7168, i64 %4)
  %5 = icmp ult i64 %4, -7168
  br i1 %5, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %6 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 1, ptr %size, align 1
  %conv = trunc i64 %3 to i16
  %driver_data.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %7 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %bank.i = getelementptr inbounds %struct.rj54n1, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bank.i, align 2
  %11 = lshr i16 %conv, 8
  %12 = zext i16 %11 to i32
  %13 = zext i8 %10 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %13)
  %cmp.not.i = icmp eq i16 %11, %13
  br i1 %cmp.not.i, label %if.end.if.end21.i_crit_edge, label %do.body.i

if.end.if.end21.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

do.body.i:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_read.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_g_register, %if.then6.i)) #9
          to label %do.end.i [label %if.then6.i], !srcloc !119

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_read.__UNIQUE_ID_ddebug292, ptr noundef %dev.i, ptr noundef nonnull @.str.21, i32 noundef 255, i32 noundef %12) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %do.body.i
  %conv11.i = trunc i16 %11 to i8
  %call12.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext -1, i8 noundef zeroext %conv11.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %do.end.i.reg_read.exit_crit_edge, label %if.end16.i

do.end.i.reg_read.exit_crit_edge:                 ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %reg_read.exit

if.end16.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %bank.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv11.i, ptr %bank.i, align 2
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end16.i, %if.end.if.end21.i_crit_edge
  %conv23.i = trunc i64 %3 to i8
  %call24.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv23.i) #9
  br label %reg_read.exit

reg_read.exit:                                    ; preds = %if.end21.i, %do.end.i.reg_read.exit_crit_edge
  %retval.0.i = phi i32 [ %call24.i, %if.end21.i ], [ %call12.i, %do.end.i.reg_read.exit_crit_edge ]
  %conv6 = sext i32 %retval.0.i to i64
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %15 = ptrtoint ptr %val to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 %conv6, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %retval.0.i)
  %cmp8 = icmp ugt i32 %retval.0.i, 255
  %. = select i1 %cmp8, i32 -5, i32 0
  br label %cleanup

cleanup:                                          ; preds = %reg_read.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %., %reg_read.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rj54n1_s_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %reg1, align 1
  %2 = add i64 %1, -8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 -7168, i64 %2)
  %3 = icmp ult i64 %2, -7168
  br i1 %3, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i, align 4
  %conv = trunc i64 %1 to i16
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %6 = ptrtoint ptr %val to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %val, align 1
  %conv5 = trunc i64 %7 to i8
  %call6 = tail call fastcc i32 @reg_write(ptr noundef %5, i16 noundef zeroext %conv, i8 noundef zeroext %conv5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  %. = select i1 %cmp7, i32 -5, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rj54n1_s_power(ptr nocapture noundef readonly %sd, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  br i1 %tobool.not, label %if.end10, label %if.then

if.then:                                          ; preds = %entry
  %pwup_gpio = getelementptr inbounds %struct.rj54n1, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %pwup_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pwup_gpio, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value(ptr noundef nonnull %5, i32 noundef 1) #9
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %enable_gpio = getelementptr inbounds %struct.rj54n1, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enable_gpio, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value(ptr noundef nonnull %7, i32 noundef 1) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  tail call void @msleep(i32 noundef 1) #9
  %clk = getelementptr inbounds %struct.rj54n1, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end8
  %call1.i = tail call i32 @clk_enable(ptr noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %9) #9
  br label %cleanup

if.end10:                                         ; preds = %entry
  %clk11 = getelementptr inbounds %struct.rj54n1, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %clk11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk11, align 4
  tail call void @clk_disable(ptr noundef %11) #9
  tail call void @clk_unprepare(ptr noundef %11) #9
  %enable_gpio12 = getelementptr inbounds %struct.rj54n1, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %enable_gpio12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %enable_gpio12, align 4
  %tobool13.not = icmp eq ptr %13, null
  br i1 %tobool13.not, label %if.end10.if.end16_crit_edge, label %if.then14

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value(ptr noundef nonnull %13, i32 noundef 0) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end10.if.end16_crit_edge
  %pwup_gpio17 = getelementptr inbounds %struct.rj54n1, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %pwup_gpio17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pwup_gpio17, align 4
  %tobool18.not = icmp eq ptr %15, null
  br i1 %tobool18.not, label %if.end16.cleanup_crit_edge, label %if.then19

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value(ptr noundef nonnull %15, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end16.cleanup_crit_edge, %if.then3.i, %if.end.i.cleanup_crit_edge, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then19 ], [ 0, %if.end16.cleanup_crit_edge ], [ %call.i, %if.end8.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @reg_write(ptr noundef %client, i16 noundef zeroext %reg, i8 noundef zeroext %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %bank = getelementptr inbounds %struct.rj54n1, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %bank to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bank, align 2
  %conv = zext i8 %3 to i32
  %conv1 = zext i16 %reg to i32
  %4 = lshr i32 %conv1, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv)
  %cmp.not = icmp eq i32 %4, %conv
  br i1 %cmp.not, label %entry.do.body22_crit_edge, label %do.body

entry.do.body22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reg_write, %if.then6)) #9
          to label %do.end [label %if.then6], !srcloc !119

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef 255, i32 noundef %4) #9
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %conv11 = trunc i32 %4 to i8
  %call12 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -1, i8 noundef zeroext %conv11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.end.cleanup_crit_edge, label %if.end16

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %bank to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv11, ptr %bank, align 2
  br label %do.body22

do.body22:                                        ; preds = %if.end16, %entry.do.body22_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reg_write, %if.then34)) #9
          to label %do.end40 [label %if.then34], !srcloc !119

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  %dev35 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %and = and i32 %conv1, 255
  %conv37 = zext i8 %data to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug294, ptr noundef %dev35, ptr noundef nonnull @.str.21, i32 noundef %and, i32 noundef %conv37) #9
  br label %do.end40

do.end40:                                         ; preds = %if.then34, %do.body22
  %conv43 = trunc i16 %reg to i8
  %call44 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %conv43, i8 noundef zeroext %data) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end40, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call44, %do.end40 ], [ %call12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rj54n1_s_stream(ptr nocapture noundef readonly %sd, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %conv = select i1 %tobool.not, i8 -128, i8 0
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %bank.i.i = getelementptr inbounds %struct.rj54n1, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %bank.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bank.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %5)
  %cmp.not.i.i = icmp eq i8 %5, 4
  br i1 %cmp.not.i.i, label %entry.reg_read.exit.i_crit_edge, label %do.body.i.i

entry.reg_read.exit.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %reg_read.exit.i

do.body.i.i:                                      ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_read.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_s_stream, %if.then6.i.i)) #9
          to label %do.end.i.i [label %if.then6.i.i], !srcloc !119

if.then6.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_read.__UNIQUE_ID_ddebug292, ptr noundef %dev.i.i, ptr noundef nonnull @.str.21, i32 noundef 255, i32 noundef 4) #9
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then6.i.i, %do.body.i.i
  %call12.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext -1, i8 noundef zeroext 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp13.i.i = icmp slt i32 %call12.i.i, 0
  br i1 %cmp13.i.i, label %do.end.i.i.reg_set.exit_crit_edge, label %if.end16.i.i

do.end.i.i.reg_set.exit_crit_edge:                ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %reg_set.exit

if.end16.i.i:                                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %bank.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 4, ptr %bank.i.i, align 2
  br label %reg_read.exit.i

reg_read.exit.i:                                  ; preds = %if.end16.i.i, %entry.reg_read.exit.i_crit_edge
  %call24.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 23) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i)
  %cmp.i = icmp slt i32 %call24.i.i, 0
  br i1 %cmp.i, label %reg_read.exit.i.reg_set.exit_crit_edge, label %if.end.i

reg_read.exit.i.reg_set.exit_crit_edge:           ; preds = %reg_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %reg_set.exit

if.end.i:                                         ; preds = %reg_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %7 = trunc i32 %call24.i.i to i8
  %8 = and i8 %7, 127
  %conv4.i = or i8 %8, %conv
  %call5.i = tail call fastcc i32 @reg_write(ptr noundef %1, i16 noundef zeroext 1047, i8 noundef zeroext %conv4.i) #9
  br label %reg_set.exit

reg_set.exit:                                     ; preds = %if.end.i, %reg_read.exit.i.reg_set.exit_crit_edge, %do.end.i.i.reg_set.exit_crit_edge
  %retval.0.i = phi i32 [ %call5.i, %if.end.i ], [ %call24.i.i, %reg_read.exit.i.reg_set.exit_crit_edge ], [ %call12.i.i, %do.end.i.i.reg_set.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @reg_set(ptr noundef %client, i16 noundef zeroext %reg, i8 noundef zeroext %data, i8 noundef zeroext %mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %bank.i = getelementptr inbounds %struct.rj54n1, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bank.i, align 2
  %4 = lshr i16 %reg, 8
  %5 = zext i16 %4 to i32
  %6 = zext i8 %3 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %6)
  %cmp.not.i = icmp eq i16 %4, %6
  br i1 %cmp.not.i, label %entry.reg_read.exit_crit_edge, label %do.body.i

entry.reg_read.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %reg_read.exit

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_read.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reg_set, %if.then6.i)) #9
          to label %do.end.i [label %if.then6.i], !srcloc !119

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_read.__UNIQUE_ID_ddebug292, ptr noundef %dev.i, ptr noundef nonnull @.str.21, i32 noundef 255, i32 noundef %5) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %do.body.i
  %conv11.i = trunc i16 %4 to i8
  %call12.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -1, i8 noundef zeroext %conv11.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %do.end.i.cleanup_crit_edge, label %if.end16.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %bank.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv11.i, ptr %bank.i, align 2
  br label %reg_read.exit

reg_read.exit:                                    ; preds = %if.end16.i, %entry.reg_read.exit_crit_edge
  %conv23.i = trunc i16 %reg to i8
  %call24.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %conv23.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp = icmp slt i32 %call24.i, 0
  br i1 %cmp, label %reg_read.exit.cleanup_crit_edge, label %if.end

reg_read.exit.cleanup_crit_edge:                  ; preds = %reg_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %reg_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %mask to i32
  %neg = xor i32 %conv, -1
  %and = and i32 %call24.i, %neg
  %and311 = and i8 %mask, %data
  %8 = trunc i32 %and to i8
  %conv4 = or i8 %and311, %8
  %call5 = tail call fastcc i32 @reg_write(ptr noundef %client, i16 noundef zeroext %reg, i8 noundef zeroext %conv4)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %reg_read.exit.cleanup_crit_edge, %do.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call24.i, %reg_read.exit.cleanup_crit_edge ], [ %call12.i, %do.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rj54n1_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #5 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp = icmp ugt i32 %3, 8
  br i1 %cmp, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr [9 x %struct.rj54n1_datafmt], ptr @rj54n1_colour_fmts, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %code3 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %6 = ptrtoint ptr %code3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %code3, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rj54n1_get_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %format) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %fmt = getelementptr inbounds %struct.rj54n1, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fmt, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %code3 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %code3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %code3, align 4
  %11 = load ptr, ptr %fmt, align 4
  %colorspace = getelementptr inbounds %struct.rj54n1_datafmt, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %colorspace, align 4
  %colorspace5 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %14 = ptrtoint ptr %colorspace5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %colorspace5, align 4
  %15 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 5
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %15, align 4
  %xfer_func = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 7
  %17 = ptrtoint ptr %xfer_func to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 2, ptr %xfer_func, align 4
  %quantization = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 6
  %18 = ptrtoint ptr %quantization to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %quantization, align 2
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %19 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %field, align 4
  %width = getelementptr inbounds %struct.rj54n1, ptr %5, i32 0, i32 10
  %20 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %width, align 2
  %conv = zext i16 %21 to i32
  %22 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv, ptr %format1, align 4
  %height = getelementptr inbounds %struct.rj54n1, ptr %5, i32 0, i32 11
  %23 = ptrtoint ptr %height to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %height, align 4
  %conv7 = zext i16 %24 to i32
  %height8 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %height8 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv7, ptr %height8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rj54n1_set_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr noundef %format) #2 align 64 {
entry:
  %output_w = alloca i32, align 4
  %output_h = alloca i32, align 4
  %input_w = alloca i32, align 4
  %input_h = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %output_w) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %output_h) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %input_w) #9
  %width = getelementptr inbounds %struct.rj54n1, ptr %3, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 4
  %6 = ptrtoint ptr %input_w to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %input_w, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %input_h) #9
  %height = getelementptr inbounds %struct.rj54n1, ptr %3, i32 0, i32 7, i32 3
  %7 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height, align 4
  %9 = ptrtoint ptr %input_h to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %input_h, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %code, align 4
  %.off = add i32 %11, -12291
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %.off)
  %switch = icmp ult i32 %.off, 5
  %lor.ext = zext i1 %switch to i32
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %12 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rj54n1_set_fmt.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_set_fmt, %if.then18)) #9
          to label %do.end [label %if.then18], !srcloc !119

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %code, align 4
  %16 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %format1, align 4
  %height21 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %height21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height21, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rj54n1_set_fmt.__UNIQUE_ID_ddebug307, ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, i32 noundef %15, i32 noundef %17, i32 noundef %19) #9
  br label %do.end

do.end:                                           ; preds = %if.then18, %do.body
  %20 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %code, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %if.then26 [
    i32 8200, label %do.end.if.end30_crit_edge
    i32 8201, label %cleanup.fold.split.i
    i32 4104, label %cleanup.fold.split2.i
    i32 4103, label %cleanup.fold.split3.i
    i32 12292, label %cleanup.fold.split4.i
    i32 12294, label %cleanup.fold.split5.i
    i32 12291, label %cleanup.fold.split6.i
    i32 12293, label %cleanup.fold.split7.i
    i32 12295, label %cleanup.fold.split8.i
  ]

do.end.if.end30_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

cleanup.fold.split.i:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

cleanup.fold.split2.i:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

cleanup.fold.split3.i:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

cleanup.fold.split4.i:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

cleanup.fold.split5.i:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

cleanup.fold.split6.i:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

cleanup.fold.split7.i:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

cleanup.fold.split8.i:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then26:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %fmt27 = getelementptr inbounds %struct.rj54n1, ptr %3, i32 0, i32 6
  %23 = ptrtoint ptr %fmt27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fmt27, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %27 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %code, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %cleanup.fold.split8.i, %cleanup.fold.split7.i, %cleanup.fold.split6.i, %cleanup.fold.split5.i, %cleanup.fold.split4.i, %cleanup.fold.split3.i, %cleanup.fold.split2.i, %cleanup.fold.split.i, %do.end.if.end30_crit_edge
  %fmt.0 = phi ptr [ %24, %if.then26 ], [ getelementptr inbounds ([9 x %struct.rj54n1_datafmt], ptr @rj54n1_colour_fmts, i32 0, i32 8), %cleanup.fold.split8.i ], [ getelementptr inbounds ([9 x %struct.rj54n1_datafmt], ptr @rj54n1_colour_fmts, i32 0, i32 7), %cleanup.fold.split7.i ], [ getelementptr inbounds ([9 x %struct.rj54n1_datafmt], ptr @rj54n1_colour_fmts, i32 0, i32 6), %cleanup.fold.split6.i ], [ getelementptr inbounds ([9 x %struct.rj54n1_datafmt], ptr @rj54n1_colour_fmts, i32 0, i32 5), %cleanup.fold.split5.i ], [ getelementptr inbounds ([9 x %struct.rj54n1_datafmt], ptr @rj54n1_colour_fmts, i32 0, i32 4), %cleanup.fold.split4.i ], [ getelementptr inbounds ([9 x %struct.rj54n1_datafmt], ptr @rj54n1_colour_fmts, i32 0, i32 3), %cleanup.fold.split3.i ], [ getelementptr inbounds ([9 x %struct.rj54n1_datafmt], ptr @rj54n1_colour_fmts, i32 0, i32 2), %cleanup.fold.split2.i ], [ getelementptr inbounds ([9 x %struct.rj54n1_datafmt], ptr @rj54n1_colour_fmts, i32 0, i32 1), %cleanup.fold.split.i ], [ @rj54n1_colour_fmts, %do.end.if.end30_crit_edge ]
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %28 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %field, align 4
  %colorspace = getelementptr inbounds %struct.rj54n1_datafmt, ptr %fmt.0, i32 0, i32 1
  %29 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %colorspace, align 4
  %colorspace31 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %31 = ptrtoint ptr %colorspace31 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %colorspace31, align 4
  %height33 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  tail call void @v4l_bound_align_image(ptr noundef %format1, i32 noundef 112, i32 noundef 1600, i32 noundef %lor.ext, ptr noundef %height33, i32 noundef 84, i32 noundef 1200, i32 noundef %lor.ext, i32 noundef 0) #9
  %32 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp34 = icmp eq i32 %33, 0
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sd_state, align 4
  %36 = call ptr @memcpy(ptr %35, ptr %format1, i32 48)
  br label %cleanup

if.end36:                                         ; preds = %if.end30
  %37 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %driver_data.i.i.i, align 4
  %bank.i = getelementptr inbounds %struct.rj54n1, ptr %38, i32 0, i32 14
  %39 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %bank.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %40)
  %cmp.not.i = icmp eq i8 %40, 7
  br i1 %cmp.not.i, label %if.end36.reg_read.exit_crit_edge, label %do.body.i

if.end36.reg_read.exit_crit_edge:                 ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %reg_read.exit

do.body.i:                                        ; preds = %if.end36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_read.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_set_fmt, %if.then6.i)) #9
          to label %do.end.i [label %if.then6.i], !srcloc !119

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_read.__UNIQUE_ID_ddebug292, ptr noundef %dev.i, ptr noundef nonnull @.str.21, i32 noundef 255, i32 noundef 7) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %do.body.i
  %call12.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext -1, i8 noundef zeroext 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %do.end.i.cleanup_crit_edge, label %if.end16.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %bank.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 7, ptr %bank.i, align 2
  br label %reg_read.exit

reg_read.exit:                                    ; preds = %if.end16.i, %if.end36.reg_read.exit_crit_edge
  %call24.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp38 = icmp slt i32 %call24.i, 0
  br i1 %cmp38, label %reg_read.exit.cleanup_crit_edge, label %if.end40

reg_read.exit.cleanup_crit_edge:                  ; preds = %reg_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end40:                                         ; preds = %reg_read.exit
  %and = and i32 %call24.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool41.not = icmp eq i32 %and, 0
  br i1 %tobool41.not, label %if.then42, label %if.end40.if.end47_crit_edge

if.end40.if.end47_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then42:                                        ; preds = %if.end40
  %call43 = tail call fastcc i32 @rj54n1_reg_init(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then42.cleanup_crit_edge, label %if.then42.if.end47_crit_edge

if.then42.if.end47_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then42.cleanup_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end47:                                         ; preds = %if.then42.if.end47_crit_edge, %if.end40.if.end47_crit_edge
  %42 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %code, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %43, label %if.end47.cleanup_crit_edge [
    i32 8200, label %sw.bb
    i32 8201, label %sw.bb54
    i32 4104, label %sw.bb60
    i32 4103, label %sw.bb66
    i32 12294, label %sw.bb72
    i32 12292, label %sw.bb82
    i32 12293, label %sw.bb92
    i32 12291, label %sw.bb102
    i32 12295, label %sw.bb112
  ]

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end47
  %call49 = tail call fastcc i32 @reg_write(ptr noundef %1, i16 noundef zeroext 1027, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then51, label %sw.bb.if.end120_crit_edge

sw.bb.if.end120_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

if.then51:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call52 = tail call fastcc i32 @reg_set(ptr noundef %1, i16 noundef zeroext 1329, i8 noundef zeroext 8, i8 noundef zeroext 8)
  br label %sw.epilog

sw.bb54:                                          ; preds = %if.end47
  %call55 = tail call fastcc i32 @reg_write(ptr noundef %1, i16 noundef zeroext 1027, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then57, label %sw.bb54.if.end120_crit_edge

sw.bb54.if.end120_crit_edge:                      ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

if.then57:                                        ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  %call58 = tail call fastcc i32 @reg_set(ptr noundef %1, i16 noundef zeroext 1329, i8 noundef zeroext 0, i8 noundef zeroext 8)
  br label %sw.epilog

sw.bb60:                                          ; preds = %if.end47
  %call61 = tail call fastcc i32 @reg_write(ptr noundef %1, i16 noundef zeroext 1027, i8 noundef zeroext 17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.then63, label %sw.bb60.if.end120_crit_edge

sw.bb60.if.end120_crit_edge:                      ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

if.then63:                                        ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #11
  %call64 = tail call fastcc i32 @reg_set(ptr noundef %1, i16 noundef zeroext 1329, i8 noundef zeroext 8, i8 noundef zeroext 8)
  br label %sw.epilog

sw.bb66:                                          ; preds = %if.end47
  %call67 = tail call fastcc i32 @reg_write(ptr noundef %1, i16 noundef zeroext 1027, i8 noundef zeroext 17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.then69, label %sw.bb66.if.end120_crit_edge

sw.bb66.if.end120_crit_edge:                      ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

if.then69:                                        ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #11
  %call70 = tail call fastcc i32 @reg_set(ptr noundef %1, i16 noundef zeroext 1329, i8 noundef zeroext 0, i8 noundef zeroext 8)
  br label %sw.epilog

sw.bb72:                                          ; preds = %if.end47
  %call73 = tail call fastcc i32 @reg_write(ptr noundef %1, i16 noundef zeroext 1027, i8 noundef zeroext 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end77, label %sw.bb72.if.end120_crit_edge

sw.bb72.if.end120_crit_edge:                      ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

if.end77:                                         ; preds = %sw.bb72
  %call76 = tail call fastcc i32 @reg_set(ptr noundef %1, i16 noundef zeroext 1329, i8 noundef zeroext 8, i8 noundef zeroext 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool78.not = icmp eq i32 %call76, 0
  br i1 %tobool78.not, label %if.then79, label %if.end77.if.end120_crit_edge

if.end77.if.end120_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

if.then79:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  %call80 = tail call fastcc i32 @reg_write(ptr noundef %1, i16 noundef zeroext 1328, i8 noundef zeroext 0)
  br label %sw.epilog

sw.bb82:                                          ; preds = %if.end47
  %call83 = tail call fastcc i32 @reg_write(ptr noundef %1, i16 noundef zeroext 1027, i8 noundef zeroext 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end87, label %sw.bb82.if.end120_crit_edge

sw.bb82.if.end120_crit_edge:                      ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

if.end87:                                         ; preds = %sw.bb82
  %call86 = tail call fastcc i32 @reg_set(ptr noundef %1, i16 noundef zeroext 1329, i8 noundef zeroext 8, i8 noundef zeroext 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool88.not = icmp eq i32 %call86, 0
  br i1 %tobool88.not, label %if.then89, label %if.end87.if.end120_crit_edge

if.end87.if.end120_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

if.then89:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  %call90 = tail call fastcc i32 @reg_write(ptr noundef %1, i16 noundef zeroext 1328, i8 noundef zeroext 8)
  br label %sw.epilog

sw.bb92:                                          ; preds = %if.end47
  %call93 = tail call fastcc i32 @reg_write(ptr noundef %1, i16 noundef zeroext 1027, i8 noundef zeroext 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end97, label %sw.bb92.if.end120_crit_edge

sw.bb92.if.end120_crit_edge:                      ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

if.end97:                                         ; preds = %sw.bb92
  %call96 = tail call fastcc i32 @reg_set(ptr noundef %1, i16 noundef zeroext 1329, i8 noundef zeroext 0, i8 noundef zeroext 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool98.not = icmp eq i32 %call96, 0
  br i1 %tobool98.not, label %if.then99, label %if.end97.if.end120_crit_edge

if.end97.if.end120_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

if.then99:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  %call100 = tail call fastcc i32 @reg_write(ptr noundef %1, i16 noundef zeroext 1328, i8 noundef zeroext 0)
  br label %sw.epilog

sw.bb102:                                         ; preds = %if.end47
  %call103 = tail call fastcc i32 @reg_write(ptr noundef %1, i16 noundef zeroext 1027, i8 noundef zeroext 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end107, label %sw.bb102.if.end120_crit_edge

sw.bb102.if.end120_crit_edge:                     ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

if.end107:                                        ; preds = %sw.bb102
  %call106 = tail call fastcc i32 @reg_set(ptr noundef %1, i16 noundef zeroext 1329, i8 noundef zeroext 0, i8 noundef zeroext 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool108.not = icmp eq i32 %call106, 0
  br i1 %tobool108.not, label %if.then109, label %if.end107.if.end120_crit_edge

if.end107.if.end120_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

if.then109:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  %call110 = tail call fastcc i32 @reg_write(ptr noundef %1, i16 noundef zeroext 1328, i8 noundef zeroext 8)
  br label %sw.epilog

sw.bb112:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %call113 = tail call fastcc i32 @reg_write(ptr noundef %1, i16 noundef zeroext 1027, i8 noundef zeroext 5)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb112, %if.then109, %if.then99, %if.then89, %if.then79, %if.then69, %if.then63, %if.then57, %if.then51
  %ret.4 = phi i32 [ %call113, %sw.bb112 ], [ %call110, %if.then109 ], [ %call100, %if.then99 ], [ %call90, %if.then89 ], [ %call80, %if.then79 ], [ %call70, %if.then69 ], [ %call64, %if.then63 ], [ %call58, %if.then57 ], [ %call52, %if.then51 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.4)
  %tobool114.not = icmp eq i32 %ret.4, 0
  br i1 %tobool114.not, label %if.then115, label %sw.epilog.if.end120_crit_edge

sw.epilog.if.end120_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

if.then115:                                       ; preds = %sw.epilog
  %45 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12295, i32 %46)
  %cmp117 = icmp eq i32 %46, 12295
  %conv118 = select i1 %cmp117, i8 2, i8 0
  %47 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %driver_data.i.i.i, align 4
  %bank.i.i = getelementptr inbounds %struct.rj54n1, ptr %48, i32 0, i32 14
  %49 = ptrtoint ptr %bank.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %bank.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %50)
  %cmp.not.i.i = icmp eq i8 %50, 7
  br i1 %cmp.not.i.i, label %if.then115.reg_read.exit.i_crit_edge, label %do.body.i.i

if.then115.reg_read.exit.i_crit_edge:             ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #11
  br label %reg_read.exit.i

do.body.i.i:                                      ; preds = %if.then115
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_read.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_set_fmt, %if.then6.i.i)) #9
          to label %do.end.i.i [label %if.then6.i.i], !srcloc !119

if.then6.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_read.__UNIQUE_ID_ddebug292, ptr noundef %dev.i.i, ptr noundef nonnull @.str.21, i32 noundef 255, i32 noundef 7) #9
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then6.i.i, %do.body.i.i
  %call12.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext -1, i8 noundef zeroext 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp13.i.i = icmp slt i32 %call12.i.i, 0
  br i1 %cmp13.i.i, label %do.end.i.i.cleanup_crit_edge, label %if.end16.i.i

do.end.i.i.cleanup_crit_edge:                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16.i.i:                                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %bank.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 7, ptr %bank.i.i, align 2
  br label %reg_read.exit.i

reg_read.exit.i:                                  ; preds = %if.end16.i.i, %if.then115.reg_read.exit.i_crit_edge
  %call24.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i)
  %cmp.i = icmp slt i32 %call24.i.i, 0
  br i1 %cmp.i, label %reg_read.exit.i.cleanup_crit_edge, label %if.end.i

reg_read.exit.i.cleanup_crit_edge:                ; preds = %reg_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %reg_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %52 = trunc i32 %call24.i.i to i8
  %53 = and i8 %52, -3
  %conv4.i = or i8 %53, %conv118
  %call5.i = tail call fastcc i32 @reg_write(ptr noundef %1, i16 noundef zeroext 1811, i8 noundef zeroext %conv4.i) #9
  br label %if.end120

if.end120:                                        ; preds = %if.end.i, %sw.epilog.if.end120_crit_edge, %if.end107.if.end120_crit_edge, %sw.bb102.if.end120_crit_edge, %if.end97.if.end120_crit_edge, %sw.bb92.if.end120_crit_edge, %if.end87.if.end120_crit_edge, %sw.bb82.if.end120_crit_edge, %if.end77.if.end120_crit_edge, %sw.bb72.if.end120_crit_edge, %sw.bb66.if.end120_crit_edge, %sw.bb60.if.end120_crit_edge, %sw.bb54.if.end120_crit_edge, %sw.bb.if.end120_crit_edge
  %ret.5 = phi i32 [ %ret.4, %sw.epilog.if.end120_crit_edge ], [ %call5.i, %if.end.i ], [ %call49, %sw.bb.if.end120_crit_edge ], [ %call55, %sw.bb54.if.end120_crit_edge ], [ %call61, %sw.bb60.if.end120_crit_edge ], [ %call67, %sw.bb66.if.end120_crit_edge ], [ %call76, %if.end77.if.end120_crit_edge ], [ %call86, %if.end87.if.end120_crit_edge ], [ %call96, %if.end97.if.end120_crit_edge ], [ %call106, %if.end107.if.end120_crit_edge ], [ %call73, %sw.bb72.if.end120_crit_edge ], [ %call83, %sw.bb82.if.end120_crit_edge ], [ %call93, %sw.bb92.if.end120_crit_edge ], [ %call103, %sw.bb102.if.end120_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.5)
  %cmp121 = icmp slt i32 %ret.5, 0
  br i1 %cmp121, label %if.end120.cleanup_crit_edge, label %if.end124

if.end120.cleanup_crit_edge:                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end124:                                        ; preds = %if.end120
  %54 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %format1, align 4
  %mul = mul i32 %55, 16383
  %div262 = lshr i32 %mul, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %div262)
  %cmp126 = icmp sgt i32 %5, %div262
  br i1 %cmp126, label %if.then128, label %if.end124.if.end129_crit_edge

if.end124.if.end129_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129

if.then128:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %input_w to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %div262, ptr %input_w, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.then128, %if.end124.if.end129_crit_edge
  %57 = ptrtoint ptr %height33 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %height33, align 4
  %mul131 = mul i32 %58, 16383
  %div132263 = lshr i32 %mul131, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %div132263)
  %cmp133 = icmp sgt i32 %8, %div132263
  br i1 %cmp133, label %if.then135, label %if.end129.if.end136_crit_edge

if.end129.if.end136_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end136

if.then135:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %input_h to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %div132263, ptr %input_h, align 4
  br label %if.end136

if.end136:                                        ; preds = %if.then135, %if.end129.if.end136_crit_edge
  %60 = ptrtoint ptr %output_w to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %55, ptr %output_w, align 4
  %61 = ptrtoint ptr %output_h to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %58, ptr %output_h, align 4
  %call139 = call fastcc i32 @rj54n1_sensor_scale(ptr noundef %sd, ptr noundef nonnull %input_w, ptr noundef nonnull %input_h, ptr noundef nonnull %output_w, ptr noundef nonnull %output_h)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %cmp140 = icmp slt i32 %call139, 0
  br i1 %cmp140, label %if.end136.cleanup_crit_edge, label %if.end143

if.end136.cleanup_crit_edge:                      ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end143:                                        ; preds = %if.end136
  %62 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %code, align 4
  %64 = zext i32 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %63, label %for.cond.8.i267 [
    i32 8200, label %if.end143.rj54n1_find_datafmt.exit277_crit_edge
    i32 8201, label %cleanup.fold.split.i268
    i32 4104, label %cleanup.fold.split2.i269
    i32 4103, label %cleanup.fold.split3.i270
    i32 12292, label %cleanup.fold.split4.i271
    i32 12294, label %cleanup.fold.split5.i272
    i32 12291, label %cleanup.fold.split6.i273
    i32 12293, label %cleanup.fold.split7.i274
    i32 12295, label %cleanup.fold.split8.i275
  ]

if.end143.rj54n1_find_datafmt.exit277_crit_edge:  ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  br label %rj54n1_find_datafmt.exit277

for.cond.8.i267:                                  ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  br label %rj54n1_find_datafmt.exit277

cleanup.fold.split.i268:                          ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  br label %rj54n1_find_datafmt.exit277

cleanup.fold.split2.i269:                         ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  br label %rj54n1_find_datafmt.exit277

cleanup.fold.split3.i270:                         ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  br label %rj54n1_find_datafmt.exit277

cleanup.fold.split4.i271:                         ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  br label %rj54n1_find_datafmt.exit277

cleanup.fold.split5.i272:                         ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  br label %rj54n1_find_datafmt.exit277

cleanup.fold.split6.i273:                         ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  br label %rj54n1_find_datafmt.exit277

cleanup.fold.split7.i274:                         ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  br label %rj54n1_find_datafmt.exit277

cleanup.fold.split8.i275:                         ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  br label %rj54n1_find_datafmt.exit277

rj54n1_find_datafmt.exit277:                      ; preds = %cleanup.fold.split8.i275, %cleanup.fold.split7.i274, %cleanup.fold.split6.i273, %cleanup.fold.split5.i272, %cleanup.fold.split4.i271, %cleanup.fold.split3.i270, %cleanup.fold.split2.i269, %cleanup.fold.split.i268, %for.cond.8.i267, %if.end143.rj54n1_find_datafmt.exit277_crit_edge
  %retval.0.i276 = phi ptr [ @rj54n1_colour_fmts, %if.end143.rj54n1_find_datafmt.exit277_crit_edge ], [ null, %for.cond.8.i267 ], [ getelementptr inbounds ([9 x %struct.rj54n1_datafmt], ptr @rj54n1_colour_fmts, i32 0, i32 1), %cleanup.fold.split.i268 ], [ getelementptr inbounds ([9 x %struct.rj54n1_datafmt], ptr @rj54n1_colour_fmts, i32 0, i32 2), %cleanup.fold.split2.i269 ], [ getelementptr inbounds ([9 x %struct.rj54n1_datafmt], ptr @rj54n1_colour_fmts, i32 0, i32 3), %cleanup.fold.split3.i270 ], [ getelementptr inbounds ([9 x %struct.rj54n1_datafmt], ptr @rj54n1_colour_fmts, i32 0, i32 4), %cleanup.fold.split4.i271 ], [ getelementptr inbounds ([9 x %struct.rj54n1_datafmt], ptr @rj54n1_colour_fmts, i32 0, i32 5), %cleanup.fold.split5.i272 ], [ getelementptr inbounds ([9 x %struct.rj54n1_datafmt], ptr @rj54n1_colour_fmts, i32 0, i32 6), %cleanup.fold.split6.i273 ], [ getelementptr inbounds ([9 x %struct.rj54n1_datafmt], ptr @rj54n1_colour_fmts, i32 0, i32 7), %cleanup.fold.split7.i274 ], [ getelementptr inbounds ([9 x %struct.rj54n1_datafmt], ptr @rj54n1_colour_fmts, i32 0, i32 8), %cleanup.fold.split8.i275 ]
  %fmt146 = getelementptr inbounds %struct.rj54n1, ptr %3, i32 0, i32 6
  %65 = ptrtoint ptr %fmt146 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %retval.0.i276, ptr %fmt146, align 4
  %conv147 = trunc i32 %call139 to i16
  %resize = getelementptr inbounds %struct.rj54n1, ptr %3, i32 0, i32 12
  %66 = ptrtoint ptr %resize to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv147, ptr %resize, align 2
  %67 = ptrtoint ptr %input_w to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %input_w, align 4
  %69 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %width, align 4
  %70 = ptrtoint ptr %input_h to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %input_h, align 4
  %72 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %height, align 4
  %73 = ptrtoint ptr %output_w to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %output_w, align 4
  %conv152 = trunc i32 %74 to i16
  %width153 = getelementptr inbounds %struct.rj54n1, ptr %3, i32 0, i32 10
  %75 = ptrtoint ptr %width153 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv152, ptr %width153, align 2
  %76 = ptrtoint ptr %output_h to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %output_h, align 4
  %conv154 = trunc i32 %77 to i16
  %height155 = getelementptr inbounds %struct.rj54n1, ptr %3, i32 0, i32 11
  %78 = ptrtoint ptr %height155 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv154, ptr %height155, align 4
  %79 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %74, ptr %format1, align 4
  %80 = ptrtoint ptr %height33 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %77, ptr %height33, align 4
  %81 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %field, align 4
  %colorspace159 = getelementptr inbounds %struct.rj54n1_datafmt, ptr %retval.0.i276, i32 0, i32 1
  %82 = ptrtoint ptr %colorspace159 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %colorspace159, align 4
  %84 = ptrtoint ptr %colorspace31 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %colorspace31, align 4
  br label %cleanup

cleanup:                                          ; preds = %rj54n1_find_datafmt.exit277, %if.end136.cleanup_crit_edge, %if.end120.cleanup_crit_edge, %reg_read.exit.i.cleanup_crit_edge, %do.end.i.i.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %if.then42.cleanup_crit_edge, %reg_read.exit.cleanup_crit_edge, %do.end.i.cleanup_crit_edge, %if.then35, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then35 ], [ 0, %rj54n1_find_datafmt.exit277 ], [ -22, %entry.cleanup_crit_edge ], [ %call24.i, %reg_read.exit.cleanup_crit_edge ], [ %call43, %if.then42.cleanup_crit_edge ], [ %ret.5, %if.end120.cleanup_crit_edge ], [ %call139, %if.end136.cleanup_crit_edge ], [ %call12.i, %do.end.i.cleanup_crit_edge ], [ %call12.i.i, %do.end.i.i.cleanup_crit_edge ], [ %call24.i.i, %reg_read.exit.i.cleanup_crit_edge ], [ -22, %if.end47.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %input_h) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %input_w) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %output_h) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %output_w) #9
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rj54n1_get_selection(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %sel) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %4 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %6 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %target, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %7, label %if.end.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 0, label %sw.bb5
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %9 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %top, align 4
  %width = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1600, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %12 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1200, ptr %height, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %r6 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %rect = getelementptr inbounds %struct.rj54n1, ptr %3, i32 0, i32 7
  %13 = call ptr @memcpy(ptr %r6, ptr %rect, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb5, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb5 ], [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rj54n1_set_selection(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef readonly %sel) #2 align 64 {
entry:
  %output_w = alloca i32, align 4
  %output_h = alloca i32, align 4
  %input_w = alloca i32, align 4
  %input_h = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %output_w) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %output_h) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %input_w) #9
  %width = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 4
  %6 = ptrtoint ptr %input_w to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %input_w, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %input_h) #9
  %height = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %7 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height, align 4
  %9 = ptrtoint ptr %input_h to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %input_h, align 4
  %10 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.not = icmp eq i32 %11, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %12 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp2.not = icmp eq i32 %13, 0
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @v4l_bound_align_image(ptr noundef nonnull %input_w, i32 noundef 8, i32 noundef 1600, i32 noundef 0, ptr noundef nonnull %input_h, i32 noundef 8, i32 noundef 1200, i32 noundef 0, i32 noundef 0) #9
  %14 = ptrtoint ptr %input_w to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %input_w, align 4
  %mul = shl i32 %15, 10
  %resize = getelementptr inbounds %struct.rj54n1, ptr %3, i32 0, i32 12
  %16 = ptrtoint ptr %resize to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %resize, align 2
  %conv = zext i16 %17 to i32
  %div59 = lshr i32 %conv, 1
  %add = add i32 %div59, %mul
  %div5 = sdiv i32 %add, %conv
  %18 = ptrtoint ptr %output_w to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div5, ptr %output_w, align 4
  %19 = ptrtoint ptr %input_h to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %input_h, align 4
  %mul6 = shl i32 %20, 10
  %add10 = add i32 %mul6, %div59
  %div13 = sdiv i32 %add10, %conv
  %21 = ptrtoint ptr %output_h to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div13, ptr %output_h, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rj54n1_set_selection.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_set_selection, %if.then17)) #9
          to label %do.end [label %if.then17], !srcloc !119

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %input_w to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %input_w, align 4
  %24 = ptrtoint ptr %input_h to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %input_h, align 4
  %26 = ptrtoint ptr %resize to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %resize, align 2
  %conv19 = zext i16 %27 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rj54n1_set_selection.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %23, i32 noundef %25, i32 noundef %conv19, i32 noundef %div5, i32 noundef %div13) #9
  br label %do.end

do.end:                                           ; preds = %if.then17, %if.end
  %call21 = call fastcc i32 @rj54n1_sensor_scale(ptr noundef %sd, ptr noundef nonnull %input_w, ptr noundef nonnull %input_h, ptr noundef nonnull %output_w, ptr noundef nonnull %output_h)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %do.end.cleanup_crit_edge, label %if.end25

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end25:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %output_w to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %output_w, align 4
  %conv26 = trunc i32 %29 to i16
  %width27 = getelementptr inbounds %struct.rj54n1, ptr %3, i32 0, i32 10
  %30 = ptrtoint ptr %width27 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv26, ptr %width27, align 2
  %31 = ptrtoint ptr %output_h to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %output_h, align 4
  %conv28 = trunc i32 %32 to i16
  %height29 = getelementptr inbounds %struct.rj54n1, ptr %3, i32 0, i32 11
  %33 = ptrtoint ptr %height29 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv28, ptr %height29, align 4
  %conv30 = trunc i32 %call21 to i16
  %34 = ptrtoint ptr %resize to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv30, ptr %resize, align 2
  %35 = ptrtoint ptr %input_w to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %input_w, align 4
  %width33 = getelementptr inbounds %struct.rj54n1, ptr %3, i32 0, i32 7, i32 2
  %37 = ptrtoint ptr %width33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %width33, align 4
  %38 = ptrtoint ptr %input_h to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %input_h, align 4
  %height35 = getelementptr inbounds %struct.rj54n1, ptr %3, i32 0, i32 7, i32 3
  %40 = ptrtoint ptr %height35 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %height35, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %do.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call21, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %input_h) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %input_w) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %output_h) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %output_w) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rj54n1_reg_init(ptr noundef %client) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call fastcc i32 @rj54n1_set_clock(ptr noundef %client)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %for.body.i.preheader, label %entry.if.end38_crit_edge

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

for.body.i.preheader:                             ; preds = %entry
  %call.i = tail call fastcc i32 @reg_write(ptr noundef %client, i16 noundef zeroext 1802, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %for.body.i.preheader.if.end62_crit_edge, label %if.end.i

for.body.i.preheader.if.end62_crit_edge:          ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.end.i:                                         ; preds = %for.body.i.preheader
  %call.i.1 = tail call fastcc i32 @reg_write(ptr noundef %client, i16 noundef zeroext 1812, i8 noundef zeroext -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp1.i.1 = icmp slt i32 %call.i.1, 0
  br i1 %cmp1.i.1, label %if.end.i.if.end62_crit_edge, label %if.end.i.1

if.end.i.if.end62_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.end.i.1:                                       ; preds = %if.end.i
  %call.i.2 = tail call fastcc i32 @reg_write(ptr noundef %client, i16 noundef zeroext 1813, i8 noundef zeroext -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %cmp1.i.2 = icmp slt i32 %call.i.2, 0
  br i1 %cmp1.i.2, label %if.end.i.1.if.end62_crit_edge, label %if.end.i.2

if.end.i.1.if.end62_crit_edge:                    ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.end.i.2:                                       ; preds = %if.end.i.1
  %call.i.3 = tail call fastcc i32 @reg_write(ptr noundef %client, i16 noundef zeroext 1814, i8 noundef zeroext 31) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %cmp1.i.3 = icmp slt i32 %call.i.3, 0
  br i1 %cmp1.i.3, label %if.end.i.2.if.end62_crit_edge, label %if.end.i.3

if.end.i.2.if.end62_crit_edge:                    ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.end.i.3:                                       ; preds = %if.end.i.2
  %call.i.4 = tail call fastcc i32 @reg_write(ptr noundef %client, i16 noundef zeroext 2046, i8 noundef zeroext 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.4)
  %cmp1.i.4 = icmp slt i32 %call.i.4, 0
  br i1 %cmp1.i.4, label %if.end.i.3.if.end62_crit_edge, label %if.end.i.4

if.end.i.3.if.end62_crit_edge:                    ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.end.i.4:                                       ; preds = %if.end.i.3
  %call.i100 = tail call fastcc i32 @reg_write(ptr noundef %client, i16 noundef zeroext 4287, i8 noundef zeroext 105) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100)
  %cmp1.i101 = icmp slt i32 %call.i100, 0
  br i1 %cmp1.i101, label %if.end.i.4.if.end62_crit_edge, label %if.end.i106

if.end.i.4.if.end62_crit_edge:                    ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.end.i106:                                      ; preds = %if.end.i.4
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %bank.i = getelementptr inbounds %struct.rj54n1, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bank.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %5)
  %cmp.not.i = icmp eq i8 %5, 4
  br i1 %cmp.not.i, label %if.end.i106.do.body22.i_crit_edge, label %do.body.i

if.end.i106.do.body22.i_crit_edge:                ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22.i

do.body.i:                                        ; preds = %if.end.i106
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_reg_init, %if.then6.i)) #9
          to label %do.end.i [label %if.then6.i], !srcloc !119

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i, ptr noundef nonnull @.str.21, i32 noundef 255, i32 noundef 4) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %do.body.i
  %call12.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -1, i8 noundef zeroext 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %do.end.i.if.end62_crit_edge, label %if.end16.i

do.end.i.if.end62_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.end16.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %bank.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 4, ptr %bank.i, align 2
  br label %do.body22.i

do.body22.i:                                      ; preds = %if.end16.i, %if.end.i106.do.body22.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_reg_init, %if.then34.i)) #9
          to label %if.end10 [label %if.then34.i], !srcloc !119

if.then34.i:                                      ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev35.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug294, ptr noundef %dev35.i, ptr noundef nonnull @.str.21, i32 noundef 41, i32 noundef 115) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then34.i, %do.body22.i
  %call44.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 41, i8 noundef zeroext 115) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool11.not = icmp eq i32 %call44.i, 0
  br i1 %tobool11.not, label %if.then12, label %if.end10.if.end38_crit_edge

if.end10.if.end38_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then12:                                        ; preds = %if.end10
  %7 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i.i, align 4
  %bank.i111 = getelementptr inbounds %struct.rj54n1, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %bank.i111 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bank.i111, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %10)
  %cmp.not.i113 = icmp eq i8 %10, 4
  br i1 %cmp.not.i113, label %if.then12.do.body22.i121_crit_edge, label %do.body.i114

if.then12.do.body22.i121_crit_edge:               ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22.i121

do.body.i114:                                     ; preds = %if.then12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_reg_init, %if.then6.i116)) #9
          to label %do.end.i119 [label %if.then6.i116], !srcloc !119

if.then6.i116:                                    ; preds = %do.body.i114
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i115 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i115, ptr noundef nonnull @.str.21, i32 noundef 255, i32 noundef 4) #9
  br label %do.end.i119

do.end.i119:                                      ; preds = %if.then6.i116, %do.body.i114
  %call12.i117 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -1, i8 noundef zeroext 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i117)
  %cmp13.i118 = icmp slt i32 %call12.i117, 0
  br i1 %cmp13.i118, label %do.end.i119.if.end62_crit_edge, label %if.end16.i120

do.end.i119.if.end62_crit_edge:                   ; preds = %do.end.i119
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.end16.i120:                                    ; preds = %do.end.i119
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %bank.i111 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 4, ptr %bank.i111, align 2
  br label %do.body22.i121

do.body22.i121:                                   ; preds = %if.end16.i120, %if.then12.do.body22.i121_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_reg_init, %if.then34.i123)) #9
          to label %if.end14 [label %if.then34.i123], !srcloc !119

if.then34.i123:                                   ; preds = %do.body22.i121
  call void @__sanitizer_cov_trace_pc() #11
  %dev35.i122 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug294, ptr noundef %dev35.i122, ptr noundef nonnull @.str.21, i32 noundef 42, i32 noundef 15) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then34.i123, %do.body22.i121
  %call44.i124 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 42, i8 noundef zeroext 15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i124)
  %tobool15.not = icmp eq i32 %call44.i124, 0
  br i1 %tobool15.not, label %if.then16, label %if.end14.if.end38_crit_edge

if.end14.if.end38_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then16:                                        ; preds = %if.end14
  %12 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i.i, align 4
  %bank.i129 = getelementptr inbounds %struct.rj54n1, ptr %13, i32 0, i32 14
  %14 = ptrtoint ptr %bank.i129 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bank.i129, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %15)
  %cmp.not.i131 = icmp eq i8 %15, 4
  br i1 %cmp.not.i131, label %if.then16.do.body22.i139_crit_edge, label %do.body.i132

if.then16.do.body22.i139_crit_edge:               ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22.i139

do.body.i132:                                     ; preds = %if.then16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_reg_init, %if.then6.i134)) #9
          to label %do.end.i137 [label %if.then6.i134], !srcloc !119

if.then6.i134:                                    ; preds = %do.body.i132
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i133 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i133, ptr noundef nonnull @.str.21, i32 noundef 255, i32 noundef 4) #9
  br label %do.end.i137

do.end.i137:                                      ; preds = %if.then6.i134, %do.body.i132
  %call12.i135 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -1, i8 noundef zeroext 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i135)
  %cmp13.i136 = icmp slt i32 %call12.i135, 0
  br i1 %cmp13.i136, label %do.end.i137.if.end62_crit_edge, label %if.end16.i138

do.end.i137.if.end62_crit_edge:                   ; preds = %do.end.i137
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.end16.i138:                                    ; preds = %do.end.i137
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %bank.i129 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 4, ptr %bank.i129, align 2
  br label %do.body22.i139

do.body22.i139:                                   ; preds = %if.end16.i138, %if.then16.do.body22.i139_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_reg_init, %if.then34.i141)) #9
          to label %if.end18 [label %if.then34.i141], !srcloc !119

if.then34.i141:                                   ; preds = %do.body22.i139
  call void @__sanitizer_cov_trace_pc() #11
  %dev35.i140 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug294, ptr noundef %dev35.i140, ptr noundef nonnull @.str.21, i32 noundef 21, i32 noundef 5) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then34.i141, %do.body22.i139
  %call44.i142 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 21, i8 noundef zeroext 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i142)
  %tobool19.not = icmp eq i32 %call44.i142, 0
  br i1 %tobool19.not, label %if.then20, label %if.end18.if.end38_crit_edge

if.end18.if.end38_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then20:                                        ; preds = %if.end18
  %17 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i.i.i, align 4
  %bank.i147 = getelementptr inbounds %struct.rj54n1, ptr %18, i32 0, i32 14
  %19 = ptrtoint ptr %bank.i147 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bank.i147, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %20)
  %cmp.not.i149 = icmp eq i8 %20, 4
  br i1 %cmp.not.i149, label %if.then20.do.body22.i157_crit_edge, label %do.body.i150

if.then20.do.body22.i157_crit_edge:               ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22.i157

do.body.i150:                                     ; preds = %if.then20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_reg_init, %if.then6.i152)) #9
          to label %do.end.i155 [label %if.then6.i152], !srcloc !119

if.then6.i152:                                    ; preds = %do.body.i150
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i151 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i151, ptr noundef nonnull @.str.21, i32 noundef 255, i32 noundef 4) #9
  br label %do.end.i155

do.end.i155:                                      ; preds = %if.then6.i152, %do.body.i150
  %call12.i153 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -1, i8 noundef zeroext 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i153)
  %cmp13.i154 = icmp slt i32 %call12.i153, 0
  br i1 %cmp13.i154, label %do.end.i155.if.end62_crit_edge, label %if.end16.i156

do.end.i155.if.end62_crit_edge:                   ; preds = %do.end.i155
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.end16.i156:                                    ; preds = %do.end.i155
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %bank.i147 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 4, ptr %bank.i147, align 2
  br label %do.body22.i157

do.body22.i157:                                   ; preds = %if.end16.i156, %if.then20.do.body22.i157_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_reg_init, %if.then34.i159)) #9
          to label %if.end22 [label %if.then34.i159], !srcloc !119

if.then34.i159:                                   ; preds = %do.body22.i157
  call void @__sanitizer_cov_trace_pc() #11
  %dev35.i158 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug294, ptr noundef %dev35.i158, ptr noundef nonnull @.str.21, i32 noundef 216, i32 noundef 132) #9
  br label %if.end22

if.end22:                                         ; preds = %if.then34.i159, %do.body22.i157
  %call44.i160 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -40, i8 noundef zeroext -124) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i160)
  %tobool23.not = icmp eq i32 %call44.i160, 0
  br i1 %tobool23.not, label %if.then24, label %if.end22.if.end38_crit_edge

if.end22.if.end38_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then24:                                        ; preds = %if.end22
  %22 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i.i.i, align 4
  %bank.i165 = getelementptr inbounds %struct.rj54n1, ptr %23, i32 0, i32 14
  %24 = ptrtoint ptr %bank.i165 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bank.i165, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %25)
  %cmp.not.i167 = icmp eq i8 %25, 4
  br i1 %cmp.not.i167, label %if.then24.do.body22.i175_crit_edge, label %do.body.i168

if.then24.do.body22.i175_crit_edge:               ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22.i175

do.body.i168:                                     ; preds = %if.then24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_reg_init, %if.then6.i170)) #9
          to label %do.end.i173 [label %if.then6.i170], !srcloc !119

if.then6.i170:                                    ; preds = %do.body.i168
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i169 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i169, ptr noundef nonnull @.str.21, i32 noundef 255, i32 noundef 4) #9
  br label %do.end.i173

do.end.i173:                                      ; preds = %if.then6.i170, %do.body.i168
  %call12.i171 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -1, i8 noundef zeroext 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i171)
  %cmp13.i172 = icmp slt i32 %call12.i171, 0
  br i1 %cmp13.i172, label %do.end.i173.if.end62_crit_edge, label %if.end16.i174

do.end.i173.if.end62_crit_edge:                   ; preds = %do.end.i173
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.end16.i174:                                    ; preds = %do.end.i173
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %bank.i165 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 4, ptr %bank.i165, align 2
  br label %do.body22.i175

do.body22.i175:                                   ; preds = %if.end16.i174, %if.then24.do.body22.i175_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_reg_init, %if.then34.i177)) #9
          to label %if.end26 [label %if.then34.i177], !srcloc !119

if.then34.i177:                                   ; preds = %do.body22.i175
  call void @__sanitizer_cov_trace_pc() #11
  %dev35.i176 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug294, ptr noundef %dev35.i176, ptr noundef nonnull @.str.21, i32 noundef 39, i32 noundef 39) #9
  br label %if.end26

if.end26:                                         ; preds = %if.then34.i177, %do.body22.i175
  %call44.i178 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 39, i8 noundef zeroext 39) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i178)
  %tobool27.not = icmp eq i32 %call44.i178, 0
  br i1 %tobool27.not, label %if.end26.for.body.i187_crit_edge, label %if.end26.if.end38_crit_edge

if.end26.if.end38_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.end26.for.body.i187_crit_edge:                 ; preds = %if.end26
  br label %for.body.i187

for.body.i187:                                    ; preds = %if.end.i191.for.body.i187_crit_edge, %if.end26.for.body.i187_crit_edge
  %i.09.i182 = phi i32 [ %inc.i189, %if.end.i191.for.body.i187_crit_edge ], [ 0, %if.end26.for.body.i187_crit_edge ]
  %rv.addr.08.i183 = phi ptr [ %incdec.ptr.i188, %if.end.i191.for.body.i187_crit_edge ], [ @bank_4, %if.end26.for.body.i187_crit_edge ]
  %27 = ptrtoint ptr %rv.addr.08.i183 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %rv.addr.08.i183, align 2
  %val.i184 = getelementptr inbounds %struct.rj54n1_reg_val, ptr %rv.addr.08.i183, i32 0, i32 1
  %29 = ptrtoint ptr %val.i184 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %val.i184, align 2
  %call.i185 = tail call fastcc i32 @reg_write(ptr noundef %client, i16 noundef zeroext %28, i8 noundef zeroext %30) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i185)
  %cmp1.i186 = icmp slt i32 %call.i185, 0
  br i1 %cmp1.i186, label %for.body.i187.if.end62_crit_edge, label %if.end.i191

for.body.i187.if.end62_crit_edge:                 ; preds = %for.body.i187
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.end.i191:                                      ; preds = %for.body.i187
  %incdec.ptr.i188 = getelementptr %struct.rj54n1_reg_val, ptr %rv.addr.08.i183, i32 1
  %inc.i189 = add nuw nsw i32 %i.09.i182, 1
  %exitcond.not.i190 = icmp eq i32 %inc.i189, 18
  br i1 %exitcond.not.i190, label %if.then32, label %if.end.i191.for.body.i187_crit_edge

if.end.i191.for.body.i187_crit_edge:              ; preds = %if.end.i191
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i187

if.then32:                                        ; preds = %if.end.i191
  %31 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %driver_data.i.i.i, align 4
  %bank.i195 = getelementptr inbounds %struct.rj54n1, ptr %32, i32 0, i32 14
  %33 = ptrtoint ptr %bank.i195 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bank.i195, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %34)
  %cmp.not.i197 = icmp eq i8 %34, 5
  br i1 %cmp.not.i197, label %if.then32.do.body22.i205_crit_edge, label %do.body.i198

if.then32.do.body22.i205_crit_edge:               ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22.i205

do.body.i198:                                     ; preds = %if.then32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_reg_init, %if.then6.i200)) #9
          to label %do.end.i203 [label %if.then6.i200], !srcloc !119

if.then6.i200:                                    ; preds = %do.body.i198
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i199 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i199, ptr noundef nonnull @.str.21, i32 noundef 255, i32 noundef 5) #9
  br label %do.end.i203

do.end.i203:                                      ; preds = %if.then6.i200, %do.body.i198
  %call12.i201 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -1, i8 noundef zeroext 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i201)
  %cmp13.i202 = icmp slt i32 %call12.i201, 0
  br i1 %cmp13.i202, label %do.end.i203.if.end62_crit_edge, label %if.end16.i204

do.end.i203.if.end62_crit_edge:                   ; preds = %do.end.i203
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.end16.i204:                                    ; preds = %do.end.i203
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %bank.i195 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 5, ptr %bank.i195, align 2
  br label %do.body22.i205

do.body22.i205:                                   ; preds = %if.end16.i204, %if.then32.do.body22.i205_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_reg_init, %if.then34.i207)) #9
          to label %if.end34 [label %if.then34.i207], !srcloc !119

if.then34.i207:                                   ; preds = %do.body22.i205
  call void @__sanitizer_cov_trace_pc() #11
  %dev35.i206 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug294, ptr noundef %dev35.i206, ptr noundef nonnull @.str.21, i32 noundef 140, i32 noundef 128) #9
  br label %if.end34

if.end34:                                         ; preds = %if.then34.i207, %do.body22.i205
  %call44.i208 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -116, i8 noundef zeroext -128) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i208)
  %tobool35.not = icmp eq i32 %call44.i208, 0
  br i1 %tobool35.not, label %if.then36, label %if.end34.if.end38_crit_edge

if.end34.if.end38_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then36:                                        ; preds = %if.end34
  %36 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %driver_data.i.i.i, align 4
  %bank.i213 = getelementptr inbounds %struct.rj54n1, ptr %37, i32 0, i32 14
  %38 = ptrtoint ptr %bank.i213 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bank.i213, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %39)
  %cmp.not.i214 = icmp eq i8 %39, 5
  br i1 %cmp.not.i214, label %if.then36.if.end21.i_crit_edge, label %do.body.i215

if.then36.if.end21.i_crit_edge:                   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

do.body.i215:                                     ; preds = %if.then36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_read.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_reg_init, %if.then6.i217)) #9
          to label %do.end.i220 [label %if.then6.i217], !srcloc !119

if.then6.i217:                                    ; preds = %do.body.i215
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i216 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_read.__UNIQUE_ID_ddebug292, ptr noundef %dev.i216, ptr noundef nonnull @.str.21, i32 noundef 255, i32 noundef 5) #9
  br label %do.end.i220

do.end.i220:                                      ; preds = %if.then6.i217, %do.body.i215
  %call12.i218 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -1, i8 noundef zeroext 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i218)
  %cmp13.i219 = icmp slt i32 %call12.i218, 0
  br i1 %cmp13.i219, label %do.end.i220.if.end62_crit_edge, label %if.end16.i221

do.end.i220.if.end62_crit_edge:                   ; preds = %do.end.i220
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.end16.i221:                                    ; preds = %do.end.i220
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %bank.i213 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 5, ptr %bank.i213, align 2
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end16.i221, %if.then36.if.end21.i_crit_edge
  %call24.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 78) #9
  br label %if.end38

if.end38:                                         ; preds = %if.end21.i, %if.end34.if.end38_crit_edge, %if.end26.if.end38_crit_edge, %if.end22.if.end38_crit_edge, %if.end18.if.end38_crit_edge, %if.end14.if.end38_crit_edge, %if.end10.if.end38_crit_edge, %entry.if.end38_crit_edge
  %ret.9 = phi i32 [ %call44.i208, %if.end34.if.end38_crit_edge ], [ %call24.i, %if.end21.i ], [ %call44.i178, %if.end26.if.end38_crit_edge ], [ %call44.i160, %if.end22.if.end38_crit_edge ], [ %call44.i142, %if.end18.if.end38_crit_edge ], [ %call44.i124, %if.end14.if.end38_crit_edge ], [ %call44.i, %if.end10.if.end38_crit_edge ], [ %call1, %entry.if.end38_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.9)
  %cmp = icmp sgt i32 %ret.9, -1
  br i1 %cmp, label %if.then39, label %if.end38.if.end62_crit_edge

if.end38.if.end62_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then39:                                        ; preds = %if.end38
  %auto_wb = getelementptr inbounds %struct.rj54n1, ptr %1, i32 0, i32 9
  %41 = trunc i32 %ret.9 to i8
  %42 = lshr i8 %41, 7
  %43 = ptrtoint ptr %auto_wb to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %auto_wb, align 4
  br label %for.body.i228

for.body.i228:                                    ; preds = %if.end.i232.for.body.i228_crit_edge, %if.then39
  %i.09.i223 = phi i32 [ %inc.i230, %if.end.i232.for.body.i228_crit_edge ], [ 0, %if.then39 ]
  %rv.addr.08.i224 = phi ptr [ %incdec.ptr.i229, %if.end.i232.for.body.i228_crit_edge ], [ @bank_5, %if.then39 ]
  %44 = ptrtoint ptr %rv.addr.08.i224 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %rv.addr.08.i224, align 2
  %val.i225 = getelementptr inbounds %struct.rj54n1_reg_val, ptr %rv.addr.08.i224, i32 0, i32 1
  %46 = ptrtoint ptr %val.i225 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %val.i225, align 2
  %call.i226 = tail call fastcc i32 @reg_write(ptr noundef %client, i16 noundef zeroext %45, i8 noundef zeroext %47) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i226)
  %cmp1.i227 = icmp slt i32 %call.i226, 0
  br i1 %cmp1.i227, label %for.body.i228.if.end62_crit_edge, label %if.end.i232

for.body.i228.if.end62_crit_edge:                 ; preds = %for.body.i228
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.end.i232:                                      ; preds = %for.body.i228
  %incdec.ptr.i229 = getelementptr %struct.rj54n1_reg_val, ptr %rv.addr.08.i224, i32 1
  %inc.i230 = add nuw nsw i32 %i.09.i223, 1
  %exitcond.not.i231 = icmp eq i32 %inc.i230, 18
  br i1 %exitcond.not.i231, label %if.end.i232.for.body.i240_crit_edge, label %if.end.i232.for.body.i228_crit_edge

if.end.i232.for.body.i228_crit_edge:              ; preds = %if.end.i232
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i228

if.end.i232.for.body.i240_crit_edge:              ; preds = %if.end.i232
  br label %for.body.i240

for.body.i240:                                    ; preds = %if.end.i244.for.body.i240_crit_edge, %if.end.i232.for.body.i240_crit_edge
  %i.09.i235 = phi i32 [ %inc.i242, %if.end.i244.for.body.i240_crit_edge ], [ 0, %if.end.i232.for.body.i240_crit_edge ]
  %rv.addr.08.i236 = phi ptr [ %incdec.ptr.i241, %if.end.i244.for.body.i240_crit_edge ], [ @bank_8, %if.end.i232.for.body.i240_crit_edge ]
  %48 = ptrtoint ptr %rv.addr.08.i236 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %rv.addr.08.i236, align 2
  %val.i237 = getelementptr inbounds %struct.rj54n1_reg_val, ptr %rv.addr.08.i236, i32 0, i32 1
  %50 = ptrtoint ptr %val.i237 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %val.i237, align 2
  %call.i238 = tail call fastcc i32 @reg_write(ptr noundef %client, i16 noundef zeroext %49, i8 noundef zeroext %51) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i238)
  %cmp1.i239 = icmp slt i32 %call.i238, 0
  br i1 %cmp1.i239, label %for.body.i240.if.end62_crit_edge, label %if.end.i244

for.body.i240.if.end62_crit_edge:                 ; preds = %for.body.i240
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.end.i244:                                      ; preds = %for.body.i240
  %incdec.ptr.i241 = getelementptr %struct.rj54n1_reg_val, ptr %rv.addr.08.i236, i32 1
  %inc.i242 = add nuw nsw i32 %i.09.i235, 1
  %exitcond.not.i243 = icmp eq i32 %inc.i242, 185
  br i1 %exitcond.not.i243, label %if.then48, label %if.end.i244.for.body.i240_crit_edge

if.end.i244.for.body.i240_crit_edge:              ; preds = %if.end.i244
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i240

if.then48:                                        ; preds = %if.end.i244
  %52 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %driver_data.i.i.i, align 4
  %bank.i248 = getelementptr inbounds %struct.rj54n1, ptr %53, i32 0, i32 14
  %54 = ptrtoint ptr %bank.i248 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %bank.i248, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %55)
  %cmp.not.i250 = icmp eq i8 %55, 7
  br i1 %cmp.not.i250, label %if.then48.do.body22.i258_crit_edge, label %do.body.i251

if.then48.do.body22.i258_crit_edge:               ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22.i258

do.body.i251:                                     ; preds = %if.then48
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_reg_init, %if.then6.i253)) #9
          to label %do.end.i256 [label %if.then6.i253], !srcloc !119

if.then6.i253:                                    ; preds = %do.body.i251
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i252 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i252, ptr noundef nonnull @.str.21, i32 noundef 255, i32 noundef 7) #9
  br label %do.end.i256

do.end.i256:                                      ; preds = %if.then6.i253, %do.body.i251
  %call12.i254 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -1, i8 noundef zeroext 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i254)
  %cmp13.i255 = icmp slt i32 %call12.i254, 0
  br i1 %cmp13.i255, label %do.end.i256.if.end62_crit_edge, label %if.end16.i257

do.end.i256.if.end62_crit_edge:                   ; preds = %do.end.i256
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.end16.i257:                                    ; preds = %do.end.i256
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %bank.i248 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 7, ptr %bank.i248, align 2
  br label %do.body22.i258

do.body22.i258:                                   ; preds = %if.end16.i257, %if.then48.do.body22.i258_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_reg_init, %if.then34.i260)) #9
          to label %if.end50 [label %if.then34.i260], !srcloc !119

if.then34.i260:                                   ; preds = %do.body22.i258
  call void @__sanitizer_cov_trace_pc() #11
  %dev35.i259 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug294, ptr noundef %dev35.i259, ptr noundef nonnull @.str.21, i32 noundef 24, i32 noundef 133) #9
  br label %if.end50

if.end50:                                         ; preds = %if.then34.i260, %do.body22.i258
  %call44.i261 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 24, i8 noundef zeroext -123) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i261)
  %tobool51.not = icmp eq i32 %call44.i261, 0
  br i1 %tobool51.not, label %if.end54, label %if.end50.if.end62_crit_edge

if.end50.if.end62_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.end54:                                         ; preds = %if.end50
  %call53 = tail call fastcc i32 @rj54n1_commit(ptr noundef %client)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool55.not = icmp eq i32 %call53, 0
  br i1 %tobool55.not, label %if.then56, label %if.end54.if.end62_crit_edge

if.end54.if.end62_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then56:                                        ; preds = %if.end54
  %57 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %driver_data.i.i.i, align 4
  %bank.i266 = getelementptr inbounds %struct.rj54n1, ptr %58, i32 0, i32 14
  %59 = ptrtoint ptr %bank.i266 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %bank.i266, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %60)
  %cmp.not.i268 = icmp eq i8 %60, 7
  br i1 %cmp.not.i268, label %if.then56.do.body22.i276_crit_edge, label %do.body.i269

if.then56.do.body22.i276_crit_edge:               ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22.i276

do.body.i269:                                     ; preds = %if.then56
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_reg_init, %if.then6.i271)) #9
          to label %do.end.i274 [label %if.then6.i271], !srcloc !119

if.then6.i271:                                    ; preds = %do.body.i269
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i270 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i270, ptr noundef nonnull @.str.21, i32 noundef 255, i32 noundef 7) #9
  br label %do.end.i274

do.end.i274:                                      ; preds = %if.then6.i271, %do.body.i269
  %call12.i272 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -1, i8 noundef zeroext 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i272)
  %cmp13.i273 = icmp slt i32 %call12.i272, 0
  br i1 %cmp13.i273, label %do.end.i274.if.end62_crit_edge, label %if.end16.i275

do.end.i274.if.end62_crit_edge:                   ; preds = %do.end.i274
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.end16.i275:                                    ; preds = %do.end.i274
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %bank.i266 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 7, ptr %bank.i266, align 2
  br label %do.body22.i276

do.body22.i276:                                   ; preds = %if.end16.i275, %if.then56.do.body22.i276_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_reg_init, %if.then34.i278)) #9
          to label %if.end58 [label %if.then34.i278], !srcloc !119

if.then34.i278:                                   ; preds = %do.body22.i276
  call void @__sanitizer_cov_trace_pc() #11
  %dev35.i277 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug294, ptr noundef %dev35.i277, ptr noundef nonnull @.str.21, i32 noundef 24, i32 noundef 135) #9
  br label %if.end58

if.end58:                                         ; preds = %if.then34.i278, %do.body22.i276
  %call44.i279 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 24, i8 noundef zeroext -121) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i279)
  %tobool59.not = icmp eq i32 %call44.i279, 0
  br i1 %tobool59.not, label %if.then60, label %if.end58.if.end62_crit_edge

if.end58.if.end62_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then60:                                        ; preds = %if.end58
  %62 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %driver_data.i.i.i, align 4
  %bank.i284 = getelementptr inbounds %struct.rj54n1, ptr %63, i32 0, i32 14
  %64 = ptrtoint ptr %bank.i284 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %bank.i284, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %65)
  %cmp.not.i286 = icmp eq i8 %65, 7
  br i1 %cmp.not.i286, label %if.then60.do.body22.i294_crit_edge, label %do.body.i287

if.then60.do.body22.i294_crit_edge:               ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22.i294

do.body.i287:                                     ; preds = %if.then60
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_reg_init, %if.then6.i289)) #9
          to label %do.end.i292 [label %if.then6.i289], !srcloc !119

if.then6.i289:                                    ; preds = %do.body.i287
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i288 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i288, ptr noundef nonnull @.str.21, i32 noundef 255, i32 noundef 7) #9
  br label %do.end.i292

do.end.i292:                                      ; preds = %if.then6.i289, %do.body.i287
  %call12.i290 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -1, i8 noundef zeroext 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i290)
  %cmp13.i291 = icmp slt i32 %call12.i290, 0
  br i1 %cmp13.i291, label %do.end.i292.if.end62_crit_edge, label %if.end16.i293

do.end.i292.if.end62_crit_edge:                   ; preds = %do.end.i292
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.end16.i293:                                    ; preds = %do.end.i292
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %bank.i284 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 7, ptr %bank.i284, align 2
  br label %do.body22.i294

do.body22.i294:                                   ; preds = %if.end16.i293, %if.then60.do.body22.i294_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_reg_init, %if.then34.i296)) #9
          to label %do.end40.i298 [label %if.then34.i296], !srcloc !119

if.then34.i296:                                   ; preds = %do.body22.i294
  call void @__sanitizer_cov_trace_pc() #11
  %dev35.i295 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug294, ptr noundef %dev35.i295, ptr noundef nonnull @.str.21, i32 noundef 254, i32 noundef 2) #9
  br label %do.end40.i298

do.end40.i298:                                    ; preds = %if.then34.i296, %do.body22.i294
  %call44.i297 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -2, i8 noundef zeroext 2) #9
  br label %if.end62

if.end62:                                         ; preds = %do.end40.i298, %do.end.i292.if.end62_crit_edge, %if.end58.if.end62_crit_edge, %do.end.i274.if.end62_crit_edge, %if.end54.if.end62_crit_edge, %if.end50.if.end62_crit_edge, %do.end.i256.if.end62_crit_edge, %for.body.i240.if.end62_crit_edge, %for.body.i228.if.end62_crit_edge, %if.end38.if.end62_crit_edge, %do.end.i220.if.end62_crit_edge, %do.end.i203.if.end62_crit_edge, %for.body.i187.if.end62_crit_edge, %do.end.i173.if.end62_crit_edge, %do.end.i155.if.end62_crit_edge, %do.end.i137.if.end62_crit_edge, %do.end.i119.if.end62_crit_edge, %do.end.i.if.end62_crit_edge, %if.end.i.4.if.end62_crit_edge, %if.end.i.3.if.end62_crit_edge, %if.end.i.2.if.end62_crit_edge, %if.end.i.1.if.end62_crit_edge, %if.end.i.if.end62_crit_edge, %for.body.i.preheader.if.end62_crit_edge
  %ret.15 = phi i32 [ %call44.i279, %if.end58.if.end62_crit_edge ], [ %call44.i297, %do.end40.i298 ], [ %call12.i290, %do.end.i292.if.end62_crit_edge ], [ %call12.i272, %do.end.i274.if.end62_crit_edge ], [ %call53, %if.end54.if.end62_crit_edge ], [ %call44.i261, %if.end50.if.end62_crit_edge ], [ %call12.i254, %do.end.i256.if.end62_crit_edge ], [ %ret.9, %if.end38.if.end62_crit_edge ], [ %call12.i218, %do.end.i220.if.end62_crit_edge ], [ %call12.i, %do.end.i.if.end62_crit_edge ], [ %call12.i117, %do.end.i119.if.end62_crit_edge ], [ %call12.i135, %do.end.i137.if.end62_crit_edge ], [ %call12.i153, %do.end.i155.if.end62_crit_edge ], [ %call12.i171, %do.end.i173.if.end62_crit_edge ], [ %call12.i201, %do.end.i203.if.end62_crit_edge ], [ %call.i100, %if.end.i.4.if.end62_crit_edge ], [ %call.i, %for.body.i.preheader.if.end62_crit_edge ], [ %call.i.1, %if.end.i.if.end62_crit_edge ], [ %call.i.2, %if.end.i.1.if.end62_crit_edge ], [ %call.i.3, %if.end.i.2.if.end62_crit_edge ], [ %call.i.4, %if.end.i.3.if.end62_crit_edge ], [ %call.i238, %for.body.i240.if.end62_crit_edge ], [ %call.i226, %for.body.i228.if.end62_crit_edge ], [ %call.i185, %for.body.i187.if.end62_crit_edge ]
  tail call void @msleep(i32 noundef 700) #9
  ret i32 %ret.15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rj54n1_sensor_scale(ptr nocapture noundef readonly %sd, ptr nocapture noundef %in_w, ptr nocapture noundef %in_h, ptr nocapture noundef %out_w, ptr nocapture noundef %out_h) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %4 = ptrtoint ptr %in_w to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %in_w, align 4
  %6 = ptrtoint ptr %in_h to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %in_h, align 4
  %8 = ptrtoint ptr %out_w to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %out_w, align 4
  %10 = ptrtoint ptr %out_h to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %out_h, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %5)
  %cmp = icmp ult i32 %5, 1024
  %div412 = lshr i32 %5, 1
  %cond = select i1 %cmp, i32 512, i32 %div412
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %cond)
  %cmp2 = icmp ugt i32 %9, %cond
  br i1 %cmp2, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mul = shl i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1600, i32 %mul)
  %cmp3 = icmp ugt i32 %mul, 1600
  %. = select i1 %cmp3, i32 800, i32 %9
  %12 = tail call i32 @llvm.umin.i32(i32 %mul, i32 1600)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rj54n1_sensor_scale.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_sensor_scale, %if.then10)) #9
          to label %if.end12 [label %if.then10], !srcloc !119

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rj54n1_sensor_scale.__UNIQUE_ID_ddebug298, ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %12, i32 noundef %.) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then, %entry.if.end12_crit_edge
  %output_w.1 = phi i32 [ %., %if.then10 ], [ %9, %entry.if.end12_crit_edge ], [ %., %if.then ]
  %input_w.1 = phi i32 [ %12, %if.then10 ], [ %5, %entry.if.end12_crit_edge ], [ %12, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %7)
  %cmp15 = icmp ult i32 %7, 768
  %div13413 = lshr i32 %7, 1
  %cond19 = select i1 %cmp15, i32 384, i32 %div13413
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %cond19)
  %cmp20 = icmp ugt i32 %11, %cond19
  br i1 %cmp20, label %if.then21, label %if.end12.if.end45_crit_edge

if.end12.if.end45_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then21:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %mul22 = shl i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200, i32 %mul22)
  %cmp23 = icmp ugt i32 %mul22, 1200
  %.427 = select i1 %cmp23, i32 600, i32 %11
  %13 = tail call i32 @llvm.umin.i32(i32 %mul22, i32 1200)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rj54n1_sensor_scale.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_sensor_scale, %if.then40)) #9
          to label %if.end45 [label %if.then40], !srcloc !119

if.then40:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %dev41 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rj54n1_sensor_scale.__UNIQUE_ID_ddebug301, ptr noundef %dev41, ptr noundef nonnull @.str.29, i32 noundef %13, i32 noundef %.427) #9
  br label %if.end45

if.end45:                                         ; preds = %if.then40, %if.then21, %if.end12.if.end45_crit_edge
  %output_h.1 = phi i32 [ %.427, %if.then40 ], [ %11, %if.end12.if.end45_crit_edge ], [ %.427, %if.then21 ]
  %input_h.1 = phi i32 [ %13, %if.then40 ], [ %7, %if.end12.if.end45_crit_edge ], [ %13, %if.then21 ]
  %shr.i = lshr i32 %output_w.1, 4
  %and.i = and i32 %shr.i, 112
  %shr1.i = lshr i32 %output_h.1, 8
  %and2.i = and i32 %shr1.i, 7
  %or.i = or i32 %and2.i, %and.i
  %conv.i = trunc i32 %or.i to i8
  %call.i = tail call fastcc i32 @reg_write(ptr noundef %1, i16 noundef zeroext 1028, i8 noundef zeroext %conv.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end45.if.end50_crit_edge

if.end45.if.end50_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.end.i:                                         ; preds = %if.end45
  %conv4.i = trunc i32 %output_w.1 to i8
  %call5.i = tail call fastcc i32 @reg_write(ptr noundef %1, i16 noundef zeroext 1029, i8 noundef zeroext %conv4.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %rj54n1_set_rect.exit, label %if.end.i.if.end50_crit_edge

if.end.i.if.end50_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

rj54n1_set_rect.exit:                             ; preds = %if.end.i
  %conv9.i = trunc i32 %output_h.1 to i8
  %call10.i = tail call fastcc i32 @reg_write(ptr noundef %1, i16 noundef zeroext 1030, i8 noundef zeroext %conv9.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool47.not = icmp eq i32 %call10.i, 0
  br i1 %tobool47.not, label %if.then48, label %rj54n1_set_rect.exit.if.end50_crit_edge

rj54n1_set_rect.exit.if.end50_crit_edge:          ; preds = %rj54n1_set_rect.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then48:                                        ; preds = %rj54n1_set_rect.exit
  %call.i441 = tail call fastcc i32 @reg_write(ptr noundef %1, i16 noundef zeroext 1031, i8 noundef zeroext %conv.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i441)
  %tobool.not.i442 = icmp eq i32 %call.i441, 0
  br i1 %tobool.not.i442, label %if.end.i446, label %if.then48.if.end50_crit_edge

if.then48.if.end50_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.end.i446:                                      ; preds = %if.then48
  %call5.i444 = tail call fastcc i32 @reg_write(ptr noundef %1, i16 noundef zeroext 1032, i8 noundef zeroext %conv4.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i444)
  %tobool6.not.i445 = icmp eq i32 %call5.i444, 0
  br i1 %tobool6.not.i445, label %if.then7.i449, label %if.end.i446.if.end50_crit_edge

if.end.i446.if.end50_crit_edge:                   ; preds = %if.end.i446
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then7.i449:                                    ; preds = %if.end.i446
  call void @__sanitizer_cov_trace_pc() #11
  %call10.i448 = tail call fastcc i32 @reg_write(ptr noundef %1, i16 noundef zeroext 1033, i8 noundef zeroext %conv9.i) #9
  br label %if.end50

if.end50:                                         ; preds = %if.then7.i449, %if.end.i446.if.end50_crit_edge, %if.then48.if.end50_crit_edge, %rj54n1_set_rect.exit.if.end50_crit_edge, %if.end.i.if.end50_crit_edge, %if.end45.if.end50_crit_edge
  %ret.0 = phi i32 [ %call10.i, %rj54n1_set_rect.exit.if.end50_crit_edge ], [ %call5.i444, %if.end.i446.if.end50_crit_edge ], [ %call10.i448, %if.then7.i449 ], [ %call.i441, %if.then48.if.end50_crit_edge ], [ %call.i, %if.end45.if.end50_crit_edge ], [ %call5.i, %if.end.i.if.end50_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp51 = icmp slt i32 %ret.0, 0
  br i1 %cmp51, label %if.end50.cleanup_crit_edge, label %if.end53

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end53:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_cmp4(i32 %output_w.1, i32 %input_w.1)
  %cmp54 = icmp ugt i32 %output_w.1, %input_w.1
  call void @__sanitizer_cov_trace_cmp4(i32 %output_h.1, i32 %input_h.1)
  %cmp55 = icmp ugt i32 %output_h.1, %input_h.1
  %or.cond = select i1 %cmp54, i1 %cmp55, i1 false
  br i1 %or.cond, label %if.end53.if.end98_crit_edge, label %if.else57

if.end53.if.end98_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

if.else57:                                        ; preds = %if.end53
  %mul58 = shl i32 %input_w.1, 10
  %div59414 = lshr i32 %output_w.1, 1
  %add = add i32 %mul58, %div59414
  %div60 = udiv i32 %add, %output_w.1
  %mul61 = shl i32 %input_h.1, 10
  %div62415 = lshr i32 %output_h.1, 1
  %add63 = add i32 %mul61, %div62415
  %div64 = udiv i32 %add63, %output_h.1
  call void @__sanitizer_cov_trace_cmp4(i32 %div60, i32 %div64)
  %cmp65 = icmp ugt i32 %div60, %div64
  br i1 %cmp65, label %land.lhs.true66, label %if.else57.if.else75_crit_edge

if.else57.if.else75_crit_edge:                    ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else75

land.lhs.true66:                                  ; preds = %if.else57
  %mul67 = mul i32 %div60, %output_h.1
  %14 = add i32 %mul67, -1229312
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1229824, i32 %14)
  %cmp70 = icmp ult i32 %14, -1229824
  br i1 %cmp70, label %if.then71, label %land.lhs.true66.if.else75_crit_edge

land.lhs.true66.if.else75_crit_edge:              ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else75

if.then71:                                        ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #11
  %add73 = add nuw i32 %div62415, 1228800
  %div74 = udiv i32 %add73, %output_h.1
  br label %if.end94

if.else75:                                        ; preds = %land.lhs.true66.if.else75_crit_edge, %if.else57.if.else75_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %div64, i32 %div60)
  %cmp76 = icmp ugt i32 %div64, %div60
  br i1 %cmp76, label %land.lhs.true77, label %if.else75.if.else86_crit_edge

if.else75.if.else86_crit_edge:                    ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else86

land.lhs.true77:                                  ; preds = %if.else75
  %mul78 = mul i32 %div64, %output_w.1
  %15 = add i32 %mul78, -1638912
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1639424, i32 %15)
  %cmp81 = icmp ult i32 %15, -1639424
  br i1 %cmp81, label %if.then82, label %land.lhs.true77.if.else86_crit_edge

land.lhs.true77.if.else86_crit_edge:              ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else86

if.then82:                                        ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #11
  %add84 = add nuw i32 %div59414, 1638400
  %div85 = udiv i32 %add84, %output_w.1
  br label %if.end94

if.else86:                                        ; preds = %land.lhs.true77.if.else86_crit_edge, %if.else75.if.else86_crit_edge
  %16 = tail call i32 @llvm.umax.i32(i32 %div60, i32 %div64)
  br label %if.end94

if.end94:                                         ; preds = %if.else86, %if.then82, %if.then71
  %resize.0 = phi i32 [ %div74, %if.then71 ], [ %div85, %if.then82 ], [ %16, %if.else86 ]
  %17 = zext i32 %resize.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %resize.0, label %sw.caserange [
    i32 2040, label %if.end94.if.end98_crit_edge
    i32 2041, label %if.end94.if.end98_crit_edge517
    i32 2042, label %if.end94.if.end98_crit_edge518
    i32 2043, label %if.end94.if.end98_crit_edge519
    i32 2044, label %if.end94.if.end98_crit_edge520
    i32 2045, label %if.end94.if.end98_crit_edge521
    i32 2046, label %if.end94.if.end98_crit_edge522
    i32 2047, label %if.end94.if.end98_crit_edge523
    i32 4080, label %if.end94.sw.bb95_crit_edge
    i32 4081, label %if.end94.sw.bb95_crit_edge524
    i32 4082, label %if.end94.sw.bb95_crit_edge525
    i32 4083, label %if.end94.sw.bb95_crit_edge526
    i32 4084, label %if.end94.sw.bb95_crit_edge527
    i32 4085, label %if.end94.sw.bb95_crit_edge528
    i32 4086, label %if.end94.sw.bb95_crit_edge529
    i32 4087, label %if.end94.sw.bb95_crit_edge530
    i32 4088, label %if.end94.sw.bb95_crit_edge531
    i32 4089, label %if.end94.sw.bb95_crit_edge532
    i32 4090, label %if.end94.sw.bb95_crit_edge533
    i32 4091, label %if.end94.sw.bb95_crit_edge534
    i32 4092, label %if.end94.sw.bb95_crit_edge535
    i32 4093, label %if.end94.sw.bb95_crit_edge536
    i32 4094, label %if.end94.sw.bb95_crit_edge537
    i32 4095, label %if.end94.sw.bb95_crit_edge538
    i32 8160, label %if.end94.sw.bb96_crit_edge
    i32 8161, label %if.end94.sw.bb96_crit_edge539
    i32 8162, label %if.end94.sw.bb96_crit_edge540
    i32 8163, label %if.end94.sw.bb96_crit_edge541
    i32 8164, label %if.end94.sw.bb96_crit_edge542
    i32 8165, label %if.end94.sw.bb96_crit_edge543
    i32 8166, label %if.end94.sw.bb96_crit_edge544
    i32 8167, label %if.end94.sw.bb96_crit_edge545
    i32 8168, label %if.end94.sw.bb96_crit_edge546
    i32 8169, label %if.end94.sw.bb96_crit_edge547
    i32 8170, label %if.end94.sw.bb96_crit_edge548
    i32 8171, label %if.end94.sw.bb96_crit_edge549
    i32 8172, label %if.end94.sw.bb96_crit_edge550
    i32 8173, label %if.end94.sw.bb96_crit_edge551
    i32 8174, label %if.end94.sw.bb96_crit_edge552
    i32 8175, label %if.end94.sw.bb96_crit_edge553
    i32 8176, label %if.end94.sw.bb96_crit_edge554
    i32 8177, label %if.end94.sw.bb96_crit_edge555
    i32 8178, label %if.end94.sw.bb96_crit_edge556
    i32 8179, label %if.end94.sw.bb96_crit_edge557
    i32 8180, label %if.end94.sw.bb96_crit_edge558
    i32 8181, label %if.end94.sw.bb96_crit_edge559
    i32 8182, label %if.end94.sw.bb96_crit_edge560
    i32 8183, label %if.end94.sw.bb96_crit_edge561
    i32 8184, label %if.end94.sw.bb96_crit_edge562
    i32 8185, label %if.end94.sw.bb96_crit_edge563
    i32 8186, label %if.end94.sw.bb96_crit_edge564
    i32 8187, label %if.end94.sw.bb96_crit_edge565
    i32 8188, label %if.end94.sw.bb96_crit_edge566
    i32 8189, label %if.end94.sw.bb96_crit_edge567
    i32 8190, label %if.end94.sw.bb96_crit_edge568
    i32 8191, label %if.end94.sw.bb96_crit_edge569
  ]

if.end94.sw.bb96_crit_edge569:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb96

if.end94.sw.bb96_crit_edge568:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb96

if.end94.sw.bb96_crit_edge567:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb96

if.end94.sw.bb96_crit_edge566:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb96

if.end94.sw.bb96_crit_edge565:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb96

if.end94.sw.bb96_crit_edge564:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb96

if.end94.sw.bb96_crit_edge563:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb96

if.end94.sw.bb96_crit_edge562:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb96

if.end94.sw.bb96_crit_edge561:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb96

if.end94.sw.bb96_crit_edge560:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb96

if.end94.sw.bb96_crit_edge559:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb96

if.end94.sw.bb96_crit_edge558:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb96

if.end94.sw.bb96_crit_edge557:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb96

if.end94.sw.bb96_crit_edge556:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb96

if.end94.sw.bb96_crit_edge555:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb96

if.end94.sw.bb96_crit_edge554:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb96

if.end94.sw.bb96_crit_edge553:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb96

if.end94.sw.bb96_crit_edge552:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb96

if.end94.sw.bb96_crit_edge551:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb96

if.end94.sw.bb96_crit_edge550:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb96

if.end94.sw.bb96_crit_edge549:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb96

if.end94.sw.bb96_crit_edge548:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb96

if.end94.sw.bb96_crit_edge547:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb96

if.end94.sw.bb96_crit_edge546:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb96

if.end94.sw.bb96_crit_edge545:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb96

if.end94.sw.bb96_crit_edge544:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb96

if.end94.sw.bb96_crit_edge543:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb96

if.end94.sw.bb96_crit_edge542:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb96

if.end94.sw.bb96_crit_edge541:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb96

if.end94.sw.bb96_crit_edge540:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb96

if.end94.sw.bb96_crit_edge539:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb96

if.end94.sw.bb96_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb96

if.end94.sw.bb95_crit_edge538:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb95

if.end94.sw.bb95_crit_edge537:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb95

if.end94.sw.bb95_crit_edge536:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb95

if.end94.sw.bb95_crit_edge535:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb95

if.end94.sw.bb95_crit_edge534:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb95

if.end94.sw.bb95_crit_edge533:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb95

if.end94.sw.bb95_crit_edge532:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb95

if.end94.sw.bb95_crit_edge531:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb95

if.end94.sw.bb95_crit_edge530:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb95

if.end94.sw.bb95_crit_edge529:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb95

if.end94.sw.bb95_crit_edge528:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb95

if.end94.sw.bb95_crit_edge527:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb95

if.end94.sw.bb95_crit_edge526:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb95

if.end94.sw.bb95_crit_edge525:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb95

if.end94.sw.bb95_crit_edge524:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb95

if.end94.sw.bb95_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb95

if.end94.if.end98_crit_edge523:                   ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

if.end94.if.end98_crit_edge522:                   ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

if.end94.if.end98_crit_edge521:                   ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

if.end94.if.end98_crit_edge520:                   ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

if.end94.if.end98_crit_edge519:                   ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

if.end94.if.end98_crit_edge518:                   ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

if.end94.if.end98_crit_edge517:                   ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

if.end94.if.end98_crit_edge:                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

sw.bb95:                                          ; preds = %if.end94.sw.bb95_crit_edge, %if.end94.sw.bb95_crit_edge524, %if.end94.sw.bb95_crit_edge525, %if.end94.sw.bb95_crit_edge526, %if.end94.sw.bb95_crit_edge527, %if.end94.sw.bb95_crit_edge528, %if.end94.sw.bb95_crit_edge529, %if.end94.sw.bb95_crit_edge530, %if.end94.sw.bb95_crit_edge531, %if.end94.sw.bb95_crit_edge532, %if.end94.sw.bb95_crit_edge533, %if.end94.sw.bb95_crit_edge534, %if.end94.sw.bb95_crit_edge535, %if.end94.sw.bb95_crit_edge536, %if.end94.sw.bb95_crit_edge537, %if.end94.sw.bb95_crit_edge538
  br label %if.end98

sw.bb96:                                          ; preds = %if.end94.sw.bb96_crit_edge, %if.end94.sw.bb96_crit_edge539, %if.end94.sw.bb96_crit_edge540, %if.end94.sw.bb96_crit_edge541, %if.end94.sw.bb96_crit_edge542, %if.end94.sw.bb96_crit_edge543, %if.end94.sw.bb96_crit_edge544, %if.end94.sw.bb96_crit_edge545, %if.end94.sw.bb96_crit_edge546, %if.end94.sw.bb96_crit_edge547, %if.end94.sw.bb96_crit_edge548, %if.end94.sw.bb96_crit_edge549, %if.end94.sw.bb96_crit_edge550, %if.end94.sw.bb96_crit_edge551, %if.end94.sw.bb96_crit_edge552, %if.end94.sw.bb96_crit_edge553, %if.end94.sw.bb96_crit_edge554, %if.end94.sw.bb96_crit_edge555, %if.end94.sw.bb96_crit_edge556, %if.end94.sw.bb96_crit_edge557, %if.end94.sw.bb96_crit_edge558, %if.end94.sw.bb96_crit_edge559, %if.end94.sw.bb96_crit_edge560, %if.end94.sw.bb96_crit_edge561, %if.end94.sw.bb96_crit_edge562, %if.end94.sw.bb96_crit_edge563, %if.end94.sw.bb96_crit_edge564, %if.end94.sw.bb96_crit_edge565, %if.end94.sw.bb96_crit_edge566, %if.end94.sw.bb96_crit_edge567, %if.end94.sw.bb96_crit_edge568, %if.end94.sw.bb96_crit_edge569
  br label %if.end98

sw.caserange:                                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  %18 = add i32 %resize.0, -16320
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %18)
  %inbounds = icmp ult i32 %18, 65
  %spec.select = select i1 %inbounds, i32 16319, i32 %resize.0
  br label %if.end98

if.end98:                                         ; preds = %sw.caserange, %sw.bb96, %sw.bb95, %if.end94.if.end98_crit_edge, %if.end94.if.end98_crit_edge517, %if.end94.if.end98_crit_edge518, %if.end94.if.end98_crit_edge519, %if.end94.if.end98_crit_edge520, %if.end94.if.end98_crit_edge521, %if.end94.if.end98_crit_edge522, %if.end94.if.end98_crit_edge523, %if.end53.if.end98_crit_edge
  %resize.2 = phi i32 [ 1024, %if.end53.if.end98_crit_edge ], [ 8159, %sw.bb96 ], [ 4079, %sw.bb95 ], [ 2039, %if.end94.if.end98_crit_edge ], [ 2039, %if.end94.if.end98_crit_edge517 ], [ 2039, %if.end94.if.end98_crit_edge518 ], [ 2039, %if.end94.if.end98_crit_edge519 ], [ 2039, %if.end94.if.end98_crit_edge520 ], [ 2039, %if.end94.if.end98_crit_edge521 ], [ 2039, %if.end94.if.end98_crit_edge522 ], [ 2039, %if.end94.if.end98_crit_edge523 ], [ %spec.select, %sw.caserange ]
  %conv = trunc i32 %resize.2 to i8
  %call99 = tail call fastcc i32 @reg_write(ptr noundef %1, i16 noundef zeroext 1042, i8 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.then101, label %if.end98.if.end104_crit_edge

if.end98.if.end104_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

if.then101:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  %shr = lshr i32 %resize.2, 8
  %conv102 = trunc i32 %shr to i8
  %call103 = tail call fastcc i32 @reg_write(ptr noundef %1, i16 noundef zeroext 1041, i8 noundef zeroext %conv102)
  br label %if.end104

if.end104:                                        ; preds = %if.then101, %if.end98.if.end104_crit_edge
  %ret.1 = phi i32 [ %call99, %if.end98.if.end104_crit_edge ], [ %call103, %if.then101 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp105 = icmp slt i32 %ret.1, 0
  br i1 %cmp105, label %if.end104.cleanup_crit_edge, label %if.end108

if.end104.cleanup_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end108:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_const_cmp4(i32 15360, i32 %resize.2)
  %cmp111 = icmp ult i32 %resize.2, 15360
  %div109416 = lshr i32 %resize.2, 10
  %cond116 = select i1 %cmp111, i32 %div109416, i32 15
  %shl = shl nuw i32 1, %cond116
  %conv118 = and i32 %shl, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv118)
  %cmp119 = icmp ult i32 %conv118, 3
  br i1 %cmp119, label %if.end108.if.end134_crit_edge, label %if.else122

if.end108.if.end134_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end134

if.else122:                                       ; preds = %if.end108
  %and123 = and i32 %resize.2, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool124.not = icmp ne i32 %and123, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %cond116)
  %cmp126 = icmp ult i32 %cond116, 15
  %or.cond428 = select i1 %tobool124.not, i1 %cmp126, i1 false
  br i1 %or.cond428, label %if.then128, label %if.else122.if.end134_crit_edge

if.else122.if.end134_crit_edge:                   ; preds = %if.else122
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end134

if.then128:                                       ; preds = %if.else122
  call void @__sanitizer_cov_trace_pc() #11
  %shl130 = shl nuw nsw i32 2, %cond116
  %or = or i32 %conv118, %shl130
  br label %if.end134

if.end134:                                        ; preds = %if.then128, %if.else122.if.end134_crit_edge, %if.end108.if.end134_crit_edge
  %inc_sel.0 = phi i32 [ %or, %if.then128 ], [ %shl, %if.else122.if.end134_crit_edge ], [ 12, %if.end108.if.end134_crit_edge ]
  %19 = trunc i32 %inc_sel.0 to i8
  %conv137 = and i8 %19, -4
  %call138 = tail call fastcc i32 @reg_write(ptr noundef %1, i16 noundef zeroext 1062, i8 noundef zeroext %conv137)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %if.then140, label %if.end134.if.end145_crit_edge

if.end134.if.end145_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end145

if.then140:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  %conv135 = lshr i32 %inc_sel.0, 8
  %conv143 = trunc i32 %conv135 to i8
  %call144 = tail call fastcc i32 @reg_write(ptr noundef %1, i16 noundef zeroext 1061, i8 noundef zeroext %conv143)
  br label %if.end145

if.end145:                                        ; preds = %if.then140, %if.end134.if.end145_crit_edge
  %ret.2 = phi i32 [ %call138, %if.end134.if.end145_crit_edge ], [ %call144, %if.then140 ]
  %auto_wb = getelementptr inbounds %struct.rj54n1, ptr %3, i32 0, i32 9
  %20 = ptrtoint ptr %auto_wb to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %auto_wb, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool146.not = icmp eq i8 %21, 0
  br i1 %tobool146.not, label %if.then147, label %if.end145.if.end202_crit_edge

if.end145.if.end202_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end202

if.then147:                                       ; preds = %if.end145
  %mul150 = mul i32 %output_w.1, 3
  %div151418 = lshr i32 %mul150, 2
  %sub = add nuw nsw i32 %div151418, 262141
  %div152419 = lshr i32 %sub, 2
  %div154420 = lshr i32 %output_h.1, 4
  %mul156 = mul i32 %output_h.1, 3
  %div157421 = lshr i32 %mul156, 2
  %sub158 = add nuw nsw i32 %div157421, 262141
  %div159422 = lshr i32 %sub158, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool177.not = icmp eq i32 %ret.2, 0
  br i1 %tobool177.not, label %if.end181, label %if.then147.if.end236_crit_edge

if.then147.if.end236_crit_edge:                   ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end236

if.end181:                                        ; preds = %if.then147
  %conv161 = lshr i32 %output_w.1, 6
  %and163 = and i32 %conv161, 64
  %and166 = and i32 %shr1.i, 16
  %conv168 = lshr i32 %sub, 8
  %and170 = and i32 %conv168, 4
  %conv172 = lshr i32 %sub158, 10
  %and174 = and i32 %conv172, 1
  %or167 = or i32 %and170, %and163
  %or171 = or i32 %or167, %and166
  %or175 = or i32 %or171, %and174
  %conv179 = trunc i32 %or175 to i8
  %call180 = tail call fastcc i32 @reg_write(ptr noundef %1, i16 noundef zeroext 1385, i8 noundef zeroext %conv179)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %tobool182.not = icmp eq i32 %call180, 0
  br i1 %tobool182.not, label %if.end186, label %if.end181.if.end236_crit_edge

if.end181.if.end236_crit_edge:                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end236

if.end186:                                        ; preds = %if.end181
  %conv184 = trunc i32 %shr.i to i8
  %call185 = tail call fastcc i32 @reg_write(ptr noundef %1, i16 noundef zeroext 1386, i8 noundef zeroext %conv184)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185)
  %tobool187.not = icmp eq i32 %call185, 0
  br i1 %tobool187.not, label %if.end191, label %if.end186.if.end236_crit_edge

if.end186.if.end236_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end236

if.end191:                                        ; preds = %if.end186
  %conv189 = trunc i32 %div154420 to i8
  %call190 = tail call fastcc i32 @reg_write(ptr noundef %1, i16 noundef zeroext 1387, i8 noundef zeroext %conv189)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %tobool192.not = icmp eq i32 %call190, 0
  br i1 %tobool192.not, label %if.end196, label %if.end191.if.end236_crit_edge

if.end191.if.end236_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end236

if.end196:                                        ; preds = %if.end191
  %conv194 = trunc i32 %div152419 to i8
  %call195 = tail call fastcc i32 @reg_write(ptr noundef %1, i16 noundef zeroext 1388, i8 noundef zeroext %conv194)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call195)
  %tobool197.not = icmp eq i32 %call195, 0
  br i1 %tobool197.not, label %if.then198, label %if.end196.if.end236_crit_edge

if.end196.if.end236_crit_edge:                    ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end236

if.then198:                                       ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #11
  %conv199 = trunc i32 %div159422 to i8
  %call200 = tail call fastcc i32 @reg_write(ptr noundef %1, i16 noundef zeroext 1389, i8 noundef zeroext %conv199)
  br label %if.end202

if.end202:                                        ; preds = %if.then198, %if.end145.if.end202_crit_edge
  %ret.7 = phi i32 [ %ret.2, %if.end145.if.end202_crit_edge ], [ %call200, %if.then198 ]
  %mul203 = mul i32 %resize.2, 314572800
  %tgclk_mhz = getelementptr inbounds %struct.rj54n1, ptr %3, i32 0, i32 8
  %22 = ptrtoint ptr %tgclk_mhz to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tgclk_mhz, align 4
  %div204 = udiv i32 %mul203, %23
  %div206 = udiv i32 %div204, 60000
  %div207 = udiv i32 %div204, 50000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.7)
  %tobool208.not = icmp eq i32 %ret.7, 0
  br i1 %tobool208.not, label %if.end216, label %if.end202.if.end236_crit_edge

if.end202.if.end236_crit_edge:                    ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end236

if.end216:                                        ; preds = %if.end202
  %shr210 = lshr i32 %div206, 4
  %and211 = and i32 %shr210, 240
  %shr212 = lshr i32 %div207, 8
  %or213 = or i32 %and211, %shr212
  %conv214 = trunc i32 %or213 to i8
  %call215 = tail call fastcc i32 @reg_write(ptr noundef %1, i16 noundef zeroext 1463, i8 noundef zeroext %conv214)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call215)
  %tobool217.not = icmp eq i32 %call215, 0
  br i1 %tobool217.not, label %if.end221, label %if.end216.if.end236_crit_edge

if.end216.if.end236_crit_edge:                    ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end236

if.end221:                                        ; preds = %if.end216
  %conv219 = trunc i32 %div206 to i8
  %call220 = tail call fastcc i32 @reg_write(ptr noundef %1, i16 noundef zeroext 1464, i8 noundef zeroext %conv219)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call220)
  %tobool222.not = icmp eq i32 %call220, 0
  br i1 %tobool222.not, label %if.end226, label %if.end221.if.end236_crit_edge

if.end221.if.end236_crit_edge:                    ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end236

if.end226:                                        ; preds = %if.end221
  %conv224 = trunc i32 %div207 to i8
  %call225 = tail call fastcc i32 @reg_write(ptr noundef %1, i16 noundef zeroext 1465, i8 noundef zeroext %conv224)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call225)
  %tobool227.not = icmp eq i32 %call225, 0
  br i1 %tobool227.not, label %if.end232, label %if.end226.if.end236_crit_edge

if.end226.if.end236_crit_edge:                    ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end236

if.end232:                                        ; preds = %if.end226
  %div229 = udiv i32 %div204, 1500000
  %conv230 = trunc i32 %div229 to i8
  %call231 = tail call fastcc i32 @reg_write(ptr noundef %1, i16 noundef zeroext 1466, i8 noundef zeroext %conv230)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call231)
  %tobool233.not = icmp eq i32 %call231, 0
  br i1 %tobool233.not, label %if.then234, label %if.end232.if.end236_crit_edge

if.end232.if.end236_crit_edge:                    ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end236

if.then234:                                       ; preds = %if.end232
  %24 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_data.i.i.i, align 4
  %bank.i = getelementptr inbounds %struct.rj54n1, ptr %25, i32 0, i32 14
  %26 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bank.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %27)
  %cmp.not.i = icmp eq i8 %27, 4
  br i1 %cmp.not.i, label %if.then234.do.body22.i_crit_edge, label %do.body.i

if.then234.do.body22.i_crit_edge:                 ; preds = %if.then234
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22.i

do.body.i:                                        ; preds = %if.then234
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_sensor_scale, %if.then6.i)) #9
          to label %do.end.i [label %if.then6.i], !srcloc !119

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i, ptr noundef nonnull @.str.21, i32 noundef 255, i32 noundef 4) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %do.body.i
  %call12.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext -1, i8 noundef zeroext 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %do.end.i.cleanup_crit_edge, label %if.end16.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %bank.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 4, ptr %bank.i, align 2
  br label %do.body22.i

do.body22.i:                                      ; preds = %if.end16.i, %if.then234.do.body22.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_sensor_scale, %if.then34.i)) #9
          to label %do.end40.i [label %if.then34.i], !srcloc !119

if.then34.i:                                      ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev35.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug294, ptr noundef %dev35.i, ptr noundef nonnull @.str.21, i32 noundef 21, i32 noundef 7) #9
  br label %do.end40.i

do.end40.i:                                       ; preds = %if.then34.i, %do.body22.i
  %call44.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 21, i8 noundef zeroext 7) #9
  br label %if.end236

if.end236:                                        ; preds = %do.end40.i, %if.end232.if.end236_crit_edge, %if.end226.if.end236_crit_edge, %if.end221.if.end236_crit_edge, %if.end216.if.end236_crit_edge, %if.end202.if.end236_crit_edge, %if.end196.if.end236_crit_edge, %if.end191.if.end236_crit_edge, %if.end186.if.end236_crit_edge, %if.end181.if.end236_crit_edge, %if.then147.if.end236_crit_edge
  %ret.12 = phi i32 [ %call231, %if.end232.if.end236_crit_edge ], [ %call44.i, %do.end40.i ], [ %call225, %if.end226.if.end236_crit_edge ], [ %call220, %if.end221.if.end236_crit_edge ], [ %call215, %if.end216.if.end236_crit_edge ], [ %ret.7, %if.end202.if.end236_crit_edge ], [ %call195, %if.end196.if.end236_crit_edge ], [ %call190, %if.end191.if.end236_crit_edge ], [ %call185, %if.end186.if.end236_crit_edge ], [ %call180, %if.end181.if.end236_crit_edge ], [ %ret.2, %if.then147.if.end236_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.12)
  %cmp237 = icmp slt i32 %ret.12, 0
  br i1 %cmp237, label %if.end236.cleanup_crit_edge, label %if.end240

if.end236.cleanup_crit_edge:                      ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end240:                                        ; preds = %if.end236
  tail call void @msleep(i32 noundef 230) #9
  %29 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %driver_data.i.i.i, align 4
  %bank.i455 = getelementptr inbounds %struct.rj54n1, ptr %30, i32 0, i32 14
  %31 = ptrtoint ptr %bank.i455 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bank.i455, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %32)
  %cmp.not.i457 = icmp eq i8 %32, 4
  br i1 %cmp.not.i457, label %if.end240.do.body22.i465_crit_edge, label %do.body.i458

if.end240.do.body22.i465_crit_edge:               ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22.i465

do.body.i458:                                     ; preds = %if.end240
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_sensor_scale, %if.then6.i460)) #9
          to label %do.end.i463 [label %if.then6.i460], !srcloc !119

if.then6.i460:                                    ; preds = %do.body.i458
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i459 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i459, ptr noundef nonnull @.str.21, i32 noundef 255, i32 noundef 4) #9
  br label %do.end.i463

do.end.i463:                                      ; preds = %if.then6.i460, %do.body.i458
  %call12.i461 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext -1, i8 noundef zeroext 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i461)
  %cmp13.i462 = icmp slt i32 %call12.i461, 0
  br i1 %cmp13.i462, label %do.end.i463.cleanup_crit_edge, label %if.end16.i464

do.end.i463.cleanup_crit_edge:                    ; preds = %do.end.i463
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16.i464:                                    ; preds = %do.end.i463
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %bank.i455 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 4, ptr %bank.i455, align 2
  br label %do.body22.i465

do.body22.i465:                                   ; preds = %if.end16.i464, %if.end240.do.body22.i465_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_sensor_scale, %if.then34.i467)) #9
          to label %reg_write.exit471 [label %if.then34.i467], !srcloc !119

if.then34.i467:                                   ; preds = %do.body22.i465
  call void @__sanitizer_cov_trace_pc() #11
  %dev35.i466 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug294, ptr noundef %dev35.i466, ptr noundef nonnull @.str.21, i32 noundef 21, i32 noundef 5) #9
  br label %reg_write.exit471

reg_write.exit471:                                ; preds = %if.then34.i467, %do.body22.i465
  %call44.i468 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 21, i8 noundef zeroext 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i468)
  %cmp242 = icmp slt i32 %call44.i468, 0
  br i1 %cmp242, label %reg_write.exit471.cleanup_crit_edge, label %if.end245

reg_write.exit471.cleanup_crit_edge:              ; preds = %reg_write.exit471
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end245:                                        ; preds = %reg_write.exit471
  call void @__sanitizer_cov_trace_pc() #11
  %mul246 = mul i32 %resize.2, %output_w.1
  %add247 = add i32 %mul246, 512
  %div248423 = lshr i32 %add247, 10
  %34 = ptrtoint ptr %in_w to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %div248423, ptr %in_w, align 4
  %mul249 = mul i32 %resize.2, %output_h.1
  %add250 = add i32 %mul249, 512
  %div251424 = lshr i32 %add250, 10
  %35 = ptrtoint ptr %in_h to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %div251424, ptr %in_h, align 4
  %36 = ptrtoint ptr %out_w to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %output_w.1, ptr %out_w, align 4
  %37 = ptrtoint ptr %out_h to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %output_h.1, ptr %out_h, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rj54n1_sensor_scale.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_sensor_scale, %if.then264)) #9
          to label %cleanup [label %if.then264], !srcloc !119

if.then264:                                       ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #11
  %dev265 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %38 = ptrtoint ptr %in_w to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %in_w, align 4
  %40 = ptrtoint ptr %in_h to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %in_h, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rj54n1_sensor_scale.__UNIQUE_ID_ddebug306, ptr noundef %dev265, ptr noundef nonnull @.str.30, i32 noundef %39, i32 noundef %41, i32 noundef %resize.2, i32 noundef %output_w.1, i32 noundef %output_h.1, i32 noundef %cond116) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then264, %if.end245, %reg_write.exit471.cleanup_crit_edge, %do.end.i463.cleanup_crit_edge, %if.end236.cleanup_crit_edge, %do.end.i.cleanup_crit_edge, %if.end104.cleanup_crit_edge, %if.end50.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end50.cleanup_crit_edge ], [ %ret.1, %if.end104.cleanup_crit_edge ], [ %ret.12, %if.end236.cleanup_crit_edge ], [ %call44.i468, %reg_write.exit471.cleanup_crit_edge ], [ %resize.2, %if.then264 ], [ %resize.2, %if.end245 ], [ %call12.i, %do.end.i.cleanup_crit_edge ], [ %call12.i461, %do.end.i463.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rj54n1_set_clock(ptr noundef %client) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %bank.i = getelementptr inbounds %struct.rj54n1, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bank.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %3)
  %cmp.not.i = icmp eq i8 %3, 7
  br i1 %cmp.not.i, label %entry.do.body22.i_crit_edge, label %do.body.i

entry.do.body22.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22.i

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_set_clock, %if.then6.i)) #9
          to label %do.end.i [label %if.then6.i], !srcloc !119

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i, ptr noundef nonnull @.str.21, i32 noundef 255, i32 noundef 7) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %do.body.i
  %call12.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -1, i8 noundef zeroext 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %do.end.i.if.end58.thread_crit_edge, label %if.end16.i

do.end.i.if.end58.thread_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.thread

if.end16.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %bank.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 7, ptr %bank.i, align 2
  br label %do.body22.i

do.body22.i:                                      ; preds = %if.end16.i, %entry.do.body22.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_set_clock, %if.then34.i)) #9
          to label %reg_write.exit [label %if.then34.i], !srcloc !119

if.then34.i:                                      ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev35.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug294, ptr noundef %dev35.i, ptr noundef nonnull @.str.21, i32 noundef 24, i32 noundef 144) #9
  br label %reg_write.exit

reg_write.exit:                                   ; preds = %if.then34.i, %do.body22.i
  %call44.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 24, i8 noundef zeroext -112) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool.not = icmp eq i32 %call44.i, 0
  br i1 %tobool.not, label %if.then, label %reg_write.exit.if.end58.thread_crit_edge

reg_write.exit.if.end58.thread_crit_edge:         ; preds = %reg_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.thread

if.then:                                          ; preds = %reg_write.exit
  %5 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i.i, align 4
  %bank.i119 = getelementptr inbounds %struct.rj54n1, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %bank.i119 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bank.i119, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %8)
  %cmp.not.i121 = icmp eq i8 %8, 7
  br i1 %cmp.not.i121, label %if.then.do.body22.i129_crit_edge, label %do.body.i122

if.then.do.body22.i129_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22.i129

do.body.i122:                                     ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_set_clock, %if.then6.i124)) #9
          to label %do.end.i127 [label %if.then6.i124], !srcloc !119

if.then6.i124:                                    ; preds = %do.body.i122
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i123 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i123, ptr noundef nonnull @.str.21, i32 noundef 255, i32 noundef 7) #9
  br label %do.end.i127

do.end.i127:                                      ; preds = %if.then6.i124, %do.body.i122
  %call12.i125 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -1, i8 noundef zeroext 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i125)
  %cmp13.i126 = icmp slt i32 %call12.i125, 0
  br i1 %cmp13.i126, label %do.end.i127.if.end58.thread_crit_edge, label %if.end16.i128

do.end.i127.if.end58.thread_crit_edge:            ; preds = %do.end.i127
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.thread

if.end16.i128:                                    ; preds = %do.end.i127
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %bank.i119 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 7, ptr %bank.i119, align 2
  br label %do.body22.i129

do.body22.i129:                                   ; preds = %if.end16.i128, %if.then.do.body22.i129_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_set_clock, %if.then34.i131)) #9
          to label %if.end [label %if.then34.i131], !srcloc !119

if.then34.i131:                                   ; preds = %do.body22.i129
  call void @__sanitizer_cov_trace_pc() #11
  %dev35.i130 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug294, ptr noundef %dev35.i130, ptr noundef nonnull @.str.21, i32 noundef 24, i32 noundef 128) #9
  br label %if.end

if.end:                                           ; preds = %if.then34.i131, %do.body22.i129
  %call44.i132 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 24, i8 noundef zeroext -128) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i132)
  %tobool3.not = icmp eq i32 %call44.i132, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end58.thread_crit_edge

if.end.if.end58.thread_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.thread

if.then4:                                         ; preds = %if.end
  %10 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i, align 4
  %bank.i137 = getelementptr inbounds %struct.rj54n1, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %bank.i137 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bank.i137, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %13)
  %cmp.not.i139 = icmp eq i8 %13, 7
  br i1 %cmp.not.i139, label %if.then4.do.body22.i147_crit_edge, label %do.body.i140

if.then4.do.body22.i147_crit_edge:                ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22.i147

do.body.i140:                                     ; preds = %if.then4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_set_clock, %if.then6.i142)) #9
          to label %do.end.i145 [label %if.then6.i142], !srcloc !119

if.then6.i142:                                    ; preds = %do.body.i140
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i141 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i141, ptr noundef nonnull @.str.21, i32 noundef 255, i32 noundef 7) #9
  br label %do.end.i145

do.end.i145:                                      ; preds = %if.then6.i142, %do.body.i140
  %call12.i143 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -1, i8 noundef zeroext 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i143)
  %cmp13.i144 = icmp slt i32 %call12.i143, 0
  br i1 %cmp13.i144, label %do.end.i145.if.end58.thread_crit_edge, label %if.end16.i146

do.end.i145.if.end58.thread_crit_edge:            ; preds = %do.end.i145
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.thread

if.end16.i146:                                    ; preds = %do.end.i145
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %bank.i137 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 7, ptr %bank.i137, align 2
  br label %do.body22.i147

do.body22.i147:                                   ; preds = %if.end16.i146, %if.then4.do.body22.i147_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_set_clock, %if.then34.i149)) #9
          to label %if.end6 [label %if.then34.i149], !srcloc !119

if.then34.i149:                                   ; preds = %do.body22.i147
  call void @__sanitizer_cov_trace_pc() #11
  %dev35.i148 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug294, ptr noundef %dev35.i148, ptr noundef nonnull @.str.21, i32 noundef 1, i32 noundef 2) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then34.i149, %do.body22.i147
  %call44.i150 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 1, i8 noundef zeroext 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i150)
  %tobool7.not = icmp eq i32 %call44.i150, 0
  br i1 %tobool7.not, label %if.then8, label %if.end6.if.end58.thread_crit_edge

if.end6.if.end58.thread_crit_edge:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.thread

if.then8:                                         ; preds = %if.end6
  %15 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i.i.i, align 4
  %bank.i155 = getelementptr inbounds %struct.rj54n1, ptr %16, i32 0, i32 14
  %17 = ptrtoint ptr %bank.i155 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bank.i155, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %18)
  %cmp.not.i157 = icmp eq i8 %18, 7
  br i1 %cmp.not.i157, label %if.then8.do.body22.i165_crit_edge, label %do.body.i158

if.then8.do.body22.i165_crit_edge:                ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22.i165

do.body.i158:                                     ; preds = %if.then8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_set_clock, %if.then6.i160)) #9
          to label %do.end.i163 [label %if.then6.i160], !srcloc !119

if.then6.i160:                                    ; preds = %do.body.i158
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i159 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i159, ptr noundef nonnull @.str.21, i32 noundef 255, i32 noundef 7) #9
  br label %do.end.i163

do.end.i163:                                      ; preds = %if.then6.i160, %do.body.i158
  %call12.i161 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -1, i8 noundef zeroext 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i161)
  %cmp13.i162 = icmp slt i32 %call12.i161, 0
  br i1 %cmp13.i162, label %do.end.i163.if.end58.thread_crit_edge, label %if.end16.i164

do.end.i163.if.end58.thread_crit_edge:            ; preds = %do.end.i163
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.thread

if.end16.i164:                                    ; preds = %do.end.i163
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %bank.i155 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 7, ptr %bank.i155, align 2
  br label %do.body22.i165

do.body22.i165:                                   ; preds = %if.end16.i164, %if.then8.do.body22.i165_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_set_clock, %if.then34.i167)) #9
          to label %if.end10 [label %if.then34.i167], !srcloc !119

if.then34.i167:                                   ; preds = %do.body22.i165
  call void @__sanitizer_cov_trace_pc() #11
  %dev35.i166 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug294, ptr noundef %dev35.i166, ptr noundef nonnull @.str.21, i32 noundef 2, i32 noundef 49) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then34.i167, %do.body22.i165
  %call44.i168 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 2, i8 noundef zeroext 49) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i168)
  %tobool11.not = icmp eq i32 %call44.i168, 0
  br i1 %tobool11.not, label %if.end14, label %if.end10.if.end58.thread_crit_edge

if.end10.if.end58.thread_crit_edge:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.thread

if.end14:                                         ; preds = %if.end10
  %clk_div = getelementptr inbounds %struct.rj54n1, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %clk_div to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %clk_div, align 4
  %call13 = tail call fastcc i32 @reg_write(ptr noundef %client, i16 noundef zeroext 1798, i8 noundef zeroext %21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool15.not = icmp eq i32 %call13, 0
  br i1 %tobool15.not, label %if.end19, label %if.end14.if.end58.thread_crit_edge

if.end14.if.end58.thread_crit_edge:               ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.thread

if.end19:                                         ; preds = %if.end14
  %ratio_t = getelementptr inbounds %struct.rj54n1, ptr %1, i32 0, i32 5, i32 1
  %22 = ptrtoint ptr %ratio_t to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ratio_t, align 1
  %call18 = tail call fastcc i32 @reg_write(ptr noundef %client, i16 noundef zeroext 1799, i8 noundef zeroext %23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool20.not = icmp eq i32 %call18, 0
  br i1 %tobool20.not, label %if.end24, label %if.end19.if.end58.thread_crit_edge

if.end19.if.end58.thread_crit_edge:               ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.thread

if.end24:                                         ; preds = %if.end19
  %ratio_r = getelementptr inbounds %struct.rj54n1, ptr %1, i32 0, i32 5, i32 2
  %24 = ptrtoint ptr %ratio_r to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ratio_r, align 2
  %call23 = tail call fastcc i32 @reg_write(ptr noundef %client, i16 noundef zeroext 1800, i8 noundef zeroext %25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool25.not = icmp eq i32 %call23, 0
  br i1 %tobool25.not, label %if.then26, label %if.end24.if.end58.thread_crit_edge

if.end24.if.end58.thread_crit_edge:               ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.thread

if.then26:                                        ; preds = %if.end24
  %26 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver_data.i.i.i, align 4
  %bank.i173 = getelementptr inbounds %struct.rj54n1, ptr %27, i32 0, i32 14
  %28 = ptrtoint ptr %bank.i173 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bank.i173, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %29)
  %cmp.not.i175 = icmp eq i8 %29, 7
  br i1 %cmp.not.i175, label %if.then26.do.body22.i183_crit_edge, label %do.body.i176

if.then26.do.body22.i183_crit_edge:               ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22.i183

do.body.i176:                                     ; preds = %if.then26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_set_clock, %if.then6.i178)) #9
          to label %do.end.i181 [label %if.then6.i178], !srcloc !119

if.then6.i178:                                    ; preds = %do.body.i176
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i177 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i177, ptr noundef nonnull @.str.21, i32 noundef 255, i32 noundef 7) #9
  br label %do.end.i181

do.end.i181:                                      ; preds = %if.then6.i178, %do.body.i176
  %call12.i179 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -1, i8 noundef zeroext 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i179)
  %cmp13.i180 = icmp slt i32 %call12.i179, 0
  br i1 %cmp13.i180, label %do.end.i181.if.end58.thread_crit_edge, label %if.end16.i182

do.end.i181.if.end58.thread_crit_edge:            ; preds = %do.end.i181
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.thread

if.end16.i182:                                    ; preds = %do.end.i181
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %bank.i173 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 7, ptr %bank.i173, align 2
  br label %do.body22.i183

do.body22.i183:                                   ; preds = %if.end16.i182, %if.then26.do.body22.i183_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_set_clock, %if.then34.i185)) #9
          to label %if.end28 [label %if.then34.i185], !srcloc !119

if.then34.i185:                                   ; preds = %do.body22.i183
  call void @__sanitizer_cov_trace_pc() #11
  %dev35.i184 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug294, ptr noundef %dev35.i184, ptr noundef nonnull @.str.21, i32 noundef 9, i32 noundef 3) #9
  br label %if.end28

if.end28:                                         ; preds = %if.then34.i185, %do.body22.i183
  %call44.i186 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 9, i8 noundef zeroext 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i186)
  %tobool29.not = icmp eq i32 %call44.i186, 0
  br i1 %tobool29.not, label %if.then30, label %if.end28.if.end58.thread_crit_edge

if.end28.if.end58.thread_crit_edge:               ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.thread

if.then30:                                        ; preds = %if.end28
  %31 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %driver_data.i.i.i, align 4
  %bank.i191 = getelementptr inbounds %struct.rj54n1, ptr %32, i32 0, i32 14
  %33 = ptrtoint ptr %bank.i191 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bank.i191, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %34)
  %cmp.not.i193 = icmp eq i8 %34, 7
  br i1 %cmp.not.i193, label %if.then30.do.body22.i201_crit_edge, label %do.body.i194

if.then30.do.body22.i201_crit_edge:               ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22.i201

do.body.i194:                                     ; preds = %if.then30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_set_clock, %if.then6.i196)) #9
          to label %do.end.i199 [label %if.then6.i196], !srcloc !119

if.then6.i196:                                    ; preds = %do.body.i194
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i195 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i195, ptr noundef nonnull @.str.21, i32 noundef 255, i32 noundef 7) #9
  br label %do.end.i199

do.end.i199:                                      ; preds = %if.then6.i196, %do.body.i194
  %call12.i197 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -1, i8 noundef zeroext 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i197)
  %cmp13.i198 = icmp slt i32 %call12.i197, 0
  br i1 %cmp13.i198, label %do.end.i199.if.end58.thread_crit_edge, label %if.end16.i200

do.end.i199.if.end58.thread_crit_edge:            ; preds = %do.end.i199
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.thread

if.end16.i200:                                    ; preds = %do.end.i199
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %bank.i191 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 7, ptr %bank.i191, align 2
  br label %do.body22.i201

do.body22.i201:                                   ; preds = %if.end16.i200, %if.then30.do.body22.i201_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_set_clock, %if.then34.i203)) #9
          to label %if.end32 [label %if.then34.i203], !srcloc !119

if.then34.i203:                                   ; preds = %do.body22.i201
  call void @__sanitizer_cov_trace_pc() #11
  %dev35.i202 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug294, ptr noundef %dev35.i202, ptr noundef nonnull @.str.21, i32 noundef 16, i32 noundef 0) #9
  br label %if.end32

if.end32:                                         ; preds = %if.then34.i203, %do.body22.i201
  %call44.i204 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 16, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i204)
  %tobool33.not = icmp eq i32 %call44.i204, 0
  br i1 %tobool33.not, label %if.end37, label %if.end32.if.end58.thread_crit_edge

if.end32.if.end58.thread_crit_edge:               ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.thread

if.end37:                                         ; preds = %if.end32
  %ratio_op = getelementptr inbounds %struct.rj54n1, ptr %1, i32 0, i32 5, i32 3
  %36 = ptrtoint ptr %ratio_op to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ratio_op, align 1
  %call36 = tail call fastcc i32 @reg_write(ptr noundef %client, i16 noundef zeroext 1809, i8 noundef zeroext %37)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool38.not = icmp eq i32 %call36, 0
  br i1 %tobool38.not, label %if.end42, label %if.end37.if.end58.thread_crit_edge

if.end37.if.end58.thread_crit_edge:               ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.thread

if.end42:                                         ; preds = %if.end37
  %ratio_o = getelementptr inbounds %struct.rj54n1, ptr %1, i32 0, i32 5, i32 4
  %38 = ptrtoint ptr %ratio_o to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ratio_o, align 4
  %call41 = tail call fastcc i32 @reg_write(ptr noundef %client, i16 noundef zeroext 1810, i8 noundef zeroext %39)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool43.not = icmp eq i32 %call41, 0
  br i1 %tobool43.not, label %if.then44, label %if.end42.if.end58.thread_crit_edge

if.end42.if.end58.thread_crit_edge:               ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.thread

if.then44:                                        ; preds = %if.end42
  %40 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %driver_data.i.i.i, align 4
  %bank.i209 = getelementptr inbounds %struct.rj54n1, ptr %41, i32 0, i32 14
  %42 = ptrtoint ptr %bank.i209 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %bank.i209, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %43)
  %cmp.not.i211 = icmp eq i8 %43, 7
  br i1 %cmp.not.i211, label %if.then44.do.body22.i219_crit_edge, label %do.body.i212

if.then44.do.body22.i219_crit_edge:               ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22.i219

do.body.i212:                                     ; preds = %if.then44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_set_clock, %if.then6.i214)) #9
          to label %do.end.i217 [label %if.then6.i214], !srcloc !119

if.then6.i214:                                    ; preds = %do.body.i212
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i213 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i213, ptr noundef nonnull @.str.21, i32 noundef 255, i32 noundef 7) #9
  br label %do.end.i217

do.end.i217:                                      ; preds = %if.then6.i214, %do.body.i212
  %call12.i215 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -1, i8 noundef zeroext 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i215)
  %cmp13.i216 = icmp slt i32 %call12.i215, 0
  br i1 %cmp13.i216, label %do.end.i217.if.end58.thread_crit_edge, label %if.end16.i218

do.end.i217.if.end58.thread_crit_edge:            ; preds = %do.end.i217
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.thread

if.end16.i218:                                    ; preds = %do.end.i217
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %bank.i209 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 7, ptr %bank.i209, align 2
  br label %do.body22.i219

do.body22.i219:                                   ; preds = %if.end16.i218, %if.then44.do.body22.i219_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_set_clock, %if.then34.i221)) #9
          to label %if.end46 [label %if.then34.i221], !srcloc !119

if.then34.i221:                                   ; preds = %do.body22.i219
  call void @__sanitizer_cov_trace_pc() #11
  %dev35.i220 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug294, ptr noundef %dev35.i220, ptr noundef nonnull @.str.21, i32 noundef 19, i32 noundef 1) #9
  br label %if.end46

if.end46:                                         ; preds = %if.then34.i221, %do.body22.i219
  %call44.i222 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 19, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i222)
  %tobool47.not = icmp eq i32 %call44.i222, 0
  br i1 %tobool47.not, label %if.then48, label %if.end46.if.end58.thread_crit_edge

if.end46.if.end58.thread_crit_edge:               ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.thread

if.then48:                                        ; preds = %if.end46
  %45 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %driver_data.i.i.i, align 4
  %bank.i227 = getelementptr inbounds %struct.rj54n1, ptr %46, i32 0, i32 14
  %47 = ptrtoint ptr %bank.i227 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bank.i227, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %48)
  %cmp.not.i229 = icmp eq i8 %48, 7
  br i1 %cmp.not.i229, label %if.then48.do.body22.i237_crit_edge, label %do.body.i230

if.then48.do.body22.i237_crit_edge:               ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22.i237

do.body.i230:                                     ; preds = %if.then48
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_set_clock, %if.then6.i232)) #9
          to label %do.end.i235 [label %if.then6.i232], !srcloc !119

if.then6.i232:                                    ; preds = %do.body.i230
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i231 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i231, ptr noundef nonnull @.str.21, i32 noundef 255, i32 noundef 7) #9
  br label %do.end.i235

do.end.i235:                                      ; preds = %if.then6.i232, %do.body.i230
  %call12.i233 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -1, i8 noundef zeroext 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i233)
  %cmp13.i234 = icmp slt i32 %call12.i233, 0
  br i1 %cmp13.i234, label %do.end.i235.if.end58.thread_crit_edge, label %if.end16.i236

do.end.i235.if.end58.thread_crit_edge:            ; preds = %do.end.i235
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.thread

if.end16.i236:                                    ; preds = %do.end.i235
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %bank.i227 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 7, ptr %bank.i227, align 2
  br label %do.body22.i237

do.body22.i237:                                   ; preds = %if.end16.i236, %if.then48.do.body22.i237_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_set_clock, %if.then34.i239)) #9
          to label %if.end50 [label %if.then34.i239], !srcloc !119

if.then34.i239:                                   ; preds = %do.body22.i237
  call void @__sanitizer_cov_trace_pc() #11
  %dev35.i238 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug294, ptr noundef %dev35.i238, ptr noundef nonnull @.str.21, i32 noundef 0, i32 noundef 2) #9
  br label %if.end50

if.end50:                                         ; preds = %if.then34.i239, %do.body22.i237
  %call44.i240 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i240)
  %tobool51.not = icmp eq i32 %call44.i240, 0
  br i1 %tobool51.not, label %if.then52, label %if.end50.if.end58.thread_crit_edge

if.end50.if.end58.thread_crit_edge:               ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.thread

if.then52:                                        ; preds = %if.end50
  %50 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %driver_data.i.i.i, align 4
  %bank.i245 = getelementptr inbounds %struct.rj54n1, ptr %51, i32 0, i32 14
  %52 = ptrtoint ptr %bank.i245 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %bank.i245, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %53)
  %cmp.not.i247 = icmp eq i8 %53, 7
  br i1 %cmp.not.i247, label %if.then52.do.body22.i255_crit_edge, label %do.body.i248

if.then52.do.body22.i255_crit_edge:               ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22.i255

do.body.i248:                                     ; preds = %if.then52
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_set_clock, %if.then6.i250)) #9
          to label %do.end.i253 [label %if.then6.i250], !srcloc !119

if.then6.i250:                                    ; preds = %do.body.i248
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i249 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i249, ptr noundef nonnull @.str.21, i32 noundef 255, i32 noundef 7) #9
  br label %do.end.i253

do.end.i253:                                      ; preds = %if.then6.i250, %do.body.i248
  %call12.i251 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -1, i8 noundef zeroext 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i251)
  %cmp13.i252 = icmp slt i32 %call12.i251, 0
  br i1 %cmp13.i252, label %do.end.i253.if.end58.thread_crit_edge, label %if.end16.i254

do.end.i253.if.end58.thread_crit_edge:            ; preds = %do.end.i253
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.thread

if.end16.i254:                                    ; preds = %do.end.i253
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %bank.i245 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 7, ptr %bank.i245, align 2
  br label %do.body22.i255

do.body22.i255:                                   ; preds = %if.end16.i254, %if.then52.do.body22.i255_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_set_clock, %if.then34.i257)) #9
          to label %if.end54 [label %if.then34.i257], !srcloc !119

if.then34.i257:                                   ; preds = %do.body22.i255
  call void @__sanitizer_cov_trace_pc() #11
  %dev35.i256 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug294, ptr noundef %dev35.i256, ptr noundef nonnull @.str.21, i32 noundef 24, i32 noundef 132) #9
  br label %if.end54

if.end54:                                         ; preds = %if.then34.i257, %do.body22.i255
  %call44.i258 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 24, i8 noundef zeroext -124) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i258)
  %tobool55.not = icmp eq i32 %call44.i258, 0
  br i1 %tobool55.not, label %if.then56, label %if.end54.if.end58.thread_crit_edge

if.end54.if.end58.thread_crit_edge:               ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.thread

if.then56:                                        ; preds = %if.end54
  %55 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %driver_data.i.i.i, align 4
  %bank.i263 = getelementptr inbounds %struct.rj54n1, ptr %56, i32 0, i32 14
  %57 = ptrtoint ptr %bank.i263 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %bank.i263, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %58)
  %cmp.not.i265 = icmp eq i8 %58, 7
  br i1 %cmp.not.i265, label %if.then56.do.body22.i273_crit_edge, label %do.body.i266

if.then56.do.body22.i273_crit_edge:               ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22.i273

do.body.i266:                                     ; preds = %if.then56
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_set_clock, %if.then6.i268)) #9
          to label %do.end.i271 [label %if.then6.i268], !srcloc !119

if.then6.i268:                                    ; preds = %do.body.i266
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i267 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i267, ptr noundef nonnull @.str.21, i32 noundef 255, i32 noundef 7) #9
  br label %do.end.i271

do.end.i271:                                      ; preds = %if.then6.i268, %do.body.i266
  %call12.i269 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -1, i8 noundef zeroext 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i269)
  %cmp13.i270 = icmp slt i32 %call12.i269, 0
  br i1 %cmp13.i270, label %do.end.i271.if.end58.thread_crit_edge, label %if.end16.i272

do.end.i271.if.end58.thread_crit_edge:            ; preds = %do.end.i271
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.thread

if.end16.i272:                                    ; preds = %do.end.i271
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %bank.i263 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 7, ptr %bank.i263, align 2
  br label %do.body22.i273

do.body22.i273:                                   ; preds = %if.end16.i272, %if.then56.do.body22.i273_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_set_clock, %if.then34.i275)) #9
          to label %if.end58 [label %if.then34.i275], !srcloc !119

if.then34.i275:                                   ; preds = %do.body22.i273
  call void @__sanitizer_cov_trace_pc() #11
  %dev35.i274 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug294, ptr noundef %dev35.i274, ptr noundef nonnull @.str.21, i32 noundef 4, i32 noundef 1) #9
  br label %if.end58

if.end58.thread:                                  ; preds = %do.end.i271.if.end58.thread_crit_edge, %if.end54.if.end58.thread_crit_edge, %do.end.i253.if.end58.thread_crit_edge, %if.end50.if.end58.thread_crit_edge, %do.end.i235.if.end58.thread_crit_edge, %if.end46.if.end58.thread_crit_edge, %do.end.i217.if.end58.thread_crit_edge, %if.end42.if.end58.thread_crit_edge, %if.end37.if.end58.thread_crit_edge, %if.end32.if.end58.thread_crit_edge, %do.end.i199.if.end58.thread_crit_edge, %if.end28.if.end58.thread_crit_edge, %do.end.i181.if.end58.thread_crit_edge, %if.end24.if.end58.thread_crit_edge, %if.end19.if.end58.thread_crit_edge, %if.end14.if.end58.thread_crit_edge, %if.end10.if.end58.thread_crit_edge, %do.end.i163.if.end58.thread_crit_edge, %if.end6.if.end58.thread_crit_edge, %do.end.i145.if.end58.thread_crit_edge, %if.end.if.end58.thread_crit_edge, %do.end.i127.if.end58.thread_crit_edge, %reg_write.exit.if.end58.thread_crit_edge, %do.end.i.if.end58.thread_crit_edge
  %ret.13.ph = phi i32 [ %call12.i269, %do.end.i271.if.end58.thread_crit_edge ], [ %call44.i258, %if.end54.if.end58.thread_crit_edge ], [ %call12.i251, %do.end.i253.if.end58.thread_crit_edge ], [ %call44.i240, %if.end50.if.end58.thread_crit_edge ], [ %call12.i233, %do.end.i235.if.end58.thread_crit_edge ], [ %call44.i222, %if.end46.if.end58.thread_crit_edge ], [ %call12.i215, %do.end.i217.if.end58.thread_crit_edge ], [ %call41, %if.end42.if.end58.thread_crit_edge ], [ %call36, %if.end37.if.end58.thread_crit_edge ], [ %call44.i204, %if.end32.if.end58.thread_crit_edge ], [ %call12.i197, %do.end.i199.if.end58.thread_crit_edge ], [ %call44.i186, %if.end28.if.end58.thread_crit_edge ], [ %call12.i179, %do.end.i181.if.end58.thread_crit_edge ], [ %call23, %if.end24.if.end58.thread_crit_edge ], [ %call18, %if.end19.if.end58.thread_crit_edge ], [ %call13, %if.end14.if.end58.thread_crit_edge ], [ %call44.i168, %if.end10.if.end58.thread_crit_edge ], [ %call12.i161, %do.end.i163.if.end58.thread_crit_edge ], [ %call44.i150, %if.end6.if.end58.thread_crit_edge ], [ %call12.i143, %do.end.i145.if.end58.thread_crit_edge ], [ %call44.i132, %if.end.if.end58.thread_crit_edge ], [ %call12.i125, %do.end.i127.if.end58.thread_crit_edge ], [ %call44.i, %reg_write.exit.if.end58.thread_crit_edge ], [ %call12.i, %do.end.i.if.end58.thread_crit_edge ]
  tail call void @msleep(i32 noundef 10) #9
  br label %if.end66

if.end58:                                         ; preds = %if.then34.i275, %do.body22.i273
  %call44.i276 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 4, i8 noundef zeroext 1) #9
  tail call void @msleep(i32 noundef 10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i276)
  %tobool59.not = icmp eq i32 %call44.i276, 0
  br i1 %tobool59.not, label %if.then60, label %if.end58.if.end66_crit_edge

if.end58.if.end66_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then60:                                        ; preds = %if.end58
  %60 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %driver_data.i.i.i, align 4
  %bank.i281 = getelementptr inbounds %struct.rj54n1, ptr %61, i32 0, i32 14
  %62 = ptrtoint ptr %bank.i281 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %bank.i281, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %63)
  %cmp.not.i283 = icmp eq i8 %63, 7
  br i1 %cmp.not.i283, label %if.then60.do.body22.i291_crit_edge, label %do.body.i284

if.then60.do.body22.i291_crit_edge:               ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22.i291

do.body.i284:                                     ; preds = %if.then60
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_set_clock, %if.then6.i286)) #9
          to label %do.end.i289 [label %if.then6.i286], !srcloc !119

if.then6.i286:                                    ; preds = %do.body.i284
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i285 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i285, ptr noundef nonnull @.str.21, i32 noundef 255, i32 noundef 7) #9
  br label %do.end.i289

do.end.i289:                                      ; preds = %if.then6.i286, %do.body.i284
  %call12.i287 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -1, i8 noundef zeroext 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i287)
  %cmp13.i288 = icmp slt i32 %call12.i287, 0
  br i1 %cmp13.i288, label %do.end.i289.do.end_crit_edge, label %if.end16.i290

do.end.i289.do.end_crit_edge:                     ; preds = %do.end.i289
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end16.i290:                                    ; preds = %do.end.i289
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %bank.i281 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 7, ptr %bank.i281, align 2
  br label %do.body22.i291

do.body22.i291:                                   ; preds = %if.end16.i290, %if.then60.do.body22.i291_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_set_clock, %if.then34.i293)) #9
          to label %if.end62 [label %if.then34.i293], !srcloc !119

if.then34.i293:                                   ; preds = %do.body22.i291
  call void @__sanitizer_cov_trace_pc() #11
  %dev35.i292 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug294, ptr noundef %dev35.i292, ptr noundef nonnull @.str.21, i32 noundef 23, i32 noundef 1) #9
  br label %if.end62

if.end62:                                         ; preds = %if.then34.i293, %do.body22.i291
  %call44.i294 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 23, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i294)
  %tobool63.not = icmp eq i32 %call44.i294, 0
  br i1 %tobool63.not, label %if.then64, label %if.end62.if.end66_crit_edge

if.end62.if.end66_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then64:                                        ; preds = %if.end62
  %65 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %driver_data.i.i.i, align 4
  %bank.i299 = getelementptr inbounds %struct.rj54n1, ptr %66, i32 0, i32 14
  %67 = ptrtoint ptr %bank.i299 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %bank.i299, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %68)
  %cmp.not.i300 = icmp eq i8 %68, 7
  br i1 %cmp.not.i300, label %if.then64.if.end21.i_crit_edge, label %do.body.i301

if.then64.if.end21.i_crit_edge:                   ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

do.body.i301:                                     ; preds = %if.then64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_read.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_set_clock, %if.then6.i303)) #9
          to label %do.end.i306 [label %if.then6.i303], !srcloc !119

if.then6.i303:                                    ; preds = %do.body.i301
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i302 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_read.__UNIQUE_ID_ddebug292, ptr noundef %dev.i302, ptr noundef nonnull @.str.21, i32 noundef 255, i32 noundef 7) #9
  br label %do.end.i306

do.end.i306:                                      ; preds = %if.then6.i303, %do.body.i301
  %call12.i304 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -1, i8 noundef zeroext 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i304)
  %cmp13.i305 = icmp slt i32 %call12.i304, 0
  br i1 %cmp13.i305, label %do.end.i306.do.end_crit_edge, label %if.end16.i307

do.end.i306.do.end_crit_edge:                     ; preds = %do.end.i306
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end16.i307:                                    ; preds = %do.end.i306
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %bank.i299 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 7, ptr %bank.i299, align 2
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end16.i307, %if.then64.if.end21.i_crit_edge
  %call24.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 23) #9
  br label %if.end66

if.end66:                                         ; preds = %if.end21.i, %if.end62.if.end66_crit_edge, %if.end58.if.end66_crit_edge, %if.end58.thread
  %ret.15 = phi i32 [ %call44.i294, %if.end62.if.end66_crit_edge ], [ %call24.i, %if.end21.i ], [ %ret.13.ph, %if.end58.thread ], [ %call44.i276, %if.end58.if.end66_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.15)
  %cmp.not = icmp eq i32 %ret.15, 1
  br i1 %cmp.not, label %if.end68, label %if.end66.do.end_crit_edge

if.end66.do.end_crit_edge:                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %if.end66.do.end_crit_edge, %do.end.i306.do.end_crit_edge, %do.end.i289.do.end_crit_edge
  %ret.15362 = phi i32 [ %ret.15, %if.end66.do.end_crit_edge ], [ %call12.i304, %do.end.i306.do.end_crit_edge ], [ %call12.i287, %do.end.i289.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %ret.15362) #12
  br label %cleanup

if.end68:                                         ; preds = %if.end66
  %70 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %driver_data.i.i.i, align 4
  %bank.i.i = getelementptr inbounds %struct.rj54n1, ptr %71, i32 0, i32 14
  %72 = ptrtoint ptr %bank.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %bank.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %73)
  %cmp.not.i.i = icmp eq i8 %73, 7
  br i1 %cmp.not.i.i, label %if.end68.reg_read.exit.i_crit_edge, label %do.body.i.i

if.end68.reg_read.exit.i_crit_edge:               ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %reg_read.exit.i

do.body.i.i:                                      ; preds = %if.end68
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_read.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_set_clock, %if.then6.i.i)) #9
          to label %do.end.i.i [label %if.then6.i.i], !srcloc !119

if.then6.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_read.__UNIQUE_ID_ddebug292, ptr noundef %dev.i.i, ptr noundef nonnull @.str.21, i32 noundef 255, i32 noundef 7) #9
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then6.i.i, %do.body.i.i
  %call12.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -1, i8 noundef zeroext 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp13.i.i = icmp slt i32 %call12.i.i, 0
  br i1 %cmp13.i.i, label %do.end.i.i.cleanup_crit_edge, label %if.end16.i.i

do.end.i.i.cleanup_crit_edge:                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16.i.i:                                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %bank.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 7, ptr %bank.i.i, align 2
  br label %reg_read.exit.i

reg_read.exit.i:                                  ; preds = %if.end16.i.i, %if.end68.reg_read.exit.i_crit_edge
  %call24.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i)
  %cmp.i = icmp slt i32 %call24.i.i, 0
  br i1 %cmp.i, label %reg_read.exit.i.cleanup_crit_edge, label %reg_set.exit

reg_read.exit.i.cleanup_crit_edge:                ; preds = %reg_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

reg_set.exit:                                     ; preds = %reg_read.exit.i
  %75 = trunc i32 %call24.i.i to i8
  %conv4.i = or i8 %75, 1
  %call5.i = tail call fastcc i32 @reg_write(ptr noundef %client, i16 noundef zeroext 1808, i8 noundef zeroext %conv4.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool70.not = icmp eq i32 %call5.i, 0
  br i1 %tobool70.not, label %if.then71, label %reg_set.exit.cleanup_crit_edge

reg_set.exit.cleanup_crit_edge:                   ; preds = %reg_set.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then71:                                        ; preds = %reg_set.exit
  %76 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %driver_data.i.i.i, align 4
  %bank.i311 = getelementptr inbounds %struct.rj54n1, ptr %77, i32 0, i32 14
  %78 = ptrtoint ptr %bank.i311 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %bank.i311, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %79)
  %cmp.not.i313 = icmp eq i8 %79, 7
  br i1 %cmp.not.i313, label %if.then71.do.body22.i321_crit_edge, label %do.body.i314

if.then71.do.body22.i321_crit_edge:               ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22.i321

do.body.i314:                                     ; preds = %if.then71
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_set_clock, %if.then6.i316)) #9
          to label %do.end.i319 [label %if.then6.i316], !srcloc !119

if.then6.i316:                                    ; preds = %do.body.i314
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i315 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i315, ptr noundef nonnull @.str.21, i32 noundef 255, i32 noundef 7) #9
  br label %do.end.i319

do.end.i319:                                      ; preds = %if.then6.i316, %do.body.i314
  %call12.i317 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -1, i8 noundef zeroext 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i317)
  %cmp13.i318 = icmp slt i32 %call12.i317, 0
  br i1 %cmp13.i318, label %do.end.i319.cleanup_crit_edge, label %if.end16.i320

do.end.i319.cleanup_crit_edge:                    ; preds = %do.end.i319
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16.i320:                                    ; preds = %do.end.i319
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %bank.i311 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 7, ptr %bank.i311, align 2
  br label %do.body22.i321

do.body22.i321:                                   ; preds = %if.end16.i320, %if.then71.do.body22.i321_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_set_clock, %if.then34.i323)) #9
          to label %do.end40.i325 [label %if.then34.i323], !srcloc !119

if.then34.i323:                                   ; preds = %do.body22.i321
  call void @__sanitizer_cov_trace_pc() #11
  %dev35.i322 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug294, ptr noundef %dev35.i322, ptr noundef nonnull @.str.21, i32 noundef 19, i32 noundef 1) #9
  br label %do.end40.i325

do.end40.i325:                                    ; preds = %if.then34.i323, %do.body22.i321
  %call44.i324 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 19, i8 noundef zeroext 1) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end40.i325, %do.end.i319.cleanup_crit_edge, %reg_set.exit.cleanup_crit_edge, %reg_read.exit.i.cleanup_crit_edge, %do.end.i.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %call5.i, %reg_set.exit.cleanup_crit_edge ], [ %call44.i324, %do.end40.i325 ], [ %call12.i317, %do.end.i319.cleanup_crit_edge ], [ %call12.i.i, %do.end.i.i.cleanup_crit_edge ], [ %call24.i.i, %reg_read.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rj54n1_commit(ptr noundef %client) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %bank.i = getelementptr inbounds %struct.rj54n1, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bank.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp.not.i = icmp eq i8 %3, 4
  br i1 %cmp.not.i, label %entry.do.body22.i_crit_edge, label %do.body.i

entry.do.body22.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22.i

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_commit, %if.then6.i)) #9
          to label %do.end.i [label %if.then6.i], !srcloc !119

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i, ptr noundef nonnull @.str.21, i32 noundef 255, i32 noundef 4) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %do.body.i
  %call12.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -1, i8 noundef zeroext 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %reg_write.exit.thread, label %if.end16.i

reg_write.exit.thread:                            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @msleep(i32 noundef 10) #9
  br label %if.end

if.end16.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %bank.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %bank.i, align 2
  br label %do.body22.i

do.body22.i:                                      ; preds = %if.end16.i, %entry.do.body22.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_commit, %if.then34.i)) #9
          to label %reg_write.exit [label %if.then34.i], !srcloc !119

if.then34.i:                                      ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev35.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug294, ptr noundef %dev35.i, ptr noundef nonnull @.str.21, i32 noundef 40, i32 noundef 1) #9
  br label %reg_write.exit

reg_write.exit:                                   ; preds = %if.then34.i, %do.body22.i
  %call44.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 40, i8 noundef zeroext 1) #9
  tail call void @msleep(i32 noundef 10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool.not = icmp eq i32 %call44.i, 0
  br i1 %tobool.not, label %if.then, label %reg_write.exit.if.end_crit_edge

reg_write.exit.if.end_crit_edge:                  ; preds = %reg_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %reg_write.exit
  %5 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %bank.i5 = getelementptr inbounds %struct.rj54n1, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %bank.i5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bank.i5, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %8)
  %cmp.not.i7 = icmp eq i8 %8, 4
  br i1 %cmp.not.i7, label %if.then.do.body22.i15_crit_edge, label %do.body.i8

if.then.do.body22.i15_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22.i15

do.body.i8:                                       ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_commit, %if.then6.i10)) #9
          to label %do.end.i13 [label %if.then6.i10], !srcloc !119

if.then6.i10:                                     ; preds = %do.body.i8
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i9 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i9, ptr noundef nonnull @.str.21, i32 noundef 255, i32 noundef 4) #9
  br label %do.end.i13

do.end.i13:                                       ; preds = %if.then6.i10, %do.body.i8
  %call12.i11 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -1, i8 noundef zeroext 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i11)
  %cmp13.i12 = icmp slt i32 %call12.i11, 0
  br i1 %cmp13.i12, label %do.end.i13.if.end_crit_edge, label %if.end16.i14

do.end.i13.if.end_crit_edge:                      ; preds = %do.end.i13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end16.i14:                                     ; preds = %do.end.i13
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %bank.i5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 4, ptr %bank.i5, align 2
  br label %do.body22.i15

do.body22.i15:                                    ; preds = %if.end16.i14, %if.then.do.body22.i15_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_commit, %if.then34.i17)) #9
          to label %do.end40.i19 [label %if.then34.i17], !srcloc !119

if.then34.i17:                                    ; preds = %do.body22.i15
  call void @__sanitizer_cov_trace_pc() #11
  %dev35.i16 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug294, ptr noundef %dev35.i16, ptr noundef nonnull @.str.21, i32 noundef 40, i32 noundef 0) #9
  br label %do.end40.i19

do.end40.i19:                                     ; preds = %if.then34.i17, %do.body22.i15
  %call44.i18 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 40, i8 noundef zeroext 0) #9
  br label %if.end

if.end:                                           ; preds = %do.end40.i19, %do.end.i13.if.end_crit_edge, %reg_write.exit.if.end_crit_edge, %reg_write.exit.thread
  %ret.0 = phi i32 [ %call44.i, %reg_write.exit.if.end_crit_edge ], [ %call12.i, %reg_write.exit.thread ], [ %call44.i18, %do.end40.i19 ], [ %call12.i11, %do.end.i13.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rj54n1_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %dev_priv.i = getelementptr i8, ptr %1, i32 -44
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 9963797, label %sw.bb
    i32 9963796, label %sw.bb5
    i32 9963795, label %sw.bb16
    i32 9963788, label %sw.bb23
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %driver_data.i.i.i.i.i52 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 8
  %9 = ptrtoint ptr %driver_data.i.i.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i.i.i.i52, align 4
  %bank.i.i53 = getelementptr inbounds %struct.rj54n1, ptr %10, i32 0, i32 14
  %11 = ptrtoint ptr %bank.i.i53 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bank.i.i53, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %12)
  %cmp.not.i.i54 = icmp eq i8 %12, 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  br i1 %cmp.not.i.i54, label %if.then.reg_read.exit.i_crit_edge, label %do.body.i.i

if.then.reg_read.exit.i_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %reg_read.exit.i

do.body.i.i:                                      ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_read.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_s_ctrl, %if.then6.i.i)) #9
          to label %do.end.i.i [label %if.then6.i.i], !srcloc !119

if.then6.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_read.__UNIQUE_ID_ddebug292, ptr noundef %dev.i.i, ptr noundef nonnull @.str.21, i32 noundef 255, i32 noundef 4) #9
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then6.i.i, %do.body.i.i
  %call12.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -1, i8 noundef zeroext 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp13.i.i = icmp slt i32 %call12.i.i, 0
  br i1 %cmp13.i.i, label %do.end.i.i.if.end_crit_edge, label %if.end16.i.i

do.end.i.i.if.end_crit_edge:                      ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end16.i.i:                                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %bank.i.i53 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 4, ptr %bank.i.i53, align 2
  br label %reg_read.exit.i

reg_read.exit.i:                                  ; preds = %if.end16.i.i, %if.then.reg_read.exit.i_crit_edge
  %call24.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 39) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i)
  %cmp.i = icmp slt i32 %call24.i.i, 0
  br i1 %cmp.i, label %reg_read.exit.i.if.end_crit_edge, label %if.end.i

reg_read.exit.i.if.end_crit_edge:                 ; preds = %reg_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %reg_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = trunc i32 %call24.i.i to i8
  %15 = and i8 %14, -2
  br label %if.end.sink.split

if.else:                                          ; preds = %sw.bb
  br i1 %cmp.not.i.i54, label %if.else.reg_read.exit.i64_crit_edge, label %do.body.i.i55

if.else.reg_read.exit.i64_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %reg_read.exit.i64

do.body.i.i55:                                    ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_read.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_s_ctrl, %if.then6.i.i57)) #9
          to label %do.end.i.i60 [label %if.then6.i.i57], !srcloc !119

if.then6.i.i57:                                   ; preds = %do.body.i.i55
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i56 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_read.__UNIQUE_ID_ddebug292, ptr noundef %dev.i.i56, ptr noundef nonnull @.str.21, i32 noundef 255, i32 noundef 4) #9
  br label %do.end.i.i60

do.end.i.i60:                                     ; preds = %if.then6.i.i57, %do.body.i.i55
  %call12.i.i58 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -1, i8 noundef zeroext 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i58)
  %cmp13.i.i59 = icmp slt i32 %call12.i.i58, 0
  br i1 %cmp13.i.i59, label %do.end.i.i60.if.end_crit_edge, label %if.end16.i.i61

do.end.i.i60.if.end_crit_edge:                    ; preds = %do.end.i.i60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end16.i.i61:                                   ; preds = %do.end.i.i60
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %bank.i.i53 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 4, ptr %bank.i.i53, align 2
  br label %reg_read.exit.i64

reg_read.exit.i64:                                ; preds = %if.end16.i.i61, %if.else.reg_read.exit.i64_crit_edge
  %call24.i.i62 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 39) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i62)
  %cmp.i63 = icmp slt i32 %call24.i.i62, 0
  br i1 %cmp.i63, label %reg_read.exit.i64.if.end_crit_edge, label %if.end.i67

reg_read.exit.i64.if.end_crit_edge:               ; preds = %reg_read.exit.i64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i67:                                       ; preds = %reg_read.exit.i64
  call void @__sanitizer_cov_trace_pc() #11
  %17 = trunc i32 %call24.i.i62 to i8
  %conv4.i = or i8 %17, 1
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %if.end.i67, %if.end.i
  %conv4.i.sink = phi i8 [ %conv4.i, %if.end.i67 ], [ %15, %if.end.i ]
  %call5.i66 = tail call fastcc i32 @reg_write(ptr noundef %3, i16 noundef zeroext 1063, i8 noundef zeroext %conv4.i.sink) #9
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %reg_read.exit.i64.if.end_crit_edge, %do.end.i.i60.if.end_crit_edge, %reg_read.exit.i.if.end_crit_edge, %do.end.i.i.if.end_crit_edge
  %data.0 = phi i32 [ %call24.i.i, %reg_read.exit.i.if.end_crit_edge ], [ %call12.i.i, %do.end.i.i.if.end_crit_edge ], [ %call24.i.i62, %reg_read.exit.i64.if.end_crit_edge ], [ %call12.i.i58, %do.end.i.i60.if.end_crit_edge ], [ %call5.i66, %if.end.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data.0)
  %cmp = icmp slt i32 %data.0, 0
  %. = select i1 %cmp, i32 -5, i32 0
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %18 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool7.not = icmp eq i32 %19, 0
  %driver_data.i.i.i.i.i88 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 8
  %20 = ptrtoint ptr %driver_data.i.i.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i.i.i.i88, align 4
  %bank.i.i89 = getelementptr inbounds %struct.rj54n1, ptr %21, i32 0, i32 14
  %22 = ptrtoint ptr %bank.i.i89 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bank.i.i89, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %23)
  %cmp.not.i.i90 = icmp eq i8 %23, 4
  br i1 %tobool7.not, label %if.else10, label %if.then8

if.then8:                                         ; preds = %sw.bb5
  br i1 %cmp.not.i.i90, label %if.then8.reg_read.exit.i82_crit_edge, label %do.body.i.i73

if.then8.reg_read.exit.i82_crit_edge:             ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %reg_read.exit.i82

do.body.i.i73:                                    ; preds = %if.then8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_read.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_s_ctrl, %if.then6.i.i75)) #9
          to label %do.end.i.i78 [label %if.then6.i.i75], !srcloc !119

if.then6.i.i75:                                   ; preds = %do.body.i.i73
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i74 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_read.__UNIQUE_ID_ddebug292, ptr noundef %dev.i.i74, ptr noundef nonnull @.str.21, i32 noundef 255, i32 noundef 4) #9
  br label %do.end.i.i78

do.end.i.i78:                                     ; preds = %if.then6.i.i75, %do.body.i.i73
  %call12.i.i76 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -1, i8 noundef zeroext 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i76)
  %cmp13.i.i77 = icmp slt i32 %call12.i.i76, 0
  br i1 %cmp13.i.i77, label %do.end.i.i78.if.end12_crit_edge, label %if.end16.i.i79

do.end.i.i78.if.end12_crit_edge:                  ; preds = %do.end.i.i78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end16.i.i79:                                   ; preds = %do.end.i.i78
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %bank.i.i89 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 4, ptr %bank.i.i89, align 2
  br label %reg_read.exit.i82

reg_read.exit.i82:                                ; preds = %if.end16.i.i79, %if.then8.reg_read.exit.i82_crit_edge
  %call24.i.i80 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 39) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i80)
  %cmp.i81 = icmp slt i32 %call24.i.i80, 0
  br i1 %cmp.i81, label %reg_read.exit.i82.if.end12_crit_edge, label %if.end.i85

reg_read.exit.i82.if.end12_crit_edge:             ; preds = %reg_read.exit.i82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end.i85:                                       ; preds = %reg_read.exit.i82
  call void @__sanitizer_cov_trace_pc() #11
  %25 = trunc i32 %call24.i.i80 to i8
  %26 = and i8 %25, -3
  br label %if.end12.sink.split

if.else10:                                        ; preds = %sw.bb5
  br i1 %cmp.not.i.i90, label %if.else10.reg_read.exit.i100_crit_edge, label %do.body.i.i91

if.else10.reg_read.exit.i100_crit_edge:           ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #11
  br label %reg_read.exit.i100

do.body.i.i91:                                    ; preds = %if.else10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_read.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_s_ctrl, %if.then6.i.i93)) #9
          to label %do.end.i.i96 [label %if.then6.i.i93], !srcloc !119

if.then6.i.i93:                                   ; preds = %do.body.i.i91
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i92 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_read.__UNIQUE_ID_ddebug292, ptr noundef %dev.i.i92, ptr noundef nonnull @.str.21, i32 noundef 255, i32 noundef 4) #9
  br label %do.end.i.i96

do.end.i.i96:                                     ; preds = %if.then6.i.i93, %do.body.i.i91
  %call12.i.i94 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -1, i8 noundef zeroext 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i94)
  %cmp13.i.i95 = icmp slt i32 %call12.i.i94, 0
  br i1 %cmp13.i.i95, label %do.end.i.i96.if.end12_crit_edge, label %if.end16.i.i97

do.end.i.i96.if.end12_crit_edge:                  ; preds = %do.end.i.i96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end16.i.i97:                                   ; preds = %do.end.i.i96
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %bank.i.i89 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 4, ptr %bank.i.i89, align 2
  br label %reg_read.exit.i100

reg_read.exit.i100:                               ; preds = %if.end16.i.i97, %if.else10.reg_read.exit.i100_crit_edge
  %call24.i.i98 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 39) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i98)
  %cmp.i99 = icmp slt i32 %call24.i.i98, 0
  br i1 %cmp.i99, label %reg_read.exit.i100.if.end12_crit_edge, label %if.end.i104

reg_read.exit.i100.if.end12_crit_edge:            ; preds = %reg_read.exit.i100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end.i104:                                      ; preds = %reg_read.exit.i100
  call void @__sanitizer_cov_trace_pc() #11
  %28 = trunc i32 %call24.i.i98 to i8
  %conv4.i102 = or i8 %28, 2
  br label %if.end12.sink.split

if.end12.sink.split:                              ; preds = %if.end.i104, %if.end.i85
  %conv4.i102.sink = phi i8 [ %conv4.i102, %if.end.i104 ], [ %26, %if.end.i85 ]
  %call5.i103 = tail call fastcc i32 @reg_write(ptr noundef %3, i16 noundef zeroext 1063, i8 noundef zeroext %conv4.i102.sink) #9
  br label %if.end12

if.end12:                                         ; preds = %if.end12.sink.split, %reg_read.exit.i100.if.end12_crit_edge, %do.end.i.i96.if.end12_crit_edge, %reg_read.exit.i82.if.end12_crit_edge, %do.end.i.i78.if.end12_crit_edge
  %data.1 = phi i32 [ %call24.i.i80, %reg_read.exit.i82.if.end12_crit_edge ], [ %call12.i.i76, %do.end.i.i78.if.end12_crit_edge ], [ %call24.i.i98, %reg_read.exit.i100.if.end12_crit_edge ], [ %call12.i.i94, %do.end.i.i96.if.end12_crit_edge ], [ %call5.i103, %if.end12.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data.1)
  %cmp13 = icmp slt i32 %data.1, 0
  %.50 = select i1 %cmp13, i32 -5, i32 0
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val17 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %29 = ptrtoint ptr %val17 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val17, align 4
  %.tr49 = trunc i32 %30 to i8
  %conv = shl i8 %.tr49, 1
  %call18 = tail call fastcc i32 @reg_write(ptr noundef %3, i16 noundef zeroext 1240, i8 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  %.51 = select i1 %cmp19, i32 -5, i32 0
  br label %cleanup

sw.bb23:                                          ; preds = %entry
  %val24 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %31 = ptrtoint ptr %val24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val24, align 4
  %.tr = trunc i32 %32 to i8
  %conv25 = shl i8 %.tr, 7
  %driver_data.i.i.i.i.i107 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 8
  %33 = ptrtoint ptr %driver_data.i.i.i.i.i107 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %driver_data.i.i.i.i.i107, align 4
  %bank.i.i108 = getelementptr inbounds %struct.rj54n1, ptr %34, i32 0, i32 14
  %35 = ptrtoint ptr %bank.i.i108 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bank.i.i108, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %36)
  %cmp.not.i.i109 = icmp eq i8 %36, 5
  br i1 %cmp.not.i.i109, label %sw.bb23.reg_read.exit.i119_crit_edge, label %do.body.i.i110

sw.bb23.reg_read.exit.i119_crit_edge:             ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #11
  br label %reg_read.exit.i119

do.body.i.i110:                                   ; preds = %sw.bb23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_read.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rj54n1_s_ctrl, %if.then6.i.i112)) #9
          to label %do.end.i.i115 [label %if.then6.i.i112], !srcloc !119

if.then6.i.i112:                                  ; preds = %do.body.i.i110
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i111 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_read.__UNIQUE_ID_ddebug292, ptr noundef %dev.i.i111, ptr noundef nonnull @.str.21, i32 noundef 255, i32 noundef 5) #9
  br label %do.end.i.i115

do.end.i.i115:                                    ; preds = %if.then6.i.i112, %do.body.i.i110
  %call12.i.i113 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -1, i8 noundef zeroext 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i113)
  %cmp13.i.i114 = icmp slt i32 %call12.i.i113, 0
  br i1 %cmp13.i.i114, label %do.end.i.i115.cleanup_crit_edge, label %if.end16.i.i116

do.end.i.i115.cleanup_crit_edge:                  ; preds = %do.end.i.i115
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16.i.i116:                                  ; preds = %do.end.i.i115
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %bank.i.i108 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 5, ptr %bank.i.i108, align 2
  br label %reg_read.exit.i119

reg_read.exit.i119:                               ; preds = %if.end16.i.i116, %sw.bb23.reg_read.exit.i119_crit_edge
  %call24.i.i117 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 78) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i117)
  %cmp.i118 = icmp slt i32 %call24.i.i117, 0
  br i1 %cmp.i118, label %reg_read.exit.i119.cleanup_crit_edge, label %reg_set.exit125

reg_read.exit.i119.cleanup_crit_edge:             ; preds = %reg_read.exit.i119
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

reg_set.exit125:                                  ; preds = %reg_read.exit.i119
  %38 = trunc i32 %call24.i.i117 to i8
  %39 = and i8 %38, 127
  %conv4.i121 = or i8 %39, %conv25
  %call5.i122 = tail call fastcc i32 @reg_write(ptr noundef %3, i16 noundef zeroext 1358, i8 noundef zeroext %conv4.i121) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i122)
  %cmp27 = icmp slt i32 %call5.i122, 0
  br i1 %cmp27, label %reg_set.exit125.cleanup_crit_edge, label %if.end30

reg_set.exit125.cleanup_crit_edge:                ; preds = %reg_set.exit125
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end30:                                         ; preds = %reg_set.exit125
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %val24 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %val24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool32 = icmp ne i32 %41, 0
  %auto_wb = getelementptr i8, ptr %1, i32 228
  %frombool = zext i1 %tobool32 to i8
  %42 = ptrtoint ptr %auto_wb to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %frombool, ptr %auto_wb, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %reg_set.exit125.cleanup_crit_edge, %reg_read.exit.i119.cleanup_crit_edge, %do.end.i.i115.cleanup_crit_edge, %sw.bb16, %if.end12, %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end30 ], [ %., %if.end ], [ %.50, %if.end12 ], [ %.51, %sw.bb16 ], [ -5, %reg_set.exit125.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -5, %reg_read.exit.i119.cleanup_crit_edge ], [ -5, %do.end.i.i115.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !32, !34, !35, !36, !37, !39, !41, !42, !43, !45, !47, !49, !50, !51, !53, !54, !56, !58, !60, !62, !63, !64, !66, !67, !68, !69, !71, !73, !75, !77, !79, !81, !82, !83, !85, !86, !88, !89, !91, !92, !93, !95, !97, !99, !101, !102, !103, !104, !106, !107, !108}
!llvm.module.flags = !{!110, !111, !112, !113, !114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = !{ptr @__initcall__kmod_rj54n1cb0c__308_1432_rj54n1_i2c_driver_init6, !1, !"__initcall__kmod_rj54n1cb0c__308_1432_rj54n1_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/rj54n1cb0c.c", i32 1432, i32 1}
!2 = !{ptr @__exitcall_rj54n1_i2c_driver_exit, !1, !"__exitcall_rj54n1_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description309, !4, !"__UNIQUE_ID_description309", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/rj54n1cb0c.c", i32 1434, i32 1}
!5 = !{ptr @__UNIQUE_ID_author310, !6, !"__UNIQUE_ID_author310", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/rj54n1cb0c.c", i32 1435, i32 1}
!7 = !{ptr @__UNIQUE_ID_file311, !8, !"__UNIQUE_ID_file311", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/rj54n1cb0c.c", i32 1436, i32 1}
!9 = !{ptr @__UNIQUE_ID_license312, !8, !"__UNIQUE_ID_license312", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/rj54n1cb0c.c", i32 1425, i32 11}
!12 = !{ptr @rj54n1_i2c_driver, !13, !"rj54n1_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/rj54n1cb0c.c", i32 1423, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/rj54n1cb0c.c", i32 1309, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rj54n1_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @rj54n1_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/rj54n1cb0c.c", i32 1316, i32 3}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @rj54n1_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @rj54n1_probe._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @rj54n1_probe._key, !28, !"_key", i1 false, i1 false}
!28 = !{!"../drivers/media/i2c/rj54n1cb0c.c", i32 1326, i32 2}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/rj54n1cb0c.c", i32 1357, i32 55}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/i2c/rj54n1cb0c.c", i32 1360, i32 3}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @rj54n1_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @rj54n1_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/i2c/rj54n1cb0c.c", i32 1366, i32 57}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/rj54n1cb0c.c", i32 1369, i32 3}
!41 = !{ptr @rj54n1_probe._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @rj54n1_probe._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @rj54n1_subdev_ops, !44, !"rj54n1_subdev_ops", i1 false, i1 false}
!44 = !{!"../drivers/media/i2c/rj54n1cb0c.c", i32 1253, i32 37}
!45 = !{ptr @rj54n1_subdev_core_ops, !46, !"rj54n1_subdev_core_ops", i1 false, i1 false}
!46 = !{!"../drivers/media/i2c/rj54n1cb0c.c", i32 1233, i32 42}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/i2c/rj54n1cb0c.c", i32 437, i32 3}
!49 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @reg_read.__UNIQUE_ID_ddebug292, !48, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/i2c/rj54n1cb0c.c", i32 454, i32 3}
!53 = !{ptr @reg_write.__UNIQUE_ID_ddebug293, !52, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!54 = !{ptr @reg_write.__UNIQUE_ID_ddebug294, !55, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!55 = !{!"../drivers/media/i2c/rj54n1cb0c.c", i32 460, i32 2}
!56 = !{ptr @rj54n1_subdev_video_ops, !57, !"rj54n1_subdev_video_ops", i1 false, i1 false}
!57 = !{!"../drivers/media/i2c/rj54n1cb0c.c", i32 1241, i32 43}
!58 = !{ptr @rj54n1_subdev_pad_ops, !59, !"rj54n1_subdev_pad_ops", i1 false, i1 false}
!59 = !{!"../drivers/media/i2c/rj54n1cb0c.c", i32 1245, i32 41}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/i2c/rj54n1cb0c.c", i32 995, i32 2}
!62 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @rj54n1_set_fmt.__UNIQUE_ID_ddebug307, !61, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/i2c/rj54n1cb0c.c", i32 889, i32 3}
!66 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @rj54n1_set_clock._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @rj54n1_set_clock._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = distinct !{null, !70, !"bank_7", i1 false, i1 false}
!70 = !{!"../drivers/media/i2c/rj54n1cb0c.c", i32 216, i32 36}
!71 = distinct !{null, !72, !"bank_10", i1 false, i1 false}
!72 = !{!"../drivers/media/i2c/rj54n1cb0c.c", i32 412, i32 36}
!73 = !{ptr @bank_4, !74, !"bank_4", i1 false, i1 false}
!74 = !{!"../drivers/media/i2c/rj54n1cb0c.c", i32 174, i32 36}
!75 = !{ptr @bank_5, !76, !"bank_5", i1 false, i1 false}
!76 = !{!"../drivers/media/i2c/rj54n1cb0c.c", i32 195, i32 36}
!77 = !{ptr @bank_8, !78, !"bank_8", i1 false, i1 false}
!78 = !{!"../drivers/media/i2c/rj54n1cb0c.c", i32 224, i32 36}
!79 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/i2c/rj54n1cb0c.c", i32 658, i32 3}
!81 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @rj54n1_sensor_scale.__UNIQUE_ID_ddebug298, !80, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/i2c/rj54n1cb0c.c", i32 670, i32 3}
!85 = !{ptr @rj54n1_sensor_scale.__UNIQUE_ID_ddebug301, !84, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!86 = !{ptr @.str.30, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/i2c/rj54n1cb0c.c", i32 814, i32 2}
!88 = !{ptr @rj54n1_sensor_scale.__UNIQUE_ID_ddebug306, !87, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!89 = !{ptr @.str.31, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/i2c/rj54n1cb0c.c", i32 564, i32 2}
!91 = !{ptr @.str.32, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @rj54n1_set_selection.__UNIQUE_ID_ddebug295, !90, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!93 = !{ptr @rj54n1_ctrl_ops, !94, !"rj54n1_ctrl_ops", i1 false, i1 false}
!94 = !{!"../drivers/media/i2c/rj54n1cb0c.c", i32 1229, i32 35}
!95 = !{ptr @clk_div, !96, !"clk_div", i1 false, i1 false}
!96 = !{!"../drivers/media/i2c/rj54n1cb0c.c", i32 417, i32 38}
!97 = !{ptr @rj54n1_colour_fmts, !98, !"rj54n1_colour_fmts", i1 false, i1 false}
!98 = !{!"../drivers/media/i2c/rj54n1cb0c.c", i32 131, i32 36}
!99 = !{ptr @.str.33, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/i2c/rj54n1cb0c.c", i32 1280, i32 3}
!101 = !{ptr @.str.34, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @rj54n1_video_probe._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @rj54n1_video_probe._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.36, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/i2c/rj54n1cb0c.c", i32 1290, i32 2}
!106 = !{ptr @rj54n1_video_probe._entry.35, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @rj54n1_video_probe._entry_ptr.37, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @rj54n1_id, !109, !"rj54n1_id", i1 false, i1 false}
!109 = !{!"../drivers/media/i2c/rj54n1cb0c.c", i32 1417, i32 35}
!110 = !{i32 1, !"wchar_size", i32 2}
!111 = !{i32 1, !"min_enum_size", i32 4}
!112 = !{i32 8, !"branch-target-enforcement", i32 0}
!113 = !{i32 8, !"sign-return-address", i32 0}
!114 = !{i32 8, !"sign-return-address-all", i32 0}
!115 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!116 = !{i32 7, !"uwtable", i32 1}
!117 = !{i32 7, !"frame-pointer", i32 2}
!118 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!119 = !{i64 2148755863, i64 2148755868, i64 2148755881, i64 2148755925, i64 2148755959, i64 2148755980}
!120 = !{i8 0, i8 2}
