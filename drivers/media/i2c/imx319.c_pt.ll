; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/imx319.c_pt.bc'
source_filename = "../drivers/media/i2c/imx319.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.imx319_mode = type { i32, i32, i32, i32, i32, i32, %struct.imx319_reg_list }
%struct.imx319_reg_list = type { i32, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.imx319_reg = type { i16, i8 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.imx319 = type { %struct.v4l2_subdev, %struct.media_pad, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.mutex, i8, i8 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.imx319_hwcfg = type { i32, ptr, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.104, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.104 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }

@__initcall__kmod_imx319__298_2563_imx319_i2c_driver_init6 = internal global ptr @imx319_i2c_driver_init, section ".initcall6.init", align 4
@imx319_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @imx319_remove, ptr @imx319_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx319_pm_ops, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 1 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_imx319_i2c_driver_exit = internal global ptr @imx319_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author299 = internal constant [52 x i8] c"imx319.author=Qiu, Tianshu <tian.shu.qiu@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author300 = internal constant [65 x i8] c"imx319.author=Rapolu, Chiranjeevi <chiranjeevi.rapolu@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author301 = internal constant [48 x i8] c"imx319.author=Bingbu Cao <bingbu.cao@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author302 = internal constant [29 x i8] c"imx319.author=Yang, Hyungwoo\00", section ".modinfo", align 1
@__UNIQUE_ID_description303 = internal constant [45 x i8] c"imx319.description=Sony imx319 sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [37 x i8] c"imx319.file=drivers/media/i2c/imx319\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [22 x i8] c"imx319.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"imx319\00", [25 x i8] zeroinitializer }, align 32
@imx319_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @imx319_suspend, ptr @imx319_resume, ptr @imx319_suspend, ptr @imx319_resume, ptr @imx319_suspend, ptr @imx319_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@imx319_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&imx319->mutex\00", [17 x i8] zeroinitializer }, align 32
@imx319_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @imx319_subdev_core_ops, ptr null, ptr null, ptr @imx319_video_ops, ptr null, ptr null, ptr null, ptr @imx319_pad_ops }, [32 x i8] zeroinitializer }, align 32
@imx319_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 2452, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to find sensor: %d\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"imx319_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/imx319.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx319_probe._entry_ptr = internal global ptr @imx319_probe._entry, section ".printk_index", align 4
@imx319_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 2459, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to get hwcfg\00", [44 x i8] zeroinitializer }, align 32
@imx319_probe._entry_ptr.9 = internal global ptr @imx319_probe._entry.7, section ".printk_index", align 4
@link_freq_menu_items = internal constant { [1 x i64], [24 x i8] } { [1 x i64] [i64 482400000], [24 x i8] zeroinitializer }, align 32
@imx319_probe.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.10, i8 2, i8 104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"link freq index %d matched\00", [37 x i8] zeroinitializer }, align 32
@imx319_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 2473, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no link frequency supported\00", [36 x i8] zeroinitializer }, align 32
@imx319_probe._entry_ptr.13 = internal global ptr @imx319_probe._entry.11, section ".printk_index", align 4
@supported_modes = internal constant { [8 x %struct.imx319_mode], [64 x i8] } { [8 x %struct.imx319_mode] [%struct.imx319_mode { i32 3280, i32 2464, i32 3242, i32 3242, i32 3968, i32 0, %struct.imx319_reg_list { i32 171, ptr @mode_3280x2464_regs } }, %struct.imx319_mode { i32 3264, i32 2448, i32 3242, i32 3242, i32 3968, i32 0, %struct.imx319_reg_list { i32 171, ptr @mode_3264x2448_regs } }, %struct.imx319_mode { i32 1936, i32 1096, i32 3242, i32 3242, i32 3968, i32 0, %struct.imx319_reg_list { i32 171, ptr @mode_1936x1096_regs } }, %struct.imx319_mode { i32 1920, i32 1080, i32 3242, i32 3242, i32 3968, i32 0, %struct.imx319_reg_list { i32 171, ptr @mode_1920x1080_regs } }, %struct.imx319_mode { i32 1640, i32 1232, i32 5146, i32 5146, i32 2500, i32 0, %struct.imx319_reg_list { i32 171, ptr @mode_1640x1232_regs } }, %struct.imx319_mode { i32 1640, i32 922, i32 5146, i32 5146, i32 2500, i32 0, %struct.imx319_reg_list { i32 171, ptr @mode_1640x922_regs } }, %struct.imx319_mode { i32 1296, i32 736, i32 5146, i32 5146, i32 2500, i32 0, %struct.imx319_reg_list { i32 171, ptr @mode_1296x736_regs } }, %struct.imx319_mode { i32 1280, i32 720, i32 5146, i32 5146, i32 2500, i32 0, %struct.imx319_reg_list { i32 171, ptr @mode_1280x720_regs } }], [64 x i8] zeroinitializer }, align 32
@imx319_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 2483, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to init controls: %d\00", [36 x i8] zeroinitializer }, align 32
@imx319_probe._entry_ptr.16 = internal global ptr @imx319_probe._entry.14, section ".printk_index", align 4
@imx319_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @imx319_open, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@imx319_subdev_entity_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr null, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@imx319_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 2498, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to init entity pads: %d\00", [33 x i8] zeroinitializer }, align 32
@imx319_probe._entry_ptr.19 = internal global ptr @imx319_probe._entry.17, section ".printk_index", align 4
@imx319_subdev_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subdev_subscribe_event, ptr @v4l2_event_subdev_unsubscribe }, [40 x i8] zeroinitializer }, align 32
@imx319_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx319_set_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@imx319_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @imx319_enum_mbus_code, ptr @imx319_enum_frame_size, ptr null, ptr @imx319_get_pad_format, ptr @imx319_set_pad_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@imx319_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 2129, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to set global settings\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"imx319_start_streaming\00", [41 x i8] zeroinitializer }, align 32
@imx319_start_streaming._entry_ptr = internal global ptr @imx319_start_streaming._entry, section ".printk_index", align 4
@imx319_start_streaming._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.4, i32 2137, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to set mode\00", [45 x i8] zeroinitializer }, align 32
@imx319_start_streaming._entry_ptr.24 = internal global ptr @imx319_start_streaming._entry.22, section ".printk_index", align 4
@imx319_global_regs = internal constant { [104 x %struct.imx319_reg], [96 x i8] } { [104 x %struct.imx319_reg] [%struct.imx319_reg { i16 310, i8 19 }, %struct.imx319_reg { i16 311, i8 51 }, %struct.imx319_reg { i16 15486, i8 5 }, %struct.imx319_reg { i16 15487, i8 7 }, %struct.imx319_reg { i16 19769, i8 11 }, %struct.imx319_reg { i16 19777, i8 51 }, %struct.imx319_reg { i16 19779, i8 12 }, %struct.imx319_reg { i16 19785, i8 -119 }, %struct.imx319_reg { i16 19973, i8 11 }, %struct.imx319_reg { i16 19981, i8 51 }, %struct.imx319_reg { i16 19983, i8 12 }, %struct.imx319_reg { i16 19989, i8 -119 }, %struct.imx319_reg { i16 20041, i8 42 }, %struct.imx319_reg { i16 20049, i8 51 }, %struct.imx319_reg { i16 20051, i8 12 }, %struct.imx319_reg { i16 20057, i8 -119 }, %struct.imx319_reg { i16 22017, i8 79 }, %struct.imx319_reg { i16 22027, i8 69 }, %struct.imx319_reg { i16 22063, i8 10 }, %struct.imx319_reg { i16 22083, i8 10 }, %struct.imx319_reg { i16 22085, i8 12 }, %struct.imx319_reg { i16 22255, i8 81 }, %struct.imx319_reg { i16 22639, i8 51 }, %struct.imx319_reg { i16 22643, i8 -119 }, %struct.imx319_reg { i16 22789, i8 51 }, %struct.imx319_reg { i16 22791, i8 -119 }, %struct.imx319_reg { i16 22797, i8 51 }, %struct.imx319_reg { i16 22799, i8 -119 }, %struct.imx319_reg { i16 22805, i8 51 }, %struct.imx319_reg { i16 22807, i8 -119 }, %struct.imx319_reg { i16 22889, i8 28 }, %struct.imx319_reg { i16 22891, i8 114 }, %struct.imx319_reg { i16 22897, i8 51 }, %struct.imx319_reg { i16 22899, i8 -119 }, %struct.imx319_reg { i16 22901, i8 51 }, %struct.imx319_reg { i16 22903, i8 -119 }, %struct.imx319_reg { i16 22905, i8 28 }, %struct.imx319_reg { i16 22907, i8 114 }, %struct.imx319_reg { i16 22917, i8 51 }, %struct.imx319_reg { i16 22919, i8 -119 }, %struct.imx319_reg { i16 22937, i8 28 }, %struct.imx319_reg { i16 22939, i8 114 }, %struct.imx319_reg { i16 22949, i8 51 }, %struct.imx319_reg { i16 22951, i8 -119 }, %struct.imx319_reg { i16 29829, i8 8 }, %struct.imx319_reg { i16 29831, i8 12 }, %struct.imx319_reg { i16 29833, i8 -57 }, %struct.imx319_reg { i16 29835, i8 -117 }, %struct.imx319_reg { i16 -28668, i8 9 }, %struct.imx319_reg { i16 -28160, i8 106 }, %struct.imx319_reg { i16 -28159, i8 34 }, %struct.imx319_reg { i16 -28158, i8 106 }, %struct.imx319_reg { i16 -28157, i8 35 }, %struct.imx319_reg { i16 -28156, i8 95 }, %struct.imx319_reg { i16 -28155, i8 35 }, %struct.imx319_reg { i16 -28154, i8 95 }, %struct.imx319_reg { i16 -28153, i8 36 }, %struct.imx319_reg { i16 -28152, i8 95 }, %struct.imx319_reg { i16 -28151, i8 38 }, %struct.imx319_reg { i16 -28150, i8 95 }, %struct.imx319_reg { i16 -28149, i8 39 }, %struct.imx319_reg { i16 -28148, i8 95 }, %struct.imx319_reg { i16 -28147, i8 41 }, %struct.imx319_reg { i16 -28146, i8 95 }, %struct.imx319_reg { i16 -28145, i8 42 }, %struct.imx319_reg { i16 -28144, i8 95 }, %struct.imx319_reg { i16 -28143, i8 44 }, %struct.imx319_reg { i16 -17374, i8 26 }, %struct.imx319_reg { i16 -4065, i8 4 }, %struct.imx319_reg { i16 -4063, i8 3 }, %struct.imx319_reg { i16 -4061, i8 2 }, %struct.imx319_reg { i16 -4035, i8 5 }, %struct.imx319_reg { i16 -4033, i8 3 }, %struct.imx319_reg { i16 -4031, i8 2 }, %struct.imx319_reg { i16 -3921, i8 4 }, %struct.imx319_reg { i16 -3919, i8 3 }, %struct.imx319_reg { i16 -3917, i8 2 }, %struct.imx319_reg { i16 -3891, i8 5 }, %struct.imx319_reg { i16 -3889, i8 3 }, %struct.imx319_reg { i16 -3887, i8 2 }, %struct.imx319_reg { i16 -3777, i8 4 }, %struct.imx319_reg { i16 -3775, i8 3 }, %struct.imx319_reg { i16 -3773, i8 2 }, %struct.imx319_reg { i16 -3747, i8 5 }, %struct.imx319_reg { i16 -3745, i8 3 }, %struct.imx319_reg { i16 -3743, i8 2 }, %struct.imx319_reg { i16 -3633, i8 4 }, %struct.imx319_reg { i16 -3631, i8 3 }, %struct.imx319_reg { i16 -3629, i8 2 }, %struct.imx319_reg { i16 -3603, i8 5 }, %struct.imx319_reg { i16 -3601, i8 3 }, %struct.imx319_reg { i16 -3599, i8 2 }, %struct.imx319_reg { i16 -3449, i8 4 }, %struct.imx319_reg { i16 -3447, i8 3 }, %struct.imx319_reg { i16 -3445, i8 2 }, %struct.imx319_reg { i16 -3419, i8 5 }, %struct.imx319_reg { i16 -3417, i8 3 }, %struct.imx319_reg { i16 -3415, i8 2 }, %struct.imx319_reg { i16 -3401, i8 4 }, %struct.imx319_reg { i16 -3399, i8 3 }, %struct.imx319_reg { i16 -3397, i8 2 }, %struct.imx319_reg { i16 -3371, i8 5 }, %struct.imx319_reg { i16 -3369, i8 3 }, %struct.imx319_reg { i16 -3367, i8 2 }], [96 x i8] zeroinitializer }, align 32
@imx319_write_regs._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.25, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.imx319_write_regs = private unnamed_addr constant [18 x i8] c"imx319_write_regs\00", align 1
@imx319_write_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @__func__.imx319_write_regs, ptr @.str.4, i32 1852, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"write reg 0x%4.4x return err %d\00", [32 x i8] zeroinitializer }, align 32
@imx319_write_regs._entry_ptr = internal global ptr @imx319_write_regs._entry, section ".printk_index", align 4
@imx319_get_format_code.codes = internal constant { [2 x [2 x i32]], [16 x i8] } { [2 x [2 x i32]] [[2 x i32] [i32 12303, i32 12298], [2 x i32] [i32 12302, i32 12295]], [16 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@imx319_identify_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 2105, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"chip id mismatch: %x!=%x\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"imx319_identify_module\00", [41 x i8] zeroinitializer }, align 32
@imx319_identify_module._entry_ptr = internal global ptr @imx319_identify_module._entry, section ".printk_index", align 4
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@imx319_get_hwcfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.4, i32 2392, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"can't get clock frequency\00", [38 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"imx319_get_hwcfg\00", [47 x i8] zeroinitializer }, align 32
@imx319_get_hwcfg._entry_ptr = internal global ptr @imx319_get_hwcfg._entry, section ".printk_index", align 4
@imx319_get_hwcfg.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.4, ptr @.str.33, i8 2, i8 87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ext clk: %d\00", [20 x i8] zeroinitializer }, align 32
@imx319_get_hwcfg._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.32, ptr @.str.4, i32 2399, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"external clock %d is not supported\00", [61 x i8] zeroinitializer }, align 32
@imx319_get_hwcfg._entry_ptr.36 = internal global ptr @imx319_get_hwcfg._entry.34, section ".printk_index", align 4
@imx319_get_hwcfg.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.4, ptr @.str.37, i8 2, i8 88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"num of link freqs: %d\00", [42 x i8] zeroinitializer }, align 32
@imx319_get_hwcfg._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.32, ptr @.str.4, i32 2405, ptr @.str.40, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no link frequencies defined\00", [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@imx319_get_hwcfg._entry_ptr.41 = internal global ptr @imx319_get_hwcfg._entry.38, section ".printk_index", align 4
@imx319_get_hwcfg.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.4, ptr @.str.42, i8 2, i8 92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"link_freq[%d] = %lld\00", [43 x i8] zeroinitializer }, align 32
@mode_3280x2464_regs = internal constant { [171 x %struct.imx319_reg], [180 x i8] } { [171 x %struct.imx319_reg] [%struct.imx319_reg { i16 274, i8 10 }, %struct.imx319_reg { i16 275, i8 10 }, %struct.imx319_reg { i16 276, i8 3 }, %struct.imx319_reg { i16 834, i8 15 }, %struct.imx319_reg { i16 835, i8 -128 }, %struct.imx319_reg { i16 832, i8 12 }, %struct.imx319_reg { i16 833, i8 -86 }, %struct.imx319_reg { i16 836, i8 0 }, %struct.imx319_reg { i16 837, i8 0 }, %struct.imx319_reg { i16 838, i8 0 }, %struct.imx319_reg { i16 839, i8 0 }, %struct.imx319_reg { i16 840, i8 12 }, %struct.imx319_reg { i16 841, i8 -49 }, %struct.imx319_reg { i16 842, i8 9 }, %struct.imx319_reg { i16 843, i8 -97 }, %struct.imx319_reg { i16 544, i8 0 }, %struct.imx319_reg { i16 545, i8 17 }, %struct.imx319_reg { i16 897, i8 1 }, %struct.imx319_reg { i16 899, i8 1 }, %struct.imx319_reg { i16 901, i8 1 }, %struct.imx319_reg { i16 903, i8 1 }, %struct.imx319_reg { i16 2304, i8 0 }, %struct.imx319_reg { i16 2305, i8 17 }, %struct.imx319_reg { i16 2306, i8 10 }, %struct.imx319_reg { i16 12608, i8 2 }, %struct.imx319_reg { i16 12609, i8 0 }, %struct.imx319_reg { i16 16141, i8 10 }, %struct.imx319_reg { i16 16148, i8 1 }, %struct.imx319_reg { i16 16188, i8 1 }, %struct.imx319_reg { i16 16205, i8 1 }, %struct.imx319_reg { i16 16204, i8 1 }, %struct.imx319_reg { i16 16980, i8 127 }, %struct.imx319_reg { i16 1025, i8 0 }, %struct.imx319_reg { i16 1028, i8 0 }, %struct.imx319_reg { i16 1029, i8 16 }, %struct.imx319_reg { i16 1032, i8 0 }, %struct.imx319_reg { i16 1033, i8 0 }, %struct.imx319_reg { i16 1034, i8 0 }, %struct.imx319_reg { i16 1035, i8 0 }, %struct.imx319_reg { i16 1036, i8 12 }, %struct.imx319_reg { i16 1037, i8 -48 }, %struct.imx319_reg { i16 1038, i8 9 }, %struct.imx319_reg { i16 1039, i8 -96 }, %struct.imx319_reg { i16 844, i8 12 }, %struct.imx319_reg { i16 845, i8 -48 }, %struct.imx319_reg { i16 846, i8 9 }, %struct.imx319_reg { i16 847, i8 -96 }, %struct.imx319_reg { i16 12897, i8 0 }, %struct.imx319_reg { i16 12900, i8 0 }, %struct.imx319_reg { i16 12901, i8 16 }, %struct.imx319_reg { i16 769, i8 5 }, %struct.imx319_reg { i16 771, i8 4 }, %struct.imx319_reg { i16 773, i8 4 }, %struct.imx319_reg { i16 774, i8 1 }, %struct.imx319_reg { i16 775, i8 -110 }, %struct.imx319_reg { i16 777, i8 10 }, %struct.imx319_reg { i16 779, i8 2 }, %struct.imx319_reg { i16 781, i8 2 }, %struct.imx319_reg { i16 782, i8 0 }, %struct.imx319_reg { i16 783, i8 -6 }, %struct.imx319_reg { i16 784, i8 0 }, %struct.imx319_reg { i16 2080, i8 15 }, %struct.imx319_reg { i16 2081, i8 19 }, %struct.imx319_reg { i16 2082, i8 51 }, %struct.imx319_reg { i16 2083, i8 51 }, %struct.imx319_reg { i16 15904, i8 1 }, %struct.imx319_reg { i16 15927, i8 0 }, %struct.imx319_reg { i16 15931, i8 1 }, %struct.imx319_reg { i16 14499, i8 1 }, %struct.imx319_reg { i16 14504, i8 0 }, %struct.imx319_reg { i16 14505, i8 0 }, %struct.imx319_reg { i16 14506, i8 0 }, %struct.imx319_reg { i16 14507, i8 0 }, %struct.imx319_reg { i16 12852, i8 0 }, %struct.imx319_reg { i16 16321, i8 0 }, %struct.imx319_reg { i16 12853, i8 0 }, %struct.imx319_reg { i16 14338, i8 0 }, %struct.imx319_reg { i16 12611, i8 4 }, %struct.imx319_reg { i16 13834, i8 0 }, %struct.imx319_reg { i16 2816, i8 0 }, %struct.imx319_reg { i16 262, i8 0 }, %struct.imx319_reg { i16 2821, i8 1 }, %struct.imx319_reg { i16 2822, i8 1 }, %struct.imx319_reg { i16 12848, i8 0 }, %struct.imx319_reg { i16 13826, i8 1 }, %struct.imx319_reg { i16 13831, i8 1 }, %struct.imx319_reg { i16 15360, i8 0 }, %struct.imx319_reg { i16 15361, i8 72 }, %struct.imx319_reg { i16 15362, i8 -56 }, %struct.imx319_reg { i16 15363, i8 -86 }, %struct.imx319_reg { i16 15364, i8 -111 }, %struct.imx319_reg { i16 15365, i8 84 }, %struct.imx319_reg { i16 15366, i8 38 }, %struct.imx319_reg { i16 15367, i8 32 }, %struct.imx319_reg { i16 15368, i8 81 }, %struct.imx319_reg { i16 15744, i8 0 }, %struct.imx319_reg { i16 16208, i8 0 }, %struct.imx319_reg { i16 16214, i8 0 }, %struct.imx319_reg { i16 16215, i8 48 }, %struct.imx319_reg { i16 16248, i8 1 }, %struct.imx319_reg { i16 16249, i8 24 }, %struct.imx319_reg { i16 16252, i8 0 }, %struct.imx319_reg { i16 16253, i8 0 }, %struct.imx319_reg { i16 16314, i8 0 }, %struct.imx319_reg { i16 16315, i8 0 }, %struct.imx319_reg { i16 -24447, i8 0 }, %struct.imx319_reg { i16 -8172, i8 0 }, %struct.imx319_reg { i16 514, i8 10 }, %struct.imx319_reg { i16 515, i8 122 }, %struct.imx319_reg { i16 548, i8 1 }, %struct.imx319_reg { i16 549, i8 -12 }, %struct.imx319_reg { i16 516, i8 0 }, %struct.imx319_reg { i16 517, i8 0 }, %struct.imx319_reg { i16 534, i8 0 }, %struct.imx319_reg { i16 535, i8 0 }, %struct.imx319_reg { i16 526, i8 1 }, %struct.imx319_reg { i16 527, i8 0 }, %struct.imx319_reg { i16 528, i8 1 }, %struct.imx319_reg { i16 529, i8 0 }, %struct.imx319_reg { i16 530, i8 1 }, %struct.imx319_reg { i16 531, i8 0 }, %struct.imx319_reg { i16 532, i8 1 }, %struct.imx319_reg { i16 533, i8 0 }, %struct.imx319_reg { i16 536, i8 1 }, %struct.imx319_reg { i16 537, i8 0 }, %struct.imx319_reg { i16 13844, i8 0 }, %struct.imx319_reg { i16 13846, i8 13 }, %struct.imx319_reg { i16 13847, i8 86 }, %struct.imx319_reg { i16 -18926, i8 32 }, %struct.imx319_reg { i16 -18925, i8 32 }, %struct.imx319_reg { i16 -18924, i8 32 }, %struct.imx319_reg { i16 -18923, i8 32 }, %struct.imx319_reg { i16 -18922, i8 10 }, %struct.imx319_reg { i16 -18921, i8 10 }, %struct.imx319_reg { i16 -18920, i8 32 }, %struct.imx319_reg { i16 -18919, i8 32 }, %struct.imx319_reg { i16 -18918, i8 32 }, %struct.imx319_reg { i16 -18917, i8 32 }, %struct.imx319_reg { i16 -18916, i8 10 }, %struct.imx319_reg { i16 -18915, i8 10 }, %struct.imx319_reg { i16 -18842, i8 48 }, %struct.imx319_reg { i16 -18841, i8 48 }, %struct.imx319_reg { i16 -18840, i8 48 }, %struct.imx319_reg { i16 -18839, i8 48 }, %struct.imx319_reg { i16 -18838, i8 20 }, %struct.imx319_reg { i16 -18837, i8 20 }, %struct.imx319_reg { i16 -18836, i8 32 }, %struct.imx319_reg { i16 -18835, i8 32 }, %struct.imx319_reg { i16 -18834, i8 32 }, %struct.imx319_reg { i16 -18833, i8 32 }, %struct.imx319_reg { i16 -18832, i8 16 }, %struct.imx319_reg { i16 -18831, i8 16 }, %struct.imx319_reg { i16 12855, i8 0 }, %struct.imx319_reg { i16 14592, i8 0 }, %struct.imx319_reg { i16 14593, i8 0 }, %struct.imx319_reg { i16 14594, i8 0 }, %struct.imx319_reg { i16 14596, i8 0 }, %struct.imx319_reg { i16 14597, i8 0 }, %struct.imx319_reg { i16 14598, i8 0 }, %struct.imx319_reg { i16 14599, i8 0 }, %struct.imx319_reg { i16 14600, i8 0 }, %struct.imx319_reg { i16 14601, i8 0 }, %struct.imx319_reg { i16 14610, i8 0 }, %struct.imx319_reg { i16 14640, i8 0 }, %struct.imx319_reg { i16 14641, i8 0 }, %struct.imx319_reg { i16 14643, i8 0 }, %struct.imx319_reg { i16 14644, i8 0 }, %struct.imx319_reg { i16 14645, i8 0 }, %struct.imx319_reg { i16 14646, i8 0 }, %struct.imx319_reg { i16 14647, i8 0 }, %struct.imx319_reg { i16 12460, i8 0 }], [180 x i8] zeroinitializer }, align 32
@mode_3264x2448_regs = internal constant { [171 x %struct.imx319_reg], [180 x i8] } { [171 x %struct.imx319_reg] [%struct.imx319_reg { i16 274, i8 10 }, %struct.imx319_reg { i16 275, i8 10 }, %struct.imx319_reg { i16 276, i8 3 }, %struct.imx319_reg { i16 834, i8 15 }, %struct.imx319_reg { i16 835, i8 -128 }, %struct.imx319_reg { i16 832, i8 12 }, %struct.imx319_reg { i16 833, i8 -86 }, %struct.imx319_reg { i16 836, i8 0 }, %struct.imx319_reg { i16 837, i8 0 }, %struct.imx319_reg { i16 838, i8 0 }, %struct.imx319_reg { i16 839, i8 0 }, %struct.imx319_reg { i16 840, i8 12 }, %struct.imx319_reg { i16 841, i8 -49 }, %struct.imx319_reg { i16 842, i8 9 }, %struct.imx319_reg { i16 843, i8 -97 }, %struct.imx319_reg { i16 544, i8 0 }, %struct.imx319_reg { i16 545, i8 17 }, %struct.imx319_reg { i16 897, i8 1 }, %struct.imx319_reg { i16 899, i8 1 }, %struct.imx319_reg { i16 901, i8 1 }, %struct.imx319_reg { i16 903, i8 1 }, %struct.imx319_reg { i16 2304, i8 0 }, %struct.imx319_reg { i16 2305, i8 17 }, %struct.imx319_reg { i16 2306, i8 10 }, %struct.imx319_reg { i16 12608, i8 2 }, %struct.imx319_reg { i16 12609, i8 0 }, %struct.imx319_reg { i16 16141, i8 10 }, %struct.imx319_reg { i16 16148, i8 1 }, %struct.imx319_reg { i16 16188, i8 1 }, %struct.imx319_reg { i16 16205, i8 1 }, %struct.imx319_reg { i16 16204, i8 1 }, %struct.imx319_reg { i16 16980, i8 127 }, %struct.imx319_reg { i16 1025, i8 0 }, %struct.imx319_reg { i16 1028, i8 0 }, %struct.imx319_reg { i16 1029, i8 16 }, %struct.imx319_reg { i16 1032, i8 0 }, %struct.imx319_reg { i16 1033, i8 8 }, %struct.imx319_reg { i16 1034, i8 0 }, %struct.imx319_reg { i16 1035, i8 8 }, %struct.imx319_reg { i16 1036, i8 12 }, %struct.imx319_reg { i16 1037, i8 -64 }, %struct.imx319_reg { i16 1038, i8 9 }, %struct.imx319_reg { i16 1039, i8 -112 }, %struct.imx319_reg { i16 844, i8 12 }, %struct.imx319_reg { i16 845, i8 -64 }, %struct.imx319_reg { i16 846, i8 9 }, %struct.imx319_reg { i16 847, i8 -112 }, %struct.imx319_reg { i16 12897, i8 0 }, %struct.imx319_reg { i16 12900, i8 0 }, %struct.imx319_reg { i16 12901, i8 16 }, %struct.imx319_reg { i16 769, i8 5 }, %struct.imx319_reg { i16 771, i8 4 }, %struct.imx319_reg { i16 773, i8 4 }, %struct.imx319_reg { i16 774, i8 1 }, %struct.imx319_reg { i16 775, i8 -110 }, %struct.imx319_reg { i16 777, i8 10 }, %struct.imx319_reg { i16 779, i8 2 }, %struct.imx319_reg { i16 781, i8 2 }, %struct.imx319_reg { i16 782, i8 0 }, %struct.imx319_reg { i16 783, i8 -6 }, %struct.imx319_reg { i16 784, i8 0 }, %struct.imx319_reg { i16 2080, i8 15 }, %struct.imx319_reg { i16 2081, i8 19 }, %struct.imx319_reg { i16 2082, i8 51 }, %struct.imx319_reg { i16 2083, i8 51 }, %struct.imx319_reg { i16 15904, i8 1 }, %struct.imx319_reg { i16 15927, i8 0 }, %struct.imx319_reg { i16 15931, i8 1 }, %struct.imx319_reg { i16 14499, i8 1 }, %struct.imx319_reg { i16 14504, i8 0 }, %struct.imx319_reg { i16 14505, i8 0 }, %struct.imx319_reg { i16 14506, i8 0 }, %struct.imx319_reg { i16 14507, i8 0 }, %struct.imx319_reg { i16 12852, i8 0 }, %struct.imx319_reg { i16 16321, i8 0 }, %struct.imx319_reg { i16 12853, i8 0 }, %struct.imx319_reg { i16 14338, i8 0 }, %struct.imx319_reg { i16 12611, i8 4 }, %struct.imx319_reg { i16 13834, i8 0 }, %struct.imx319_reg { i16 2816, i8 0 }, %struct.imx319_reg { i16 262, i8 0 }, %struct.imx319_reg { i16 2821, i8 1 }, %struct.imx319_reg { i16 2822, i8 1 }, %struct.imx319_reg { i16 12848, i8 0 }, %struct.imx319_reg { i16 13826, i8 1 }, %struct.imx319_reg { i16 13831, i8 1 }, %struct.imx319_reg { i16 15360, i8 0 }, %struct.imx319_reg { i16 15361, i8 72 }, %struct.imx319_reg { i16 15362, i8 -56 }, %struct.imx319_reg { i16 15363, i8 -86 }, %struct.imx319_reg { i16 15364, i8 -111 }, %struct.imx319_reg { i16 15365, i8 84 }, %struct.imx319_reg { i16 15366, i8 38 }, %struct.imx319_reg { i16 15367, i8 32 }, %struct.imx319_reg { i16 15368, i8 81 }, %struct.imx319_reg { i16 15744, i8 0 }, %struct.imx319_reg { i16 16208, i8 0 }, %struct.imx319_reg { i16 16214, i8 0 }, %struct.imx319_reg { i16 16215, i8 48 }, %struct.imx319_reg { i16 16248, i8 1 }, %struct.imx319_reg { i16 16249, i8 24 }, %struct.imx319_reg { i16 16252, i8 0 }, %struct.imx319_reg { i16 16253, i8 0 }, %struct.imx319_reg { i16 16314, i8 0 }, %struct.imx319_reg { i16 16315, i8 0 }, %struct.imx319_reg { i16 -24447, i8 0 }, %struct.imx319_reg { i16 -8172, i8 0 }, %struct.imx319_reg { i16 514, i8 10 }, %struct.imx319_reg { i16 515, i8 122 }, %struct.imx319_reg { i16 548, i8 1 }, %struct.imx319_reg { i16 549, i8 -12 }, %struct.imx319_reg { i16 516, i8 0 }, %struct.imx319_reg { i16 517, i8 0 }, %struct.imx319_reg { i16 534, i8 0 }, %struct.imx319_reg { i16 535, i8 0 }, %struct.imx319_reg { i16 526, i8 1 }, %struct.imx319_reg { i16 527, i8 0 }, %struct.imx319_reg { i16 528, i8 1 }, %struct.imx319_reg { i16 529, i8 0 }, %struct.imx319_reg { i16 530, i8 1 }, %struct.imx319_reg { i16 531, i8 0 }, %struct.imx319_reg { i16 532, i8 1 }, %struct.imx319_reg { i16 533, i8 0 }, %struct.imx319_reg { i16 536, i8 1 }, %struct.imx319_reg { i16 537, i8 0 }, %struct.imx319_reg { i16 13844, i8 0 }, %struct.imx319_reg { i16 13846, i8 13 }, %struct.imx319_reg { i16 13847, i8 86 }, %struct.imx319_reg { i16 -18926, i8 32 }, %struct.imx319_reg { i16 -18925, i8 32 }, %struct.imx319_reg { i16 -18924, i8 32 }, %struct.imx319_reg { i16 -18923, i8 32 }, %struct.imx319_reg { i16 -18922, i8 10 }, %struct.imx319_reg { i16 -18921, i8 10 }, %struct.imx319_reg { i16 -18920, i8 32 }, %struct.imx319_reg { i16 -18919, i8 32 }, %struct.imx319_reg { i16 -18918, i8 32 }, %struct.imx319_reg { i16 -18917, i8 32 }, %struct.imx319_reg { i16 -18916, i8 10 }, %struct.imx319_reg { i16 -18915, i8 10 }, %struct.imx319_reg { i16 -18842, i8 48 }, %struct.imx319_reg { i16 -18841, i8 48 }, %struct.imx319_reg { i16 -18840, i8 48 }, %struct.imx319_reg { i16 -18839, i8 48 }, %struct.imx319_reg { i16 -18838, i8 20 }, %struct.imx319_reg { i16 -18837, i8 20 }, %struct.imx319_reg { i16 -18836, i8 32 }, %struct.imx319_reg { i16 -18835, i8 32 }, %struct.imx319_reg { i16 -18834, i8 32 }, %struct.imx319_reg { i16 -18833, i8 32 }, %struct.imx319_reg { i16 -18832, i8 16 }, %struct.imx319_reg { i16 -18831, i8 16 }, %struct.imx319_reg { i16 12855, i8 0 }, %struct.imx319_reg { i16 14592, i8 0 }, %struct.imx319_reg { i16 14593, i8 0 }, %struct.imx319_reg { i16 14594, i8 0 }, %struct.imx319_reg { i16 14596, i8 0 }, %struct.imx319_reg { i16 14597, i8 0 }, %struct.imx319_reg { i16 14598, i8 0 }, %struct.imx319_reg { i16 14599, i8 0 }, %struct.imx319_reg { i16 14600, i8 0 }, %struct.imx319_reg { i16 14601, i8 0 }, %struct.imx319_reg { i16 14610, i8 0 }, %struct.imx319_reg { i16 14640, i8 0 }, %struct.imx319_reg { i16 14641, i8 0 }, %struct.imx319_reg { i16 14643, i8 0 }, %struct.imx319_reg { i16 14644, i8 0 }, %struct.imx319_reg { i16 14645, i8 0 }, %struct.imx319_reg { i16 14646, i8 0 }, %struct.imx319_reg { i16 14647, i8 0 }, %struct.imx319_reg { i16 12460, i8 0 }], [180 x i8] zeroinitializer }, align 32
@mode_1936x1096_regs = internal constant { [171 x %struct.imx319_reg], [180 x i8] } { [171 x %struct.imx319_reg] [%struct.imx319_reg { i16 274, i8 10 }, %struct.imx319_reg { i16 275, i8 10 }, %struct.imx319_reg { i16 276, i8 3 }, %struct.imx319_reg { i16 834, i8 15 }, %struct.imx319_reg { i16 835, i8 -128 }, %struct.imx319_reg { i16 832, i8 12 }, %struct.imx319_reg { i16 833, i8 -86 }, %struct.imx319_reg { i16 836, i8 0 }, %struct.imx319_reg { i16 837, i8 0 }, %struct.imx319_reg { i16 838, i8 2 }, %struct.imx319_reg { i16 839, i8 -84 }, %struct.imx319_reg { i16 840, i8 12 }, %struct.imx319_reg { i16 841, i8 -49 }, %struct.imx319_reg { i16 842, i8 6 }, %struct.imx319_reg { i16 843, i8 -13 }, %struct.imx319_reg { i16 544, i8 0 }, %struct.imx319_reg { i16 545, i8 17 }, %struct.imx319_reg { i16 897, i8 1 }, %struct.imx319_reg { i16 899, i8 1 }, %struct.imx319_reg { i16 901, i8 1 }, %struct.imx319_reg { i16 903, i8 1 }, %struct.imx319_reg { i16 2304, i8 0 }, %struct.imx319_reg { i16 2305, i8 17 }, %struct.imx319_reg { i16 2306, i8 10 }, %struct.imx319_reg { i16 12608, i8 2 }, %struct.imx319_reg { i16 12609, i8 0 }, %struct.imx319_reg { i16 16141, i8 10 }, %struct.imx319_reg { i16 16148, i8 1 }, %struct.imx319_reg { i16 16188, i8 1 }, %struct.imx319_reg { i16 16205, i8 1 }, %struct.imx319_reg { i16 16204, i8 1 }, %struct.imx319_reg { i16 16980, i8 127 }, %struct.imx319_reg { i16 1025, i8 0 }, %struct.imx319_reg { i16 1028, i8 0 }, %struct.imx319_reg { i16 1029, i8 16 }, %struct.imx319_reg { i16 1032, i8 2 }, %struct.imx319_reg { i16 1033, i8 -96 }, %struct.imx319_reg { i16 1034, i8 0 }, %struct.imx319_reg { i16 1035, i8 0 }, %struct.imx319_reg { i16 1036, i8 7 }, %struct.imx319_reg { i16 1037, i8 -112 }, %struct.imx319_reg { i16 1038, i8 4 }, %struct.imx319_reg { i16 1039, i8 72 }, %struct.imx319_reg { i16 844, i8 7 }, %struct.imx319_reg { i16 845, i8 -112 }, %struct.imx319_reg { i16 846, i8 4 }, %struct.imx319_reg { i16 847, i8 72 }, %struct.imx319_reg { i16 12897, i8 0 }, %struct.imx319_reg { i16 12900, i8 0 }, %struct.imx319_reg { i16 12901, i8 16 }, %struct.imx319_reg { i16 769, i8 5 }, %struct.imx319_reg { i16 771, i8 4 }, %struct.imx319_reg { i16 773, i8 4 }, %struct.imx319_reg { i16 774, i8 1 }, %struct.imx319_reg { i16 775, i8 -110 }, %struct.imx319_reg { i16 777, i8 10 }, %struct.imx319_reg { i16 779, i8 2 }, %struct.imx319_reg { i16 781, i8 2 }, %struct.imx319_reg { i16 782, i8 0 }, %struct.imx319_reg { i16 783, i8 -6 }, %struct.imx319_reg { i16 784, i8 0 }, %struct.imx319_reg { i16 2080, i8 15 }, %struct.imx319_reg { i16 2081, i8 19 }, %struct.imx319_reg { i16 2082, i8 51 }, %struct.imx319_reg { i16 2083, i8 51 }, %struct.imx319_reg { i16 15904, i8 1 }, %struct.imx319_reg { i16 15927, i8 0 }, %struct.imx319_reg { i16 15931, i8 1 }, %struct.imx319_reg { i16 14499, i8 1 }, %struct.imx319_reg { i16 14504, i8 0 }, %struct.imx319_reg { i16 14505, i8 0 }, %struct.imx319_reg { i16 14506, i8 0 }, %struct.imx319_reg { i16 14507, i8 0 }, %struct.imx319_reg { i16 12852, i8 0 }, %struct.imx319_reg { i16 16321, i8 0 }, %struct.imx319_reg { i16 12853, i8 0 }, %struct.imx319_reg { i16 14338, i8 0 }, %struct.imx319_reg { i16 12611, i8 4 }, %struct.imx319_reg { i16 13834, i8 0 }, %struct.imx319_reg { i16 2816, i8 0 }, %struct.imx319_reg { i16 262, i8 0 }, %struct.imx319_reg { i16 2821, i8 1 }, %struct.imx319_reg { i16 2822, i8 1 }, %struct.imx319_reg { i16 12848, i8 0 }, %struct.imx319_reg { i16 13826, i8 1 }, %struct.imx319_reg { i16 13831, i8 1 }, %struct.imx319_reg { i16 15360, i8 0 }, %struct.imx319_reg { i16 15361, i8 72 }, %struct.imx319_reg { i16 15362, i8 -56 }, %struct.imx319_reg { i16 15363, i8 -86 }, %struct.imx319_reg { i16 15364, i8 -111 }, %struct.imx319_reg { i16 15365, i8 84 }, %struct.imx319_reg { i16 15366, i8 38 }, %struct.imx319_reg { i16 15367, i8 32 }, %struct.imx319_reg { i16 15368, i8 81 }, %struct.imx319_reg { i16 15744, i8 0 }, %struct.imx319_reg { i16 16208, i8 0 }, %struct.imx319_reg { i16 16214, i8 0 }, %struct.imx319_reg { i16 16215, i8 48 }, %struct.imx319_reg { i16 16248, i8 1 }, %struct.imx319_reg { i16 16249, i8 24 }, %struct.imx319_reg { i16 16252, i8 0 }, %struct.imx319_reg { i16 16253, i8 0 }, %struct.imx319_reg { i16 16314, i8 0 }, %struct.imx319_reg { i16 16315, i8 0 }, %struct.imx319_reg { i16 -24447, i8 0 }, %struct.imx319_reg { i16 -8172, i8 0 }, %struct.imx319_reg { i16 514, i8 5 }, %struct.imx319_reg { i16 515, i8 52 }, %struct.imx319_reg { i16 548, i8 1 }, %struct.imx319_reg { i16 549, i8 -12 }, %struct.imx319_reg { i16 516, i8 0 }, %struct.imx319_reg { i16 517, i8 0 }, %struct.imx319_reg { i16 534, i8 0 }, %struct.imx319_reg { i16 535, i8 0 }, %struct.imx319_reg { i16 526, i8 1 }, %struct.imx319_reg { i16 527, i8 0 }, %struct.imx319_reg { i16 528, i8 1 }, %struct.imx319_reg { i16 529, i8 0 }, %struct.imx319_reg { i16 530, i8 1 }, %struct.imx319_reg { i16 531, i8 0 }, %struct.imx319_reg { i16 532, i8 1 }, %struct.imx319_reg { i16 533, i8 0 }, %struct.imx319_reg { i16 536, i8 1 }, %struct.imx319_reg { i16 537, i8 0 }, %struct.imx319_reg { i16 13844, i8 0 }, %struct.imx319_reg { i16 13846, i8 13 }, %struct.imx319_reg { i16 13847, i8 86 }, %struct.imx319_reg { i16 -18926, i8 32 }, %struct.imx319_reg { i16 -18925, i8 32 }, %struct.imx319_reg { i16 -18924, i8 32 }, %struct.imx319_reg { i16 -18923, i8 32 }, %struct.imx319_reg { i16 -18922, i8 10 }, %struct.imx319_reg { i16 -18921, i8 10 }, %struct.imx319_reg { i16 -18920, i8 32 }, %struct.imx319_reg { i16 -18919, i8 32 }, %struct.imx319_reg { i16 -18918, i8 32 }, %struct.imx319_reg { i16 -18917, i8 32 }, %struct.imx319_reg { i16 -18916, i8 10 }, %struct.imx319_reg { i16 -18915, i8 10 }, %struct.imx319_reg { i16 -18842, i8 48 }, %struct.imx319_reg { i16 -18841, i8 48 }, %struct.imx319_reg { i16 -18840, i8 48 }, %struct.imx319_reg { i16 -18839, i8 48 }, %struct.imx319_reg { i16 -18838, i8 20 }, %struct.imx319_reg { i16 -18837, i8 20 }, %struct.imx319_reg { i16 -18836, i8 32 }, %struct.imx319_reg { i16 -18835, i8 32 }, %struct.imx319_reg { i16 -18834, i8 32 }, %struct.imx319_reg { i16 -18833, i8 32 }, %struct.imx319_reg { i16 -18832, i8 16 }, %struct.imx319_reg { i16 -18831, i8 16 }, %struct.imx319_reg { i16 12855, i8 0 }, %struct.imx319_reg { i16 14592, i8 0 }, %struct.imx319_reg { i16 14593, i8 0 }, %struct.imx319_reg { i16 14594, i8 0 }, %struct.imx319_reg { i16 14596, i8 0 }, %struct.imx319_reg { i16 14597, i8 0 }, %struct.imx319_reg { i16 14598, i8 0 }, %struct.imx319_reg { i16 14599, i8 0 }, %struct.imx319_reg { i16 14600, i8 0 }, %struct.imx319_reg { i16 14601, i8 0 }, %struct.imx319_reg { i16 14610, i8 0 }, %struct.imx319_reg { i16 14640, i8 0 }, %struct.imx319_reg { i16 14641, i8 0 }, %struct.imx319_reg { i16 14643, i8 0 }, %struct.imx319_reg { i16 14644, i8 0 }, %struct.imx319_reg { i16 14645, i8 0 }, %struct.imx319_reg { i16 14646, i8 0 }, %struct.imx319_reg { i16 14647, i8 0 }, %struct.imx319_reg { i16 12460, i8 0 }], [180 x i8] zeroinitializer }, align 32
@mode_1920x1080_regs = internal constant { [171 x %struct.imx319_reg], [180 x i8] } { [171 x %struct.imx319_reg] [%struct.imx319_reg { i16 274, i8 10 }, %struct.imx319_reg { i16 275, i8 10 }, %struct.imx319_reg { i16 276, i8 3 }, %struct.imx319_reg { i16 834, i8 15 }, %struct.imx319_reg { i16 835, i8 -128 }, %struct.imx319_reg { i16 832, i8 12 }, %struct.imx319_reg { i16 833, i8 -86 }, %struct.imx319_reg { i16 836, i8 0 }, %struct.imx319_reg { i16 837, i8 0 }, %struct.imx319_reg { i16 838, i8 2 }, %struct.imx319_reg { i16 839, i8 -76 }, %struct.imx319_reg { i16 840, i8 12 }, %struct.imx319_reg { i16 841, i8 -49 }, %struct.imx319_reg { i16 842, i8 6 }, %struct.imx319_reg { i16 843, i8 -21 }, %struct.imx319_reg { i16 544, i8 0 }, %struct.imx319_reg { i16 545, i8 17 }, %struct.imx319_reg { i16 897, i8 1 }, %struct.imx319_reg { i16 899, i8 1 }, %struct.imx319_reg { i16 901, i8 1 }, %struct.imx319_reg { i16 903, i8 1 }, %struct.imx319_reg { i16 2304, i8 0 }, %struct.imx319_reg { i16 2305, i8 17 }, %struct.imx319_reg { i16 2306, i8 10 }, %struct.imx319_reg { i16 12608, i8 2 }, %struct.imx319_reg { i16 12609, i8 0 }, %struct.imx319_reg { i16 16141, i8 10 }, %struct.imx319_reg { i16 16148, i8 1 }, %struct.imx319_reg { i16 16188, i8 1 }, %struct.imx319_reg { i16 16205, i8 1 }, %struct.imx319_reg { i16 16204, i8 1 }, %struct.imx319_reg { i16 16980, i8 127 }, %struct.imx319_reg { i16 1025, i8 0 }, %struct.imx319_reg { i16 1028, i8 0 }, %struct.imx319_reg { i16 1029, i8 16 }, %struct.imx319_reg { i16 1032, i8 2 }, %struct.imx319_reg { i16 1033, i8 -88 }, %struct.imx319_reg { i16 1034, i8 0 }, %struct.imx319_reg { i16 1035, i8 0 }, %struct.imx319_reg { i16 1036, i8 7 }, %struct.imx319_reg { i16 1037, i8 -128 }, %struct.imx319_reg { i16 1038, i8 4 }, %struct.imx319_reg { i16 1039, i8 56 }, %struct.imx319_reg { i16 844, i8 7 }, %struct.imx319_reg { i16 845, i8 -128 }, %struct.imx319_reg { i16 846, i8 4 }, %struct.imx319_reg { i16 847, i8 56 }, %struct.imx319_reg { i16 12897, i8 0 }, %struct.imx319_reg { i16 12900, i8 0 }, %struct.imx319_reg { i16 12901, i8 16 }, %struct.imx319_reg { i16 769, i8 5 }, %struct.imx319_reg { i16 771, i8 4 }, %struct.imx319_reg { i16 773, i8 4 }, %struct.imx319_reg { i16 774, i8 1 }, %struct.imx319_reg { i16 775, i8 -110 }, %struct.imx319_reg { i16 777, i8 10 }, %struct.imx319_reg { i16 779, i8 2 }, %struct.imx319_reg { i16 781, i8 2 }, %struct.imx319_reg { i16 782, i8 0 }, %struct.imx319_reg { i16 783, i8 -6 }, %struct.imx319_reg { i16 784, i8 0 }, %struct.imx319_reg { i16 2080, i8 15 }, %struct.imx319_reg { i16 2081, i8 19 }, %struct.imx319_reg { i16 2082, i8 51 }, %struct.imx319_reg { i16 2083, i8 51 }, %struct.imx319_reg { i16 15904, i8 1 }, %struct.imx319_reg { i16 15927, i8 0 }, %struct.imx319_reg { i16 15931, i8 1 }, %struct.imx319_reg { i16 14499, i8 1 }, %struct.imx319_reg { i16 14504, i8 0 }, %struct.imx319_reg { i16 14505, i8 0 }, %struct.imx319_reg { i16 14506, i8 0 }, %struct.imx319_reg { i16 14507, i8 0 }, %struct.imx319_reg { i16 12852, i8 0 }, %struct.imx319_reg { i16 16321, i8 0 }, %struct.imx319_reg { i16 12853, i8 0 }, %struct.imx319_reg { i16 14338, i8 0 }, %struct.imx319_reg { i16 12611, i8 4 }, %struct.imx319_reg { i16 13834, i8 0 }, %struct.imx319_reg { i16 2816, i8 0 }, %struct.imx319_reg { i16 262, i8 0 }, %struct.imx319_reg { i16 2821, i8 1 }, %struct.imx319_reg { i16 2822, i8 1 }, %struct.imx319_reg { i16 12848, i8 0 }, %struct.imx319_reg { i16 13826, i8 1 }, %struct.imx319_reg { i16 13831, i8 1 }, %struct.imx319_reg { i16 15360, i8 0 }, %struct.imx319_reg { i16 15361, i8 72 }, %struct.imx319_reg { i16 15362, i8 -56 }, %struct.imx319_reg { i16 15363, i8 -86 }, %struct.imx319_reg { i16 15364, i8 -111 }, %struct.imx319_reg { i16 15365, i8 84 }, %struct.imx319_reg { i16 15366, i8 38 }, %struct.imx319_reg { i16 15367, i8 32 }, %struct.imx319_reg { i16 15368, i8 81 }, %struct.imx319_reg { i16 15744, i8 0 }, %struct.imx319_reg { i16 16208, i8 0 }, %struct.imx319_reg { i16 16214, i8 0 }, %struct.imx319_reg { i16 16215, i8 48 }, %struct.imx319_reg { i16 16248, i8 1 }, %struct.imx319_reg { i16 16249, i8 24 }, %struct.imx319_reg { i16 16252, i8 0 }, %struct.imx319_reg { i16 16253, i8 0 }, %struct.imx319_reg { i16 16314, i8 0 }, %struct.imx319_reg { i16 16315, i8 0 }, %struct.imx319_reg { i16 -24447, i8 0 }, %struct.imx319_reg { i16 -8172, i8 0 }, %struct.imx319_reg { i16 514, i8 5 }, %struct.imx319_reg { i16 515, i8 52 }, %struct.imx319_reg { i16 548, i8 1 }, %struct.imx319_reg { i16 549, i8 -12 }, %struct.imx319_reg { i16 516, i8 0 }, %struct.imx319_reg { i16 517, i8 0 }, %struct.imx319_reg { i16 534, i8 0 }, %struct.imx319_reg { i16 535, i8 0 }, %struct.imx319_reg { i16 526, i8 1 }, %struct.imx319_reg { i16 527, i8 0 }, %struct.imx319_reg { i16 528, i8 1 }, %struct.imx319_reg { i16 529, i8 0 }, %struct.imx319_reg { i16 530, i8 1 }, %struct.imx319_reg { i16 531, i8 0 }, %struct.imx319_reg { i16 532, i8 1 }, %struct.imx319_reg { i16 533, i8 0 }, %struct.imx319_reg { i16 536, i8 1 }, %struct.imx319_reg { i16 537, i8 0 }, %struct.imx319_reg { i16 13844, i8 0 }, %struct.imx319_reg { i16 13846, i8 13 }, %struct.imx319_reg { i16 13847, i8 86 }, %struct.imx319_reg { i16 -18926, i8 32 }, %struct.imx319_reg { i16 -18925, i8 32 }, %struct.imx319_reg { i16 -18924, i8 32 }, %struct.imx319_reg { i16 -18923, i8 32 }, %struct.imx319_reg { i16 -18922, i8 10 }, %struct.imx319_reg { i16 -18921, i8 10 }, %struct.imx319_reg { i16 -18920, i8 32 }, %struct.imx319_reg { i16 -18919, i8 32 }, %struct.imx319_reg { i16 -18918, i8 32 }, %struct.imx319_reg { i16 -18917, i8 32 }, %struct.imx319_reg { i16 -18916, i8 10 }, %struct.imx319_reg { i16 -18915, i8 10 }, %struct.imx319_reg { i16 -18842, i8 48 }, %struct.imx319_reg { i16 -18841, i8 48 }, %struct.imx319_reg { i16 -18840, i8 48 }, %struct.imx319_reg { i16 -18839, i8 48 }, %struct.imx319_reg { i16 -18838, i8 20 }, %struct.imx319_reg { i16 -18837, i8 20 }, %struct.imx319_reg { i16 -18836, i8 32 }, %struct.imx319_reg { i16 -18835, i8 32 }, %struct.imx319_reg { i16 -18834, i8 32 }, %struct.imx319_reg { i16 -18833, i8 32 }, %struct.imx319_reg { i16 -18832, i8 16 }, %struct.imx319_reg { i16 -18831, i8 16 }, %struct.imx319_reg { i16 12855, i8 0 }, %struct.imx319_reg { i16 14592, i8 0 }, %struct.imx319_reg { i16 14593, i8 0 }, %struct.imx319_reg { i16 14594, i8 0 }, %struct.imx319_reg { i16 14596, i8 0 }, %struct.imx319_reg { i16 14597, i8 0 }, %struct.imx319_reg { i16 14598, i8 0 }, %struct.imx319_reg { i16 14599, i8 0 }, %struct.imx319_reg { i16 14600, i8 0 }, %struct.imx319_reg { i16 14601, i8 0 }, %struct.imx319_reg { i16 14610, i8 0 }, %struct.imx319_reg { i16 14640, i8 0 }, %struct.imx319_reg { i16 14641, i8 0 }, %struct.imx319_reg { i16 14643, i8 0 }, %struct.imx319_reg { i16 14644, i8 0 }, %struct.imx319_reg { i16 14645, i8 0 }, %struct.imx319_reg { i16 14646, i8 0 }, %struct.imx319_reg { i16 14647, i8 0 }, %struct.imx319_reg { i16 12460, i8 0 }], [180 x i8] zeroinitializer }, align 32
@mode_1640x1232_regs = internal constant { [171 x %struct.imx319_reg], [180 x i8] } { [171 x %struct.imx319_reg] [%struct.imx319_reg { i16 274, i8 10 }, %struct.imx319_reg { i16 275, i8 10 }, %struct.imx319_reg { i16 276, i8 3 }, %struct.imx319_reg { i16 834, i8 8 }, %struct.imx319_reg { i16 835, i8 32 }, %struct.imx319_reg { i16 832, i8 24 }, %struct.imx319_reg { i16 833, i8 42 }, %struct.imx319_reg { i16 836, i8 0 }, %struct.imx319_reg { i16 837, i8 0 }, %struct.imx319_reg { i16 838, i8 0 }, %struct.imx319_reg { i16 839, i8 0 }, %struct.imx319_reg { i16 840, i8 12 }, %struct.imx319_reg { i16 841, i8 -49 }, %struct.imx319_reg { i16 842, i8 9 }, %struct.imx319_reg { i16 843, i8 -97 }, %struct.imx319_reg { i16 544, i8 0 }, %struct.imx319_reg { i16 545, i8 17 }, %struct.imx319_reg { i16 897, i8 1 }, %struct.imx319_reg { i16 899, i8 1 }, %struct.imx319_reg { i16 901, i8 1 }, %struct.imx319_reg { i16 903, i8 1 }, %struct.imx319_reg { i16 2304, i8 1 }, %struct.imx319_reg { i16 2305, i8 34 }, %struct.imx319_reg { i16 2306, i8 10 }, %struct.imx319_reg { i16 12608, i8 2 }, %struct.imx319_reg { i16 12609, i8 0 }, %struct.imx319_reg { i16 16141, i8 10 }, %struct.imx319_reg { i16 16148, i8 1 }, %struct.imx319_reg { i16 16188, i8 2 }, %struct.imx319_reg { i16 16205, i8 1 }, %struct.imx319_reg { i16 16204, i8 1 }, %struct.imx319_reg { i16 16980, i8 127 }, %struct.imx319_reg { i16 1025, i8 0 }, %struct.imx319_reg { i16 1028, i8 0 }, %struct.imx319_reg { i16 1029, i8 16 }, %struct.imx319_reg { i16 1032, i8 0 }, %struct.imx319_reg { i16 1033, i8 0 }, %struct.imx319_reg { i16 1034, i8 0 }, %struct.imx319_reg { i16 1035, i8 0 }, %struct.imx319_reg { i16 1036, i8 6 }, %struct.imx319_reg { i16 1037, i8 104 }, %struct.imx319_reg { i16 1038, i8 4 }, %struct.imx319_reg { i16 1039, i8 -48 }, %struct.imx319_reg { i16 844, i8 6 }, %struct.imx319_reg { i16 845, i8 104 }, %struct.imx319_reg { i16 846, i8 4 }, %struct.imx319_reg { i16 847, i8 -48 }, %struct.imx319_reg { i16 12897, i8 0 }, %struct.imx319_reg { i16 12900, i8 0 }, %struct.imx319_reg { i16 12901, i8 16 }, %struct.imx319_reg { i16 769, i8 5 }, %struct.imx319_reg { i16 771, i8 4 }, %struct.imx319_reg { i16 773, i8 4 }, %struct.imx319_reg { i16 774, i8 1 }, %struct.imx319_reg { i16 775, i8 -110 }, %struct.imx319_reg { i16 777, i8 10 }, %struct.imx319_reg { i16 779, i8 2 }, %struct.imx319_reg { i16 781, i8 2 }, %struct.imx319_reg { i16 782, i8 0 }, %struct.imx319_reg { i16 783, i8 -6 }, %struct.imx319_reg { i16 784, i8 0 }, %struct.imx319_reg { i16 2080, i8 15 }, %struct.imx319_reg { i16 2081, i8 19 }, %struct.imx319_reg { i16 2082, i8 51 }, %struct.imx319_reg { i16 2083, i8 51 }, %struct.imx319_reg { i16 15904, i8 1 }, %struct.imx319_reg { i16 15927, i8 0 }, %struct.imx319_reg { i16 15931, i8 1 }, %struct.imx319_reg { i16 14499, i8 1 }, %struct.imx319_reg { i16 14504, i8 0 }, %struct.imx319_reg { i16 14505, i8 0 }, %struct.imx319_reg { i16 14506, i8 0 }, %struct.imx319_reg { i16 14507, i8 0 }, %struct.imx319_reg { i16 12852, i8 0 }, %struct.imx319_reg { i16 16321, i8 0 }, %struct.imx319_reg { i16 12853, i8 0 }, %struct.imx319_reg { i16 14338, i8 0 }, %struct.imx319_reg { i16 12611, i8 4 }, %struct.imx319_reg { i16 13834, i8 0 }, %struct.imx319_reg { i16 2816, i8 0 }, %struct.imx319_reg { i16 262, i8 0 }, %struct.imx319_reg { i16 2821, i8 1 }, %struct.imx319_reg { i16 2822, i8 1 }, %struct.imx319_reg { i16 12848, i8 0 }, %struct.imx319_reg { i16 13826, i8 1 }, %struct.imx319_reg { i16 13831, i8 1 }, %struct.imx319_reg { i16 15360, i8 0 }, %struct.imx319_reg { i16 15361, i8 -70 }, %struct.imx319_reg { i16 15362, i8 -56 }, %struct.imx319_reg { i16 15363, i8 -86 }, %struct.imx319_reg { i16 15364, i8 -111 }, %struct.imx319_reg { i16 15365, i8 84 }, %struct.imx319_reg { i16 15366, i8 38 }, %struct.imx319_reg { i16 15367, i8 32 }, %struct.imx319_reg { i16 15368, i8 81 }, %struct.imx319_reg { i16 15744, i8 0 }, %struct.imx319_reg { i16 16208, i8 0 }, %struct.imx319_reg { i16 16214, i8 0 }, %struct.imx319_reg { i16 16215, i8 48 }, %struct.imx319_reg { i16 16248, i8 0 }, %struct.imx319_reg { i16 16249, i8 52 }, %struct.imx319_reg { i16 16252, i8 0 }, %struct.imx319_reg { i16 16253, i8 0 }, %struct.imx319_reg { i16 16314, i8 0 }, %struct.imx319_reg { i16 16315, i8 0 }, %struct.imx319_reg { i16 -24447, i8 4 }, %struct.imx319_reg { i16 -8172, i8 0 }, %struct.imx319_reg { i16 514, i8 4 }, %struct.imx319_reg { i16 515, i8 -10 }, %struct.imx319_reg { i16 548, i8 1 }, %struct.imx319_reg { i16 549, i8 -12 }, %struct.imx319_reg { i16 516, i8 0 }, %struct.imx319_reg { i16 517, i8 0 }, %struct.imx319_reg { i16 534, i8 0 }, %struct.imx319_reg { i16 535, i8 0 }, %struct.imx319_reg { i16 526, i8 1 }, %struct.imx319_reg { i16 527, i8 0 }, %struct.imx319_reg { i16 528, i8 1 }, %struct.imx319_reg { i16 529, i8 0 }, %struct.imx319_reg { i16 530, i8 1 }, %struct.imx319_reg { i16 531, i8 0 }, %struct.imx319_reg { i16 532, i8 1 }, %struct.imx319_reg { i16 533, i8 0 }, %struct.imx319_reg { i16 536, i8 1 }, %struct.imx319_reg { i16 537, i8 0 }, %struct.imx319_reg { i16 13844, i8 0 }, %struct.imx319_reg { i16 13846, i8 13 }, %struct.imx319_reg { i16 13847, i8 86 }, %struct.imx319_reg { i16 -18926, i8 32 }, %struct.imx319_reg { i16 -18925, i8 32 }, %struct.imx319_reg { i16 -18924, i8 32 }, %struct.imx319_reg { i16 -18923, i8 32 }, %struct.imx319_reg { i16 -18922, i8 10 }, %struct.imx319_reg { i16 -18921, i8 10 }, %struct.imx319_reg { i16 -18920, i8 32 }, %struct.imx319_reg { i16 -18919, i8 32 }, %struct.imx319_reg { i16 -18918, i8 32 }, %struct.imx319_reg { i16 -18917, i8 32 }, %struct.imx319_reg { i16 -18916, i8 10 }, %struct.imx319_reg { i16 -18915, i8 10 }, %struct.imx319_reg { i16 -18842, i8 48 }, %struct.imx319_reg { i16 -18841, i8 48 }, %struct.imx319_reg { i16 -18840, i8 48 }, %struct.imx319_reg { i16 -18839, i8 48 }, %struct.imx319_reg { i16 -18838, i8 20 }, %struct.imx319_reg { i16 -18837, i8 20 }, %struct.imx319_reg { i16 -18836, i8 32 }, %struct.imx319_reg { i16 -18835, i8 32 }, %struct.imx319_reg { i16 -18834, i8 32 }, %struct.imx319_reg { i16 -18833, i8 32 }, %struct.imx319_reg { i16 -18832, i8 16 }, %struct.imx319_reg { i16 -18831, i8 16 }, %struct.imx319_reg { i16 12855, i8 0 }, %struct.imx319_reg { i16 14592, i8 0 }, %struct.imx319_reg { i16 14593, i8 0 }, %struct.imx319_reg { i16 14594, i8 0 }, %struct.imx319_reg { i16 14596, i8 0 }, %struct.imx319_reg { i16 14597, i8 0 }, %struct.imx319_reg { i16 14598, i8 0 }, %struct.imx319_reg { i16 14599, i8 0 }, %struct.imx319_reg { i16 14600, i8 0 }, %struct.imx319_reg { i16 14601, i8 0 }, %struct.imx319_reg { i16 14610, i8 0 }, %struct.imx319_reg { i16 14640, i8 0 }, %struct.imx319_reg { i16 14641, i8 0 }, %struct.imx319_reg { i16 14643, i8 0 }, %struct.imx319_reg { i16 14644, i8 0 }, %struct.imx319_reg { i16 14645, i8 0 }, %struct.imx319_reg { i16 14646, i8 0 }, %struct.imx319_reg { i16 14647, i8 0 }, %struct.imx319_reg { i16 12460, i8 0 }], [180 x i8] zeroinitializer }, align 32
@mode_1640x922_regs = internal constant { [171 x %struct.imx319_reg], [180 x i8] } { [171 x %struct.imx319_reg] [%struct.imx319_reg { i16 274, i8 10 }, %struct.imx319_reg { i16 275, i8 10 }, %struct.imx319_reg { i16 276, i8 3 }, %struct.imx319_reg { i16 834, i8 8 }, %struct.imx319_reg { i16 835, i8 32 }, %struct.imx319_reg { i16 832, i8 24 }, %struct.imx319_reg { i16 833, i8 42 }, %struct.imx319_reg { i16 836, i8 0 }, %struct.imx319_reg { i16 837, i8 0 }, %struct.imx319_reg { i16 838, i8 1 }, %struct.imx319_reg { i16 839, i8 48 }, %struct.imx319_reg { i16 840, i8 12 }, %struct.imx319_reg { i16 841, i8 -49 }, %struct.imx319_reg { i16 842, i8 8 }, %struct.imx319_reg { i16 843, i8 111 }, %struct.imx319_reg { i16 544, i8 0 }, %struct.imx319_reg { i16 545, i8 17 }, %struct.imx319_reg { i16 897, i8 1 }, %struct.imx319_reg { i16 899, i8 1 }, %struct.imx319_reg { i16 901, i8 1 }, %struct.imx319_reg { i16 903, i8 1 }, %struct.imx319_reg { i16 2304, i8 1 }, %struct.imx319_reg { i16 2305, i8 34 }, %struct.imx319_reg { i16 2306, i8 10 }, %struct.imx319_reg { i16 12608, i8 2 }, %struct.imx319_reg { i16 12609, i8 0 }, %struct.imx319_reg { i16 16141, i8 10 }, %struct.imx319_reg { i16 16148, i8 1 }, %struct.imx319_reg { i16 16188, i8 2 }, %struct.imx319_reg { i16 16205, i8 1 }, %struct.imx319_reg { i16 16204, i8 1 }, %struct.imx319_reg { i16 16980, i8 127 }, %struct.imx319_reg { i16 1025, i8 0 }, %struct.imx319_reg { i16 1028, i8 0 }, %struct.imx319_reg { i16 1029, i8 16 }, %struct.imx319_reg { i16 1032, i8 0 }, %struct.imx319_reg { i16 1033, i8 0 }, %struct.imx319_reg { i16 1034, i8 0 }, %struct.imx319_reg { i16 1035, i8 2 }, %struct.imx319_reg { i16 1036, i8 6 }, %struct.imx319_reg { i16 1037, i8 104 }, %struct.imx319_reg { i16 1038, i8 3 }, %struct.imx319_reg { i16 1039, i8 -102 }, %struct.imx319_reg { i16 844, i8 6 }, %struct.imx319_reg { i16 845, i8 104 }, %struct.imx319_reg { i16 846, i8 3 }, %struct.imx319_reg { i16 847, i8 -102 }, %struct.imx319_reg { i16 12897, i8 0 }, %struct.imx319_reg { i16 12900, i8 0 }, %struct.imx319_reg { i16 12901, i8 16 }, %struct.imx319_reg { i16 769, i8 5 }, %struct.imx319_reg { i16 771, i8 4 }, %struct.imx319_reg { i16 773, i8 4 }, %struct.imx319_reg { i16 774, i8 1 }, %struct.imx319_reg { i16 775, i8 -110 }, %struct.imx319_reg { i16 777, i8 10 }, %struct.imx319_reg { i16 779, i8 2 }, %struct.imx319_reg { i16 781, i8 2 }, %struct.imx319_reg { i16 782, i8 0 }, %struct.imx319_reg { i16 783, i8 -6 }, %struct.imx319_reg { i16 784, i8 0 }, %struct.imx319_reg { i16 2080, i8 15 }, %struct.imx319_reg { i16 2081, i8 19 }, %struct.imx319_reg { i16 2082, i8 51 }, %struct.imx319_reg { i16 2083, i8 51 }, %struct.imx319_reg { i16 15904, i8 1 }, %struct.imx319_reg { i16 15927, i8 0 }, %struct.imx319_reg { i16 15931, i8 1 }, %struct.imx319_reg { i16 14499, i8 1 }, %struct.imx319_reg { i16 14504, i8 0 }, %struct.imx319_reg { i16 14505, i8 0 }, %struct.imx319_reg { i16 14506, i8 0 }, %struct.imx319_reg { i16 14507, i8 0 }, %struct.imx319_reg { i16 12852, i8 0 }, %struct.imx319_reg { i16 16321, i8 0 }, %struct.imx319_reg { i16 12853, i8 0 }, %struct.imx319_reg { i16 14338, i8 0 }, %struct.imx319_reg { i16 12611, i8 4 }, %struct.imx319_reg { i16 13834, i8 0 }, %struct.imx319_reg { i16 2816, i8 0 }, %struct.imx319_reg { i16 262, i8 0 }, %struct.imx319_reg { i16 2821, i8 1 }, %struct.imx319_reg { i16 2822, i8 1 }, %struct.imx319_reg { i16 12848, i8 0 }, %struct.imx319_reg { i16 13826, i8 1 }, %struct.imx319_reg { i16 13831, i8 1 }, %struct.imx319_reg { i16 15360, i8 0 }, %struct.imx319_reg { i16 15361, i8 -70 }, %struct.imx319_reg { i16 15362, i8 -56 }, %struct.imx319_reg { i16 15363, i8 -86 }, %struct.imx319_reg { i16 15364, i8 -111 }, %struct.imx319_reg { i16 15365, i8 84 }, %struct.imx319_reg { i16 15366, i8 38 }, %struct.imx319_reg { i16 15367, i8 32 }, %struct.imx319_reg { i16 15368, i8 81 }, %struct.imx319_reg { i16 15744, i8 0 }, %struct.imx319_reg { i16 16208, i8 0 }, %struct.imx319_reg { i16 16214, i8 0 }, %struct.imx319_reg { i16 16215, i8 48 }, %struct.imx319_reg { i16 16248, i8 0 }, %struct.imx319_reg { i16 16249, i8 52 }, %struct.imx319_reg { i16 16252, i8 0 }, %struct.imx319_reg { i16 16253, i8 0 }, %struct.imx319_reg { i16 16314, i8 0 }, %struct.imx319_reg { i16 16315, i8 0 }, %struct.imx319_reg { i16 -24447, i8 4 }, %struct.imx319_reg { i16 -8172, i8 0 }, %struct.imx319_reg { i16 514, i8 4 }, %struct.imx319_reg { i16 515, i8 -10 }, %struct.imx319_reg { i16 548, i8 1 }, %struct.imx319_reg { i16 549, i8 -12 }, %struct.imx319_reg { i16 516, i8 0 }, %struct.imx319_reg { i16 517, i8 0 }, %struct.imx319_reg { i16 534, i8 0 }, %struct.imx319_reg { i16 535, i8 0 }, %struct.imx319_reg { i16 526, i8 1 }, %struct.imx319_reg { i16 527, i8 0 }, %struct.imx319_reg { i16 528, i8 1 }, %struct.imx319_reg { i16 529, i8 0 }, %struct.imx319_reg { i16 530, i8 1 }, %struct.imx319_reg { i16 531, i8 0 }, %struct.imx319_reg { i16 532, i8 1 }, %struct.imx319_reg { i16 533, i8 0 }, %struct.imx319_reg { i16 536, i8 1 }, %struct.imx319_reg { i16 537, i8 0 }, %struct.imx319_reg { i16 13844, i8 0 }, %struct.imx319_reg { i16 13846, i8 13 }, %struct.imx319_reg { i16 13847, i8 86 }, %struct.imx319_reg { i16 -18926, i8 32 }, %struct.imx319_reg { i16 -18925, i8 32 }, %struct.imx319_reg { i16 -18924, i8 32 }, %struct.imx319_reg { i16 -18923, i8 32 }, %struct.imx319_reg { i16 -18922, i8 10 }, %struct.imx319_reg { i16 -18921, i8 10 }, %struct.imx319_reg { i16 -18920, i8 32 }, %struct.imx319_reg { i16 -18919, i8 32 }, %struct.imx319_reg { i16 -18918, i8 32 }, %struct.imx319_reg { i16 -18917, i8 32 }, %struct.imx319_reg { i16 -18916, i8 10 }, %struct.imx319_reg { i16 -18915, i8 10 }, %struct.imx319_reg { i16 -18842, i8 48 }, %struct.imx319_reg { i16 -18841, i8 48 }, %struct.imx319_reg { i16 -18840, i8 48 }, %struct.imx319_reg { i16 -18839, i8 48 }, %struct.imx319_reg { i16 -18838, i8 20 }, %struct.imx319_reg { i16 -18837, i8 20 }, %struct.imx319_reg { i16 -18836, i8 32 }, %struct.imx319_reg { i16 -18835, i8 32 }, %struct.imx319_reg { i16 -18834, i8 32 }, %struct.imx319_reg { i16 -18833, i8 32 }, %struct.imx319_reg { i16 -18832, i8 16 }, %struct.imx319_reg { i16 -18831, i8 16 }, %struct.imx319_reg { i16 12855, i8 0 }, %struct.imx319_reg { i16 14592, i8 0 }, %struct.imx319_reg { i16 14593, i8 0 }, %struct.imx319_reg { i16 14594, i8 0 }, %struct.imx319_reg { i16 14596, i8 0 }, %struct.imx319_reg { i16 14597, i8 0 }, %struct.imx319_reg { i16 14598, i8 0 }, %struct.imx319_reg { i16 14599, i8 0 }, %struct.imx319_reg { i16 14600, i8 0 }, %struct.imx319_reg { i16 14601, i8 0 }, %struct.imx319_reg { i16 14610, i8 0 }, %struct.imx319_reg { i16 14640, i8 0 }, %struct.imx319_reg { i16 14641, i8 0 }, %struct.imx319_reg { i16 14643, i8 0 }, %struct.imx319_reg { i16 14644, i8 0 }, %struct.imx319_reg { i16 14645, i8 0 }, %struct.imx319_reg { i16 14646, i8 0 }, %struct.imx319_reg { i16 14647, i8 0 }, %struct.imx319_reg { i16 12460, i8 0 }], [180 x i8] zeroinitializer }, align 32
@mode_1296x736_regs = internal constant { [171 x %struct.imx319_reg], [180 x i8] } { [171 x %struct.imx319_reg] [%struct.imx319_reg { i16 274, i8 10 }, %struct.imx319_reg { i16 275, i8 10 }, %struct.imx319_reg { i16 276, i8 3 }, %struct.imx319_reg { i16 834, i8 8 }, %struct.imx319_reg { i16 835, i8 32 }, %struct.imx319_reg { i16 832, i8 24 }, %struct.imx319_reg { i16 833, i8 42 }, %struct.imx319_reg { i16 836, i8 0 }, %struct.imx319_reg { i16 837, i8 0 }, %struct.imx319_reg { i16 838, i8 1 }, %struct.imx319_reg { i16 839, i8 -16 }, %struct.imx319_reg { i16 840, i8 12 }, %struct.imx319_reg { i16 841, i8 -49 }, %struct.imx319_reg { i16 842, i8 7 }, %struct.imx319_reg { i16 843, i8 -81 }, %struct.imx319_reg { i16 544, i8 0 }, %struct.imx319_reg { i16 545, i8 17 }, %struct.imx319_reg { i16 897, i8 1 }, %struct.imx319_reg { i16 899, i8 1 }, %struct.imx319_reg { i16 901, i8 1 }, %struct.imx319_reg { i16 903, i8 1 }, %struct.imx319_reg { i16 2304, i8 1 }, %struct.imx319_reg { i16 2305, i8 34 }, %struct.imx319_reg { i16 2306, i8 10 }, %struct.imx319_reg { i16 12608, i8 2 }, %struct.imx319_reg { i16 12609, i8 0 }, %struct.imx319_reg { i16 16141, i8 10 }, %struct.imx319_reg { i16 16148, i8 1 }, %struct.imx319_reg { i16 16188, i8 2 }, %struct.imx319_reg { i16 16205, i8 1 }, %struct.imx319_reg { i16 16204, i8 1 }, %struct.imx319_reg { i16 16980, i8 127 }, %struct.imx319_reg { i16 1025, i8 0 }, %struct.imx319_reg { i16 1028, i8 0 }, %struct.imx319_reg { i16 1029, i8 16 }, %struct.imx319_reg { i16 1032, i8 0 }, %struct.imx319_reg { i16 1033, i8 -84 }, %struct.imx319_reg { i16 1034, i8 0 }, %struct.imx319_reg { i16 1035, i8 0 }, %struct.imx319_reg { i16 1036, i8 5 }, %struct.imx319_reg { i16 1037, i8 16 }, %struct.imx319_reg { i16 1038, i8 2 }, %struct.imx319_reg { i16 1039, i8 -32 }, %struct.imx319_reg { i16 844, i8 5 }, %struct.imx319_reg { i16 845, i8 16 }, %struct.imx319_reg { i16 846, i8 2 }, %struct.imx319_reg { i16 847, i8 -32 }, %struct.imx319_reg { i16 12897, i8 0 }, %struct.imx319_reg { i16 12900, i8 0 }, %struct.imx319_reg { i16 12901, i8 16 }, %struct.imx319_reg { i16 769, i8 5 }, %struct.imx319_reg { i16 771, i8 4 }, %struct.imx319_reg { i16 773, i8 4 }, %struct.imx319_reg { i16 774, i8 1 }, %struct.imx319_reg { i16 775, i8 -110 }, %struct.imx319_reg { i16 777, i8 10 }, %struct.imx319_reg { i16 779, i8 2 }, %struct.imx319_reg { i16 781, i8 2 }, %struct.imx319_reg { i16 782, i8 0 }, %struct.imx319_reg { i16 783, i8 -6 }, %struct.imx319_reg { i16 784, i8 0 }, %struct.imx319_reg { i16 2080, i8 15 }, %struct.imx319_reg { i16 2081, i8 19 }, %struct.imx319_reg { i16 2082, i8 51 }, %struct.imx319_reg { i16 2083, i8 51 }, %struct.imx319_reg { i16 15904, i8 1 }, %struct.imx319_reg { i16 15927, i8 0 }, %struct.imx319_reg { i16 15931, i8 1 }, %struct.imx319_reg { i16 14499, i8 1 }, %struct.imx319_reg { i16 14504, i8 0 }, %struct.imx319_reg { i16 14505, i8 0 }, %struct.imx319_reg { i16 14506, i8 0 }, %struct.imx319_reg { i16 14507, i8 0 }, %struct.imx319_reg { i16 12852, i8 0 }, %struct.imx319_reg { i16 16321, i8 0 }, %struct.imx319_reg { i16 12853, i8 0 }, %struct.imx319_reg { i16 14338, i8 0 }, %struct.imx319_reg { i16 12611, i8 4 }, %struct.imx319_reg { i16 13834, i8 0 }, %struct.imx319_reg { i16 2816, i8 0 }, %struct.imx319_reg { i16 262, i8 0 }, %struct.imx319_reg { i16 2821, i8 1 }, %struct.imx319_reg { i16 2822, i8 1 }, %struct.imx319_reg { i16 12848, i8 0 }, %struct.imx319_reg { i16 13826, i8 1 }, %struct.imx319_reg { i16 13831, i8 1 }, %struct.imx319_reg { i16 15360, i8 0 }, %struct.imx319_reg { i16 15361, i8 -70 }, %struct.imx319_reg { i16 15362, i8 -56 }, %struct.imx319_reg { i16 15363, i8 -86 }, %struct.imx319_reg { i16 15364, i8 -111 }, %struct.imx319_reg { i16 15365, i8 84 }, %struct.imx319_reg { i16 15366, i8 38 }, %struct.imx319_reg { i16 15367, i8 32 }, %struct.imx319_reg { i16 15368, i8 81 }, %struct.imx319_reg { i16 15744, i8 0 }, %struct.imx319_reg { i16 16208, i8 0 }, %struct.imx319_reg { i16 16214, i8 0 }, %struct.imx319_reg { i16 16215, i8 48 }, %struct.imx319_reg { i16 16248, i8 0 }, %struct.imx319_reg { i16 16249, i8 52 }, %struct.imx319_reg { i16 16252, i8 0 }, %struct.imx319_reg { i16 16253, i8 0 }, %struct.imx319_reg { i16 16314, i8 0 }, %struct.imx319_reg { i16 16315, i8 0 }, %struct.imx319_reg { i16 -24447, i8 4 }, %struct.imx319_reg { i16 -8172, i8 0 }, %struct.imx319_reg { i16 514, i8 4 }, %struct.imx319_reg { i16 515, i8 -10 }, %struct.imx319_reg { i16 548, i8 1 }, %struct.imx319_reg { i16 549, i8 -12 }, %struct.imx319_reg { i16 516, i8 0 }, %struct.imx319_reg { i16 517, i8 0 }, %struct.imx319_reg { i16 534, i8 0 }, %struct.imx319_reg { i16 535, i8 0 }, %struct.imx319_reg { i16 526, i8 1 }, %struct.imx319_reg { i16 527, i8 0 }, %struct.imx319_reg { i16 528, i8 1 }, %struct.imx319_reg { i16 529, i8 0 }, %struct.imx319_reg { i16 530, i8 1 }, %struct.imx319_reg { i16 531, i8 0 }, %struct.imx319_reg { i16 532, i8 1 }, %struct.imx319_reg { i16 533, i8 0 }, %struct.imx319_reg { i16 536, i8 1 }, %struct.imx319_reg { i16 537, i8 0 }, %struct.imx319_reg { i16 13844, i8 0 }, %struct.imx319_reg { i16 13846, i8 13 }, %struct.imx319_reg { i16 13847, i8 86 }, %struct.imx319_reg { i16 -18926, i8 32 }, %struct.imx319_reg { i16 -18925, i8 32 }, %struct.imx319_reg { i16 -18924, i8 32 }, %struct.imx319_reg { i16 -18923, i8 32 }, %struct.imx319_reg { i16 -18922, i8 10 }, %struct.imx319_reg { i16 -18921, i8 10 }, %struct.imx319_reg { i16 -18920, i8 32 }, %struct.imx319_reg { i16 -18919, i8 32 }, %struct.imx319_reg { i16 -18918, i8 32 }, %struct.imx319_reg { i16 -18917, i8 32 }, %struct.imx319_reg { i16 -18916, i8 10 }, %struct.imx319_reg { i16 -18915, i8 10 }, %struct.imx319_reg { i16 -18842, i8 48 }, %struct.imx319_reg { i16 -18841, i8 48 }, %struct.imx319_reg { i16 -18840, i8 48 }, %struct.imx319_reg { i16 -18839, i8 48 }, %struct.imx319_reg { i16 -18838, i8 20 }, %struct.imx319_reg { i16 -18837, i8 20 }, %struct.imx319_reg { i16 -18836, i8 32 }, %struct.imx319_reg { i16 -18835, i8 32 }, %struct.imx319_reg { i16 -18834, i8 32 }, %struct.imx319_reg { i16 -18833, i8 32 }, %struct.imx319_reg { i16 -18832, i8 16 }, %struct.imx319_reg { i16 -18831, i8 16 }, %struct.imx319_reg { i16 12855, i8 0 }, %struct.imx319_reg { i16 14592, i8 0 }, %struct.imx319_reg { i16 14593, i8 0 }, %struct.imx319_reg { i16 14594, i8 0 }, %struct.imx319_reg { i16 14596, i8 0 }, %struct.imx319_reg { i16 14597, i8 0 }, %struct.imx319_reg { i16 14598, i8 0 }, %struct.imx319_reg { i16 14599, i8 0 }, %struct.imx319_reg { i16 14600, i8 0 }, %struct.imx319_reg { i16 14601, i8 0 }, %struct.imx319_reg { i16 14610, i8 0 }, %struct.imx319_reg { i16 14640, i8 0 }, %struct.imx319_reg { i16 14641, i8 0 }, %struct.imx319_reg { i16 14643, i8 0 }, %struct.imx319_reg { i16 14644, i8 0 }, %struct.imx319_reg { i16 14645, i8 0 }, %struct.imx319_reg { i16 14646, i8 0 }, %struct.imx319_reg { i16 14647, i8 0 }, %struct.imx319_reg { i16 12460, i8 0 }], [180 x i8] zeroinitializer }, align 32
@mode_1280x720_regs = internal constant { [171 x %struct.imx319_reg], [180 x i8] } { [171 x %struct.imx319_reg] [%struct.imx319_reg { i16 274, i8 10 }, %struct.imx319_reg { i16 275, i8 10 }, %struct.imx319_reg { i16 276, i8 3 }, %struct.imx319_reg { i16 834, i8 8 }, %struct.imx319_reg { i16 835, i8 32 }, %struct.imx319_reg { i16 832, i8 24 }, %struct.imx319_reg { i16 833, i8 42 }, %struct.imx319_reg { i16 836, i8 0 }, %struct.imx319_reg { i16 837, i8 0 }, %struct.imx319_reg { i16 838, i8 2 }, %struct.imx319_reg { i16 839, i8 0 }, %struct.imx319_reg { i16 840, i8 12 }, %struct.imx319_reg { i16 841, i8 -49 }, %struct.imx319_reg { i16 842, i8 7 }, %struct.imx319_reg { i16 843, i8 -97 }, %struct.imx319_reg { i16 544, i8 0 }, %struct.imx319_reg { i16 545, i8 17 }, %struct.imx319_reg { i16 897, i8 1 }, %struct.imx319_reg { i16 899, i8 1 }, %struct.imx319_reg { i16 901, i8 1 }, %struct.imx319_reg { i16 903, i8 1 }, %struct.imx319_reg { i16 2304, i8 1 }, %struct.imx319_reg { i16 2305, i8 34 }, %struct.imx319_reg { i16 2306, i8 10 }, %struct.imx319_reg { i16 12608, i8 2 }, %struct.imx319_reg { i16 12609, i8 0 }, %struct.imx319_reg { i16 16141, i8 10 }, %struct.imx319_reg { i16 16148, i8 1 }, %struct.imx319_reg { i16 16188, i8 2 }, %struct.imx319_reg { i16 16205, i8 1 }, %struct.imx319_reg { i16 16204, i8 1 }, %struct.imx319_reg { i16 16980, i8 127 }, %struct.imx319_reg { i16 1025, i8 0 }, %struct.imx319_reg { i16 1028, i8 0 }, %struct.imx319_reg { i16 1029, i8 16 }, %struct.imx319_reg { i16 1032, i8 0 }, %struct.imx319_reg { i16 1033, i8 -76 }, %struct.imx319_reg { i16 1034, i8 0 }, %struct.imx319_reg { i16 1035, i8 0 }, %struct.imx319_reg { i16 1036, i8 5 }, %struct.imx319_reg { i16 1037, i8 0 }, %struct.imx319_reg { i16 1038, i8 2 }, %struct.imx319_reg { i16 1039, i8 -48 }, %struct.imx319_reg { i16 844, i8 5 }, %struct.imx319_reg { i16 845, i8 0 }, %struct.imx319_reg { i16 846, i8 2 }, %struct.imx319_reg { i16 847, i8 -48 }, %struct.imx319_reg { i16 12897, i8 0 }, %struct.imx319_reg { i16 12900, i8 0 }, %struct.imx319_reg { i16 12901, i8 16 }, %struct.imx319_reg { i16 769, i8 5 }, %struct.imx319_reg { i16 771, i8 4 }, %struct.imx319_reg { i16 773, i8 4 }, %struct.imx319_reg { i16 774, i8 1 }, %struct.imx319_reg { i16 775, i8 -110 }, %struct.imx319_reg { i16 777, i8 10 }, %struct.imx319_reg { i16 779, i8 2 }, %struct.imx319_reg { i16 781, i8 2 }, %struct.imx319_reg { i16 782, i8 0 }, %struct.imx319_reg { i16 783, i8 -6 }, %struct.imx319_reg { i16 784, i8 0 }, %struct.imx319_reg { i16 2080, i8 15 }, %struct.imx319_reg { i16 2081, i8 19 }, %struct.imx319_reg { i16 2082, i8 51 }, %struct.imx319_reg { i16 2083, i8 51 }, %struct.imx319_reg { i16 15904, i8 1 }, %struct.imx319_reg { i16 15927, i8 0 }, %struct.imx319_reg { i16 15931, i8 1 }, %struct.imx319_reg { i16 14499, i8 1 }, %struct.imx319_reg { i16 14504, i8 0 }, %struct.imx319_reg { i16 14505, i8 0 }, %struct.imx319_reg { i16 14506, i8 0 }, %struct.imx319_reg { i16 14507, i8 0 }, %struct.imx319_reg { i16 12852, i8 0 }, %struct.imx319_reg { i16 16321, i8 0 }, %struct.imx319_reg { i16 12853, i8 0 }, %struct.imx319_reg { i16 14338, i8 0 }, %struct.imx319_reg { i16 12611, i8 4 }, %struct.imx319_reg { i16 13834, i8 0 }, %struct.imx319_reg { i16 2816, i8 0 }, %struct.imx319_reg { i16 262, i8 0 }, %struct.imx319_reg { i16 2821, i8 1 }, %struct.imx319_reg { i16 2822, i8 1 }, %struct.imx319_reg { i16 12848, i8 0 }, %struct.imx319_reg { i16 13826, i8 1 }, %struct.imx319_reg { i16 13831, i8 1 }, %struct.imx319_reg { i16 15360, i8 0 }, %struct.imx319_reg { i16 15361, i8 -70 }, %struct.imx319_reg { i16 15362, i8 -56 }, %struct.imx319_reg { i16 15363, i8 -86 }, %struct.imx319_reg { i16 15364, i8 -111 }, %struct.imx319_reg { i16 15365, i8 84 }, %struct.imx319_reg { i16 15366, i8 38 }, %struct.imx319_reg { i16 15367, i8 32 }, %struct.imx319_reg { i16 15368, i8 81 }, %struct.imx319_reg { i16 15744, i8 0 }, %struct.imx319_reg { i16 16208, i8 0 }, %struct.imx319_reg { i16 16214, i8 0 }, %struct.imx319_reg { i16 16215, i8 48 }, %struct.imx319_reg { i16 16248, i8 0 }, %struct.imx319_reg { i16 16249, i8 52 }, %struct.imx319_reg { i16 16252, i8 0 }, %struct.imx319_reg { i16 16253, i8 0 }, %struct.imx319_reg { i16 16314, i8 0 }, %struct.imx319_reg { i16 16315, i8 0 }, %struct.imx319_reg { i16 -24447, i8 4 }, %struct.imx319_reg { i16 -8172, i8 0 }, %struct.imx319_reg { i16 514, i8 4 }, %struct.imx319_reg { i16 515, i8 -10 }, %struct.imx319_reg { i16 548, i8 1 }, %struct.imx319_reg { i16 549, i8 -12 }, %struct.imx319_reg { i16 516, i8 0 }, %struct.imx319_reg { i16 517, i8 0 }, %struct.imx319_reg { i16 534, i8 0 }, %struct.imx319_reg { i16 535, i8 0 }, %struct.imx319_reg { i16 526, i8 1 }, %struct.imx319_reg { i16 527, i8 0 }, %struct.imx319_reg { i16 528, i8 1 }, %struct.imx319_reg { i16 529, i8 0 }, %struct.imx319_reg { i16 530, i8 1 }, %struct.imx319_reg { i16 531, i8 0 }, %struct.imx319_reg { i16 532, i8 1 }, %struct.imx319_reg { i16 533, i8 0 }, %struct.imx319_reg { i16 536, i8 1 }, %struct.imx319_reg { i16 537, i8 0 }, %struct.imx319_reg { i16 13844, i8 0 }, %struct.imx319_reg { i16 13846, i8 13 }, %struct.imx319_reg { i16 13847, i8 86 }, %struct.imx319_reg { i16 -18926, i8 32 }, %struct.imx319_reg { i16 -18925, i8 32 }, %struct.imx319_reg { i16 -18924, i8 32 }, %struct.imx319_reg { i16 -18923, i8 32 }, %struct.imx319_reg { i16 -18922, i8 10 }, %struct.imx319_reg { i16 -18921, i8 10 }, %struct.imx319_reg { i16 -18920, i8 32 }, %struct.imx319_reg { i16 -18919, i8 32 }, %struct.imx319_reg { i16 -18918, i8 32 }, %struct.imx319_reg { i16 -18917, i8 32 }, %struct.imx319_reg { i16 -18916, i8 10 }, %struct.imx319_reg { i16 -18915, i8 10 }, %struct.imx319_reg { i16 -18842, i8 48 }, %struct.imx319_reg { i16 -18841, i8 48 }, %struct.imx319_reg { i16 -18840, i8 48 }, %struct.imx319_reg { i16 -18839, i8 48 }, %struct.imx319_reg { i16 -18838, i8 20 }, %struct.imx319_reg { i16 -18837, i8 20 }, %struct.imx319_reg { i16 -18836, i8 32 }, %struct.imx319_reg { i16 -18835, i8 32 }, %struct.imx319_reg { i16 -18834, i8 32 }, %struct.imx319_reg { i16 -18833, i8 32 }, %struct.imx319_reg { i16 -18832, i8 16 }, %struct.imx319_reg { i16 -18831, i8 16 }, %struct.imx319_reg { i16 12855, i8 0 }, %struct.imx319_reg { i16 14592, i8 0 }, %struct.imx319_reg { i16 14593, i8 0 }, %struct.imx319_reg { i16 14594, i8 0 }, %struct.imx319_reg { i16 14596, i8 0 }, %struct.imx319_reg { i16 14597, i8 0 }, %struct.imx319_reg { i16 14598, i8 0 }, %struct.imx319_reg { i16 14599, i8 0 }, %struct.imx319_reg { i16 14600, i8 0 }, %struct.imx319_reg { i16 14601, i8 0 }, %struct.imx319_reg { i16 14610, i8 0 }, %struct.imx319_reg { i16 14640, i8 0 }, %struct.imx319_reg { i16 14641, i8 0 }, %struct.imx319_reg { i16 14643, i8 0 }, %struct.imx319_reg { i16 14644, i8 0 }, %struct.imx319_reg { i16 14645, i8 0 }, %struct.imx319_reg { i16 14646, i8 0 }, %struct.imx319_reg { i16 14647, i8 0 }, %struct.imx319_reg { i16 12460, i8 0 }], [180 x i8] zeroinitializer }, align 32
@imx319_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"imx319:2285:(ctrl_hdlr)->_lock\00", [33 x i8] zeroinitializer }, align 32
@imx319_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @imx319_set_ctrl }, [20 x i8] zeroinitializer }, align 32
@imx319_test_pattern_menu = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], [44 x i8] zeroinitializer }, align 32
@imx319_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.4, i32 2349, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"control init failed: %d\00", [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"imx319_init_controls\00", [43 x i8] zeroinitializer }, align 32
@imx319_init_controls._entry_ptr = internal global ptr @imx319_init_controls._entry, section ".printk_index", align 4
@imx319_set_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.4, i32 1938, ptr @.str.48, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ctrl(id:0x%x,val:0x%x) is not handled\00", [58 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"imx319_set_ctrl\00", [16 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@imx319_set_ctrl._entry_ptr = internal global ptr @imx319_set_ctrl._entry, section ".printk_index", align 4
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Solid Colour\00", [19 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Eight Vertical Colour Bars\00", [37 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Colour Bars With Fade to Grey\00", [34 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Pseudorandom Sequence (PN9)\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 9963793, i64 9963796, i64 9963797, i64 10356993, i64 10356995, i64 10422531, i64 10422533]
@___asan_gen_.54 = private unnamed_addr constant [18 x i8] c"imx319_i2c_driver\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2553, i32 26 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2555, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant [14 x i8] c"imx319_pm_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2543, i32 32 }
@___asan_gen_.63 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2442, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [18 x i8] c"imx319_subdev_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2256, i32 37 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2452, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2459, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [21 x i8] c"link_freq_menu_items\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1660, i32 18 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2467, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2473, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [16 x i8] c"supported_modes\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1665, i32 33 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2483, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [20 x i8] c"imx319_internal_ops\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2266, i32 46 }
@___asan_gen_.120 = private unnamed_addr constant [25 x i8] c"imx319_subdev_entity_ops\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2262, i32 45 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2498, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [23 x i8] c"imx319_subdev_core_ops\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2240, i32 42 }
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"imx319_video_ops\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2245, i32 43 }
@___asan_gen_.135 = private unnamed_addr constant [15 x i8] c"imx319_pad_ops\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2249, i32 41 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2129, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2137, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [19 x i8] c"imx319_global_regs\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 147, i32 32 }
@___asan_gen_.156 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1850, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant [6 x i8] c"codes\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1777, i32 19 }
@___asan_gen_.172 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 998, i32 6 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2104, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2389, i32 50 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2392, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2396, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2398, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2403, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2405, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2418, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant [20 x i8] c"mode_3280x2464_regs\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 433, i32 32 }
@___asan_gen_.222 = private unnamed_addr constant [20 x i8] c"mode_3264x2448_regs\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 259, i32 32 }
@___asan_gen_.225 = private unnamed_addr constant [20 x i8] c"mode_1936x1096_regs\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 607, i32 32 }
@___asan_gen_.228 = private unnamed_addr constant [20 x i8] c"mode_1920x1080_regs\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 781, i32 32 }
@___asan_gen_.231 = private unnamed_addr constant [20 x i8] c"mode_1640x1232_regs\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 955, i32 32 }
@___asan_gen_.234 = private unnamed_addr constant [19 x i8] c"mode_1640x922_regs\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1129, i32 32 }
@___asan_gen_.237 = private unnamed_addr constant [19 x i8] c"mode_1296x736_regs\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1303, i32 32 }
@___asan_gen_.240 = private unnamed_addr constant [19 x i8] c"mode_1280x720_regs\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1477, i32 32 }
@___asan_gen_.243 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2285, i32 8 }
@___asan_gen_.249 = private unnamed_addr constant [16 x i8] c"imx319_ctrl_ops\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1947, i32 35 }
@___asan_gen_.252 = private unnamed_addr constant [25 x i8] c"imx319_test_pattern_menu\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1651, i32 27 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2349, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1937, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1652, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1653, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1654, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1655, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.289 = private constant [30 x i8] c"../drivers/media/i2c/imx319.c\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1656, i32 2 }
@llvm.compiler.used = appending global [103 x ptr] [ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_author300, ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_imx319_i2c_driver_exit, ptr @__initcall__kmod_imx319__298_2563_imx319_i2c_driver_init6, ptr @imx319_get_hwcfg._entry, ptr @imx319_get_hwcfg._entry.34, ptr @imx319_get_hwcfg._entry.38, ptr @imx319_get_hwcfg._entry_ptr, ptr @imx319_get_hwcfg._entry_ptr.36, ptr @imx319_get_hwcfg._entry_ptr.41, ptr @imx319_i2c_driver_exit, ptr @imx319_identify_module._entry, ptr @imx319_identify_module._entry_ptr, ptr @imx319_init_controls._entry, ptr @imx319_init_controls._entry_ptr, ptr @imx319_probe._entry, ptr @imx319_probe._entry.11, ptr @imx319_probe._entry.14, ptr @imx319_probe._entry.17, ptr @imx319_probe._entry.7, ptr @imx319_probe._entry_ptr, ptr @imx319_probe._entry_ptr.13, ptr @imx319_probe._entry_ptr.16, ptr @imx319_probe._entry_ptr.19, ptr @imx319_probe._entry_ptr.9, ptr @imx319_set_ctrl._entry, ptr @imx319_set_ctrl._entry_ptr, ptr @imx319_start_streaming._entry, ptr @imx319_start_streaming._entry.22, ptr @imx319_start_streaming._entry_ptr, ptr @imx319_start_streaming._entry_ptr.24, ptr @imx319_write_regs._entry, ptr @imx319_write_regs._entry_ptr, ptr @imx319_i2c_driver, ptr @.str, ptr @imx319_pm_ops, ptr @imx319_probe.__key, ptr @.str.1, ptr @imx319_subdev_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @link_freq_menu_items, ptr @.str.10, ptr @.str.12, ptr @supported_modes, ptr @.str.15, ptr @imx319_internal_ops, ptr @imx319_subdev_entity_ops, ptr @.str.18, ptr @imx319_subdev_core_ops, ptr @imx319_video_ops, ptr @imx319_pad_ops, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @imx319_global_regs, ptr @imx319_write_regs._rs, ptr @.str.25, ptr @.str.26, ptr @imx319_get_format_code.codes, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @mode_3280x2464_regs, ptr @mode_3264x2448_regs, ptr @mode_1936x1096_regs, ptr @mode_1920x1080_regs, ptr @mode_1640x1232_regs, ptr @mode_1640x922_regs, ptr @mode_1296x736_regs, ptr @mode_1280x720_regs, ptr @imx319_init_controls._key, ptr @.str.43, ptr @imx319_ctrl_ops, ptr @imx319_test_pattern_menu, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], section "llvm.metadata"
@0 = internal global [79 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx319_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx319_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx319_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx319_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx319_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx319_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_freq_menu_items to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx319_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supported_modes to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx319_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx319_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx319_subdev_entity_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx319_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx319_subdev_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx319_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx319_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx319_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx319_start_streaming._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx319_global_regs to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx319_write_regs._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx319_write_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx319_get_format_code.codes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx319_identify_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx319_get_hwcfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx319_get_hwcfg._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx319_get_hwcfg._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_3280x2464_regs to i32), i32 684, i32 864, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_3264x2448_regs to i32), i32 684, i32 864, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_1936x1096_regs to i32), i32 684, i32 864, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_1920x1080_regs to i32), i32 684, i32 864, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_1640x1232_regs to i32), i32 684, i32 864, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_1640x922_regs to i32), i32 684, i32 864, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_1296x736_regs to i32), i32 684, i32 864, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_1280x720_regs to i32), i32 684, i32 864, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx319_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx319_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx319_test_pattern_menu to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx319_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx319_set_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx319_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @imx319_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx319_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @imx319_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx319_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #7
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_handler, align 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %3) #7
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #7
  %mutex = getelementptr inbounds %struct.imx319, ptr %1, i32 0, i32 13
  tail call void @mutex_destroy(ptr noundef %mutex) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx319_probe(ptr noundef %client) #2 align 64 {
entry:
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %addr_buf.i.i = alloca [2 x i8], align 2
  %data_buf.i.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 552, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %mutex = getelementptr inbounds %struct.imx319, ptr %call.i, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @imx319_probe.__key) #7
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @imx319_subdev_ops) #7
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %identified.i = getelementptr inbounds %struct.imx319, ptr %call.i, i32 0, i32 15
  %2 = ptrtoint ptr %identified.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %identified.i, align 1, !range !175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.if.end13_crit_edge

do.body.if.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end.i:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %4 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr_buf.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_buf.i.i) #7
  %6 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %data_buf.i.i, align 4
  %7 = ptrtoint ptr %addr_buf.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 22, ptr %addr_buf.i.i, align 2
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr.i.i, align 2
  %10 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i.i, align 2
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 2, ptr %4, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %addr_buf.i.i, ptr %buf.i.i, align 4
  %14 = load i16, ptr %addr.i.i, align 2
  %arrayidx8.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %arrayidx8.i.i, align 4
  %flags11.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %flags11.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags11.i.i, align 2
  %len13.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %len13.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 2, ptr %len13.i.i, align 4
  %arrayidx14.i.i = getelementptr inbounds [4 x i8], ptr %data_buf.i.i, i32 0, i32 2
  %buf16.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %buf16.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx14.i.i, ptr %buf16.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter.i.i, align 8
  %call18.i.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call18.i.i)
  %cmp19.not.i.i = icmp eq i32 %call18.i.i, 2
  br i1 %cmp19.not.i.i, label %if.end4.i, label %imx319_read_reg.exit.i

imx319_read_reg.exit.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  br label %do.end10

if.end4.i:                                        ; preds = %if.end.i
  %21 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_buf.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 793, i32 %22)
  %cmp.not.i = icmp eq i32 %22, 793
  br i1 %cmp.not.i, label %if.end6.i, label %do.end.i

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.28, i32 noundef 793, i32 noundef %22) #10
  br label %do.end10

if.end6.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %identified.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %identified.i, align 1
  br label %if.end13

do.end10:                                         ; preds = %do.end.i, %imx319_read_reg.exit.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef -5) #10
  br label %error_probe

if.end13:                                         ; preds = %if.end6.i, %do.body.if.end13_crit_edge
  %call15 = call fastcc ptr @imx319_get_hwcfg(ptr noundef %dev)
  %hwcfg = getelementptr inbounds %struct.imx319, ptr %call.i, i32 0, i32 11
  %24 = ptrtoint ptr %hwcfg to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call15, ptr %hwcfg, align 4
  %tobool17.not = icmp eq ptr %call15, null
  br i1 %tobool17.not, label %do.end21, label %if.end23

do.end21:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #10
  br label %error_probe

if.end23:                                         ; preds = %if.end13
  %link_def_freq = getelementptr inbounds %struct.imx319, ptr %call.i, i32 0, i32 12
  %25 = ptrtoint ptr %link_def_freq to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 482400000, ptr %link_def_freq, align 8
  %nr_of_link_freqs = getelementptr inbounds %struct.imx319_hwcfg, ptr %call15, i32 0, i32 2
  %26 = ptrtoint ptr %nr_of_link_freqs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr_of_link_freqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp158.not = icmp eq i32 %27, 0
  br i1 %cmp158.not, label %if.end23.for.end_crit_edge, label %for.body.lr.ph

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end23
  %link_freqs = getelementptr inbounds %struct.imx319_hwcfg, ptr %call15, i32 0, i32 1
  %28 = ptrtoint ptr %link_freqs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %link_freqs, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0159 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i64, ptr %29, i32 %i.0159
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 482400000, i64 %31)
  %cmp27 = icmp eq i64 %31, 482400000
  br i1 %cmp27, label %do.body29, label %for.inc

do.body29:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx319_probe.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx319_probe, %if.then35)) #7
          to label %for.end [label %if.then35], !srcloc !176

if.then35:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx319_probe.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %i.0159) #7
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0159, 1
  %exitcond.not = icmp eq i32 %inc, %27
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then35, %do.body29, %if.end23.for.end_crit_edge
  %i.0157 = phi i32 [ %i.0159, %do.body29 ], [ %i.0159, %if.then35 ], [ 0, %if.end23.for.end_crit_edge ], [ %27, %for.inc.for.end_crit_edge ]
  %32 = ptrtoint ptr %hwcfg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hwcfg, align 4
  %nr_of_link_freqs42 = getelementptr inbounds %struct.imx319_hwcfg, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %nr_of_link_freqs42 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nr_of_link_freqs42, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0157, i32 %35)
  %cmp43 = icmp eq i32 %i.0157, %35
  br i1 %cmp43, label %do.end47, label %if.end49

do.end47:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #10
  br label %error_probe

if.end49:                                         ; preds = %for.end
  %cur_mode = getelementptr inbounds %struct.imx319, ptr %call.i, i32 0, i32 10
  %36 = ptrtoint ptr %cur_mode to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @supported_modes, ptr %cur_mode, align 8
  %37 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_priv.i.i, align 4
  %ctrl_handler.i = getelementptr inbounds %struct.imx319, ptr %call.i, i32 0, i32 2
  %call1.i = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler.i, i32 noundef 10, ptr noundef nonnull @imx319_init_controls._key, ptr noundef nonnull @.str.43) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i144 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i144, label %if.end.i145, label %if.end49.do.end55_crit_edge

if.end49.do.end55_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end55

if.end.i145:                                      ; preds = %if.end49
  %lock.i = getelementptr inbounds %struct.imx319, ptr %call.i, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %mutex, ptr %lock.i, align 4
  %call2.i = call ptr @v4l2_ctrl_new_int_menu(ptr noundef %ctrl_handler.i, ptr noundef nonnull @imx319_ctrl_ops, i32 noundef 10422529, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull @link_freq_menu_items) #7
  %link_freq.i = getelementptr inbounds %struct.imx319, ptr %call.i, i32 0, i32 3
  %40 = ptrtoint ptr %link_freq.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call2.i, ptr %link_freq.i, align 4
  %tobool4.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool4.not.i, label %if.end.i145.if.end7.i_crit_edge, label %if.then5.i

if.end.i145.if.end7.i_crit_edge:                  ; preds = %if.end.i145
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i145
  call void @__sanitizer_cov_trace_pc() #9
  %flags.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call2.i, i32 0, i32 20
  %41 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %42, 4
  store i32 %or.i, ptr %flags.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i145.if.end7.i_crit_edge
  %43 = ptrtoint ptr %link_def_freq to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %link_def_freq, align 8
  %45 = shl i64 %44, 2
  %div92366.i = and i64 %45, 9223372036854775804
  %46 = call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div92366.i, i64 3689348814741910323) #11, !srcloc !177
  %47 = call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div92366.i, i64 %46) #11, !srcloc !178
  %call197.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @imx319_ctrl_ops, i32 noundef 10422530, i64 noundef %47, i64 noundef %47, i64 noundef 1, i64 noundef %47) #7
  %pixel_rate198.i = getelementptr inbounds %struct.imx319, ptr %call.i, i32 0, i32 4
  %48 = ptrtoint ptr %pixel_rate198.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call197.i, ptr %pixel_rate198.i, align 8
  %49 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cur_mode, align 8
  %fll_def.i = getelementptr inbounds %struct.imx319_mode, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %fll_def.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fll_def.i, align 4
  %height.i = getelementptr inbounds %struct.imx319_mode, ptr %50, i32 0, i32 1
  %53 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %height.i, align 4
  %sub199.i = sub i32 %52, %54
  %conv200.i = zext i32 %sub199.i to i64
  %fll_min.i = getelementptr inbounds %struct.imx319_mode, ptr %50, i32 0, i32 3
  %55 = ptrtoint ptr %fll_min.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fll_min.i, align 4
  %sub202.i = sub i32 %56, %54
  %conv203.i = zext i32 %sub202.i to i64
  %sub205.i = sub i32 65535, %54
  %conv206.i = zext i32 %sub205.i to i64
  %call207.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @imx319_ctrl_ops, i32 noundef 10356993, i64 noundef %conv203.i, i64 noundef %conv206.i, i64 noundef 1, i64 noundef %conv200.i) #7
  %vblank.i = getelementptr inbounds %struct.imx319, ptr %call.i, i32 0, i32 5
  %57 = ptrtoint ptr %vblank.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call207.i, ptr %vblank.i, align 4
  %llp.i = getelementptr inbounds %struct.imx319_mode, ptr %50, i32 0, i32 4
  %58 = ptrtoint ptr %llp.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %llp.i, align 4
  %60 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %50, align 4
  %sub208.i = sub i32 %59, %61
  %conv209.i = zext i32 %sub208.i to i64
  %call210.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @imx319_ctrl_ops, i32 noundef 10356994, i64 noundef %conv209.i, i64 noundef %conv209.i, i64 noundef 1, i64 noundef %conv209.i) #7
  %hblank211.i = getelementptr inbounds %struct.imx319, ptr %call.i, i32 0, i32 6
  %62 = ptrtoint ptr %hblank211.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call210.i, ptr %hblank211.i, align 8
  %tobool213.not.i = icmp eq ptr %call210.i, null
  br i1 %tobool213.not.i, label %if.end7.i.if.end218.i_crit_edge, label %if.then214.i

if.end7.i.if.end218.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end218.i

if.then214.i:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %flags216.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call210.i, i32 0, i32 20
  %63 = ptrtoint ptr %flags216.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags216.i, align 4
  %or217.i = or i32 %64, 4
  store i32 %or217.i, ptr %flags216.i, align 4
  br label %if.end218.i

if.end218.i:                                      ; preds = %if.then214.i, %if.end7.i.if.end218.i_crit_edge
  %65 = ptrtoint ptr %fll_def.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %fll_def.i, align 4
  %sub220.i = add i32 %66, -18
  %conv221.i = zext i32 %sub220.i to i64
  %call222.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @imx319_ctrl_ops, i32 noundef 9963793, i64 noundef 1, i64 noundef %conv221.i, i64 noundef 1, i64 noundef 1270) #7
  %exposure.i = getelementptr inbounds %struct.imx319, ptr %call.i, i32 0, i32 7
  %67 = ptrtoint ptr %exposure.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call222.i, ptr %exposure.i, align 4
  %call223.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @imx319_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %hflip.i = getelementptr inbounds %struct.imx319, ptr %call.i, i32 0, i32 9
  %68 = ptrtoint ptr %hflip.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call223.i, ptr %hflip.i, align 4
  %call224.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @imx319_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %vflip.i = getelementptr inbounds %struct.imx319, ptr %call.i, i32 0, i32 8
  %69 = ptrtoint ptr %vflip.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call224.i, ptr %vflip.i, align 8
  %call225.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @imx319_ctrl_ops, i32 noundef 10356995, i64 noundef 0, i64 noundef 960, i64 noundef 1, i64 noundef 0) #7
  %call226.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @imx319_ctrl_ops, i32 noundef 10422533, i64 noundef 256, i64 noundef 4095, i64 noundef 1, i64 noundef 256) #7
  %call227.i = call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %ctrl_handler.i, ptr noundef nonnull @imx319_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 4, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @imx319_test_pattern_menu) #7
  %error.i = getelementptr inbounds %struct.imx319, ptr %call.i, i32 0, i32 2, i32 9
  %70 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool228.not.i = icmp eq i32 %71, 0
  br i1 %tobool228.not.i, label %if.end57, label %if.then229.i

if.then229.i:                                     ; preds = %if.end218.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i146 = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i146, ptr noundef nonnull @.str.44, i32 noundef %71) #10
  call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler.i) #7
  br label %do.end55

do.end55:                                         ; preds = %if.then229.i, %if.end49.do.end55_crit_edge
  %retval.0.i147.ph = phi i32 [ %call1.i, %if.end49.do.end55_crit_edge ], [ %71, %if.then229.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %retval.0.i147.ph) #10
  br label %error_probe

if.end57:                                         ; preds = %if.end218.i
  %ctrl_handler233.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %72 = ptrtoint ptr %ctrl_handler233.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %ctrl_handler.i, ptr %ctrl_handler233.i, align 8
  %internal_ops = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 7
  %73 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @imx319_internal_ops, ptr %internal_ops, align 4
  %flags = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 4
  %74 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flags, align 8
  %or = or i32 %75, 12
  store i32 %or, ptr %flags, align 8
  %ops = getelementptr inbounds %struct.media_entity, ptr %call.i, i32 0, i32 11
  %76 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @imx319_subdev_entity_ops, ptr %ops, align 8
  %function = getelementptr inbounds %struct.media_entity, ptr %call.i, i32 0, i32 3
  %77 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 131073, ptr %function, align 8
  %pad = getelementptr inbounds %struct.imx319, ptr %call.i, i32 0, i32 1
  %flags63 = getelementptr inbounds %struct.imx319, ptr %call.i, i32 0, i32 1, i32 4
  %78 = ptrtoint ptr %flags63 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 2, ptr %flags63, align 4
  %call67 = call i32 @media_entity_pads_init(ptr noundef nonnull %call.i, i16 noundef zeroext 1, ptr noundef %pad) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end74, label %do.end72

do.end72:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %call67) #10
  br label %error_handler_free

if.end74:                                         ; preds = %if.end57
  %call76 = call i32 @v4l2_async_register_subdev_sensor(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %if.end74.error_handler_free_crit_edge, label %if.then81

if.end74.error_handler_free_crit_edge:            ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_handler_free

if.then81:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  %call.i148 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #7
  call void @pm_runtime_enable(ptr noundef %dev) #7
  %call.i149 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 0) #7
  br label %cleanup

error_handler_free:                               ; preds = %if.end74.error_handler_free_crit_edge, %do.end72
  %ret.0 = phi i32 [ %call67, %do.end72 ], [ %call76, %if.end74.error_handler_free_crit_edge ]
  %79 = ptrtoint ptr %ctrl_handler233.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ctrl_handler233.i, align 8
  call void @v4l2_ctrl_handler_free(ptr noundef %80) #7
  br label %error_probe

error_probe:                                      ; preds = %error_handler_free, %do.end55, %do.end47, %do.end21, %do.end10
  %ret.1 = phi i32 [ -5, %do.end10 ], [ -22, %do.end47 ], [ %retval.0.i147.ph, %do.end55 ], [ %ret.0, %error_handler_free ], [ -19, %do.end21 ]
  call void @mutex_destroy(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %error_probe, %if.then81, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %error_probe ], [ 0, %if.then81 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @imx319_get_hwcfg(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %bus_cfg = alloca %struct.v4l2_fwnode_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %bus_cfg) #7
  %0 = call ptr @memset(ptr %bus_cfg, i32 0, i32 64)
  %1 = getelementptr inbounds { %struct.fwnode_endpoint, i32, { { i32, i8, i8, [2 x i8] }, %struct.v4l2_fwnode_bus_mipi_csi1, [3 x i8], { i32, [8 x i8], i8, i8, [9 x i8], [1 x i8] } }, ptr, i32 }, ptr %bus_cfg, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %1, align 4
  %call = tail call ptr @dev_fwnode(ptr noundef %dev) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @fwnode_graph_get_next_endpoint(ptr noundef nonnull %call, ptr noundef null) #7
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @v4l2_fwnode_endpoint_alloc_parse(ptr noundef nonnull %call1, ptr noundef nonnull %bus_cfg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup.sink.split_crit_edge

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end8:                                          ; preds = %if.end4
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #7
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %if.end8.cleanup.sink.split_crit_edge, label %if.end12

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end12:                                         ; preds = %if.end8
  %call13 = call ptr @dev_fwnode(ptr noundef %dev) #7
  %call.i128 = call i32 @fwnode_property_read_u32_array(ptr noundef %call13, ptr noundef nonnull @.str.30, ptr noundef nonnull %call.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %tobool15.not = icmp eq i32 %call.i128, 0
  br i1 %tobool15.not, label %do.body18, label %do.end

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31) #10
  br label %cleanup.sink.split

do.body18:                                        ; preds = %if.end12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx319_get_hwcfg.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx319_get_hwcfg, %if.then23)) #7
          to label %do.end27 [label %if.then23], !srcloc !176

if.then23:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx319_get_hwcfg.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %4) #7
  br label %do.end27

do.end27:                                         ; preds = %if.then23, %do.body18
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19200000, i32 %6)
  %cmp.not = icmp eq i32 %6, 19200000
  br i1 %cmp.not, label %do.body35, label %do.end32

do.end32:                                         ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %6) #10
  br label %cleanup.sink.split

do.body35:                                        ; preds = %do.end27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx319_get_hwcfg.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx319_get_hwcfg, %if.then47)) #7
          to label %do.end50 [label %if.then47], !srcloc !176

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #9
  %nr_of_link_frequencies = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg, i32 0, i32 4
  %7 = ptrtoint ptr %nr_of_link_frequencies to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_of_link_frequencies, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx319_get_hwcfg.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %8) #7
  br label %do.end50

do.end50:                                         ; preds = %if.then47, %do.body35
  %nr_of_link_frequencies51 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg, i32 0, i32 4
  %9 = ptrtoint ptr %nr_of_link_frequencies51 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_of_link_frequencies51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool52.not = icmp eq i32 %10, 0
  br i1 %tobool52.not, label %do.end56, label %if.end57

do.end56:                                         ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.39) #10
  br label %cleanup.sink.split

if.end57:                                         ; preds = %do.end50
  %nr_of_link_freqs = getelementptr inbounds %struct.imx319_hwcfg, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %nr_of_link_freqs to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %nr_of_link_freqs, align 4
  %add = add i32 %10, 1
  %12 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 8) #7
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !179

devm_kcalloc.exit.thread:                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %link_freqs132 = getelementptr inbounds %struct.imx319_hwcfg, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %link_freqs132 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %link_freqs132, align 4
  br label %cleanup.sink.split

devm_kcalloc.exit:                                ; preds = %if.end57
  %15 = extractvalue { i32, i1 } %12, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %15, i32 noundef 3520) #7
  %link_freqs = getelementptr inbounds %struct.imx319_hwcfg, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %link_freqs to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call5.i.i, ptr %link_freqs, align 4
  %tobool62.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool62.not, label %devm_kcalloc.exit.cleanup.sink.split_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup.sink.split_crit_edge:   ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %17 = ptrtoint ptr %nr_of_link_frequencies51 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr_of_link_frequencies51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp66135.not = icmp eq i32 %18, 0
  br i1 %cmp66135.not, label %for.cond.preheader.cleanup.sink.split_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup.sink.split_crit_edge:  ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %link_frequencies = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0136 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %19 = ptrtoint ptr %link_frequencies to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %link_frequencies, align 4
  %arrayidx = getelementptr i64, ptr %20, i32 %i.0136
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx, align 8
  %23 = ptrtoint ptr %link_freqs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %link_freqs, align 4
  %arrayidx68 = getelementptr i64, ptr %24, i32 %i.0136
  %25 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %22, ptr %arrayidx68, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx319_get_hwcfg.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx319_get_hwcfg, %if.then81)) #7
          to label %for.inc [label %if.then81], !srcloc !176

if.then81:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %link_freqs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %link_freqs, align 4
  %arrayidx83 = getelementptr i64, ptr %27, i32 %i.0136
  %28 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx83, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx319_get_hwcfg.__UNIQUE_ID_ddebug296, ptr noundef %dev, ptr noundef nonnull @.str.42, i32 noundef %i.0136, i64 noundef %29) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then81, %for.body
  %inc = add nuw i32 %i.0136, 1
  %30 = ptrtoint ptr %nr_of_link_frequencies51 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nr_of_link_frequencies51, align 4
  %cmp66 = icmp ult i32 %inc, %31
  br i1 %cmp66, label %for.inc.for.body_crit_edge, label %for.inc.cleanup.sink.split_crit_edge

for.inc.cleanup.sink.split_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup.sink.split:                               ; preds = %for.inc.cleanup.sink.split_crit_edge, %for.cond.preheader.cleanup.sink.split_crit_edge, %devm_kcalloc.exit.cleanup.sink.split_crit_edge, %devm_kcalloc.exit.thread, %do.end56, %do.end32, %do.end, %if.end8.cleanup.sink.split_crit_edge, %if.end4.cleanup.sink.split_crit_edge
  %retval.0.ph = phi ptr [ %call.i, %for.cond.preheader.cleanup.sink.split_crit_edge ], [ null, %devm_kcalloc.exit.thread ], [ null, %devm_kcalloc.exit.cleanup.sink.split_crit_edge ], [ null, %if.end8.cleanup.sink.split_crit_edge ], [ null, %if.end4.cleanup.sink.split_crit_edge ], [ null, %do.end56 ], [ null, %do.end32 ], [ null, %do.end ], [ %call.i, %for.inc.cleanup.sink.split_crit_edge ]
  call void @v4l2_fwnode_endpoint_free(ptr noundef nonnull %bus_cfg) #7
  call void @fwnode_handle_put(ptr noundef nonnull %call1) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg) #7
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev_sensor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subdev_subscribe_event(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subdev_unsubscribe(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx319_set_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  %buf.i.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %mutex = getelementptr inbounds %struct.imx319, ptr %sd, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %streaming = getelementptr inbounds %struct.imx319, ptr %sd, i32 0, i32 14
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !175
  %4 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %enable)
  %cmp = icmp eq i32 %4, %enable
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool4 = icmp ne i32 %enable, 0
  br i1 %tobool4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end10

if.then.i:                                        ; preds = %if.then5
  %usage_count.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !180
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #7
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #7, !srcloc !181
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.err_unlock_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.err_unlock_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unlock

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !182
  br label %err_unlock

if.end10:                                         ; preds = %if.then5
  %call11 = tail call fastcc i32 @imx319_start_streaming(ptr noundef %sd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.if.end18_crit_edge, label %err_rpm_put

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #7
  %8 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 256, ptr %buf.i.i, align 2
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 0, ptr %8, align 2
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %7, ptr noundef nonnull %buf.i.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #7
  %dev16 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call.i48 = call i32 @__pm_runtime_idle(ptr noundef %dev16, i32 noundef 5) #7
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end10.if.end18_crit_edge
  %frombool = zext i1 %tobool4 to i8
  %11 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool, ptr %streaming, align 4
  %vflip = getelementptr inbounds %struct.imx319, ptr %sd, i32 0, i32 8
  %12 = ptrtoint ptr %vflip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vflip, align 8
  call void @__v4l2_ctrl_grab(ptr noundef %13, i1 noundef zeroext %tobool4) #7
  %hflip = getelementptr inbounds %struct.imx319, ptr %sd, i32 0, i32 9
  %14 = ptrtoint ptr %hflip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hflip, align 4
  call void @__v4l2_ctrl_grab(ptr noundef %15, i1 noundef zeroext %tobool4) #7
  call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

err_rpm_put:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call.i49 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #7
  br label %err_unlock

err_unlock:                                       ; preds = %err_rpm_put, %do.end11.i.i.i.i.i, %if.then.i.err_unlock_crit_edge
  %ret.1 = phi i32 [ %call11, %err_rpm_put ], [ %call.i, %if.then.i.err_unlock_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %err_unlock, %if.end18, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.1, %err_unlock ], [ 0, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx319_start_streaming(ptr nocapture noundef %imx319) unnamed_addr #2 align 64 {
entry:
  %buf.i77 = alloca [6 x i8], align 2
  %buf.i = alloca [6 x i8], align 2
  %buf.i.i54 = alloca [6 x i8], align 2
  %buf.i.i49 = alloca [6 x i8], align 2
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %addr_buf.i.i = alloca [2 x i8], align 2
  %data_buf.i.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %imx319, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %identified.i = getelementptr inbounds %struct.imx319, ptr %imx319, i32 0, i32 15
  %2 = ptrtoint ptr %identified.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %identified.i, align 1, !range !175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %4 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr_buf.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_buf.i.i) #7
  %6 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %data_buf.i.i, align 4
  %7 = ptrtoint ptr %addr_buf.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 22, ptr %addr_buf.i.i, align 2
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr.i.i, align 2
  %10 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i.i, align 2
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 2, ptr %4, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %addr_buf.i.i, ptr %buf.i.i, align 4
  %14 = load i16, ptr %addr.i.i, align 2
  %arrayidx8.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %arrayidx8.i.i, align 4
  %flags11.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %flags11.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags11.i.i, align 2
  %len13.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %len13.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 2, ptr %len13.i.i, align 4
  %arrayidx14.i.i = getelementptr inbounds [4 x i8], ptr %data_buf.i.i, i32 0, i32 2
  %buf16.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %buf16.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx14.i.i, ptr %buf16.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter.i.i, align 8
  %call18.i.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call18.i.i)
  %cmp19.not.i.i = icmp eq i32 %call18.i.i, 2
  br i1 %cmp19.not.i.i, label %if.end4.i, label %imx319_read_reg.exit.i

imx319_read_reg.exit.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %21 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_buf.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 793, i32 %22)
  %cmp.not.i = icmp eq i32 %22, 793
  br i1 %cmp.not.i, label %if.end6.i, label %do.end.i

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.28, i32 noundef 793, i32 noundef %22) #10
  br label %cleanup

if.end6.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %identified.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %identified.i, align 1
  br label %if.end

if.end:                                           ; preds = %if.end6.i, %entry.if.end_crit_edge
  %24 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_priv.i, align 4
  %26 = getelementptr inbounds [6 x i8], ptr %buf.i.i49, i32 0, i32 2
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 104
  br i1 %exitcond.not.i, label %if.end5, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end
  %i.025.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.imx319_reg, ptr @imx319_global_regs, i32 %i.025.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx.i, align 2
  %val.i = getelementptr %struct.imx319_reg, ptr @imx319_global_regs, i32 %i.025.i, i32 1
  %29 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %val.i, align 2
  %conv.i = zext i8 %30 to i32
  %31 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i49) #7
  %33 = ptrtoint ptr %buf.i.i49 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %28, ptr %buf.i.i49, align 2
  %shl.i.i = shl nuw i32 %conv.i, 24
  %34 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %shl.i.i, ptr %26, align 2
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %32, ptr noundef nonnull %buf.i.i49, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i)
  %cmp5.not.i.i = icmp eq i32 %call.i.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i49) #7
  br i1 %cmp5.not.i.i, label %for.cond.i, label %do.body.i

do.body.i:                                        ; preds = %for.body.i
  %call3.i = call i32 @___ratelimit(ptr noundef nonnull @imx319_write_regs._rs, ptr noundef nonnull @__func__.imx319_write_regs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %do.body.i.do.end_crit_edge, label %do.end.i52

do.body.i.do.end_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end.i52:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i51 = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  %conv9.i = zext i16 %28 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i51, ptr noundef nonnull @.str.26, i32 noundef %conv9.i, i32 noundef -5) #10
  br label %do.end

do.end:                                           ; preds = %do.end.i52, %do.body.i.do.end_crit_edge
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #10
  br label %cleanup

if.end5:                                          ; preds = %for.cond.i
  %cur_mode = getelementptr inbounds %struct.imx319, ptr %imx319, i32 0, i32 10
  %35 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cur_mode, align 8
  %reg_list6 = getelementptr inbounds %struct.imx319_mode, ptr %36, i32 0, i32 6
  %regs7 = getelementptr inbounds %struct.imx319_mode, ptr %36, i32 0, i32 6, i32 1
  %37 = ptrtoint ptr %regs7 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs7, align 4
  %39 = ptrtoint ptr %reg_list6 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %reg_list6, align 4
  %41 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_priv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp24.not.i = icmp eq i32 %40, 0
  br i1 %cmp24.not.i, label %if.end5.if.end16_crit_edge, label %for.body.lr.ph.i

if.end5.if.end16_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

for.body.lr.ph.i:                                 ; preds = %if.end5
  %43 = getelementptr inbounds [6 x i8], ptr %buf.i.i54, i32 0, i32 2
  br label %for.body.i66

for.cond.i58:                                     ; preds = %for.body.i66
  %inc.i56 = add nuw i32 %i.025.i59, 1
  %exitcond.not.i57 = icmp eq i32 %inc.i56, %40
  br i1 %exitcond.not.i57, label %for.cond.i58.if.end16_crit_edge, label %for.cond.i58.for.body.i66_crit_edge

for.cond.i58.for.body.i66_crit_edge:              ; preds = %for.cond.i58
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i66

for.cond.i58.if.end16_crit_edge:                  ; preds = %for.cond.i58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

for.body.i66:                                     ; preds = %for.cond.i58.for.body.i66_crit_edge, %for.body.lr.ph.i
  %i.025.i59 = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i56, %for.cond.i58.for.body.i66_crit_edge ]
  %arrayidx.i60 = getelementptr %struct.imx319_reg, ptr %38, i32 %i.025.i59
  %44 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx.i60, align 2
  %val.i61 = getelementptr %struct.imx319_reg, ptr %38, i32 %i.025.i59, i32 1
  %46 = ptrtoint ptr %val.i61 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %val.i61, align 2
  %conv.i62 = zext i8 %47 to i32
  %48 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i54) #7
  %50 = ptrtoint ptr %buf.i.i54 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %45, ptr %buf.i.i54, align 2
  %shl.i.i63 = shl nuw i32 %conv.i62, 24
  %51 = ptrtoint ptr %43 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 %shl.i.i63, ptr %43, align 2
  %call.i.i.i64 = call i32 @i2c_transfer_buffer_flags(ptr noundef %49, ptr noundef nonnull %buf.i.i54, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i64)
  %cmp5.not.i.i65 = icmp eq i32 %call.i.i.i64, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i54) #7
  br i1 %cmp5.not.i.i65, label %for.cond.i58, label %do.body.i69

do.body.i69:                                      ; preds = %for.body.i66
  %call3.i67 = call i32 @___ratelimit(ptr noundef nonnull @imx319_write_regs._rs, ptr noundef nonnull @__func__.imx319_write_regs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i67)
  %tobool4.not.i68 = icmp eq i32 %call3.i67, 0
  br i1 %tobool4.not.i68, label %do.body.i69.do.end14_crit_edge, label %do.end.i72

do.body.i69.do.end14_crit_edge:                   ; preds = %do.body.i69
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

do.end.i72:                                       ; preds = %do.body.i69
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i70 = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 4
  %52 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx.i60, align 2
  %conv9.i71 = zext i16 %53 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i70, ptr noundef nonnull @.str.26, i32 noundef %conv9.i71, i32 noundef -5) #10
  br label %do.end14

do.end14:                                         ; preds = %do.end.i72, %do.body.i69.do.end14_crit_edge
  %dev15 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.23) #10
  br label %cleanup

if.end16:                                         ; preds = %for.cond.i58.if.end16_crit_edge, %if.end5.if.end16_crit_edge
  %54 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i) #7
  %56 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 2
  %57 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 16377, ptr %buf.i, align 2
  %58 = ptrtoint ptr %56 to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 16777216, ptr %56, align 2
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %55, ptr noundef nonnull %buf.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp5.not.i = icmp eq i32 %call.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #7
  br i1 %cmp5.not.i, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %imx319, i32 0, i32 8
  %59 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ctrl_handler, align 8
  %call22 = call i32 @__v4l2_ctrl_handler_setup(ptr noundef %60) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i77) #7
  %63 = getelementptr inbounds [6 x i8], ptr %buf.i77, i32 0, i32 2
  %64 = ptrtoint ptr %buf.i77 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 256, ptr %buf.i77, align 2
  %65 = ptrtoint ptr %63 to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 16777216, ptr %63, align 2
  %call.i.i79 = call i32 @i2c_transfer_buffer_flags(ptr noundef %62, ptr noundef nonnull %buf.i77, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i79)
  %cmp5.not.i80 = icmp eq i32 %call.i.i79, 3
  %retval.0.i81 = select i1 %cmp5.not.i80, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i77) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %do.end14, %do.end, %do.end.i, %imx319_read_reg.exit.i
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end14 ], [ %retval.0.i81, %if.end25 ], [ -5, %if.end16.cleanup_crit_edge ], [ %call22, %if.end20.cleanup_crit_edge ], [ -5, %do.end.i ], [ -5, %imx319_read_reg.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__v4l2_ctrl_grab(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx319_enum_mbus_code(ptr noundef %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.imx319, ptr %sd, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.end.imx319_get_format_code.exit_crit_edge, label %land.rhs.i

if.end.imx319_get_format_code.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx319_get_format_code.exit

land.rhs.i:                                       ; preds = %if.end
  %dep_map.i = getelementptr inbounds %struct.imx319, ptr %sd, i32 0, i32 13, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.imx319_get_format_code.exit_crit_edge, !prof !179

land.rhs.i.imx319_get_format_code.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx319_get_format_code.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1782, i32 noundef 9, ptr noundef null) #7
  br label %imx319_get_format_code.exit

imx319_get_format_code.exit:                      ; preds = %do.end.i, %land.rhs.i.imx319_get_format_code.exit_crit_edge, %if.end.imx319_get_format_code.exit_crit_edge
  %vflip.i = getelementptr inbounds %struct.imx319, ptr %sd, i32 0, i32 8
  %3 = ptrtoint ptr %vflip.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vflip.i, align 8
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %4, i32 0, i32 22
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %hflip.i = getelementptr inbounds %struct.imx319, ptr %sd, i32 0, i32 9
  %7 = ptrtoint ptr %hflip.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hflip.i, align 4
  %val24.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %8, i32 0, i32 22
  %9 = ptrtoint ptr %val24.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val24.i, align 4
  %arrayidx25.i = getelementptr [2 x [2 x i32]], ptr @imx319_get_format_code.codes, i32 0, i32 %6, i32 %10
  %11 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx25.i, align 4
  %code2 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %13 = ptrtoint ptr %code2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %code2, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %imx319_get_format_code.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %imx319_get_format_code.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx319_enum_frame_size(ptr noundef %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp = icmp ugt i32 %1, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.imx319, ptr %sd, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %2 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.end.imx319_get_format_code.exit_crit_edge, label %land.rhs.i

if.end.imx319_get_format_code.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx319_get_format_code.exit

land.rhs.i:                                       ; preds = %if.end
  %dep_map.i = getelementptr inbounds %struct.imx319, ptr %sd, i32 0, i32 13, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.imx319_get_format_code.exit_crit_edge, !prof !179

land.rhs.i.imx319_get_format_code.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx319_get_format_code.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1782, i32 noundef 9, ptr noundef null) #7
  br label %imx319_get_format_code.exit

imx319_get_format_code.exit:                      ; preds = %do.end.i, %land.rhs.i.imx319_get_format_code.exit_crit_edge, %if.end.imx319_get_format_code.exit_crit_edge
  %vflip.i = getelementptr inbounds %struct.imx319, ptr %sd, i32 0, i32 8
  %5 = ptrtoint ptr %vflip.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vflip.i, align 8
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %6, i32 0, i32 22
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  %hflip.i = getelementptr inbounds %struct.imx319, ptr %sd, i32 0, i32 9
  %9 = ptrtoint ptr %hflip.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hflip.i, align 4
  %val24.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %10, i32 0, i32 22
  %11 = ptrtoint ptr %val24.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val24.i, align 4
  %arrayidx25.i = getelementptr [2 x [2 x i32]], ptr @imx319_get_format_code.codes, i32 0, i32 %8, i32 %12
  %13 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx25.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %14)
  %cmp2.not = icmp eq i32 %3, %14
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br i1 %cmp2.not, label %if.end5, label %imx319_get_format_code.exit.cleanup_crit_edge

imx319_get_format_code.exit.cleanup_crit_edge:    ; preds = %imx319_get_format_code.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %imx319_get_format_code.exit
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fse, align 4
  %arrayidx = getelementptr [8 x %struct.imx319_mode], ptr @supported_modes, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %19 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %min_width, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %20 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %18, ptr %max_width, align 4
  %height = getelementptr [8 x %struct.imx319_mode], ptr @supported_modes, i32 0, i32 %16, i32 1
  %21 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %height, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %23 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %min_height, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %24 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %22, ptr %max_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %imx319_get_format_code.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %imx319_get_format_code.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx319_get_pad_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.imx319, ptr %sd, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %pad.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %2 = ptrtoint ptr %pad.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad.i, align 4
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %4 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %3, %conv.i.i
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !183

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %3, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %6 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %7, i32 %spec.select.i.i
  %format.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %format.i, ptr %arrayidx.i.i, i32 48)
  br label %imx319_do_get_pad_format.exit

if.else.i:                                        ; preds = %entry
  %cur_mode.i = getelementptr inbounds %struct.imx319, ptr %sd, i32 0, i32 10
  %9 = ptrtoint ptr %cur_mode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cur_mode.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %format.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %13 = ptrtoint ptr %format.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %format.i.i, align 4
  %height.i.i = getelementptr inbounds %struct.imx319_mode, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height.i.i, align 4
  %height3.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %height3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %height3.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %17 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.imx319_update_pad_format.exit.i_crit_edge, label %land.rhs.i.i.i

if.else.i.imx319_update_pad_format.exit.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx319_update_pad_format.exit.i

land.rhs.i.i.i:                                   ; preds = %if.else.i
  %dep_map.i.i.i = getelementptr inbounds %struct.imx319, ptr %sd, i32 0, i32 13, i32 5
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.imx319_update_pad_format.exit.i_crit_edge, !prof !179

land.rhs.i.i.i.imx319_update_pad_format.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx319_update_pad_format.exit.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1782, i32 noundef 9, ptr noundef null) #7
  br label %imx319_update_pad_format.exit.i

imx319_update_pad_format.exit.i:                  ; preds = %do.end.i.i.i, %land.rhs.i.i.i.imx319_update_pad_format.exit.i_crit_edge, %if.else.i.imx319_update_pad_format.exit.i_crit_edge
  %vflip.i.i.i = getelementptr inbounds %struct.imx319, ptr %sd, i32 0, i32 8
  %18 = ptrtoint ptr %vflip.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vflip.i.i.i, align 8
  %val.i.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %19, i32 0, i32 22
  %20 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val.i.i.i, align 4
  %hflip.i.i.i = getelementptr inbounds %struct.imx319, ptr %sd, i32 0, i32 9
  %22 = ptrtoint ptr %hflip.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hflip.i.i.i, align 4
  %val24.i.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %23, i32 0, i32 22
  %24 = ptrtoint ptr %val24.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val24.i.i.i, align 4
  %arrayidx25.i.i.i = getelementptr [2 x [2 x i32]], ptr @imx319_get_format_code.codes, i32 0, i32 %21, i32 %25
  %26 = ptrtoint ptr %arrayidx25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx25.i.i.i, align 4
  %code.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %code.i.i, align 4
  %field.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %29 = ptrtoint ptr %field.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %field.i.i, align 4
  br label %imx319_do_get_pad_format.exit

imx319_do_get_pad_format.exit:                    ; preds = %imx319_update_pad_format.exit.i, %v4l2_subdev_get_try_format.exit.i
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx319_set_pad_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.imx319, ptr %sd, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.imx319_get_format_code.exit_crit_edge, label %land.rhs.i

entry.imx319_get_format_code.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx319_get_format_code.exit

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.imx319, ptr %sd, i32 0, i32 13, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.imx319_get_format_code.exit_crit_edge, !prof !179

land.rhs.i.imx319_get_format_code.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx319_get_format_code.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1782, i32 noundef 9, ptr noundef null) #7
  br label %imx319_get_format_code.exit

imx319_get_format_code.exit:                      ; preds = %do.end.i, %land.rhs.i.imx319_get_format_code.exit_crit_edge, %entry.imx319_get_format_code.exit_crit_edge
  %vflip.i = getelementptr inbounds %struct.imx319, ptr %sd, i32 0, i32 8
  %1 = ptrtoint ptr %vflip.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vflip.i, align 8
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %2, i32 0, i32 22
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  %hflip.i = getelementptr inbounds %struct.imx319, ptr %sd, i32 0, i32 9
  %5 = ptrtoint ptr %hflip.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hflip.i, align 4
  %val24.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %6, i32 0, i32 22
  %7 = ptrtoint ptr %val24.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val24.i, align 4
  %arrayidx25.i = getelementptr [2 x [2 x i32]], ptr @imx319_get_format_code.codes, i32 0, i32 %4, i32 %8
  %9 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx25.i, align 4
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %code, align 4
  %12 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %format, align 4
  %height4 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %height4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height4, align 4
  %call5 = tail call ptr @__v4l2_find_nearest_size(ptr noundef nonnull @supported_modes, i32 noundef 8, i32 noundef 32, i32 noundef 0, i32 noundef 4, i32 noundef %13, i32 noundef %15) #7
  %16 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call5, align 4
  %18 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %format, align 4
  %height.i = getelementptr inbounds %struct.imx319_mode, ptr %call5, i32 0, i32 1
  %19 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %height.i, align 4
  %21 = ptrtoint ptr %height4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %height4, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %22 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i, label %imx319_get_format_code.exit.imx319_update_pad_format.exit_crit_edge, label %land.rhs.i.i

imx319_get_format_code.exit.imx319_update_pad_format.exit_crit_edge: ; preds = %imx319_get_format_code.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx319_update_pad_format.exit

land.rhs.i.i:                                     ; preds = %imx319_get_format_code.exit
  %dep_map.i.i = getelementptr inbounds %struct.imx319, ptr %sd, i32 0, i32 13, i32 5
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.imx319_update_pad_format.exit_crit_edge, !prof !179

land.rhs.i.i.imx319_update_pad_format.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx319_update_pad_format.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1782, i32 noundef 9, ptr noundef null) #7
  br label %imx319_update_pad_format.exit

imx319_update_pad_format.exit:                    ; preds = %do.end.i.i, %land.rhs.i.i.imx319_update_pad_format.exit_crit_edge, %imx319_get_format_code.exit.imx319_update_pad_format.exit_crit_edge
  %23 = ptrtoint ptr %vflip.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vflip.i, align 8
  %val.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %24, i32 0, i32 22
  %25 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val.i.i, align 4
  %27 = ptrtoint ptr %hflip.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hflip.i, align 4
  %val24.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %28, i32 0, i32 22
  %29 = ptrtoint ptr %val24.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val24.i.i, align 4
  %arrayidx25.i.i = getelementptr [2 x [2 x i32]], ptr @imx319_get_format_code.codes, i32 0, i32 %26, i32 %30
  %31 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx25.i.i, align 4
  %33 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %code, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %34 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %field.i, align 4
  %35 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp = icmp eq i32 %36, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %imx319_update_pad_format.exit
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %37 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pad, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %39 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %conv.i)
  %cmp.not.i324 = icmp ult i32 %38, %conv.i
  br i1 %cmp.not.i324, label %if.then.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i325, !prof !183

if.then.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit

do.end.i325:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i325, %if.then.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i325 ], [ %38, %if.then.v4l2_subdev_get_try_format.exit_crit_edge ]
  %41 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %42, i32 %spec.select.i
  %43 = call ptr @memcpy(ptr %arrayidx.i, ptr %format, i32 48)
  br label %if.end214

if.else:                                          ; preds = %imx319_update_pad_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  %cur_mode = getelementptr inbounds %struct.imx319, ptr %sd, i32 0, i32 10
  %44 = ptrtoint ptr %cur_mode to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call5, ptr %cur_mode, align 8
  %link_def_freq = getelementptr inbounds %struct.imx319, ptr %sd, i32 0, i32 12
  %45 = ptrtoint ptr %link_def_freq to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %link_def_freq, align 8
  %47 = shl i64 %46, 2
  %div92323 = and i64 %47, 9223372036854775804
  %48 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div92323, i64 3689348814741910323) #11, !srcloc !177
  %49 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div92323, i64 %48) #11, !srcloc !178
  %pixel_rate194 = getelementptr inbounds %struct.imx319, ptr %sd, i32 0, i32 4
  %50 = ptrtoint ptr %pixel_rate194 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pixel_rate194, align 8
  %call195 = tail call i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef %51, i64 noundef %49) #7
  %52 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cur_mode, align 8
  %height197 = getelementptr inbounds %struct.imx319_mode, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %height197 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %height197, align 4
  %fll_def = getelementptr inbounds %struct.imx319_mode, ptr %53, i32 0, i32 2
  %56 = ptrtoint ptr %fll_def to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fll_def, align 4
  %sub199 = sub i32 %57, %55
  %fll_min = getelementptr inbounds %struct.imx319_mode, ptr %53, i32 0, i32 3
  %58 = ptrtoint ptr %fll_min to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %fll_min, align 4
  %sub201 = sub i32 %59, %55
  %sub202 = sub i32 65535, %55
  %vblank = getelementptr inbounds %struct.imx319, ptr %sd, i32 0, i32 5
  %60 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %vblank, align 4
  %conv203 = sext i32 %sub201 to i64
  %conv204 = zext i32 %sub202 to i64
  %conv205 = sext i32 %sub199 to i64
  %call206 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %61, i64 noundef %conv203, i64 noundef %conv204, i64 noundef 1, i64 noundef %conv205) #7
  %62 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %vblank, align 4
  %call208 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %63, i32 noundef %sub199) #7
  %llp = getelementptr inbounds %struct.imx319_mode, ptr %call5, i32 0, i32 4
  %64 = ptrtoint ptr %llp to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %llp, align 4
  %66 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cur_mode, align 8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  %sub211 = sub i32 %65, %69
  %conv212 = zext i32 %sub211 to i64
  %hblank = getelementptr inbounds %struct.imx319, ptr %sd, i32 0, i32 6
  %70 = ptrtoint ptr %hblank to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hblank, align 8
  %call213 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %71, i64 noundef %conv212, i64 noundef %conv212, i64 noundef 1, i64 noundef %conv212) #7
  br label %if.end214

if.end214:                                        ; preds = %if.else, %v4l2_subdev_get_try_format.exit
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_find_nearest_size(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_modify_range(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_alloc_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fwnode_endpoint_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_int_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu_items(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx319_set_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %buf.i87 = alloca [6 x i8], align 2
  %buf.i81 = alloca [6 x i8], align 2
  %buf.i75 = alloca [6 x i8], align 2
  %buf.i69 = alloca [6 x i8], align 2
  %buf.i63 = alloca [6 x i8], align 2
  %buf.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %dev_priv.i = getelementptr i8, ptr %1, i32 -76
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10356993, i32 %5)
  %cond = icmp eq i32 %5, 10356993
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cur_mode = getelementptr i8, ptr %1, i32 212
  %6 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_mode, align 8
  %height = getelementptr inbounds %struct.imx319_mode, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %add = add i32 %9, -18
  %sub = add i32 %add, %11
  %conv = zext i32 %sub to i64
  %exposure = getelementptr i8, ptr %1, i32 200
  %12 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %exposure, align 4
  %minimum = getelementptr inbounds %struct.v4l2_ctrl, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %minimum to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %minimum, align 8
  %16 = getelementptr inbounds %struct.v4l2_ctrl, ptr %13, i32 0, i32 18
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %16, align 8
  %call3 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %13, i64 noundef %15, i64 noundef %conv, i64 noundef %18, i64 noundef %conv) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %call.i = tail call i32 @pm_runtime_get_if_active(ptr noundef %dev, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id, align 8
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %sw.default [
    i32 10356995, label %sw.bb6
    i32 10422533, label %sw.bb9
    i32 9963793, label %sw.bb12
    i32 10356993, label %sw.bb15
    i32 10422531, label %sw.bb21
    i32 9963796, label %if.end.sw.bb24_crit_edge
    i32 9963797, label %if.end.sw.bb24_crit_edge94
  ]

if.end.sw.bb24_crit_edge94:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb24

if.end.sw.bb24_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb24

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %22 = ptrtoint ptr %val7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val7, align 4
  %24 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i) #7
  %26 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 2
  %27 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 516, ptr %buf.i, align 2
  %shl.i = shl i32 %23, 16
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %shl.i, ptr %26, align 2
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %25, ptr noundef nonnull %buf.i, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i)
  %cmp5.not.i = icmp eq i32 %call.i.i, 4
  %retval.0.i = select i1 %cmp5.not.i, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #7
  br label %sw.epilog31

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %29 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val10, align 4
  %31 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i63) #7
  %33 = getelementptr inbounds [6 x i8], ptr %buf.i63, i32 0, i32 2
  %34 = ptrtoint ptr %buf.i63 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 526, ptr %buf.i63, align 2
  %shl.i65 = shl i32 %30, 16
  %35 = ptrtoint ptr %33 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %shl.i65, ptr %33, align 2
  %call.i.i66 = call i32 @i2c_transfer_buffer_flags(ptr noundef %32, ptr noundef nonnull %buf.i63, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i66)
  %cmp5.not.i67 = icmp eq i32 %call.i.i66, 4
  %retval.0.i68 = select i1 %cmp5.not.i67, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i63) #7
  br label %sw.epilog31

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val13 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %36 = ptrtoint ptr %val13 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val13, align 4
  %38 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i69) #7
  %40 = getelementptr inbounds [6 x i8], ptr %buf.i69, i32 0, i32 2
  %41 = ptrtoint ptr %buf.i69 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 514, ptr %buf.i69, align 2
  %shl.i71 = shl i32 %37, 16
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %shl.i71, ptr %40, align 2
  %call.i.i72 = call i32 @i2c_transfer_buffer_flags(ptr noundef %39, ptr noundef nonnull %buf.i69, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i72)
  %cmp5.not.i73 = icmp eq i32 %call.i.i72, 4
  %retval.0.i74 = select i1 %cmp5.not.i73, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i69) #7
  br label %sw.epilog31

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %cur_mode16 = getelementptr i8, ptr %1, i32 212
  %43 = ptrtoint ptr %cur_mode16 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cur_mode16, align 8
  %height17 = getelementptr inbounds %struct.imx319_mode, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %height17 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %height17, align 4
  %val18 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %47 = ptrtoint ptr %val18 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %val18, align 4
  %add19 = add i32 %48, %46
  %49 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i75) #7
  %51 = getelementptr inbounds [6 x i8], ptr %buf.i75, i32 0, i32 2
  %52 = ptrtoint ptr %buf.i75 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 832, ptr %buf.i75, align 2
  %shl.i77 = shl i32 %add19, 16
  %53 = ptrtoint ptr %51 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 %shl.i77, ptr %51, align 2
  %call.i.i78 = call i32 @i2c_transfer_buffer_flags(ptr noundef %50, ptr noundef nonnull %buf.i75, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i78)
  %cmp5.not.i79 = icmp eq i32 %call.i.i78, 4
  %retval.0.i80 = select i1 %cmp5.not.i79, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i75) #7
  br label %sw.epilog31

sw.bb21:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val22 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %54 = ptrtoint ptr %val22 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %val22, align 4
  %56 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i81) #7
  %58 = getelementptr inbounds [6 x i8], ptr %buf.i81, i32 0, i32 2
  %59 = ptrtoint ptr %buf.i81 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 1536, ptr %buf.i81, align 2
  %shl.i83 = shl i32 %55, 16
  %60 = ptrtoint ptr %58 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 %shl.i83, ptr %58, align 2
  %call.i.i84 = call i32 @i2c_transfer_buffer_flags(ptr noundef %57, ptr noundef nonnull %buf.i81, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i84)
  %cmp5.not.i85 = icmp eq i32 %call.i.i84, 4
  %retval.0.i86 = select i1 %cmp5.not.i85, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i81) #7
  br label %sw.epilog31

sw.bb24:                                          ; preds = %if.end.sw.bb24_crit_edge, %if.end.sw.bb24_crit_edge94
  %hflip = getelementptr i8, ptr %1, i32 208
  %61 = ptrtoint ptr %hflip to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hflip, align 4
  %val25 = getelementptr inbounds %struct.v4l2_ctrl, ptr %62, i32 0, i32 22
  %63 = ptrtoint ptr %val25 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %val25, align 4
  %vflip = getelementptr i8, ptr %1, i32 204
  %65 = ptrtoint ptr %vflip to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %vflip, align 8
  %val26 = getelementptr inbounds %struct.v4l2_ctrl, ptr %66, i32 0, i32 22
  %67 = ptrtoint ptr %val26 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %val26, align 4
  %69 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i87) #7
  %71 = getelementptr inbounds [6 x i8], ptr %buf.i87, i32 0, i32 2
  %72 = ptrtoint ptr %buf.i87 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 257, ptr %buf.i87, align 2
  %73 = shl i32 %68, 25
  %74 = shl i32 %64, 24
  %shl.i89 = or i32 %73, %74
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_storeN_noabort(i32 %75, i32 4)
  store i32 %shl.i89, ptr %71, align 2
  %call.i.i90 = call i32 @i2c_transfer_buffer_flags(ptr noundef %70, ptr noundef nonnull %buf.i87, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i90)
  %cmp5.not.i91 = icmp eq i32 %call.i.i90, 3
  %retval.0.i92 = select i1 %cmp5.not.i91, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i87) #7
  br label %sw.epilog31

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val30 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %76 = ptrtoint ptr %val30 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %val30, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.46, i32 noundef %20, i32 noundef %77) #10
  br label %sw.epilog31

sw.epilog31:                                      ; preds = %sw.default, %sw.bb24, %sw.bb21, %sw.bb15, %sw.bb12, %sw.bb9, %sw.bb6
  %ret.0 = phi i32 [ -22, %sw.default ], [ %retval.0.i92, %sw.bb24 ], [ %retval.0.i86, %sw.bb21 ], [ %retval.0.i80, %sw.bb15 ], [ %retval.0.i74, %sw.bb12 ], [ %retval.0.i68, %sw.bb9 ], [ %retval.0.i, %sw.bb6 ]
  %call.i93 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog31, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog31 ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_get_if_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx319_open(ptr noundef %sd, ptr nocapture noundef readonly %fh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  br i1 %cmp.not.i.not, label %do.end.i, label %entry.v4l2_subdev_get_try_format.exit_crit_edge, !prof !179

entry.v4l2_subdev_get_try_format.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %entry.v4l2_subdev_get_try_format.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %mutex = getelementptr inbounds %struct.imx319, ptr %sd, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %cur_mode = getelementptr inbounds %struct.imx319, ptr %sd, i32 0, i32 10
  %6 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_mode, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %5, align 4
  %11 = load ptr, ptr %cur_mode, align 8
  %height = getelementptr inbounds %struct.imx319_mode, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height, align 4
  %height4 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %height4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %height4, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %15 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %v4l2_subdev_get_try_format.exit.imx319_get_format_code.exit_crit_edge, label %land.rhs.i

v4l2_subdev_get_try_format.exit.imx319_get_format_code.exit_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx319_get_format_code.exit

land.rhs.i:                                       ; preds = %v4l2_subdev_get_try_format.exit
  %dep_map.i = getelementptr inbounds %struct.imx319, ptr %sd, i32 0, i32 13, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i15 = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i15, label %do.end.i16, label %land.rhs.i.imx319_get_format_code.exit_crit_edge, !prof !179

land.rhs.i.imx319_get_format_code.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx319_get_format_code.exit

do.end.i16:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1782, i32 noundef 9, ptr noundef null) #7
  br label %imx319_get_format_code.exit

imx319_get_format_code.exit:                      ; preds = %do.end.i16, %land.rhs.i.imx319_get_format_code.exit_crit_edge, %v4l2_subdev_get_try_format.exit.imx319_get_format_code.exit_crit_edge
  %vflip.i = getelementptr inbounds %struct.imx319, ptr %sd, i32 0, i32 8
  %16 = ptrtoint ptr %vflip.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vflip.i, align 8
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %17, i32 0, i32 22
  %18 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val.i, align 4
  %hflip.i = getelementptr inbounds %struct.imx319, ptr %sd, i32 0, i32 9
  %20 = ptrtoint ptr %hflip.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hflip.i, align 4
  %val24.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %21, i32 0, i32 22
  %22 = ptrtoint ptr %val24.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val24.i, align 4
  %arrayidx25.i = getelementptr [2 x [2 x i32]], ptr @imx319_get_format_code.codes, i32 0, i32 %19, i32 %23
  %24 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx25.i, align 4
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 2
  %26 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %code, align 4
  %field = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 3
  %27 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %field, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx319_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %buf.i.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %streaming = getelementptr inbounds %struct.imx319, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #7
  %6 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 256, ptr %buf.i.i, align 2
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 0, ptr %6, align 2
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef nonnull %buf.i.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx319_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %buf.i.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %streaming = getelementptr inbounds %struct.imx319, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc i32 @imx319_start_streaming(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %error

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

error:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #7
  %6 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 256, ptr %buf.i.i, align 2
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 0, ptr %6, align 2
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef nonnull %buf.i.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #7
  %9 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %streaming, align 4
  br label %cleanup

cleanup:                                          ; preds = %error, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %error ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !18, !20, !22, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54, !56, !58, !59, !60, !61, !63, !64, !65, !67, !69, !71, !72, !73, !74, !75, !76, !78, !80, !82, !84, !85, !86, !87, !89, !91, !92, !93, !94, !96, !97, !99, !100, !101, !103, !104, !106, !107, !108, !109, !111, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !135, !137, !138, !139, !140, !142, !144, !145, !146, !147, !148, !150, !152, !154, !156, !158, !160, !162, !164}
!llvm.module.flags = !{!166, !167, !168, !169, !170, !171, !172, !173}
!llvm.ident = !{!174}

!0 = !{ptr @__initcall__kmod_imx319__298_2563_imx319_i2c_driver_init6, !1, !"__initcall__kmod_imx319__298_2563_imx319_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/imx319.c", i32 2563, i32 1}
!2 = !{ptr @__exitcall_imx319_i2c_driver_exit, !1, !"__exitcall_imx319_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author299, !4, !"__UNIQUE_ID_author299", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/imx319.c", i32 2565, i32 1}
!5 = !{ptr @__UNIQUE_ID_author300, !6, !"__UNIQUE_ID_author300", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/imx319.c", i32 2566, i32 1}
!7 = !{ptr @__UNIQUE_ID_author301, !8, !"__UNIQUE_ID_author301", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/imx319.c", i32 2567, i32 1}
!9 = !{ptr @__UNIQUE_ID_author302, !10, !"__UNIQUE_ID_author302", i1 false, i1 false}
!10 = !{!"../drivers/media/i2c/imx319.c", i32 2568, i32 1}
!11 = !{ptr @__UNIQUE_ID_description303, !12, !"__UNIQUE_ID_description303", i1 false, i1 false}
!12 = !{!"../drivers/media/i2c/imx319.c", i32 2569, i32 1}
!13 = !{ptr @__UNIQUE_ID_file304, !14, !"__UNIQUE_ID_file304", i1 false, i1 false}
!14 = !{!"../drivers/media/i2c/imx319.c", i32 2570, i32 1}
!15 = !{ptr @__UNIQUE_ID_license305, !14, !"__UNIQUE_ID_license305", i1 false, i1 false}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/imx319.c", i32 2555, i32 11}
!18 = !{ptr @imx319_i2c_driver, !19, !"imx319_i2c_driver", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/imx319.c", i32 2553, i32 26}
!20 = !{ptr @imx319_probe.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/imx319.c", i32 2442, i32 2}
!22 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/i2c/imx319.c", i32 2452, i32 4}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @imx319_probe._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @imx319_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/i2c/imx319.c", i32 2459, i32 3}
!33 = !{ptr @imx319_probe._entry.7, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @imx319_probe._entry_ptr.9, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/i2c/imx319.c", i32 2467, i32 4}
!37 = !{ptr @imx319_probe.__UNIQUE_ID_ddebug297, !36, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/i2c/imx319.c", i32 2473, i32 3}
!40 = !{ptr @imx319_probe._entry.11, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @imx319_probe._entry_ptr.13, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/i2c/imx319.c", i32 2483, i32 3}
!44 = !{ptr @imx319_probe._entry.14, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @imx319_probe._entry_ptr.16, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/i2c/imx319.c", i32 2498, i32 3}
!48 = !{ptr @imx319_probe._entry.17, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @imx319_probe._entry_ptr.19, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @imx319_subdev_ops, !51, !"imx319_subdev_ops", i1 false, i1 false}
!51 = !{!"../drivers/media/i2c/imx319.c", i32 2256, i32 37}
!52 = !{ptr @imx319_subdev_core_ops, !53, !"imx319_subdev_core_ops", i1 false, i1 false}
!53 = !{!"../drivers/media/i2c/imx319.c", i32 2240, i32 42}
!54 = !{ptr @imx319_video_ops, !55, !"imx319_video_ops", i1 false, i1 false}
!55 = !{!"../drivers/media/i2c/imx319.c", i32 2245, i32 43}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/i2c/imx319.c", i32 2129, i32 3}
!58 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @imx319_start_streaming._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @imx319_start_streaming._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/i2c/imx319.c", i32 2137, i32 3}
!63 = !{ptr @imx319_start_streaming._entry.22, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @imx319_start_streaming._entry_ptr.24, !62, !"_entry_ptr", i1 false, i1 false}
!65 = distinct !{null, !66, !"imx319_global_setting", i1 false, i1 false}
!66 = !{!"../drivers/media/i2c/imx319.c", i32 254, i32 37}
!67 = !{ptr @imx319_global_regs, !68, !"imx319_global_regs", i1 false, i1 false}
!68 = !{!"../drivers/media/i2c/imx319.c", i32 147, i32 32}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/i2c/imx319.c", i32 1850, i32 4}
!71 = !{ptr @imx319_write_regs._rs, !70, !"_rs", i1 false, i1 false}
!72 = !{ptr @__func__.imx319_write_regs, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @imx319_write_regs._entry, !70, !"_entry", i1 false, i1 false}
!75 = !{ptr @imx319_write_regs._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @imx319_pad_ops, !77, !"imx319_pad_ops", i1 false, i1 false}
!77 = !{!"../drivers/media/i2c/imx319.c", i32 2249, i32 41}
!78 = !{ptr @imx319_get_format_code.codes, !79, !"codes", i1 false, i1 false}
!79 = !{!"../drivers/media/i2c/imx319.c", i32 1777, i32 19}
!80 = !{ptr @.str.27, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!82 = !{ptr @.str.28, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/i2c/imx319.c", i32 2104, i32 3}
!84 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @imx319_identify_module._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @imx319_identify_module._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/i2c/imx319.c", i32 2389, i32 50}
!89 = !{ptr @.str.31, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/i2c/imx319.c", i32 2392, i32 3}
!91 = !{ptr @.str.32, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @imx319_get_hwcfg._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @imx319_get_hwcfg._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.33, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/i2c/imx319.c", i32 2396, i32 2}
!96 = !{ptr @imx319_get_hwcfg.__UNIQUE_ID_ddebug294, !95, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!97 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/i2c/imx319.c", i32 2398, i32 3}
!99 = !{ptr @imx319_get_hwcfg._entry.34, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @imx319_get_hwcfg._entry_ptr.36, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.37, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/i2c/imx319.c", i32 2403, i32 2}
!103 = !{ptr @imx319_get_hwcfg.__UNIQUE_ID_ddebug295, !102, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!104 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/i2c/imx319.c", i32 2405, i32 3}
!106 = !{ptr @.str.40, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @imx319_get_hwcfg._entry.38, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @imx319_get_hwcfg._entry_ptr.41, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.42, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/i2c/imx319.c", i32 2418, i32 3}
!111 = !{ptr @imx319_get_hwcfg.__UNIQUE_ID_ddebug296, !110, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!112 = !{ptr @link_freq_menu_items, !113, !"link_freq_menu_items", i1 false, i1 false}
!113 = !{!"../drivers/media/i2c/imx319.c", i32 1660, i32 18}
!114 = !{ptr @supported_modes, !115, !"supported_modes", i1 false, i1 false}
!115 = !{!"../drivers/media/i2c/imx319.c", i32 1665, i32 33}
!116 = !{ptr @mode_3280x2464_regs, !117, !"mode_3280x2464_regs", i1 false, i1 false}
!117 = !{!"../drivers/media/i2c/imx319.c", i32 433, i32 32}
!118 = !{ptr @mode_3264x2448_regs, !119, !"mode_3264x2448_regs", i1 false, i1 false}
!119 = !{!"../drivers/media/i2c/imx319.c", i32 259, i32 32}
!120 = !{ptr @mode_1936x1096_regs, !121, !"mode_1936x1096_regs", i1 false, i1 false}
!121 = !{!"../drivers/media/i2c/imx319.c", i32 607, i32 32}
!122 = !{ptr @mode_1920x1080_regs, !123, !"mode_1920x1080_regs", i1 false, i1 false}
!123 = !{!"../drivers/media/i2c/imx319.c", i32 781, i32 32}
!124 = !{ptr @mode_1640x1232_regs, !125, !"mode_1640x1232_regs", i1 false, i1 false}
!125 = !{!"../drivers/media/i2c/imx319.c", i32 955, i32 32}
!126 = !{ptr @mode_1640x922_regs, !127, !"mode_1640x922_regs", i1 false, i1 false}
!127 = !{!"../drivers/media/i2c/imx319.c", i32 1129, i32 32}
!128 = !{ptr @mode_1296x736_regs, !129, !"mode_1296x736_regs", i1 false, i1 false}
!129 = !{!"../drivers/media/i2c/imx319.c", i32 1303, i32 32}
!130 = !{ptr @mode_1280x720_regs, !131, !"mode_1280x720_regs", i1 false, i1 false}
!131 = !{!"../drivers/media/i2c/imx319.c", i32 1477, i32 32}
!132 = !{ptr @imx319_init_controls._key, !133, !"_key", i1 false, i1 false}
!133 = !{!"../drivers/media/i2c/imx319.c", i32 2285, i32 8}
!134 = !{ptr @.str.43, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.44, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/i2c/imx319.c", i32 2349, i32 3}
!137 = !{ptr @.str.45, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @imx319_init_controls._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @imx319_init_controls._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @imx319_ctrl_ops, !141, !"imx319_ctrl_ops", i1 false, i1 false}
!141 = !{!"../drivers/media/i2c/imx319.c", i32 1947, i32 35}
!142 = !{ptr @.str.46, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/i2c/imx319.c", i32 1937, i32 3}
!144 = !{ptr @.str.47, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.48, !143, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @imx319_set_ctrl._entry, !143, !"_entry", i1 false, i1 false}
!147 = !{ptr @imx319_set_ctrl._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.49, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/i2c/imx319.c", i32 1652, i32 2}
!150 = !{ptr @.str.50, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/i2c/imx319.c", i32 1653, i32 2}
!152 = !{ptr @.str.51, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/i2c/imx319.c", i32 1654, i32 2}
!154 = !{ptr @.str.52, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/i2c/imx319.c", i32 1655, i32 2}
!156 = !{ptr @.str.53, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/i2c/imx319.c", i32 1656, i32 2}
!158 = !{ptr @imx319_test_pattern_menu, !159, !"imx319_test_pattern_menu", i1 false, i1 false}
!159 = !{!"../drivers/media/i2c/imx319.c", i32 1651, i32 27}
!160 = !{ptr @imx319_internal_ops, !161, !"imx319_internal_ops", i1 false, i1 false}
!161 = !{!"../drivers/media/i2c/imx319.c", i32 2266, i32 46}
!162 = !{ptr @imx319_subdev_entity_ops, !163, !"imx319_subdev_entity_ops", i1 false, i1 false}
!163 = !{!"../drivers/media/i2c/imx319.c", i32 2262, i32 45}
!164 = !{ptr @imx319_pm_ops, !165, !"imx319_pm_ops", i1 false, i1 false}
!165 = !{!"../drivers/media/i2c/imx319.c", i32 2543, i32 32}
!166 = !{i32 1, !"wchar_size", i32 2}
!167 = !{i32 1, !"min_enum_size", i32 4}
!168 = !{i32 8, !"branch-target-enforcement", i32 0}
!169 = !{i32 8, !"sign-return-address", i32 0}
!170 = !{i32 8, !"sign-return-address-all", i32 0}
!171 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!172 = !{i32 7, !"uwtable", i32 1}
!173 = !{i32 7, !"frame-pointer", i32 2}
!174 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!175 = !{i8 0, i8 2}
!176 = !{i64 2149013690, i64 2149013695, i64 2149013708, i64 2149013752, i64 2149013786, i64 2149013807}
!177 = !{i64 1553216, i64 1553243}
!178 = !{i64 1553556, i64 1553583, i64 1553617, i64 1553638}
!179 = !{!"branch_weights", i32 1, i32 2000}
!180 = !{i64 2148400208}
!181 = !{i64 885031, i64 885056, i64 885078, i64 885094, i64 885106, i64 885126, i64 885150, i64 885166, i64 885178}
!182 = !{i64 2148400396}
!183 = !{!"branch_weights", i32 2000, i32 1}
