; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/imx355.c_pt.bc'
source_filename = "../drivers/media/i2c/imx355.c"
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
%struct.imx355_mode = type { i32, i32, i32, i32, i32, i32, %struct.imx355_reg_list }
%struct.imx355_reg_list = type { i32, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.imx355_reg = type { i16, i8 }
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
%struct.imx355 = type { %struct.v4l2_subdev, %struct.media_pad, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.mutex, i8 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.imx355_hwcfg = type { i32, ptr, i32 }
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

@__initcall__kmod_imx355__298_1849_imx355_i2c_driver_init6 = internal global ptr @imx355_i2c_driver_init, section ".initcall6.init", align 4
@imx355_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @imx355_remove, ptr @imx355_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx355_pm_ops, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_imx355_i2c_driver_exit = internal global ptr @imx355_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author299 = internal constant [52 x i8] c"imx355.author=Qiu, Tianshu <tian.shu.qiu@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author300 = internal constant [65 x i8] c"imx355.author=Rapolu, Chiranjeevi <chiranjeevi.rapolu@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author301 = internal constant [48 x i8] c"imx355.author=Bingbu Cao <bingbu.cao@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author302 = internal constant [29 x i8] c"imx355.author=Yang, Hyungwoo\00", section ".modinfo", align 1
@__UNIQUE_ID_description303 = internal constant [45 x i8] c"imx355.description=Sony imx355 sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [37 x i8] c"imx355.file=drivers/media/i2c/imx355\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [22 x i8] c"imx355.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"imx355\00", [25 x i8] zeroinitializer }, align 32
@imx355_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @imx355_suspend, ptr @imx355_resume, ptr @imx355_suspend, ptr @imx355_resume, ptr @imx355_suspend, ptr @imx355_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@imx355_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&imx355->mutex\00", [17 x i8] zeroinitializer }, align 32
@imx355_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @imx355_subdev_core_ops, ptr null, ptr null, ptr @imx355_video_ops, ptr null, ptr null, ptr null, ptr @imx355_pad_ops }, [32 x i8] zeroinitializer }, align 32
@imx355_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1738, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to find sensor: %d\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"imx355_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/imx355.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx355_probe._entry_ptr = internal global ptr @imx355_probe._entry, section ".printk_index", align 4
@imx355_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1744, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to get hwcfg\00", [44 x i8] zeroinitializer }, align 32
@imx355_probe._entry_ptr.9 = internal global ptr @imx355_probe._entry.7, section ".printk_index", align 4
@link_freq_menu_items = internal constant { [1 x i64], [24 x i8] } { [1 x i64] [i64 360000000], [24 x i8] zeroinitializer }, align 32
@imx355_probe.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.10, i8 1, i8 -74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"link freq index %d matched\00", [37 x i8] zeroinitializer }, align 32
@imx355_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1758, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no link frequency supported\00", [36 x i8] zeroinitializer }, align 32
@imx355_probe._entry_ptr.13 = internal global ptr @imx355_probe._entry.11, section ".printk_index", align 4
@supported_modes = internal constant { [14 x %struct.imx355_mode], [96 x i8] } { [14 x %struct.imx355_mode] [%struct.imx355_mode { i32 3280, i32 2464, i32 2615, i32 2615, i32 3672, i32 0, %struct.imx355_reg_list { i32 46, ptr @mode_3280x2464_regs } }, %struct.imx355_mode { i32 3268, i32 2448, i32 2615, i32 2615, i32 3672, i32 0, %struct.imx355_reg_list { i32 46, ptr @mode_3268x2448_regs } }, %struct.imx355_mode { i32 3264, i32 2448, i32 2615, i32 2615, i32 3672, i32 0, %struct.imx355_reg_list { i32 46, ptr @mode_3264x2448_regs } }, %struct.imx355_mode { i32 1940, i32 1096, i32 1306, i32 1306, i32 3672, i32 0, %struct.imx355_reg_list { i32 46, ptr @mode_1940x1096_regs } }, %struct.imx355_mode { i32 1936, i32 1096, i32 1306, i32 1306, i32 3672, i32 0, %struct.imx355_reg_list { i32 46, ptr @mode_1936x1096_regs } }, %struct.imx355_mode { i32 1924, i32 1080, i32 1306, i32 1306, i32 3672, i32 0, %struct.imx355_reg_list { i32 46, ptr @mode_1924x1080_regs } }, %struct.imx355_mode { i32 1920, i32 1080, i32 1306, i32 1306, i32 3672, i32 0, %struct.imx355_reg_list { i32 46, ptr @mode_1920x1080_regs } }, %struct.imx355_mode { i32 1640, i32 1232, i32 1306, i32 1306, i32 1836, i32 0, %struct.imx355_reg_list { i32 46, ptr @mode_1640x1232_regs } }, %struct.imx355_mode { i32 1640, i32 922, i32 1306, i32 1306, i32 1836, i32 0, %struct.imx355_reg_list { i32 46, ptr @mode_1640x922_regs } }, %struct.imx355_mode { i32 1300, i32 736, i32 1306, i32 1306, i32 1836, i32 0, %struct.imx355_reg_list { i32 46, ptr @mode_1300x736_regs } }, %struct.imx355_mode { i32 1296, i32 736, i32 1306, i32 1306, i32 1836, i32 0, %struct.imx355_reg_list { i32 46, ptr @mode_1296x736_regs } }, %struct.imx355_mode { i32 1284, i32 720, i32 1306, i32 1306, i32 1836, i32 0, %struct.imx355_reg_list { i32 46, ptr @mode_1284x720_regs } }, %struct.imx355_mode { i32 1280, i32 720, i32 1306, i32 1306, i32 1836, i32 0, %struct.imx355_reg_list { i32 46, ptr @mode_1280x720_regs } }, %struct.imx355_mode { i32 820, i32 616, i32 652, i32 652, i32 3672, i32 0, %struct.imx355_reg_list { i32 46, ptr @mode_820x616_regs } }], [96 x i8] zeroinitializer }, align 32
@imx355_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 1768, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to init controls: %d\00", [36 x i8] zeroinitializer }, align 32
@imx355_probe._entry_ptr.16 = internal global ptr @imx355_probe._entry.14, section ".printk_index", align 4
@imx355_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @imx355_open, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@imx355_subdev_entity_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr null, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@imx355_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 1783, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to init entity pads: %d\00", [33 x i8] zeroinitializer }, align 32
@imx355_probe._entry_ptr.19 = internal global ptr @imx355_probe._entry.17, section ".printk_index", align 4
@imx355_subdev_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subdev_subscribe_event, ptr @v4l2_event_subdev_unsubscribe }, [40 x i8] zeroinitializer }, align 32
@imx355_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx355_set_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@imx355_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @imx355_enum_mbus_code, ptr @imx355_enum_frame_size, ptr null, ptr @imx355_get_pad_format, ptr @imx355_set_pad_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@imx355_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 1399, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to set global settings\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"imx355_start_streaming\00", [41 x i8] zeroinitializer }, align 32
@imx355_start_streaming._entry_ptr = internal global ptr @imx355_start_streaming._entry, section ".printk_index", align 4
@imx355_start_streaming._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.4, i32 1407, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to set mode\00", [45 x i8] zeroinitializer }, align 32
@imx355_start_streaming._entry_ptr.24 = internal global ptr @imx355_start_streaming._entry.22, section ".printk_index", align 4
@imx355_global_regs = internal constant { [52 x %struct.imx355_reg], [48 x i8] } { [52 x %struct.imx355_reg] [%struct.imx355_reg { i16 310, i8 19 }, %struct.imx355_reg { i16 311, i8 51 }, %struct.imx355_reg { i16 12366, i8 3 }, %struct.imx355_reg { i16 17224, i8 22 }, %struct.imx355_reg { i16 17232, i8 25 }, %struct.imx355_reg { i16 17416, i8 10 }, %struct.imx355_reg { i16 17420, i8 11 }, %struct.imx355_reg { i16 17425, i8 95 }, %struct.imx355_reg { i16 17426, i8 44 }, %struct.imx355_reg { i16 17955, i8 0 }, %struct.imx355_reg { i16 17964, i8 15 }, %struct.imx355_reg { i16 17965, i8 0 }, %struct.imx355_reg { i16 17966, i8 0 }, %struct.imx355_reg { i16 18052, i8 84 }, %struct.imx355_reg { i16 18442, i8 7 }, %struct.imx355_reg { i16 18696, i8 7 }, %struct.imx355_reg { i16 18697, i8 7 }, %struct.imx355_reg { i16 18701, i8 10 }, %struct.imx355_reg { i16 18718, i8 15 }, %struct.imx355_reg { i16 18721, i8 6 }, %struct.imx355_reg { i16 18723, i8 40 }, %struct.imx355_reg { i16 18724, i8 40 }, %struct.imx355_reg { i16 18725, i8 41 }, %struct.imx355_reg { i16 18726, i8 41 }, %struct.imx355_reg { i16 18727, i8 31 }, %struct.imx355_reg { i16 18728, i8 32 }, %struct.imx355_reg { i16 18729, i8 32 }, %struct.imx355_reg { i16 18730, i8 32 }, %struct.imx355_reg { i16 18732, i8 5 }, %struct.imx355_reg { i16 18733, i8 6 }, %struct.imx355_reg { i16 18734, i8 6 }, %struct.imx355_reg { i16 18735, i8 6 }, %struct.imx355_reg { i16 18736, i8 3 }, %struct.imx355_reg { i16 18737, i8 4 }, %struct.imx355_reg { i16 18738, i8 4 }, %struct.imx355_reg { i16 18739, i8 5 }, %struct.imx355_reg { i16 22878, i8 1 }, %struct.imx355_reg { i16 22883, i8 1 }, %struct.imx355_reg { i16 12336, i8 1 }, %struct.imx355_reg { i16 12337, i8 1 }, %struct.imx355_reg { i16 12357, i8 1 }, %struct.imx355_reg { i16 16400, i8 0 }, %struct.imx355_reg { i16 16401, i8 0 }, %struct.imx355_reg { i16 16402, i8 0 }, %struct.imx355_reg { i16 16403, i8 1 }, %struct.imx355_reg { i16 26792, i8 -2 }, %struct.imx355_reg { i16 26793, i8 -1 }, %struct.imx355_reg { i16 26760, i8 0 }, %struct.imx355_reg { i16 26761, i8 0 }, %struct.imx355_reg { i16 26800, i8 0 }, %struct.imx355_reg { i16 12376, i8 0 }, %struct.imx355_reg { i16 12378, i8 0 }], [48 x i8] zeroinitializer }, align 32
@imx355_write_regs._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.25, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.imx355_write_regs = private unnamed_addr constant [18 x i8] c"imx355_write_regs\00", align 1
@imx355_write_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @__func__.imx355_write_regs, ptr @.str.4, i32 1150, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"write reg 0x%4.4x return err %d\00", [32 x i8] zeroinitializer }, align 32
@imx355_write_regs._entry_ptr = internal global ptr @imx355_write_regs._entry, section ".printk_index", align 4
@imx355_get_format_code.codes = internal constant { [2 x [2 x i32]], [16 x i8] } { [2 x [2 x i32]] [[2 x i32] [i32 12303, i32 12298], [2 x i32] [i32 12302, i32 12295]], [16 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@imx355_identify_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 1523, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"chip id mismatch: %x!=%x\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"imx355_identify_module\00", [41 x i8] zeroinitializer }, align 32
@imx355_identify_module._entry_ptr = internal global ptr @imx355_identify_module._entry, section ".printk_index", align 4
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@imx355_get_hwcfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.4, i32 1681, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"can't get clock frequency\00", [38 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"imx355_get_hwcfg\00", [47 x i8] zeroinitializer }, align 32
@imx355_get_hwcfg._entry_ptr = internal global ptr @imx355_get_hwcfg._entry, section ".printk_index", align 4
@imx355_get_hwcfg.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.4, ptr @.str.33, i8 1, i8 -91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ext clk: %d\00", [20 x i8] zeroinitializer }, align 32
@imx355_get_hwcfg._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.32, ptr @.str.4, i32 1688, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"external clock %d is not supported\00", [61 x i8] zeroinitializer }, align 32
@imx355_get_hwcfg._entry_ptr.36 = internal global ptr @imx355_get_hwcfg._entry.34, section ".printk_index", align 4
@imx355_get_hwcfg.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.4, ptr @.str.37, i8 1, i8 -89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"num of link freqs: %d\00", [42 x i8] zeroinitializer }, align 32
@imx355_get_hwcfg._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.32, ptr @.str.4, i32 1694, ptr @.str.40, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no link frequencies defined\00", [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@imx355_get_hwcfg._entry_ptr.41 = internal global ptr @imx355_get_hwcfg._entry.38, section ".printk_index", align 4
@imx355_get_hwcfg.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.4, ptr @.str.42, i8 1, i8 -86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"link_freq[%d] = %lld\00", [43 x i8] zeroinitializer }, align 32
@mode_3280x2464_regs = internal constant { [46 x %struct.imx355_reg], [40 x i8] } { [46 x %struct.imx355_reg] [%struct.imx355_reg { i16 274, i8 10 }, %struct.imx355_reg { i16 275, i8 10 }, %struct.imx355_reg { i16 276, i8 3 }, %struct.imx355_reg { i16 834, i8 14 }, %struct.imx355_reg { i16 835, i8 88 }, %struct.imx355_reg { i16 832, i8 10 }, %struct.imx355_reg { i16 833, i8 55 }, %struct.imx355_reg { i16 836, i8 0 }, %struct.imx355_reg { i16 837, i8 0 }, %struct.imx355_reg { i16 838, i8 0 }, %struct.imx355_reg { i16 839, i8 0 }, %struct.imx355_reg { i16 840, i8 12 }, %struct.imx355_reg { i16 841, i8 -49 }, %struct.imx355_reg { i16 842, i8 9 }, %struct.imx355_reg { i16 843, i8 -97 }, %struct.imx355_reg { i16 544, i8 0 }, %struct.imx355_reg { i16 546, i8 1 }, %struct.imx355_reg { i16 2304, i8 0 }, %struct.imx355_reg { i16 2305, i8 17 }, %struct.imx355_reg { i16 2306, i8 0 }, %struct.imx355_reg { i16 844, i8 12 }, %struct.imx355_reg { i16 845, i8 -48 }, %struct.imx355_reg { i16 846, i8 9 }, %struct.imx355_reg { i16 847, i8 -96 }, %struct.imx355_reg { i16 769, i8 5 }, %struct.imx355_reg { i16 771, i8 1 }, %struct.imx355_reg { i16 773, i8 2 }, %struct.imx355_reg { i16 774, i8 0 }, %struct.imx355_reg { i16 775, i8 120 }, %struct.imx355_reg { i16 779, i8 1 }, %struct.imx355_reg { i16 781, i8 2 }, %struct.imx355_reg { i16 782, i8 0 }, %struct.imx355_reg { i16 783, i8 75 }, %struct.imx355_reg { i16 784, i8 0 }, %struct.imx355_reg { i16 1792, i8 0 }, %struct.imx355_reg { i16 1793, i8 16 }, %struct.imx355_reg { i16 2080, i8 11 }, %struct.imx355_reg { i16 2081, i8 64 }, %struct.imx355_reg { i16 12424, i8 4 }, %struct.imx355_reg { i16 26643, i8 2 }, %struct.imx355_reg { i16 26677, i8 7 }, %struct.imx355_reg { i16 26678, i8 1 }, %struct.imx355_reg { i16 26679, i8 4 }, %struct.imx355_reg { i16 26701, i8 7 }, %struct.imx355_reg { i16 26702, i8 1 }, %struct.imx355_reg { i16 26703, i8 4 }], [40 x i8] zeroinitializer }, align 32
@mode_3268x2448_regs = internal constant { [46 x %struct.imx355_reg], [40 x i8] } { [46 x %struct.imx355_reg] [%struct.imx355_reg { i16 274, i8 10 }, %struct.imx355_reg { i16 275, i8 10 }, %struct.imx355_reg { i16 276, i8 3 }, %struct.imx355_reg { i16 834, i8 14 }, %struct.imx355_reg { i16 835, i8 88 }, %struct.imx355_reg { i16 832, i8 10 }, %struct.imx355_reg { i16 833, i8 55 }, %struct.imx355_reg { i16 836, i8 0 }, %struct.imx355_reg { i16 837, i8 8 }, %struct.imx355_reg { i16 838, i8 0 }, %struct.imx355_reg { i16 839, i8 8 }, %struct.imx355_reg { i16 840, i8 12 }, %struct.imx355_reg { i16 841, i8 -53 }, %struct.imx355_reg { i16 842, i8 9 }, %struct.imx355_reg { i16 843, i8 -105 }, %struct.imx355_reg { i16 544, i8 0 }, %struct.imx355_reg { i16 546, i8 1 }, %struct.imx355_reg { i16 2304, i8 0 }, %struct.imx355_reg { i16 2305, i8 17 }, %struct.imx355_reg { i16 2306, i8 0 }, %struct.imx355_reg { i16 844, i8 12 }, %struct.imx355_reg { i16 845, i8 -60 }, %struct.imx355_reg { i16 846, i8 9 }, %struct.imx355_reg { i16 847, i8 -112 }, %struct.imx355_reg { i16 769, i8 5 }, %struct.imx355_reg { i16 771, i8 1 }, %struct.imx355_reg { i16 773, i8 2 }, %struct.imx355_reg { i16 774, i8 0 }, %struct.imx355_reg { i16 775, i8 120 }, %struct.imx355_reg { i16 779, i8 1 }, %struct.imx355_reg { i16 781, i8 2 }, %struct.imx355_reg { i16 782, i8 0 }, %struct.imx355_reg { i16 783, i8 75 }, %struct.imx355_reg { i16 784, i8 0 }, %struct.imx355_reg { i16 1792, i8 0 }, %struct.imx355_reg { i16 1793, i8 16 }, %struct.imx355_reg { i16 2080, i8 11 }, %struct.imx355_reg { i16 2081, i8 64 }, %struct.imx355_reg { i16 12424, i8 4 }, %struct.imx355_reg { i16 26643, i8 2 }, %struct.imx355_reg { i16 26677, i8 7 }, %struct.imx355_reg { i16 26678, i8 1 }, %struct.imx355_reg { i16 26679, i8 4 }, %struct.imx355_reg { i16 26701, i8 7 }, %struct.imx355_reg { i16 26702, i8 1 }, %struct.imx355_reg { i16 26703, i8 4 }], [40 x i8] zeroinitializer }, align 32
@mode_3264x2448_regs = internal constant { [46 x %struct.imx355_reg], [40 x i8] } { [46 x %struct.imx355_reg] [%struct.imx355_reg { i16 274, i8 10 }, %struct.imx355_reg { i16 275, i8 10 }, %struct.imx355_reg { i16 276, i8 3 }, %struct.imx355_reg { i16 834, i8 14 }, %struct.imx355_reg { i16 835, i8 88 }, %struct.imx355_reg { i16 832, i8 10 }, %struct.imx355_reg { i16 833, i8 55 }, %struct.imx355_reg { i16 836, i8 0 }, %struct.imx355_reg { i16 837, i8 8 }, %struct.imx355_reg { i16 838, i8 0 }, %struct.imx355_reg { i16 839, i8 8 }, %struct.imx355_reg { i16 840, i8 12 }, %struct.imx355_reg { i16 841, i8 -57 }, %struct.imx355_reg { i16 842, i8 9 }, %struct.imx355_reg { i16 843, i8 -105 }, %struct.imx355_reg { i16 544, i8 0 }, %struct.imx355_reg { i16 546, i8 1 }, %struct.imx355_reg { i16 2304, i8 0 }, %struct.imx355_reg { i16 2305, i8 17 }, %struct.imx355_reg { i16 2306, i8 0 }, %struct.imx355_reg { i16 844, i8 12 }, %struct.imx355_reg { i16 845, i8 -64 }, %struct.imx355_reg { i16 846, i8 9 }, %struct.imx355_reg { i16 847, i8 -112 }, %struct.imx355_reg { i16 769, i8 5 }, %struct.imx355_reg { i16 771, i8 1 }, %struct.imx355_reg { i16 773, i8 2 }, %struct.imx355_reg { i16 774, i8 0 }, %struct.imx355_reg { i16 775, i8 120 }, %struct.imx355_reg { i16 779, i8 1 }, %struct.imx355_reg { i16 781, i8 2 }, %struct.imx355_reg { i16 782, i8 0 }, %struct.imx355_reg { i16 783, i8 75 }, %struct.imx355_reg { i16 784, i8 0 }, %struct.imx355_reg { i16 1792, i8 0 }, %struct.imx355_reg { i16 1793, i8 16 }, %struct.imx355_reg { i16 2080, i8 11 }, %struct.imx355_reg { i16 2081, i8 64 }, %struct.imx355_reg { i16 12424, i8 4 }, %struct.imx355_reg { i16 26643, i8 2 }, %struct.imx355_reg { i16 26677, i8 7 }, %struct.imx355_reg { i16 26678, i8 1 }, %struct.imx355_reg { i16 26679, i8 4 }, %struct.imx355_reg { i16 26701, i8 7 }, %struct.imx355_reg { i16 26702, i8 1 }, %struct.imx355_reg { i16 26703, i8 4 }], [40 x i8] zeroinitializer }, align 32
@mode_1940x1096_regs = internal constant { [46 x %struct.imx355_reg], [40 x i8] } { [46 x %struct.imx355_reg] [%struct.imx355_reg { i16 274, i8 10 }, %struct.imx355_reg { i16 275, i8 10 }, %struct.imx355_reg { i16 276, i8 3 }, %struct.imx355_reg { i16 834, i8 14 }, %struct.imx355_reg { i16 835, i8 88 }, %struct.imx355_reg { i16 832, i8 5 }, %struct.imx355_reg { i16 833, i8 26 }, %struct.imx355_reg { i16 836, i8 2 }, %struct.imx355_reg { i16 837, i8 -96 }, %struct.imx355_reg { i16 838, i8 2 }, %struct.imx355_reg { i16 839, i8 -84 }, %struct.imx355_reg { i16 840, i8 10 }, %struct.imx355_reg { i16 841, i8 51 }, %struct.imx355_reg { i16 842, i8 6 }, %struct.imx355_reg { i16 843, i8 -13 }, %struct.imx355_reg { i16 544, i8 0 }, %struct.imx355_reg { i16 546, i8 1 }, %struct.imx355_reg { i16 2304, i8 0 }, %struct.imx355_reg { i16 2305, i8 17 }, %struct.imx355_reg { i16 2306, i8 0 }, %struct.imx355_reg { i16 844, i8 7 }, %struct.imx355_reg { i16 845, i8 -108 }, %struct.imx355_reg { i16 846, i8 4 }, %struct.imx355_reg { i16 847, i8 72 }, %struct.imx355_reg { i16 769, i8 5 }, %struct.imx355_reg { i16 771, i8 1 }, %struct.imx355_reg { i16 773, i8 2 }, %struct.imx355_reg { i16 774, i8 0 }, %struct.imx355_reg { i16 775, i8 120 }, %struct.imx355_reg { i16 779, i8 1 }, %struct.imx355_reg { i16 781, i8 2 }, %struct.imx355_reg { i16 782, i8 0 }, %struct.imx355_reg { i16 783, i8 75 }, %struct.imx355_reg { i16 784, i8 0 }, %struct.imx355_reg { i16 1792, i8 0 }, %struct.imx355_reg { i16 1793, i8 16 }, %struct.imx355_reg { i16 2080, i8 11 }, %struct.imx355_reg { i16 2081, i8 64 }, %struct.imx355_reg { i16 12424, i8 4 }, %struct.imx355_reg { i16 26643, i8 2 }, %struct.imx355_reg { i16 26677, i8 7 }, %struct.imx355_reg { i16 26678, i8 1 }, %struct.imx355_reg { i16 26679, i8 4 }, %struct.imx355_reg { i16 26701, i8 7 }, %struct.imx355_reg { i16 26702, i8 1 }, %struct.imx355_reg { i16 26703, i8 4 }], [40 x i8] zeroinitializer }, align 32
@mode_1936x1096_regs = internal constant { [46 x %struct.imx355_reg], [40 x i8] } { [46 x %struct.imx355_reg] [%struct.imx355_reg { i16 274, i8 10 }, %struct.imx355_reg { i16 275, i8 10 }, %struct.imx355_reg { i16 276, i8 3 }, %struct.imx355_reg { i16 834, i8 14 }, %struct.imx355_reg { i16 835, i8 88 }, %struct.imx355_reg { i16 832, i8 5 }, %struct.imx355_reg { i16 833, i8 26 }, %struct.imx355_reg { i16 836, i8 2 }, %struct.imx355_reg { i16 837, i8 -96 }, %struct.imx355_reg { i16 838, i8 2 }, %struct.imx355_reg { i16 839, i8 -84 }, %struct.imx355_reg { i16 840, i8 10 }, %struct.imx355_reg { i16 841, i8 47 }, %struct.imx355_reg { i16 842, i8 6 }, %struct.imx355_reg { i16 843, i8 -13 }, %struct.imx355_reg { i16 544, i8 0 }, %struct.imx355_reg { i16 546, i8 1 }, %struct.imx355_reg { i16 2304, i8 0 }, %struct.imx355_reg { i16 2305, i8 17 }, %struct.imx355_reg { i16 2306, i8 0 }, %struct.imx355_reg { i16 844, i8 7 }, %struct.imx355_reg { i16 845, i8 -112 }, %struct.imx355_reg { i16 846, i8 4 }, %struct.imx355_reg { i16 847, i8 72 }, %struct.imx355_reg { i16 769, i8 5 }, %struct.imx355_reg { i16 771, i8 1 }, %struct.imx355_reg { i16 773, i8 2 }, %struct.imx355_reg { i16 774, i8 0 }, %struct.imx355_reg { i16 775, i8 120 }, %struct.imx355_reg { i16 779, i8 1 }, %struct.imx355_reg { i16 781, i8 2 }, %struct.imx355_reg { i16 782, i8 0 }, %struct.imx355_reg { i16 783, i8 75 }, %struct.imx355_reg { i16 784, i8 0 }, %struct.imx355_reg { i16 1792, i8 0 }, %struct.imx355_reg { i16 1793, i8 16 }, %struct.imx355_reg { i16 2080, i8 11 }, %struct.imx355_reg { i16 2081, i8 64 }, %struct.imx355_reg { i16 12424, i8 4 }, %struct.imx355_reg { i16 26643, i8 2 }, %struct.imx355_reg { i16 26677, i8 7 }, %struct.imx355_reg { i16 26678, i8 1 }, %struct.imx355_reg { i16 26679, i8 4 }, %struct.imx355_reg { i16 26701, i8 7 }, %struct.imx355_reg { i16 26702, i8 1 }, %struct.imx355_reg { i16 26703, i8 4 }], [40 x i8] zeroinitializer }, align 32
@mode_1924x1080_regs = internal constant { [46 x %struct.imx355_reg], [40 x i8] } { [46 x %struct.imx355_reg] [%struct.imx355_reg { i16 274, i8 10 }, %struct.imx355_reg { i16 275, i8 10 }, %struct.imx355_reg { i16 276, i8 3 }, %struct.imx355_reg { i16 834, i8 14 }, %struct.imx355_reg { i16 835, i8 88 }, %struct.imx355_reg { i16 832, i8 5 }, %struct.imx355_reg { i16 833, i8 26 }, %struct.imx355_reg { i16 836, i8 2 }, %struct.imx355_reg { i16 837, i8 -88 }, %struct.imx355_reg { i16 838, i8 2 }, %struct.imx355_reg { i16 839, i8 -76 }, %struct.imx355_reg { i16 840, i8 10 }, %struct.imx355_reg { i16 841, i8 43 }, %struct.imx355_reg { i16 842, i8 6 }, %struct.imx355_reg { i16 843, i8 -21 }, %struct.imx355_reg { i16 544, i8 0 }, %struct.imx355_reg { i16 546, i8 1 }, %struct.imx355_reg { i16 2304, i8 0 }, %struct.imx355_reg { i16 2305, i8 17 }, %struct.imx355_reg { i16 2306, i8 0 }, %struct.imx355_reg { i16 844, i8 7 }, %struct.imx355_reg { i16 845, i8 -124 }, %struct.imx355_reg { i16 846, i8 4 }, %struct.imx355_reg { i16 847, i8 56 }, %struct.imx355_reg { i16 769, i8 5 }, %struct.imx355_reg { i16 771, i8 1 }, %struct.imx355_reg { i16 773, i8 2 }, %struct.imx355_reg { i16 774, i8 0 }, %struct.imx355_reg { i16 775, i8 120 }, %struct.imx355_reg { i16 779, i8 1 }, %struct.imx355_reg { i16 781, i8 2 }, %struct.imx355_reg { i16 782, i8 0 }, %struct.imx355_reg { i16 783, i8 75 }, %struct.imx355_reg { i16 784, i8 0 }, %struct.imx355_reg { i16 1792, i8 0 }, %struct.imx355_reg { i16 1793, i8 16 }, %struct.imx355_reg { i16 2080, i8 11 }, %struct.imx355_reg { i16 2081, i8 64 }, %struct.imx355_reg { i16 12424, i8 4 }, %struct.imx355_reg { i16 26643, i8 2 }, %struct.imx355_reg { i16 26677, i8 7 }, %struct.imx355_reg { i16 26678, i8 1 }, %struct.imx355_reg { i16 26679, i8 4 }, %struct.imx355_reg { i16 26701, i8 7 }, %struct.imx355_reg { i16 26702, i8 1 }, %struct.imx355_reg { i16 26703, i8 4 }], [40 x i8] zeroinitializer }, align 32
@mode_1920x1080_regs = internal constant { [46 x %struct.imx355_reg], [40 x i8] } { [46 x %struct.imx355_reg] [%struct.imx355_reg { i16 274, i8 10 }, %struct.imx355_reg { i16 275, i8 10 }, %struct.imx355_reg { i16 276, i8 3 }, %struct.imx355_reg { i16 834, i8 14 }, %struct.imx355_reg { i16 835, i8 88 }, %struct.imx355_reg { i16 832, i8 5 }, %struct.imx355_reg { i16 833, i8 26 }, %struct.imx355_reg { i16 836, i8 2 }, %struct.imx355_reg { i16 837, i8 -88 }, %struct.imx355_reg { i16 838, i8 2 }, %struct.imx355_reg { i16 839, i8 -76 }, %struct.imx355_reg { i16 840, i8 10 }, %struct.imx355_reg { i16 841, i8 39 }, %struct.imx355_reg { i16 842, i8 6 }, %struct.imx355_reg { i16 843, i8 -21 }, %struct.imx355_reg { i16 544, i8 0 }, %struct.imx355_reg { i16 546, i8 1 }, %struct.imx355_reg { i16 2304, i8 0 }, %struct.imx355_reg { i16 2305, i8 17 }, %struct.imx355_reg { i16 2306, i8 0 }, %struct.imx355_reg { i16 844, i8 7 }, %struct.imx355_reg { i16 845, i8 -128 }, %struct.imx355_reg { i16 846, i8 4 }, %struct.imx355_reg { i16 847, i8 56 }, %struct.imx355_reg { i16 769, i8 5 }, %struct.imx355_reg { i16 771, i8 1 }, %struct.imx355_reg { i16 773, i8 2 }, %struct.imx355_reg { i16 774, i8 0 }, %struct.imx355_reg { i16 775, i8 120 }, %struct.imx355_reg { i16 779, i8 1 }, %struct.imx355_reg { i16 781, i8 2 }, %struct.imx355_reg { i16 782, i8 0 }, %struct.imx355_reg { i16 783, i8 75 }, %struct.imx355_reg { i16 784, i8 0 }, %struct.imx355_reg { i16 1792, i8 0 }, %struct.imx355_reg { i16 1793, i8 16 }, %struct.imx355_reg { i16 2080, i8 11 }, %struct.imx355_reg { i16 2081, i8 64 }, %struct.imx355_reg { i16 12424, i8 4 }, %struct.imx355_reg { i16 26643, i8 2 }, %struct.imx355_reg { i16 26677, i8 7 }, %struct.imx355_reg { i16 26678, i8 1 }, %struct.imx355_reg { i16 26679, i8 4 }, %struct.imx355_reg { i16 26701, i8 7 }, %struct.imx355_reg { i16 26702, i8 1 }, %struct.imx355_reg { i16 26703, i8 4 }], [40 x i8] zeroinitializer }, align 32
@mode_1640x1232_regs = internal constant { [46 x %struct.imx355_reg], [40 x i8] } { [46 x %struct.imx355_reg] [%struct.imx355_reg { i16 274, i8 10 }, %struct.imx355_reg { i16 275, i8 10 }, %struct.imx355_reg { i16 276, i8 3 }, %struct.imx355_reg { i16 834, i8 7 }, %struct.imx355_reg { i16 835, i8 44 }, %struct.imx355_reg { i16 832, i8 5 }, %struct.imx355_reg { i16 833, i8 26 }, %struct.imx355_reg { i16 836, i8 0 }, %struct.imx355_reg { i16 837, i8 0 }, %struct.imx355_reg { i16 838, i8 0 }, %struct.imx355_reg { i16 839, i8 0 }, %struct.imx355_reg { i16 840, i8 12 }, %struct.imx355_reg { i16 841, i8 -49 }, %struct.imx355_reg { i16 842, i8 9 }, %struct.imx355_reg { i16 843, i8 -97 }, %struct.imx355_reg { i16 544, i8 0 }, %struct.imx355_reg { i16 546, i8 1 }, %struct.imx355_reg { i16 2304, i8 1 }, %struct.imx355_reg { i16 2305, i8 34 }, %struct.imx355_reg { i16 2306, i8 0 }, %struct.imx355_reg { i16 844, i8 6 }, %struct.imx355_reg { i16 845, i8 104 }, %struct.imx355_reg { i16 846, i8 4 }, %struct.imx355_reg { i16 847, i8 -48 }, %struct.imx355_reg { i16 769, i8 5 }, %struct.imx355_reg { i16 771, i8 1 }, %struct.imx355_reg { i16 773, i8 2 }, %struct.imx355_reg { i16 774, i8 0 }, %struct.imx355_reg { i16 775, i8 120 }, %struct.imx355_reg { i16 779, i8 1 }, %struct.imx355_reg { i16 781, i8 2 }, %struct.imx355_reg { i16 782, i8 0 }, %struct.imx355_reg { i16 783, i8 75 }, %struct.imx355_reg { i16 784, i8 0 }, %struct.imx355_reg { i16 1792, i8 0 }, %struct.imx355_reg { i16 1793, i8 16 }, %struct.imx355_reg { i16 2080, i8 11 }, %struct.imx355_reg { i16 2081, i8 64 }, %struct.imx355_reg { i16 12424, i8 4 }, %struct.imx355_reg { i16 26643, i8 2 }, %struct.imx355_reg { i16 26677, i8 7 }, %struct.imx355_reg { i16 26678, i8 1 }, %struct.imx355_reg { i16 26679, i8 4 }, %struct.imx355_reg { i16 26701, i8 7 }, %struct.imx355_reg { i16 26702, i8 1 }, %struct.imx355_reg { i16 26703, i8 4 }], [40 x i8] zeroinitializer }, align 32
@mode_1640x922_regs = internal constant { [46 x %struct.imx355_reg], [40 x i8] } { [46 x %struct.imx355_reg] [%struct.imx355_reg { i16 274, i8 10 }, %struct.imx355_reg { i16 275, i8 10 }, %struct.imx355_reg { i16 276, i8 3 }, %struct.imx355_reg { i16 834, i8 7 }, %struct.imx355_reg { i16 835, i8 44 }, %struct.imx355_reg { i16 832, i8 5 }, %struct.imx355_reg { i16 833, i8 26 }, %struct.imx355_reg { i16 836, i8 0 }, %struct.imx355_reg { i16 837, i8 0 }, %struct.imx355_reg { i16 838, i8 1 }, %struct.imx355_reg { i16 839, i8 48 }, %struct.imx355_reg { i16 840, i8 12 }, %struct.imx355_reg { i16 841, i8 -49 }, %struct.imx355_reg { i16 842, i8 8 }, %struct.imx355_reg { i16 843, i8 99 }, %struct.imx355_reg { i16 544, i8 0 }, %struct.imx355_reg { i16 546, i8 1 }, %struct.imx355_reg { i16 2304, i8 1 }, %struct.imx355_reg { i16 2305, i8 34 }, %struct.imx355_reg { i16 2306, i8 0 }, %struct.imx355_reg { i16 844, i8 6 }, %struct.imx355_reg { i16 845, i8 104 }, %struct.imx355_reg { i16 846, i8 3 }, %struct.imx355_reg { i16 847, i8 -102 }, %struct.imx355_reg { i16 769, i8 5 }, %struct.imx355_reg { i16 771, i8 1 }, %struct.imx355_reg { i16 773, i8 2 }, %struct.imx355_reg { i16 774, i8 0 }, %struct.imx355_reg { i16 775, i8 120 }, %struct.imx355_reg { i16 779, i8 1 }, %struct.imx355_reg { i16 781, i8 2 }, %struct.imx355_reg { i16 782, i8 0 }, %struct.imx355_reg { i16 783, i8 75 }, %struct.imx355_reg { i16 784, i8 0 }, %struct.imx355_reg { i16 1792, i8 0 }, %struct.imx355_reg { i16 1793, i8 16 }, %struct.imx355_reg { i16 2080, i8 11 }, %struct.imx355_reg { i16 2081, i8 64 }, %struct.imx355_reg { i16 12424, i8 4 }, %struct.imx355_reg { i16 26643, i8 2 }, %struct.imx355_reg { i16 26677, i8 7 }, %struct.imx355_reg { i16 26678, i8 1 }, %struct.imx355_reg { i16 26679, i8 4 }, %struct.imx355_reg { i16 26701, i8 7 }, %struct.imx355_reg { i16 26702, i8 1 }, %struct.imx355_reg { i16 26703, i8 4 }], [40 x i8] zeroinitializer }, align 32
@mode_1300x736_regs = internal constant { [46 x %struct.imx355_reg], [40 x i8] } { [46 x %struct.imx355_reg] [%struct.imx355_reg { i16 274, i8 10 }, %struct.imx355_reg { i16 275, i8 10 }, %struct.imx355_reg { i16 276, i8 3 }, %struct.imx355_reg { i16 834, i8 7 }, %struct.imx355_reg { i16 835, i8 44 }, %struct.imx355_reg { i16 832, i8 5 }, %struct.imx355_reg { i16 833, i8 26 }, %struct.imx355_reg { i16 836, i8 1 }, %struct.imx355_reg { i16 837, i8 88 }, %struct.imx355_reg { i16 838, i8 1 }, %struct.imx355_reg { i16 839, i8 -16 }, %struct.imx355_reg { i16 840, i8 11 }, %struct.imx355_reg { i16 841, i8 127 }, %struct.imx355_reg { i16 842, i8 7 }, %struct.imx355_reg { i16 843, i8 -81 }, %struct.imx355_reg { i16 544, i8 0 }, %struct.imx355_reg { i16 546, i8 1 }, %struct.imx355_reg { i16 2304, i8 1 }, %struct.imx355_reg { i16 2305, i8 34 }, %struct.imx355_reg { i16 2306, i8 0 }, %struct.imx355_reg { i16 844, i8 5 }, %struct.imx355_reg { i16 845, i8 20 }, %struct.imx355_reg { i16 846, i8 2 }, %struct.imx355_reg { i16 847, i8 -32 }, %struct.imx355_reg { i16 769, i8 5 }, %struct.imx355_reg { i16 771, i8 1 }, %struct.imx355_reg { i16 773, i8 2 }, %struct.imx355_reg { i16 774, i8 0 }, %struct.imx355_reg { i16 775, i8 120 }, %struct.imx355_reg { i16 779, i8 1 }, %struct.imx355_reg { i16 781, i8 2 }, %struct.imx355_reg { i16 782, i8 0 }, %struct.imx355_reg { i16 783, i8 75 }, %struct.imx355_reg { i16 784, i8 0 }, %struct.imx355_reg { i16 1792, i8 0 }, %struct.imx355_reg { i16 1793, i8 16 }, %struct.imx355_reg { i16 2080, i8 11 }, %struct.imx355_reg { i16 2081, i8 64 }, %struct.imx355_reg { i16 12424, i8 4 }, %struct.imx355_reg { i16 26643, i8 2 }, %struct.imx355_reg { i16 26677, i8 7 }, %struct.imx355_reg { i16 26678, i8 1 }, %struct.imx355_reg { i16 26679, i8 4 }, %struct.imx355_reg { i16 26701, i8 7 }, %struct.imx355_reg { i16 26702, i8 1 }, %struct.imx355_reg { i16 26703, i8 4 }], [40 x i8] zeroinitializer }, align 32
@mode_1296x736_regs = internal constant { [46 x %struct.imx355_reg], [40 x i8] } { [46 x %struct.imx355_reg] [%struct.imx355_reg { i16 274, i8 10 }, %struct.imx355_reg { i16 275, i8 10 }, %struct.imx355_reg { i16 276, i8 3 }, %struct.imx355_reg { i16 834, i8 7 }, %struct.imx355_reg { i16 835, i8 44 }, %struct.imx355_reg { i16 832, i8 5 }, %struct.imx355_reg { i16 833, i8 26 }, %struct.imx355_reg { i16 836, i8 1 }, %struct.imx355_reg { i16 837, i8 88 }, %struct.imx355_reg { i16 838, i8 1 }, %struct.imx355_reg { i16 839, i8 -16 }, %struct.imx355_reg { i16 840, i8 11 }, %struct.imx355_reg { i16 841, i8 119 }, %struct.imx355_reg { i16 842, i8 7 }, %struct.imx355_reg { i16 843, i8 -81 }, %struct.imx355_reg { i16 544, i8 0 }, %struct.imx355_reg { i16 546, i8 1 }, %struct.imx355_reg { i16 2304, i8 1 }, %struct.imx355_reg { i16 2305, i8 34 }, %struct.imx355_reg { i16 2306, i8 0 }, %struct.imx355_reg { i16 844, i8 5 }, %struct.imx355_reg { i16 845, i8 16 }, %struct.imx355_reg { i16 846, i8 2 }, %struct.imx355_reg { i16 847, i8 -32 }, %struct.imx355_reg { i16 769, i8 5 }, %struct.imx355_reg { i16 771, i8 1 }, %struct.imx355_reg { i16 773, i8 2 }, %struct.imx355_reg { i16 774, i8 0 }, %struct.imx355_reg { i16 775, i8 120 }, %struct.imx355_reg { i16 779, i8 1 }, %struct.imx355_reg { i16 781, i8 2 }, %struct.imx355_reg { i16 782, i8 0 }, %struct.imx355_reg { i16 783, i8 75 }, %struct.imx355_reg { i16 784, i8 0 }, %struct.imx355_reg { i16 1792, i8 0 }, %struct.imx355_reg { i16 1793, i8 16 }, %struct.imx355_reg { i16 2080, i8 11 }, %struct.imx355_reg { i16 2081, i8 64 }, %struct.imx355_reg { i16 12424, i8 4 }, %struct.imx355_reg { i16 26643, i8 2 }, %struct.imx355_reg { i16 26677, i8 7 }, %struct.imx355_reg { i16 26678, i8 1 }, %struct.imx355_reg { i16 26679, i8 4 }, %struct.imx355_reg { i16 26701, i8 7 }, %struct.imx355_reg { i16 26702, i8 1 }, %struct.imx355_reg { i16 26703, i8 4 }], [40 x i8] zeroinitializer }, align 32
@mode_1284x720_regs = internal constant { [46 x %struct.imx355_reg], [40 x i8] } { [46 x %struct.imx355_reg] [%struct.imx355_reg { i16 274, i8 10 }, %struct.imx355_reg { i16 275, i8 10 }, %struct.imx355_reg { i16 276, i8 3 }, %struct.imx355_reg { i16 834, i8 7 }, %struct.imx355_reg { i16 835, i8 44 }, %struct.imx355_reg { i16 832, i8 5 }, %struct.imx355_reg { i16 833, i8 26 }, %struct.imx355_reg { i16 836, i8 1 }, %struct.imx355_reg { i16 837, i8 104 }, %struct.imx355_reg { i16 838, i8 2 }, %struct.imx355_reg { i16 839, i8 0 }, %struct.imx355_reg { i16 840, i8 11 }, %struct.imx355_reg { i16 841, i8 111 }, %struct.imx355_reg { i16 842, i8 7 }, %struct.imx355_reg { i16 843, i8 -97 }, %struct.imx355_reg { i16 544, i8 0 }, %struct.imx355_reg { i16 546, i8 1 }, %struct.imx355_reg { i16 2304, i8 1 }, %struct.imx355_reg { i16 2305, i8 34 }, %struct.imx355_reg { i16 2306, i8 0 }, %struct.imx355_reg { i16 844, i8 5 }, %struct.imx355_reg { i16 845, i8 4 }, %struct.imx355_reg { i16 846, i8 2 }, %struct.imx355_reg { i16 847, i8 -48 }, %struct.imx355_reg { i16 769, i8 5 }, %struct.imx355_reg { i16 771, i8 1 }, %struct.imx355_reg { i16 773, i8 2 }, %struct.imx355_reg { i16 774, i8 0 }, %struct.imx355_reg { i16 775, i8 120 }, %struct.imx355_reg { i16 779, i8 1 }, %struct.imx355_reg { i16 781, i8 2 }, %struct.imx355_reg { i16 782, i8 0 }, %struct.imx355_reg { i16 783, i8 75 }, %struct.imx355_reg { i16 784, i8 0 }, %struct.imx355_reg { i16 1792, i8 0 }, %struct.imx355_reg { i16 1793, i8 16 }, %struct.imx355_reg { i16 2080, i8 11 }, %struct.imx355_reg { i16 2081, i8 64 }, %struct.imx355_reg { i16 12424, i8 4 }, %struct.imx355_reg { i16 26643, i8 2 }, %struct.imx355_reg { i16 26677, i8 7 }, %struct.imx355_reg { i16 26678, i8 1 }, %struct.imx355_reg { i16 26679, i8 4 }, %struct.imx355_reg { i16 26701, i8 7 }, %struct.imx355_reg { i16 26702, i8 1 }, %struct.imx355_reg { i16 26703, i8 4 }], [40 x i8] zeroinitializer }, align 32
@mode_1280x720_regs = internal constant { [46 x %struct.imx355_reg], [40 x i8] } { [46 x %struct.imx355_reg] [%struct.imx355_reg { i16 274, i8 10 }, %struct.imx355_reg { i16 275, i8 10 }, %struct.imx355_reg { i16 276, i8 3 }, %struct.imx355_reg { i16 834, i8 7 }, %struct.imx355_reg { i16 835, i8 44 }, %struct.imx355_reg { i16 832, i8 5 }, %struct.imx355_reg { i16 833, i8 26 }, %struct.imx355_reg { i16 836, i8 1 }, %struct.imx355_reg { i16 837, i8 104 }, %struct.imx355_reg { i16 838, i8 2 }, %struct.imx355_reg { i16 839, i8 0 }, %struct.imx355_reg { i16 840, i8 11 }, %struct.imx355_reg { i16 841, i8 103 }, %struct.imx355_reg { i16 842, i8 7 }, %struct.imx355_reg { i16 843, i8 -97 }, %struct.imx355_reg { i16 544, i8 0 }, %struct.imx355_reg { i16 546, i8 1 }, %struct.imx355_reg { i16 2304, i8 1 }, %struct.imx355_reg { i16 2305, i8 34 }, %struct.imx355_reg { i16 2306, i8 0 }, %struct.imx355_reg { i16 844, i8 5 }, %struct.imx355_reg { i16 845, i8 0 }, %struct.imx355_reg { i16 846, i8 2 }, %struct.imx355_reg { i16 847, i8 -48 }, %struct.imx355_reg { i16 769, i8 5 }, %struct.imx355_reg { i16 771, i8 1 }, %struct.imx355_reg { i16 773, i8 2 }, %struct.imx355_reg { i16 774, i8 0 }, %struct.imx355_reg { i16 775, i8 120 }, %struct.imx355_reg { i16 779, i8 1 }, %struct.imx355_reg { i16 781, i8 2 }, %struct.imx355_reg { i16 782, i8 0 }, %struct.imx355_reg { i16 783, i8 75 }, %struct.imx355_reg { i16 784, i8 0 }, %struct.imx355_reg { i16 1792, i8 0 }, %struct.imx355_reg { i16 1793, i8 16 }, %struct.imx355_reg { i16 2080, i8 11 }, %struct.imx355_reg { i16 2081, i8 64 }, %struct.imx355_reg { i16 12424, i8 4 }, %struct.imx355_reg { i16 26643, i8 2 }, %struct.imx355_reg { i16 26677, i8 7 }, %struct.imx355_reg { i16 26678, i8 1 }, %struct.imx355_reg { i16 26679, i8 4 }, %struct.imx355_reg { i16 26701, i8 7 }, %struct.imx355_reg { i16 26702, i8 1 }, %struct.imx355_reg { i16 26703, i8 4 }], [40 x i8] zeroinitializer }, align 32
@mode_820x616_regs = internal constant { [46 x %struct.imx355_reg], [40 x i8] } { [46 x %struct.imx355_reg] [%struct.imx355_reg { i16 274, i8 10 }, %struct.imx355_reg { i16 275, i8 10 }, %struct.imx355_reg { i16 276, i8 3 }, %struct.imx355_reg { i16 834, i8 14 }, %struct.imx355_reg { i16 835, i8 88 }, %struct.imx355_reg { i16 832, i8 2 }, %struct.imx355_reg { i16 833, i8 -116 }, %struct.imx355_reg { i16 836, i8 0 }, %struct.imx355_reg { i16 837, i8 0 }, %struct.imx355_reg { i16 838, i8 0 }, %struct.imx355_reg { i16 839, i8 0 }, %struct.imx355_reg { i16 840, i8 12 }, %struct.imx355_reg { i16 841, i8 -49 }, %struct.imx355_reg { i16 842, i8 9 }, %struct.imx355_reg { i16 843, i8 -97 }, %struct.imx355_reg { i16 544, i8 0 }, %struct.imx355_reg { i16 546, i8 1 }, %struct.imx355_reg { i16 2304, i8 1 }, %struct.imx355_reg { i16 2305, i8 68 }, %struct.imx355_reg { i16 2306, i8 0 }, %struct.imx355_reg { i16 844, i8 3 }, %struct.imx355_reg { i16 845, i8 52 }, %struct.imx355_reg { i16 846, i8 2 }, %struct.imx355_reg { i16 847, i8 104 }, %struct.imx355_reg { i16 769, i8 5 }, %struct.imx355_reg { i16 771, i8 1 }, %struct.imx355_reg { i16 773, i8 2 }, %struct.imx355_reg { i16 774, i8 0 }, %struct.imx355_reg { i16 775, i8 120 }, %struct.imx355_reg { i16 779, i8 1 }, %struct.imx355_reg { i16 781, i8 2 }, %struct.imx355_reg { i16 782, i8 0 }, %struct.imx355_reg { i16 783, i8 75 }, %struct.imx355_reg { i16 784, i8 0 }, %struct.imx355_reg { i16 1792, i8 2 }, %struct.imx355_reg { i16 1793, i8 120 }, %struct.imx355_reg { i16 2080, i8 11 }, %struct.imx355_reg { i16 2081, i8 64 }, %struct.imx355_reg { i16 12424, i8 4 }, %struct.imx355_reg { i16 26643, i8 2 }, %struct.imx355_reg { i16 26677, i8 7 }, %struct.imx355_reg { i16 26678, i8 1 }, %struct.imx355_reg { i16 26679, i8 4 }, %struct.imx355_reg { i16 26701, i8 7 }, %struct.imx355_reg { i16 26702, i8 1 }, %struct.imx355_reg { i16 26703, i8 4 }], [40 x i8] zeroinitializer }, align 32
@imx355_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"imx355:1574:(ctrl_hdlr)->_lock\00", [33 x i8] zeroinitializer }, align 32
@imx355_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @imx355_set_ctrl }, [20 x i8] zeroinitializer }, align 32
@imx355_test_pattern_menu = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], [44 x i8] zeroinitializer }, align 32
@imx355_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.4, i32 1638, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"control init failed: %d\00", [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"imx355_init_controls\00", [43 x i8] zeroinitializer }, align 32
@imx355_init_controls._entry_ptr = internal global ptr @imx355_init_controls._entry, section ".printk_index", align 4
@imx355_set_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.4, i32 1237, ptr @.str.48, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ctrl(id:0x%x,val:0x%x) is not handled\00", [58 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"imx355_set_ctrl\00", [16 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@imx355_set_ctrl._entry_ptr = internal global ptr @imx355_set_ctrl._entry, section ".printk_index", align 4
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Solid Colour\00", [19 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Eight Vertical Colour Bars\00", [37 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Colour Bars With Fade to Grey\00", [34 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Pseudorandom Sequence (PN9)\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 9963793, i64 9963796, i64 9963797, i64 10356993, i64 10356995, i64 10422531, i64 10422533]
@___asan_gen_.54 = private unnamed_addr constant [18 x i8] c"imx355_i2c_driver\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1840, i32 26 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1842, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant [14 x i8] c"imx355_pm_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1830, i32 32 }
@___asan_gen_.63 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1730, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [18 x i8] c"imx355_subdev_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1545, i32 37 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1738, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1744, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [21 x i8] c"link_freq_menu_items\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 886, i32 18 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1752, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1758, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [16 x i8] c"supported_modes\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 891, i32 33 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1768, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [20 x i8] c"imx355_internal_ops\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1555, i32 46 }
@___asan_gen_.120 = private unnamed_addr constant [25 x i8] c"imx355_subdev_entity_ops\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1551, i32 45 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1783, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [23 x i8] c"imx355_subdev_core_ops\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1529, i32 42 }
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"imx355_video_ops\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1534, i32 43 }
@___asan_gen_.135 = private unnamed_addr constant [15 x i8] c"imx355_pad_ops\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1538, i32 41 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1399, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1407, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [19 x i8] c"imx355_global_regs\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 131, i32 32 }
@___asan_gen_.156 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1148, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant [6 x i8] c"codes\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1075, i32 19 }
@___asan_gen_.172 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 998, i32 6 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1522, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1678, i32 50 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1681, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1685, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1687, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1692, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1694, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1707, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant [20 x i8] c"mode_3280x2464_regs\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 289, i32 32 }
@___asan_gen_.222 = private unnamed_addr constant [20 x i8] c"mode_3268x2448_regs\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 191, i32 32 }
@___asan_gen_.225 = private unnamed_addr constant [20 x i8] c"mode_3264x2448_regs\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 240, i32 32 }
@___asan_gen_.228 = private unnamed_addr constant [20 x i8] c"mode_1940x1096_regs\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 338, i32 32 }
@___asan_gen_.231 = private unnamed_addr constant [20 x i8] c"mode_1936x1096_regs\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 387, i32 32 }
@___asan_gen_.234 = private unnamed_addr constant [20 x i8] c"mode_1924x1080_regs\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 436, i32 32 }
@___asan_gen_.237 = private unnamed_addr constant [20 x i8] c"mode_1920x1080_regs\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 485, i32 32 }
@___asan_gen_.240 = private unnamed_addr constant [20 x i8] c"mode_1640x1232_regs\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 534, i32 32 }
@___asan_gen_.243 = private unnamed_addr constant [19 x i8] c"mode_1640x922_regs\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 583, i32 32 }
@___asan_gen_.246 = private unnamed_addr constant [19 x i8] c"mode_1300x736_regs\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 632, i32 32 }
@___asan_gen_.249 = private unnamed_addr constant [19 x i8] c"mode_1296x736_regs\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 681, i32 32 }
@___asan_gen_.252 = private unnamed_addr constant [19 x i8] c"mode_1284x720_regs\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 730, i32 32 }
@___asan_gen_.255 = private unnamed_addr constant [19 x i8] c"mode_1280x720_regs\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 779, i32 32 }
@___asan_gen_.258 = private unnamed_addr constant [18 x i8] c"mode_820x616_regs\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 828, i32 32 }
@___asan_gen_.261 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1574, i32 8 }
@___asan_gen_.267 = private unnamed_addr constant [16 x i8] c"imx355_ctrl_ops\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1246, i32 35 }
@___asan_gen_.270 = private unnamed_addr constant [25 x i8] c"imx355_test_pattern_menu\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 877, i32 27 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1638, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1236, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 878, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 879, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 880, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 881, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.307 = private constant [30 x i8] c"../drivers/media/i2c/imx355.c\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 882, i32 2 }
@llvm.compiler.used = appending global [109 x ptr] [ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_author300, ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_imx355_i2c_driver_exit, ptr @__initcall__kmod_imx355__298_1849_imx355_i2c_driver_init6, ptr @imx355_get_hwcfg._entry, ptr @imx355_get_hwcfg._entry.34, ptr @imx355_get_hwcfg._entry.38, ptr @imx355_get_hwcfg._entry_ptr, ptr @imx355_get_hwcfg._entry_ptr.36, ptr @imx355_get_hwcfg._entry_ptr.41, ptr @imx355_i2c_driver_exit, ptr @imx355_identify_module._entry, ptr @imx355_identify_module._entry_ptr, ptr @imx355_init_controls._entry, ptr @imx355_init_controls._entry_ptr, ptr @imx355_probe._entry, ptr @imx355_probe._entry.11, ptr @imx355_probe._entry.14, ptr @imx355_probe._entry.17, ptr @imx355_probe._entry.7, ptr @imx355_probe._entry_ptr, ptr @imx355_probe._entry_ptr.13, ptr @imx355_probe._entry_ptr.16, ptr @imx355_probe._entry_ptr.19, ptr @imx355_probe._entry_ptr.9, ptr @imx355_set_ctrl._entry, ptr @imx355_set_ctrl._entry_ptr, ptr @imx355_start_streaming._entry, ptr @imx355_start_streaming._entry.22, ptr @imx355_start_streaming._entry_ptr, ptr @imx355_start_streaming._entry_ptr.24, ptr @imx355_write_regs._entry, ptr @imx355_write_regs._entry_ptr, ptr @imx355_i2c_driver, ptr @.str, ptr @imx355_pm_ops, ptr @imx355_probe.__key, ptr @.str.1, ptr @imx355_subdev_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @link_freq_menu_items, ptr @.str.10, ptr @.str.12, ptr @supported_modes, ptr @.str.15, ptr @imx355_internal_ops, ptr @imx355_subdev_entity_ops, ptr @.str.18, ptr @imx355_subdev_core_ops, ptr @imx355_video_ops, ptr @imx355_pad_ops, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @imx355_global_regs, ptr @imx355_write_regs._rs, ptr @.str.25, ptr @.str.26, ptr @imx355_get_format_code.codes, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @mode_3280x2464_regs, ptr @mode_3268x2448_regs, ptr @mode_3264x2448_regs, ptr @mode_1940x1096_regs, ptr @mode_1936x1096_regs, ptr @mode_1924x1080_regs, ptr @mode_1920x1080_regs, ptr @mode_1640x1232_regs, ptr @mode_1640x922_regs, ptr @mode_1300x736_regs, ptr @mode_1296x736_regs, ptr @mode_1284x720_regs, ptr @mode_1280x720_regs, ptr @mode_820x616_regs, ptr @imx355_init_controls._key, ptr @.str.43, ptr @imx355_ctrl_ops, ptr @imx355_test_pattern_menu, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], section "llvm.metadata"
@0 = internal global [85 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx355_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx355_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx355_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx355_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx355_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx355_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_freq_menu_items to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx355_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supported_modes to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx355_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx355_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx355_subdev_entity_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx355_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx355_subdev_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx355_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx355_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx355_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx355_start_streaming._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx355_global_regs to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx355_write_regs._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx355_write_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx355_get_format_code.codes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx355_identify_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx355_get_hwcfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx355_get_hwcfg._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx355_get_hwcfg._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_3280x2464_regs to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_3268x2448_regs to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_3264x2448_regs to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_1940x1096_regs to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_1936x1096_regs to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_1924x1080_regs to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_1920x1080_regs to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_1640x1232_regs to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_1640x922_regs to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_1300x736_regs to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_1296x736_regs to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_1284x720_regs to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_1280x720_regs to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_820x616_regs to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx355_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx355_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx355_test_pattern_menu to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx355_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx355_set_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx355_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @imx355_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx355_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @imx355_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx355_remove(ptr noundef %client) #2 align 64 {
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
  %mutex = getelementptr inbounds %struct.imx355, ptr %1, i32 0, i32 13
  tail call void @mutex_destroy(ptr noundef %mutex) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx355_probe(ptr noundef %client) #2 align 64 {
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
  %mutex = getelementptr inbounds %struct.imx355, ptr %call.i, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @imx355_probe.__key) #7
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @imx355_subdev_ops) #7
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %2 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr_buf.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_buf.i.i) #7
  %4 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %data_buf.i.i, align 4
  %5 = ptrtoint ptr %addr_buf.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 22, ptr %addr_buf.i.i, align 2
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %addr.i.i, align 2
  %8 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags.i.i, align 2
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 2, ptr %2, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %addr_buf.i.i, ptr %buf.i.i, align 4
  %12 = load i16, ptr %addr.i.i, align 2
  %arrayidx8.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %arrayidx8.i.i, align 4
  %flags11.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %flags11.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %flags11.i.i, align 2
  %len13.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %len13.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2, ptr %len13.i.i, align 4
  %arrayidx14.i.i = getelementptr inbounds [4 x i8], ptr %data_buf.i.i, i32 0, i32 2
  %buf16.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %buf16.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx14.i.i, ptr %buf16.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter.i.i, align 8
  %call18.i.i = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call18.i.i)
  %cmp19.not.i.i = icmp eq i32 %call18.i.i, 2
  br i1 %cmp19.not.i.i, label %if.end.i, label %imx355_read_reg.exit.i

imx355_read_reg.exit.i:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  br label %do.end6

if.end.i:                                         ; preds = %do.body
  %19 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data_buf.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 853, i32 %20)
  %cmp.not.i = icmp eq i32 %20, 853
  br i1 %cmp.not.i, label %if.end8, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.28, i32 noundef 853, i32 noundef %20) #10
  br label %do.end6

do.end6:                                          ; preds = %do.end.i, %imx355_read_reg.exit.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef -5) #10
  br label %error_probe

if.end8:                                          ; preds = %if.end.i
  %call10 = call fastcc ptr @imx355_get_hwcfg(ptr noundef %dev)
  %hwcfg = getelementptr inbounds %struct.imx355, ptr %call.i, i32 0, i32 11
  %21 = ptrtoint ptr %hwcfg to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call10, ptr %hwcfg, align 4
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %do.end16, label %if.end18

do.end16:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #10
  br label %error_probe

if.end18:                                         ; preds = %if.end8
  %link_def_freq = getelementptr inbounds %struct.imx355, ptr %call.i, i32 0, i32 12
  %22 = ptrtoint ptr %link_def_freq to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 360000000, ptr %link_def_freq, align 8
  %nr_of_link_freqs = getelementptr inbounds %struct.imx355_hwcfg, ptr %call10, i32 0, i32 2
  %23 = ptrtoint ptr %nr_of_link_freqs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr_of_link_freqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp146.not = icmp eq i32 %24, 0
  br i1 %cmp146.not, label %if.end18.for.end_crit_edge, label %for.body.lr.ph

if.end18.for.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end18
  %link_freqs = getelementptr inbounds %struct.imx355_hwcfg, ptr %call10, i32 0, i32 1
  %25 = ptrtoint ptr %link_freqs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %link_freqs, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0147 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i64, ptr %26, i32 %i.0147
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 360000000, i64 %28)
  %cmp22 = icmp eq i64 %28, 360000000
  br i1 %cmp22, label %do.body24, label %for.inc

do.body24:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx355_probe.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx355_probe, %if.then29)) #7
          to label %for.end [label %if.then29], !srcloc !187

if.then29:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx355_probe.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %i.0147) #7
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0147, 1
  %exitcond.not = icmp eq i32 %inc, %24
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then29, %do.body24, %if.end18.for.end_crit_edge
  %i.0145 = phi i32 [ %i.0147, %do.body24 ], [ %i.0147, %if.then29 ], [ 0, %if.end18.for.end_crit_edge ], [ %24, %for.inc.for.end_crit_edge ]
  %29 = ptrtoint ptr %hwcfg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hwcfg, align 4
  %nr_of_link_freqs36 = getelementptr inbounds %struct.imx355_hwcfg, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %nr_of_link_freqs36 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nr_of_link_freqs36, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0145, i32 %32)
  %cmp37 = icmp eq i32 %i.0145, %32
  br i1 %cmp37, label %do.end41, label %if.end43

do.end41:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #10
  br label %error_probe

if.end43:                                         ; preds = %for.end
  %cur_mode = getelementptr inbounds %struct.imx355, ptr %call.i, i32 0, i32 10
  %33 = ptrtoint ptr %cur_mode to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @supported_modes, ptr %cur_mode, align 8
  %34 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_priv.i.i, align 4
  %ctrl_handler.i = getelementptr inbounds %struct.imx355, ptr %call.i, i32 0, i32 2
  %call1.i = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler.i, i32 noundef 10, ptr noundef nonnull @imx355_init_controls._key, ptr noundef nonnull @.str.43) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i132, label %if.end43.do.end49_crit_edge

if.end43.do.end49_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end49

if.end.i132:                                      ; preds = %if.end43
  %lock.i = getelementptr inbounds %struct.imx355, ptr %call.i, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %mutex, ptr %lock.i, align 4
  %call2.i = call ptr @v4l2_ctrl_new_int_menu(ptr noundef %ctrl_handler.i, ptr noundef nonnull @imx355_ctrl_ops, i32 noundef 10422529, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull @link_freq_menu_items) #7
  %link_freq.i = getelementptr inbounds %struct.imx355, ptr %call.i, i32 0, i32 3
  %37 = ptrtoint ptr %link_freq.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call2.i, ptr %link_freq.i, align 4
  %tobool4.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool4.not.i, label %if.end.i132.if.end7.i_crit_edge, label %if.then5.i

if.end.i132.if.end7.i_crit_edge:                  ; preds = %if.end.i132
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i132
  call void @__sanitizer_cov_trace_pc() #9
  %flags.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call2.i, i32 0, i32 20
  %38 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %39, 4
  store i32 %or.i, ptr %flags.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i132.if.end7.i_crit_edge
  %40 = ptrtoint ptr %link_def_freq to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %link_def_freq, align 8
  %42 = shl i64 %41, 2
  %div92366.i = and i64 %42, 9223372036854775804
  %43 = call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div92366.i, i64 3689348814741910323) #11, !srcloc !188
  %44 = call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div92366.i, i64 %43) #11, !srcloc !189
  %call197.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @imx355_ctrl_ops, i32 noundef 10422530, i64 noundef %44, i64 noundef %44, i64 noundef 1, i64 noundef %44) #7
  %pixel_rate198.i = getelementptr inbounds %struct.imx355, ptr %call.i, i32 0, i32 4
  %45 = ptrtoint ptr %pixel_rate198.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call197.i, ptr %pixel_rate198.i, align 8
  %46 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cur_mode, align 8
  %fll_def.i = getelementptr inbounds %struct.imx355_mode, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %fll_def.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fll_def.i, align 4
  %height.i = getelementptr inbounds %struct.imx355_mode, ptr %47, i32 0, i32 1
  %50 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %height.i, align 4
  %sub199.i = sub i32 %49, %51
  %conv200.i = zext i32 %sub199.i to i64
  %fll_min.i = getelementptr inbounds %struct.imx355_mode, ptr %47, i32 0, i32 3
  %52 = ptrtoint ptr %fll_min.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %fll_min.i, align 4
  %sub202.i = sub i32 %53, %51
  %conv203.i = zext i32 %sub202.i to i64
  %sub205.i = sub i32 65535, %51
  %conv206.i = zext i32 %sub205.i to i64
  %call207.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @imx355_ctrl_ops, i32 noundef 10356993, i64 noundef %conv203.i, i64 noundef %conv206.i, i64 noundef 1, i64 noundef %conv200.i) #7
  %vblank.i = getelementptr inbounds %struct.imx355, ptr %call.i, i32 0, i32 5
  %54 = ptrtoint ptr %vblank.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call207.i, ptr %vblank.i, align 4
  %llp.i = getelementptr inbounds %struct.imx355_mode, ptr %47, i32 0, i32 4
  %55 = ptrtoint ptr %llp.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %llp.i, align 4
  %57 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %47, align 4
  %sub208.i = sub i32 %56, %58
  %conv209.i = zext i32 %sub208.i to i64
  %call210.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @imx355_ctrl_ops, i32 noundef 10356994, i64 noundef %conv209.i, i64 noundef %conv209.i, i64 noundef 1, i64 noundef %conv209.i) #7
  %hblank211.i = getelementptr inbounds %struct.imx355, ptr %call.i, i32 0, i32 6
  %59 = ptrtoint ptr %hblank211.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call210.i, ptr %hblank211.i, align 8
  %tobool213.not.i = icmp eq ptr %call210.i, null
  br i1 %tobool213.not.i, label %if.end7.i.if.end218.i_crit_edge, label %if.then214.i

if.end7.i.if.end218.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end218.i

if.then214.i:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %flags216.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call210.i, i32 0, i32 20
  %60 = ptrtoint ptr %flags216.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags216.i, align 4
  %or217.i = or i32 %61, 4
  store i32 %or217.i, ptr %flags216.i, align 4
  br label %if.end218.i

if.end218.i:                                      ; preds = %if.then214.i, %if.end7.i.if.end218.i_crit_edge
  %62 = ptrtoint ptr %fll_def.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %fll_def.i, align 4
  %sub220.i = add i32 %63, -10
  %conv221.i = zext i32 %sub220.i to i64
  %call222.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @imx355_ctrl_ops, i32 noundef 9963793, i64 noundef 1, i64 noundef %conv221.i, i64 noundef 1, i64 noundef 642) #7
  %exposure.i = getelementptr inbounds %struct.imx355, ptr %call.i, i32 0, i32 7
  %64 = ptrtoint ptr %exposure.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call222.i, ptr %exposure.i, align 4
  %call223.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @imx355_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %hflip.i = getelementptr inbounds %struct.imx355, ptr %call.i, i32 0, i32 9
  %65 = ptrtoint ptr %hflip.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call223.i, ptr %hflip.i, align 4
  %call224.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @imx355_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %vflip.i = getelementptr inbounds %struct.imx355, ptr %call.i, i32 0, i32 8
  %66 = ptrtoint ptr %vflip.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call224.i, ptr %vflip.i, align 8
  %call225.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @imx355_ctrl_ops, i32 noundef 10356995, i64 noundef 0, i64 noundef 960, i64 noundef 1, i64 noundef 0) #7
  %call226.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @imx355_ctrl_ops, i32 noundef 10422533, i64 noundef 256, i64 noundef 4095, i64 noundef 1, i64 noundef 256) #7
  %call227.i = call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %ctrl_handler.i, ptr noundef nonnull @imx355_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 4, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @imx355_test_pattern_menu) #7
  %error.i = getelementptr inbounds %struct.imx355, ptr %call.i, i32 0, i32 2, i32 9
  %67 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool228.not.i = icmp eq i32 %68, 0
  br i1 %tobool228.not.i, label %if.end51, label %if.then229.i

if.then229.i:                                     ; preds = %if.end218.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i133 = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i133, ptr noundef nonnull @.str.44, i32 noundef %68) #10
  call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler.i) #7
  br label %do.end49

do.end49:                                         ; preds = %if.then229.i, %if.end43.do.end49_crit_edge
  %retval.0.i134.ph = phi i32 [ %call1.i, %if.end43.do.end49_crit_edge ], [ %68, %if.then229.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %retval.0.i134.ph) #10
  br label %error_probe

if.end51:                                         ; preds = %if.end218.i
  %ctrl_handler233.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %69 = ptrtoint ptr %ctrl_handler233.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %ctrl_handler.i, ptr %ctrl_handler233.i, align 8
  %internal_ops = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 7
  %70 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @imx355_internal_ops, ptr %internal_ops, align 4
  %flags = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 4
  %71 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags, align 8
  %or = or i32 %72, 12
  store i32 %or, ptr %flags, align 8
  %ops = getelementptr inbounds %struct.media_entity, ptr %call.i, i32 0, i32 11
  %73 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @imx355_subdev_entity_ops, ptr %ops, align 8
  %function = getelementptr inbounds %struct.media_entity, ptr %call.i, i32 0, i32 3
  %74 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 131073, ptr %function, align 8
  %pad = getelementptr inbounds %struct.imx355, ptr %call.i, i32 0, i32 1
  %flags57 = getelementptr inbounds %struct.imx355, ptr %call.i, i32 0, i32 1, i32 4
  %75 = ptrtoint ptr %flags57 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 2, ptr %flags57, align 4
  %call61 = call i32 @media_entity_pads_init(ptr noundef nonnull %call.i, i16 noundef zeroext 1, ptr noundef %pad) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end68, label %do.end66

do.end66:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %call61) #10
  br label %error_handler_free

if.end68:                                         ; preds = %if.end51
  %call70 = call i32 @v4l2_async_register_subdev_sensor(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %if.end68.error_handler_free_crit_edge, label %if.end73

if.end68.error_handler_free_crit_edge:            ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_handler_free

if.end73:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  %call.i135 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #7
  call void @pm_runtime_enable(ptr noundef %dev) #7
  %call.i136 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 0) #7
  br label %cleanup

error_handler_free:                               ; preds = %if.end68.error_handler_free_crit_edge, %do.end66
  %ret.0 = phi i32 [ %call61, %do.end66 ], [ %call70, %if.end68.error_handler_free_crit_edge ]
  %76 = ptrtoint ptr %ctrl_handler233.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ctrl_handler233.i, align 8
  call void @v4l2_ctrl_handler_free(ptr noundef %77) #7
  br label %error_probe

error_probe:                                      ; preds = %error_handler_free, %do.end49, %do.end41, %do.end16, %do.end6
  %ret.1 = phi i32 [ -5, %do.end6 ], [ -22, %do.end41 ], [ %retval.0.i134.ph, %do.end49 ], [ %ret.0, %error_handler_free ], [ -19, %do.end16 ]
  call void @mutex_destroy(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %error_probe, %if.end73, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %error_probe ], [ 0, %if.end73 ], [ -12, %entry.cleanup_crit_edge ]
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
define internal fastcc ptr @imx355_get_hwcfg(ptr noundef %dev) unnamed_addr #2 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx355_get_hwcfg.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx355_get_hwcfg, %if.then23)) #7
          to label %do.end27 [label %if.then23], !srcloc !187

if.then23:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx355_get_hwcfg.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %4) #7
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx355_get_hwcfg.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx355_get_hwcfg, %if.then47)) #7
          to label %do.end50 [label %if.then47], !srcloc !187

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #9
  %nr_of_link_frequencies = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg, i32 0, i32 4
  %7 = ptrtoint ptr %nr_of_link_frequencies to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_of_link_frequencies, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx355_get_hwcfg.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %8) #7
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
  %nr_of_link_freqs = getelementptr inbounds %struct.imx355_hwcfg, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %nr_of_link_freqs to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %nr_of_link_freqs, align 4
  %add = add i32 %10, 1
  %12 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 8) #7
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !190

devm_kcalloc.exit.thread:                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %link_freqs132 = getelementptr inbounds %struct.imx355_hwcfg, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %link_freqs132 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %link_freqs132, align 4
  br label %cleanup.sink.split

devm_kcalloc.exit:                                ; preds = %if.end57
  %15 = extractvalue { i32, i1 } %12, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %15, i32 noundef 3520) #7
  %link_freqs = getelementptr inbounds %struct.imx355_hwcfg, ptr %call.i, i32 0, i32 1
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx355_get_hwcfg.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx355_get_hwcfg, %if.then81)) #7
          to label %for.inc [label %if.then81], !srcloc !187

if.then81:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %link_freqs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %link_freqs, align 4
  %arrayidx83 = getelementptr i64, ptr %27, i32 %i.0136
  %28 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx83, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx355_get_hwcfg.__UNIQUE_ID_ddebug296, ptr noundef %dev, ptr noundef nonnull @.str.42, i32 noundef %i.0136, i64 noundef %29) #7
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
define internal i32 @imx355_set_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  %buf.i.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %mutex = getelementptr inbounds %struct.imx355, ptr %sd, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %streaming = getelementptr inbounds %struct.imx355, ptr %sd, i32 0, i32 14
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !191
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !192
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #7
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #7, !srcloc !193
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.err_unlock_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.err_unlock_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unlock

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !194
  br label %err_unlock

if.end10:                                         ; preds = %if.then5
  %call11 = tail call fastcc i32 @imx355_start_streaming(ptr noundef %sd)
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
  %vflip = getelementptr inbounds %struct.imx355, ptr %sd, i32 0, i32 8
  %12 = ptrtoint ptr %vflip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vflip, align 8
  call void @__v4l2_ctrl_grab(ptr noundef %13, i1 noundef zeroext %tobool4) #7
  %hflip = getelementptr inbounds %struct.imx355, ptr %sd, i32 0, i32 9
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
define internal fastcc i32 @imx355_start_streaming(ptr nocapture noundef readonly %imx355) unnamed_addr #2 align 64 {
entry:
  %buf.i65 = alloca [6 x i8], align 2
  %buf.i = alloca [6 x i8], align 2
  %buf.i.i42 = alloca [6 x i8], align 2
  %buf.i.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %imx355, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %2 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 2
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 52
  br i1 %exitcond.not.i, label %if.end, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry
  %i.025.i = phi i32 [ 0, %entry ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.imx355_reg, ptr @imx355_global_regs, i32 %i.025.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx.i, align 2
  %val.i = getelementptr %struct.imx355_reg, ptr @imx355_global_regs, i32 %i.025.i, i32 1
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val.i, align 2
  %conv.i = zext i8 %6 to i32
  %7 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #7
  %9 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %4, ptr %buf.i.i, align 2
  %shl.i.i = shl nuw i32 %conv.i, 24
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %shl.i.i, ptr %2, align 2
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %8, ptr noundef nonnull %buf.i.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i)
  %cmp5.not.i.i = icmp eq i32 %call.i.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #7
  br i1 %cmp5.not.i.i, label %for.cond.i, label %do.body.i

do.body.i:                                        ; preds = %for.body.i
  %call3.i = call i32 @___ratelimit(ptr noundef nonnull @imx355_write_regs._rs, ptr noundef nonnull @__func__.imx355_write_regs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %do.body.i.do.end_crit_edge, label %do.end.i

do.body.i.do.end_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %conv9.i = zext i16 %4 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.26, i32 noundef %conv9.i, i32 noundef -5) #10
  br label %do.end

do.end:                                           ; preds = %do.end.i, %do.body.i.do.end_crit_edge
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #10
  br label %cleanup

if.end:                                           ; preds = %for.cond.i
  %cur_mode = getelementptr inbounds %struct.imx355, ptr %imx355, i32 0, i32 10
  %11 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur_mode, align 8
  %reg_list2 = getelementptr inbounds %struct.imx355_mode, ptr %12, i32 0, i32 6
  %regs3 = getelementptr inbounds %struct.imx355_mode, ptr %12, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %regs3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs3, align 4
  %15 = ptrtoint ptr %reg_list2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg_list2, align 4
  %17 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_priv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp24.not.i = icmp eq i32 %16, 0
  br i1 %cmp24.not.i, label %if.end.if.end12_crit_edge, label %for.body.lr.ph.i

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

for.body.lr.ph.i:                                 ; preds = %if.end
  %19 = getelementptr inbounds [6 x i8], ptr %buf.i.i42, i32 0, i32 2
  br label %for.body.i54

for.cond.i46:                                     ; preds = %for.body.i54
  %inc.i44 = add nuw i32 %i.025.i47, 1
  %exitcond.not.i45 = icmp eq i32 %inc.i44, %16
  br i1 %exitcond.not.i45, label %for.cond.i46.if.end12_crit_edge, label %for.cond.i46.for.body.i54_crit_edge

for.cond.i46.for.body.i54_crit_edge:              ; preds = %for.cond.i46
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i54

for.cond.i46.if.end12_crit_edge:                  ; preds = %for.cond.i46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

for.body.i54:                                     ; preds = %for.cond.i46.for.body.i54_crit_edge, %for.body.lr.ph.i
  %i.025.i47 = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i44, %for.cond.i46.for.body.i54_crit_edge ]
  %arrayidx.i48 = getelementptr %struct.imx355_reg, ptr %14, i32 %i.025.i47
  %20 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.i48, align 2
  %val.i49 = getelementptr %struct.imx355_reg, ptr %14, i32 %i.025.i47, i32 1
  %22 = ptrtoint ptr %val.i49 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %val.i49, align 2
  %conv.i50 = zext i8 %23 to i32
  %24 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i42) #7
  %26 = ptrtoint ptr %buf.i.i42 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %21, ptr %buf.i.i42, align 2
  %shl.i.i51 = shl nuw i32 %conv.i50, 24
  %27 = ptrtoint ptr %19 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %shl.i.i51, ptr %19, align 2
  %call.i.i.i52 = call i32 @i2c_transfer_buffer_flags(ptr noundef %25, ptr noundef nonnull %buf.i.i42, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i52)
  %cmp5.not.i.i53 = icmp eq i32 %call.i.i.i52, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i42) #7
  br i1 %cmp5.not.i.i53, label %for.cond.i46, label %do.body.i57

do.body.i57:                                      ; preds = %for.body.i54
  %call3.i55 = call i32 @___ratelimit(ptr noundef nonnull @imx355_write_regs._rs, ptr noundef nonnull @__func__.imx355_write_regs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i55)
  %tobool4.not.i56 = icmp eq i32 %call3.i55, 0
  br i1 %tobool4.not.i56, label %do.body.i57.do.end10_crit_edge, label %do.end.i60

do.body.i57.do.end10_crit_edge:                   ; preds = %do.body.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

do.end.i60:                                       ; preds = %do.body.i57
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i58 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  %28 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx.i48, align 2
  %conv9.i59 = zext i16 %29 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i58, ptr noundef nonnull @.str.26, i32 noundef %conv9.i59, i32 noundef -5) #10
  br label %do.end10

do.end10:                                         ; preds = %do.end.i60, %do.body.i57.do.end10_crit_edge
  %dev11 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.23) #10
  br label %cleanup

if.end12:                                         ; preds = %for.cond.i46.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %30 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i) #7
  %32 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 2
  %33 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 12400, ptr %buf.i, align 2
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 16777216, ptr %32, align 2
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %31, ptr noundef nonnull %buf.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp5.not.i = icmp eq i32 %call.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #7
  br i1 %cmp5.not.i, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %imx355, i32 0, i32 8
  %35 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ctrl_handler, align 8
  %call18 = call i32 @__v4l2_ctrl_handler_setup(ptr noundef %36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i65) #7
  %39 = getelementptr inbounds [6 x i8], ptr %buf.i65, i32 0, i32 2
  %40 = ptrtoint ptr %buf.i65 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 256, ptr %buf.i65, align 2
  %41 = ptrtoint ptr %39 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 16777216, ptr %39, align 2
  %call.i.i67 = call i32 @i2c_transfer_buffer_flags(ptr noundef %38, ptr noundef nonnull %buf.i65, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i67)
  %cmp5.not.i68 = icmp eq i32 %call.i.i67, 3
  %retval.0.i69 = select i1 %cmp5.not.i68, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i65) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %do.end10, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end10 ], [ %retval.0.i69, %if.end21 ], [ -5, %if.end12.cleanup_crit_edge ], [ %call18, %if.end16.cleanup_crit_edge ]
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
define internal i32 @imx355_enum_mbus_code(ptr noundef %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #2 align 64 {
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
  %mutex = getelementptr inbounds %struct.imx355, ptr %sd, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.end.imx355_get_format_code.exit_crit_edge, label %land.rhs.i

if.end.imx355_get_format_code.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx355_get_format_code.exit

land.rhs.i:                                       ; preds = %if.end
  %dep_map.i = getelementptr inbounds %struct.imx355, ptr %sd, i32 0, i32 13, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.imx355_get_format_code.exit_crit_edge, !prof !190

land.rhs.i.imx355_get_format_code.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx355_get_format_code.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1080, i32 noundef 9, ptr noundef null) #7
  br label %imx355_get_format_code.exit

imx355_get_format_code.exit:                      ; preds = %do.end.i, %land.rhs.i.imx355_get_format_code.exit_crit_edge, %if.end.imx355_get_format_code.exit_crit_edge
  %vflip.i = getelementptr inbounds %struct.imx355, ptr %sd, i32 0, i32 8
  %3 = ptrtoint ptr %vflip.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vflip.i, align 8
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %4, i32 0, i32 22
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %hflip.i = getelementptr inbounds %struct.imx355, ptr %sd, i32 0, i32 9
  %7 = ptrtoint ptr %hflip.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hflip.i, align 4
  %val24.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %8, i32 0, i32 22
  %9 = ptrtoint ptr %val24.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val24.i, align 4
  %arrayidx25.i = getelementptr [2 x [2 x i32]], ptr @imx355_get_format_code.codes, i32 0, i32 %6, i32 %10
  %11 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx25.i, align 4
  %code2 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %13 = ptrtoint ptr %code2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %code2, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %imx355_get_format_code.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %imx355_get_format_code.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx355_enum_frame_size(ptr noundef %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %1)
  %cmp = icmp ugt i32 %1, 13
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.imx355, ptr %sd, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %2 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.end.imx355_get_format_code.exit_crit_edge, label %land.rhs.i

if.end.imx355_get_format_code.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx355_get_format_code.exit

land.rhs.i:                                       ; preds = %if.end
  %dep_map.i = getelementptr inbounds %struct.imx355, ptr %sd, i32 0, i32 13, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.imx355_get_format_code.exit_crit_edge, !prof !190

land.rhs.i.imx355_get_format_code.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx355_get_format_code.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1080, i32 noundef 9, ptr noundef null) #7
  br label %imx355_get_format_code.exit

imx355_get_format_code.exit:                      ; preds = %do.end.i, %land.rhs.i.imx355_get_format_code.exit_crit_edge, %if.end.imx355_get_format_code.exit_crit_edge
  %vflip.i = getelementptr inbounds %struct.imx355, ptr %sd, i32 0, i32 8
  %5 = ptrtoint ptr %vflip.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vflip.i, align 8
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %6, i32 0, i32 22
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  %hflip.i = getelementptr inbounds %struct.imx355, ptr %sd, i32 0, i32 9
  %9 = ptrtoint ptr %hflip.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hflip.i, align 4
  %val24.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %10, i32 0, i32 22
  %11 = ptrtoint ptr %val24.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val24.i, align 4
  %arrayidx25.i = getelementptr [2 x [2 x i32]], ptr @imx355_get_format_code.codes, i32 0, i32 %8, i32 %12
  %13 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx25.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %14)
  %cmp2.not = icmp eq i32 %3, %14
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br i1 %cmp2.not, label %if.end5, label %imx355_get_format_code.exit.cleanup_crit_edge

imx355_get_format_code.exit.cleanup_crit_edge:    ; preds = %imx355_get_format_code.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %imx355_get_format_code.exit
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fse, align 4
  %arrayidx = getelementptr [14 x %struct.imx355_mode], ptr @supported_modes, i32 0, i32 %16
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
  %height = getelementptr [14 x %struct.imx355_mode], ptr @supported_modes, i32 0, i32 %16, i32 1
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

cleanup:                                          ; preds = %if.end5, %imx355_get_format_code.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %imx355_get_format_code.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx355_get_pad_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.imx355, ptr %sd, i32 0, i32 13
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
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !195

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
  br label %imx355_do_get_pad_format.exit

if.else.i:                                        ; preds = %entry
  %cur_mode.i = getelementptr inbounds %struct.imx355, ptr %sd, i32 0, i32 10
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
  %height.i.i = getelementptr inbounds %struct.imx355_mode, ptr %10, i32 0, i32 1
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
  br i1 %tobool.not.i.i.i, label %if.else.i.imx355_update_pad_format.exit.i_crit_edge, label %land.rhs.i.i.i

if.else.i.imx355_update_pad_format.exit.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx355_update_pad_format.exit.i

land.rhs.i.i.i:                                   ; preds = %if.else.i
  %dep_map.i.i.i = getelementptr inbounds %struct.imx355, ptr %sd, i32 0, i32 13, i32 5
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.imx355_update_pad_format.exit.i_crit_edge, !prof !190

land.rhs.i.i.i.imx355_update_pad_format.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx355_update_pad_format.exit.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1080, i32 noundef 9, ptr noundef null) #7
  br label %imx355_update_pad_format.exit.i

imx355_update_pad_format.exit.i:                  ; preds = %do.end.i.i.i, %land.rhs.i.i.i.imx355_update_pad_format.exit.i_crit_edge, %if.else.i.imx355_update_pad_format.exit.i_crit_edge
  %vflip.i.i.i = getelementptr inbounds %struct.imx355, ptr %sd, i32 0, i32 8
  %18 = ptrtoint ptr %vflip.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vflip.i.i.i, align 8
  %val.i.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %19, i32 0, i32 22
  %20 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val.i.i.i, align 4
  %hflip.i.i.i = getelementptr inbounds %struct.imx355, ptr %sd, i32 0, i32 9
  %22 = ptrtoint ptr %hflip.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hflip.i.i.i, align 4
  %val24.i.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %23, i32 0, i32 22
  %24 = ptrtoint ptr %val24.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val24.i.i.i, align 4
  %arrayidx25.i.i.i = getelementptr [2 x [2 x i32]], ptr @imx355_get_format_code.codes, i32 0, i32 %21, i32 %25
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
  br label %imx355_do_get_pad_format.exit

imx355_do_get_pad_format.exit:                    ; preds = %imx355_update_pad_format.exit.i, %v4l2_subdev_get_try_format.exit.i
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx355_set_pad_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.imx355, ptr %sd, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.imx355_get_format_code.exit_crit_edge, label %land.rhs.i

entry.imx355_get_format_code.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx355_get_format_code.exit

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.imx355, ptr %sd, i32 0, i32 13, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.imx355_get_format_code.exit_crit_edge, !prof !190

land.rhs.i.imx355_get_format_code.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx355_get_format_code.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1080, i32 noundef 9, ptr noundef null) #7
  br label %imx355_get_format_code.exit

imx355_get_format_code.exit:                      ; preds = %do.end.i, %land.rhs.i.imx355_get_format_code.exit_crit_edge, %entry.imx355_get_format_code.exit_crit_edge
  %vflip.i = getelementptr inbounds %struct.imx355, ptr %sd, i32 0, i32 8
  %1 = ptrtoint ptr %vflip.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vflip.i, align 8
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %2, i32 0, i32 22
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  %hflip.i = getelementptr inbounds %struct.imx355, ptr %sd, i32 0, i32 9
  %5 = ptrtoint ptr %hflip.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hflip.i, align 4
  %val24.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %6, i32 0, i32 22
  %7 = ptrtoint ptr %val24.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val24.i, align 4
  %arrayidx25.i = getelementptr [2 x [2 x i32]], ptr @imx355_get_format_code.codes, i32 0, i32 %4, i32 %8
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
  %call5 = tail call ptr @__v4l2_find_nearest_size(ptr noundef nonnull @supported_modes, i32 noundef 14, i32 noundef 32, i32 noundef 0, i32 noundef 4, i32 noundef %13, i32 noundef %15) #7
  %16 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call5, align 4
  %18 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %format, align 4
  %height.i = getelementptr inbounds %struct.imx355_mode, ptr %call5, i32 0, i32 1
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
  br i1 %tobool.not.i.i, label %imx355_get_format_code.exit.imx355_update_pad_format.exit_crit_edge, label %land.rhs.i.i

imx355_get_format_code.exit.imx355_update_pad_format.exit_crit_edge: ; preds = %imx355_get_format_code.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx355_update_pad_format.exit

land.rhs.i.i:                                     ; preds = %imx355_get_format_code.exit
  %dep_map.i.i = getelementptr inbounds %struct.imx355, ptr %sd, i32 0, i32 13, i32 5
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.imx355_update_pad_format.exit_crit_edge, !prof !190

land.rhs.i.i.imx355_update_pad_format.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx355_update_pad_format.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1080, i32 noundef 9, ptr noundef null) #7
  br label %imx355_update_pad_format.exit

imx355_update_pad_format.exit:                    ; preds = %do.end.i.i, %land.rhs.i.i.imx355_update_pad_format.exit_crit_edge, %imx355_get_format_code.exit.imx355_update_pad_format.exit_crit_edge
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
  %arrayidx25.i.i = getelementptr [2 x [2 x i32]], ptr @imx355_get_format_code.codes, i32 0, i32 %26, i32 %30
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

if.then:                                          ; preds = %imx355_update_pad_format.exit
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
  br i1 %cmp.not.i324, label %if.then.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i325, !prof !195

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

if.else:                                          ; preds = %imx355_update_pad_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  %cur_mode = getelementptr inbounds %struct.imx355, ptr %sd, i32 0, i32 10
  %44 = ptrtoint ptr %cur_mode to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call5, ptr %cur_mode, align 8
  %link_def_freq = getelementptr inbounds %struct.imx355, ptr %sd, i32 0, i32 12
  %45 = ptrtoint ptr %link_def_freq to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %link_def_freq, align 8
  %47 = shl i64 %46, 2
  %div92323 = and i64 %47, 9223372036854775804
  %48 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div92323, i64 3689348814741910323) #11, !srcloc !188
  %49 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div92323, i64 %48) #11, !srcloc !189
  %pixel_rate194 = getelementptr inbounds %struct.imx355, ptr %sd, i32 0, i32 4
  %50 = ptrtoint ptr %pixel_rate194 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pixel_rate194, align 8
  %call195 = tail call i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef %51, i64 noundef %49) #7
  %52 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cur_mode, align 8
  %height197 = getelementptr inbounds %struct.imx355_mode, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %height197 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %height197, align 4
  %fll_def = getelementptr inbounds %struct.imx355_mode, ptr %53, i32 0, i32 2
  %56 = ptrtoint ptr %fll_def to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fll_def, align 4
  %sub199 = sub i32 %57, %55
  %fll_min = getelementptr inbounds %struct.imx355_mode, ptr %53, i32 0, i32 3
  %58 = ptrtoint ptr %fll_min to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %fll_min, align 4
  %sub201 = sub i32 %59, %55
  %sub202 = sub i32 65535, %55
  %vblank = getelementptr inbounds %struct.imx355, ptr %sd, i32 0, i32 5
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
  %llp = getelementptr inbounds %struct.imx355_mode, ptr %call5, i32 0, i32 4
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
  %hblank = getelementptr inbounds %struct.imx355, ptr %sd, i32 0, i32 6
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
define internal i32 @imx355_set_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
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
  %height = getelementptr inbounds %struct.imx355_mode, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %add = add i32 %9, -10
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
  %height17 = getelementptr inbounds %struct.imx355_mode, ptr %44, i32 0, i32 1
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
define internal i32 @imx355_open(ptr noundef %sd, ptr nocapture noundef readonly %fh) #2 align 64 {
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
  br i1 %cmp.not.i.not, label %do.end.i, label %entry.v4l2_subdev_get_try_format.exit_crit_edge, !prof !190

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
  %mutex = getelementptr inbounds %struct.imx355, ptr %sd, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %cur_mode = getelementptr inbounds %struct.imx355, ptr %sd, i32 0, i32 10
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
  %height = getelementptr inbounds %struct.imx355_mode, ptr %11, i32 0, i32 1
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
  br i1 %tobool.not.i, label %v4l2_subdev_get_try_format.exit.imx355_get_format_code.exit_crit_edge, label %land.rhs.i

v4l2_subdev_get_try_format.exit.imx355_get_format_code.exit_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx355_get_format_code.exit

land.rhs.i:                                       ; preds = %v4l2_subdev_get_try_format.exit
  %dep_map.i = getelementptr inbounds %struct.imx355, ptr %sd, i32 0, i32 13, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i15 = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i15, label %do.end.i16, label %land.rhs.i.imx355_get_format_code.exit_crit_edge, !prof !190

land.rhs.i.imx355_get_format_code.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx355_get_format_code.exit

do.end.i16:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1080, i32 noundef 9, ptr noundef null) #7
  br label %imx355_get_format_code.exit

imx355_get_format_code.exit:                      ; preds = %do.end.i16, %land.rhs.i.imx355_get_format_code.exit_crit_edge, %v4l2_subdev_get_try_format.exit.imx355_get_format_code.exit_crit_edge
  %vflip.i = getelementptr inbounds %struct.imx355, ptr %sd, i32 0, i32 8
  %16 = ptrtoint ptr %vflip.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vflip.i, align 8
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %17, i32 0, i32 22
  %18 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val.i, align 4
  %hflip.i = getelementptr inbounds %struct.imx355, ptr %sd, i32 0, i32 9
  %20 = ptrtoint ptr %hflip.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hflip.i, align 4
  %val24.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %21, i32 0, i32 22
  %22 = ptrtoint ptr %val24.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val24.i, align 4
  %arrayidx25.i = getelementptr [2 x [2 x i32]], ptr @imx355_get_format_code.codes, i32 0, i32 %19, i32 %23
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
define internal i32 @imx355_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %buf.i.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %streaming = getelementptr inbounds %struct.imx355, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !191
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
define internal i32 @imx355_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %buf.i.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %streaming = getelementptr inbounds %struct.imx355, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc i32 @imx355_start_streaming(ptr noundef %1)
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !18, !20, !22, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54, !56, !58, !59, !60, !61, !63, !64, !65, !67, !69, !71, !72, !73, !74, !75, !76, !78, !80, !82, !84, !85, !86, !87, !89, !91, !92, !93, !94, !96, !97, !99, !100, !101, !103, !104, !106, !107, !108, !109, !111, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !147, !149, !150, !151, !152, !154, !156, !157, !158, !159, !160, !162, !164, !166, !168, !170, !172, !174, !176}
!llvm.module.flags = !{!178, !179, !180, !181, !182, !183, !184, !185}
!llvm.ident = !{!186}

!0 = !{ptr @__initcall__kmod_imx355__298_1849_imx355_i2c_driver_init6, !1, !"__initcall__kmod_imx355__298_1849_imx355_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/imx355.c", i32 1849, i32 1}
!2 = !{ptr @__exitcall_imx355_i2c_driver_exit, !1, !"__exitcall_imx355_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author299, !4, !"__UNIQUE_ID_author299", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/imx355.c", i32 1851, i32 1}
!5 = !{ptr @__UNIQUE_ID_author300, !6, !"__UNIQUE_ID_author300", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/imx355.c", i32 1852, i32 1}
!7 = !{ptr @__UNIQUE_ID_author301, !8, !"__UNIQUE_ID_author301", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/imx355.c", i32 1853, i32 1}
!9 = !{ptr @__UNIQUE_ID_author302, !10, !"__UNIQUE_ID_author302", i1 false, i1 false}
!10 = !{!"../drivers/media/i2c/imx355.c", i32 1854, i32 1}
!11 = !{ptr @__UNIQUE_ID_description303, !12, !"__UNIQUE_ID_description303", i1 false, i1 false}
!12 = !{!"../drivers/media/i2c/imx355.c", i32 1855, i32 1}
!13 = !{ptr @__UNIQUE_ID_file304, !14, !"__UNIQUE_ID_file304", i1 false, i1 false}
!14 = !{!"../drivers/media/i2c/imx355.c", i32 1856, i32 1}
!15 = !{ptr @__UNIQUE_ID_license305, !14, !"__UNIQUE_ID_license305", i1 false, i1 false}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/imx355.c", i32 1842, i32 11}
!18 = !{ptr @imx355_i2c_driver, !19, !"imx355_i2c_driver", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/imx355.c", i32 1840, i32 26}
!20 = !{ptr @imx355_probe.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/imx355.c", i32 1730, i32 2}
!22 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/i2c/imx355.c", i32 1738, i32 3}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @imx355_probe._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @imx355_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/i2c/imx355.c", i32 1744, i32 3}
!33 = !{ptr @imx355_probe._entry.7, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @imx355_probe._entry_ptr.9, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/i2c/imx355.c", i32 1752, i32 4}
!37 = !{ptr @imx355_probe.__UNIQUE_ID_ddebug297, !36, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/i2c/imx355.c", i32 1758, i32 3}
!40 = !{ptr @imx355_probe._entry.11, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @imx355_probe._entry_ptr.13, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/i2c/imx355.c", i32 1768, i32 3}
!44 = !{ptr @imx355_probe._entry.14, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @imx355_probe._entry_ptr.16, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/i2c/imx355.c", i32 1783, i32 3}
!48 = !{ptr @imx355_probe._entry.17, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @imx355_probe._entry_ptr.19, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @imx355_subdev_ops, !51, !"imx355_subdev_ops", i1 false, i1 false}
!51 = !{!"../drivers/media/i2c/imx355.c", i32 1545, i32 37}
!52 = !{ptr @imx355_subdev_core_ops, !53, !"imx355_subdev_core_ops", i1 false, i1 false}
!53 = !{!"../drivers/media/i2c/imx355.c", i32 1529, i32 42}
!54 = !{ptr @imx355_video_ops, !55, !"imx355_video_ops", i1 false, i1 false}
!55 = !{!"../drivers/media/i2c/imx355.c", i32 1534, i32 43}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/i2c/imx355.c", i32 1399, i32 3}
!58 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @imx355_start_streaming._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @imx355_start_streaming._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/i2c/imx355.c", i32 1407, i32 3}
!63 = !{ptr @imx355_start_streaming._entry.22, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @imx355_start_streaming._entry_ptr.24, !62, !"_entry_ptr", i1 false, i1 false}
!65 = distinct !{null, !66, !"imx355_global_setting", i1 false, i1 false}
!66 = !{!"../drivers/media/i2c/imx355.c", i32 186, i32 37}
!67 = !{ptr @imx355_global_regs, !68, !"imx355_global_regs", i1 false, i1 false}
!68 = !{!"../drivers/media/i2c/imx355.c", i32 131, i32 32}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/i2c/imx355.c", i32 1148, i32 4}
!71 = !{ptr @imx355_write_regs._rs, !70, !"_rs", i1 false, i1 false}
!72 = !{ptr @__func__.imx355_write_regs, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @imx355_write_regs._entry, !70, !"_entry", i1 false, i1 false}
!75 = !{ptr @imx355_write_regs._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @imx355_pad_ops, !77, !"imx355_pad_ops", i1 false, i1 false}
!77 = !{!"../drivers/media/i2c/imx355.c", i32 1538, i32 41}
!78 = !{ptr @imx355_get_format_code.codes, !79, !"codes", i1 false, i1 false}
!79 = !{!"../drivers/media/i2c/imx355.c", i32 1075, i32 19}
!80 = !{ptr @.str.27, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!82 = !{ptr @.str.28, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/i2c/imx355.c", i32 1522, i32 3}
!84 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @imx355_identify_module._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @imx355_identify_module._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/i2c/imx355.c", i32 1678, i32 50}
!89 = !{ptr @.str.31, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/i2c/imx355.c", i32 1681, i32 3}
!91 = !{ptr @.str.32, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @imx355_get_hwcfg._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @imx355_get_hwcfg._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.33, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/i2c/imx355.c", i32 1685, i32 2}
!96 = !{ptr @imx355_get_hwcfg.__UNIQUE_ID_ddebug294, !95, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!97 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/i2c/imx355.c", i32 1687, i32 3}
!99 = !{ptr @imx355_get_hwcfg._entry.34, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @imx355_get_hwcfg._entry_ptr.36, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.37, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/i2c/imx355.c", i32 1692, i32 2}
!103 = !{ptr @imx355_get_hwcfg.__UNIQUE_ID_ddebug295, !102, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!104 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/i2c/imx355.c", i32 1694, i32 3}
!106 = !{ptr @.str.40, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @imx355_get_hwcfg._entry.38, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @imx355_get_hwcfg._entry_ptr.41, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.42, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/i2c/imx355.c", i32 1707, i32 3}
!111 = !{ptr @imx355_get_hwcfg.__UNIQUE_ID_ddebug296, !110, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!112 = !{ptr @link_freq_menu_items, !113, !"link_freq_menu_items", i1 false, i1 false}
!113 = !{!"../drivers/media/i2c/imx355.c", i32 886, i32 18}
!114 = !{ptr @supported_modes, !115, !"supported_modes", i1 false, i1 false}
!115 = !{!"../drivers/media/i2c/imx355.c", i32 891, i32 33}
!116 = !{ptr @mode_3280x2464_regs, !117, !"mode_3280x2464_regs", i1 false, i1 false}
!117 = !{!"../drivers/media/i2c/imx355.c", i32 289, i32 32}
!118 = !{ptr @mode_3268x2448_regs, !119, !"mode_3268x2448_regs", i1 false, i1 false}
!119 = !{!"../drivers/media/i2c/imx355.c", i32 191, i32 32}
!120 = !{ptr @mode_3264x2448_regs, !121, !"mode_3264x2448_regs", i1 false, i1 false}
!121 = !{!"../drivers/media/i2c/imx355.c", i32 240, i32 32}
!122 = !{ptr @mode_1940x1096_regs, !123, !"mode_1940x1096_regs", i1 false, i1 false}
!123 = !{!"../drivers/media/i2c/imx355.c", i32 338, i32 32}
!124 = !{ptr @mode_1936x1096_regs, !125, !"mode_1936x1096_regs", i1 false, i1 false}
!125 = !{!"../drivers/media/i2c/imx355.c", i32 387, i32 32}
!126 = !{ptr @mode_1924x1080_regs, !127, !"mode_1924x1080_regs", i1 false, i1 false}
!127 = !{!"../drivers/media/i2c/imx355.c", i32 436, i32 32}
!128 = !{ptr @mode_1920x1080_regs, !129, !"mode_1920x1080_regs", i1 false, i1 false}
!129 = !{!"../drivers/media/i2c/imx355.c", i32 485, i32 32}
!130 = !{ptr @mode_1640x1232_regs, !131, !"mode_1640x1232_regs", i1 false, i1 false}
!131 = !{!"../drivers/media/i2c/imx355.c", i32 534, i32 32}
!132 = !{ptr @mode_1640x922_regs, !133, !"mode_1640x922_regs", i1 false, i1 false}
!133 = !{!"../drivers/media/i2c/imx355.c", i32 583, i32 32}
!134 = !{ptr @mode_1300x736_regs, !135, !"mode_1300x736_regs", i1 false, i1 false}
!135 = !{!"../drivers/media/i2c/imx355.c", i32 632, i32 32}
!136 = !{ptr @mode_1296x736_regs, !137, !"mode_1296x736_regs", i1 false, i1 false}
!137 = !{!"../drivers/media/i2c/imx355.c", i32 681, i32 32}
!138 = !{ptr @mode_1284x720_regs, !139, !"mode_1284x720_regs", i1 false, i1 false}
!139 = !{!"../drivers/media/i2c/imx355.c", i32 730, i32 32}
!140 = !{ptr @mode_1280x720_regs, !141, !"mode_1280x720_regs", i1 false, i1 false}
!141 = !{!"../drivers/media/i2c/imx355.c", i32 779, i32 32}
!142 = !{ptr @mode_820x616_regs, !143, !"mode_820x616_regs", i1 false, i1 false}
!143 = !{!"../drivers/media/i2c/imx355.c", i32 828, i32 32}
!144 = !{ptr @imx355_init_controls._key, !145, !"_key", i1 false, i1 false}
!145 = !{!"../drivers/media/i2c/imx355.c", i32 1574, i32 8}
!146 = !{ptr @.str.43, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.44, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/i2c/imx355.c", i32 1638, i32 3}
!149 = !{ptr @.str.45, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @imx355_init_controls._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @imx355_init_controls._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @imx355_ctrl_ops, !153, !"imx355_ctrl_ops", i1 false, i1 false}
!153 = !{!"../drivers/media/i2c/imx355.c", i32 1246, i32 35}
!154 = !{ptr @.str.46, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/i2c/imx355.c", i32 1236, i32 3}
!156 = !{ptr @.str.47, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.48, !155, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @imx355_set_ctrl._entry, !155, !"_entry", i1 false, i1 false}
!159 = !{ptr @imx355_set_ctrl._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.49, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/i2c/imx355.c", i32 878, i32 2}
!162 = !{ptr @.str.50, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/i2c/imx355.c", i32 879, i32 2}
!164 = !{ptr @.str.51, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/i2c/imx355.c", i32 880, i32 2}
!166 = !{ptr @.str.52, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/i2c/imx355.c", i32 881, i32 2}
!168 = !{ptr @.str.53, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/i2c/imx355.c", i32 882, i32 2}
!170 = !{ptr @imx355_test_pattern_menu, !171, !"imx355_test_pattern_menu", i1 false, i1 false}
!171 = !{!"../drivers/media/i2c/imx355.c", i32 877, i32 27}
!172 = !{ptr @imx355_internal_ops, !173, !"imx355_internal_ops", i1 false, i1 false}
!173 = !{!"../drivers/media/i2c/imx355.c", i32 1555, i32 46}
!174 = !{ptr @imx355_subdev_entity_ops, !175, !"imx355_subdev_entity_ops", i1 false, i1 false}
!175 = !{!"../drivers/media/i2c/imx355.c", i32 1551, i32 45}
!176 = !{ptr @imx355_pm_ops, !177, !"imx355_pm_ops", i1 false, i1 false}
!177 = !{!"../drivers/media/i2c/imx355.c", i32 1830, i32 32}
!178 = !{i32 1, !"wchar_size", i32 2}
!179 = !{i32 1, !"min_enum_size", i32 4}
!180 = !{i32 8, !"branch-target-enforcement", i32 0}
!181 = !{i32 8, !"sign-return-address", i32 0}
!182 = !{i32 8, !"sign-return-address-all", i32 0}
!183 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!184 = !{i32 7, !"uwtable", i32 1}
!185 = !{i32 7, !"frame-pointer", i32 2}
!186 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!187 = !{i64 2148999818, i64 2148999823, i64 2148999836, i64 2148999880, i64 2148999914, i64 2148999935}
!188 = !{i64 1539344, i64 1539371}
!189 = !{i64 1539684, i64 1539711, i64 1539745, i64 1539766}
!190 = !{!"branch_weights", i32 1, i32 2000}
!191 = !{i8 0, i8 2}
!192 = !{i64 2148386336}
!193 = !{i64 871159, i64 871184, i64 871206, i64 871222, i64 871234, i64 871254, i64 871278, i64 871294, i64 871306}
!194 = !{i64 2148386524}
!195 = !{!"branch_weights", i32 2000, i32 1}
