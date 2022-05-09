; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/et8ek8/et8ek8_driver.c_pt.bc'
source_filename = "../drivers/media/i2c/et8ek8/et8ek8_driver.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.et8ek8_meta_reglist = type { [32 x i8], [0 x %union.anon.101] }
%union.anon.101 = type { ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.et8ek8_gain = type { i16, i16 }
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
%struct.et8ek8_sensor = type { %struct.v4l2_subdev, %struct.media_pad, %struct.v4l2_mbus_framefmt, ptr, ptr, ptr, i32, i16, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, [128 x i8], %struct.mutex, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.94, i16, i16, i16, [10 x i16] }
%union.anon.94 = type { i16 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.et8ek8_reglist = type { i32, %struct.et8ek8_mode, [0 x %struct.et8ek8_reg] }
%struct.et8ek8_mode = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, %struct.v4l2_fract, i32, i32, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.et8ek8_reg = type { i16, i16, i32 }
%struct.v4l2_subdev_frame_interval = type { i32, %struct.v4l2_fract, [9 x i32] }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_frame_interval_enum = type { i32, i32, i32, i32, i32, %struct.v4l2_fract, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.89, %union.anon.90, i32, ptr, i32, %struct.anon.91, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.89 = type { i64 }
%union.anon.90 = type { ptr }
%struct.anon.91 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/i2c/et8ek8/et8ek8_driver.c\00", [55 x i8] zeroinitializer }, align 32
@dev_attr_priv_mem = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @priv_mem_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_et8ek8__300_1511_et8ek8_i2c_driver_init6 = internal global ptr @et8ek8_i2c_driver_init, section ".initcall6.init", align 4
@et8ek8_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @et8ek8_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @et8ek8_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @et8ek8_pm_ops, ptr null, ptr null }, ptr @et8ek8_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_et8ek8_i2c_driver_exit = internal global ptr @et8ek8_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author301 = internal constant [77 x i8] c"et8ek8.author=Sakari Ailus <sakari.ailus@iki.fi>, Pavel Machek <pavel@ucw.cz\00", section ".modinfo", align 1
@__UNIQUE_ID_description302 = internal constant [55 x i8] c"et8ek8.description=Toshiba ET8EK8 camera sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [44 x i8] c"et8ek8.file=drivers/media/i2c/et8ek8/et8ek8\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [19 x i8] c"et8ek8.license=GPL\00", section ".modinfo", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"priv_mem\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"et8ek8\00", [25 x i8] zeroinitializer }, align 32
@et8ek8_of_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"toshiba,et8ek8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@et8ek8_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @et8ek8_suspend, ptr @et8ek8_resume, ptr @et8ek8_suspend, ptr @et8ek8_resume, ptr @et8ek8_suspend, ptr @et8ek8_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@et8ek8_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"et8ek8\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@et8ek8_probe.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.4, ptr @.str, ptr @.str.5, i8 1, i8 96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"et8ek8_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not request reset gpio\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vana\00", [27 x i8] zeroinitializer }, align 32
@et8ek8_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str, i32 1417, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"could not get regulator for vana\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@et8ek8_probe._entry_ptr = internal global ptr @et8ek8_probe._entry, section ".printk_index", align 4
@et8ek8_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.4, ptr @.str, i32 1423, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"could not get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@et8ek8_probe._entry_ptr.12 = internal global ptr @et8ek8_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@et8ek8_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str, i32 1430, ptr @.str.16, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"can't get clock-frequency\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@et8ek8_probe._entry_ptr.17 = internal global ptr @et8ek8_probe._entry.14, section ".printk_index", align 4
@et8ek8_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&sensor->power_lock\00", [44 x i8] zeroinitializer }, align 32
@et8ek8_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @et8ek8_core_ops, ptr null, ptr null, ptr @et8ek8_video_ops, ptr null, ptr null, ptr null, ptr @et8ek8_pad_ops }, [32 x i8] zeroinitializer }, align 32
@et8ek8_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr @et8ek8_registered, ptr null, ptr @et8ek8_open, ptr @et8ek8_close, ptr null }, [44 x i8] zeroinitializer }, align 32
@et8ek8_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.4, ptr @.str, i32 1444, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"media entity init failed!\0A\00", [37 x i8] zeroinitializer }, align 32
@et8ek8_probe._entry_ptr.21 = internal global ptr @et8ek8_probe._entry.19, section ".printk_index", align 4
@et8ek8_probe.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.4, ptr @.str, ptr @.str.22, i8 1, i8 107, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"initialized!\0A\00", [18 x i8] zeroinitializer }, align 32
@et8ek8_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @et8ek8_set_power, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@et8ek8_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @et8ek8_s_stream, ptr null, ptr @et8ek8_get_frame_interval, ptr @et8ek8_set_frame_interval, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@et8ek8_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @et8ek8_enum_mbus_code, ptr @et8ek8_enum_frame_size, ptr @et8ek8_enum_frame_ival, ptr @et8ek8_get_pad_format, ptr @et8ek8_set_pad_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@et8ek8_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str, i32 824, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable vana regulator\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"et8ek8_power_on\00", [16 x i8] zeroinitializer }, align 32
@et8ek8_power_on._entry_ptr = internal global ptr @et8ek8_power_on._entry, section ".printk_index", align 4
@et8ek8_power_on._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str, i32 836, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unable to set extclk clock freq to %u\0A\00", [57 x i8] zeroinitializer }, align 32
@et8ek8_power_on._entry_ptr.27 = internal global ptr @et8ek8_power_on._entry.25, section ".printk_index", align 4
@et8ek8_power_on._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str, i32 841, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to enable extclk\0A\00", [39 x i8] zeroinitializer }, align 32
@et8ek8_power_on._entry_ptr.30 = internal global ptr @et8ek8_power_on._entry.28, section ".printk_index", align 4
@meta_reglist = external dso_local global %struct.et8ek8_meta_reglist, align 4
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid type = %d\00", [46 x i8] zeroinitializer }, align 32
@et8ek8_i2c_write_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str, i32 308, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"i2c transfer error!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"et8ek8_i2c_write_regs\00", [42 x i8] zeroinitializer }, align 32
@et8ek8_i2c_write_regs._entry_ptr = internal global ptr @et8ek8_i2c_write_regs._entry, section ".printk_index", align 4
@et8ek8_i2c_create_msg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"et8ek8: %s: invalid message length.\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.et8ek8_i2c_create_msg = private unnamed_addr constant [22 x i8] c"et8ek8_i2c_create_msg\00", align 1
@et8ek8_i2c_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str, i32 181, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"read from offset 0x%x error %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"et8ek8_i2c_read_reg\00", [44 x i8] zeroinitializer }, align 32
@et8ek8_i2c_read_reg._entry_ptr = internal global ptr @et8ek8_i2c_read_reg._entry, section ".printk_index", align 4
@et8ek8_i2c_write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str, i32 352, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"wrote 0x%x to offset 0x%x error %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"et8ek8_i2c_write_reg\00", [43 x i8] zeroinitializer }, align 32
@et8ek8_i2c_write_reg._entry_ptr = internal global ptr @et8ek8_i2c_write_reg._entry, section ".printk_index", align 4
@et8ek8_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str, i32 767, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sensor configuration failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"et8ek8_configure\00", [47 x i8] zeroinitializer }, align 32
@et8ek8_configure._entry_ptr = internal global ptr @et8ek8_configure._entry, section ".printk_index", align 4
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@et8ek8_registered.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.42, ptr @.str, ptr @.str.43, i8 1, i8 60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"et8ek8_registered\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"registered!\00", [20 x i8] zeroinitializer }, align 32
@et8ek8_registered._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str, i32 1270, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"could not register sysfs entry\0A\00", [32 x i8] zeroinitializer }, align 32
@et8ek8_registered._entry_ptr = internal global ptr @et8ek8_registered._entry, section ".printk_index", align 4
@et8ek8_registered._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.42, ptr @.str, i32 1280, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"controls initialization failed\0A\00", [32 x i8] zeroinitializer }, align 32
@et8ek8_registered._entry_ptr.47 = internal global ptr @et8ek8_registered._entry.45, section ".printk_index", align 4
@et8ek8_dev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str, i32 1165, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"could not power on\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"et8ek8_dev_init\00", [16 x i8] zeroinitializer }, align 32
@et8ek8_dev_init._entry_ptr = internal global ptr @et8ek8_dev_init._entry, section ".printk_index", align 4
@et8ek8_dev_init._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str, i32 1175, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no et8ek8 sensor detected\0A\00", [37 x i8] zeroinitializer }, align 32
@et8ek8_dev_init._entry_ptr.52 = internal global ptr @et8ek8_dev_init._entry.50, section ".printk_index", align 4
@et8ek8_dev_init._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.49, ptr @.str, i32 1183, ptr @.str.55, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"unknown version 0x%x detected, continuing anyway\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@et8ek8_dev_init._entry_ptr.56 = internal global ptr @et8ek8_dev_init._entry.53, section ".printk_index", align 4
@et8ek8_dev_init._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.49, ptr @.str, i32 1189, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"invalid register list %s, import failed\0A\00", [55 x i8] zeroinitializer }, align 32
@et8ek8_dev_init._entry_ptr.59 = internal global ptr @et8ek8_dev_init._entry.57, section ".printk_index", align 4
@et8ek8_dev_init._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.49, ptr @.str, i32 1198, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"invalid register list %s, no mode found\0A\00", [55 x i8] zeroinitializer }, align 32
@et8ek8_dev_init._entry_ptr.62 = internal global ptr @et8ek8_dev_init._entry.60, section ".printk_index", align 4
@et8ek8_dev_init._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.49, ptr @.str, i32 1210, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"invalid register list %s, no POWERON mode found\0A\00", [47 x i8] zeroinitializer }, align 32
@et8ek8_dev_init._entry_ptr.65 = internal global ptr @et8ek8_dev_init._entry.63, section ".printk_index", align 4
@et8ek8_dev_init._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.49, ptr @.str, i32 1219, ptr @.str.16, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"can not read OTP (EEPROM) memory from sensor\0A\00", [50 x i8] zeroinitializer }, align 32
@et8ek8_dev_init._entry_ptr.68 = internal global ptr @et8ek8_dev_init._entry.66, section ".printk_index", align 4
@et8ek8_reglist_import._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str, i32 514, ptr @.str.55, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"meta_reglist version %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"et8ek8_reglist_import\00", [42 x i8] zeroinitializer }, align 32
@et8ek8_reglist_import._entry_ptr = internal global ptr @et8ek8_reglist_import._entry, section ".printk_index", align 4
@et8ek8_reglist_import.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.70, ptr @.str, ptr @.str.71, i8 0, i8 -121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: type %d\09w %d\09h %d\09fmt %x\09ival %d/%d\09ptr %p\0A\00", [48 x i8] zeroinitializer }, align 32
@et8ek8_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.72 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"et8ek8_driver:685:(&sensor->ctrl_handler)->_lock\00", [47 x i8] zeroinitializer }, align 32
@et8ek8_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @et8ek8_set_ctrl }, [20 x i8] zeroinitializer }, align 32
@et8ek8_test_pattern_menu = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81], [60 x i8] zeroinitializer }, align 32
@et8ek8_gain_table = internal constant { [41 x %struct.et8ek8_gain], [60 x i8] } { [41 x %struct.et8ek8_gain] [%struct.et8ek8_gain { i16 32, i16 0 }, %struct.et8ek8_gain { i16 34, i16 0 }, %struct.et8ek8_gain { i16 37, i16 0 }, %struct.et8ek8_gain { i16 39, i16 0 }, %struct.et8ek8_gain { i16 42, i16 0 }, %struct.et8ek8_gain { i16 45, i16 0 }, %struct.et8ek8_gain { i16 49, i16 0 }, %struct.et8ek8_gain { i16 52, i16 0 }, %struct.et8ek8_gain { i16 56, i16 0 }, %struct.et8ek8_gain { i16 60, i16 0 }, %struct.et8ek8_gain { i16 64, i16 0 }, %struct.et8ek8_gain { i16 69, i16 0 }, %struct.et8ek8_gain { i16 74, i16 0 }, %struct.et8ek8_gain { i16 79, i16 0 }, %struct.et8ek8_gain { i16 84, i16 0 }, %struct.et8ek8_gain { i16 91, i16 0 }, %struct.et8ek8_gain { i16 97, i16 0 }, %struct.et8ek8_gain { i16 104, i16 0 }, %struct.et8ek8_gain { i16 111, i16 0 }, %struct.et8ek8_gain { i16 119, i16 0 }, %struct.et8ek8_gain { i16 128, i16 0 }, %struct.et8ek8_gain { i16 137, i16 0 }, %struct.et8ek8_gain { i16 147, i16 0 }, %struct.et8ek8_gain { i16 158, i16 0 }, %struct.et8ek8_gain { i16 169, i16 0 }, %struct.et8ek8_gain { i16 181, i16 0 }, %struct.et8ek8_gain { i16 194, i16 0 }, %struct.et8ek8_gain { i16 208, i16 0 }, %struct.et8ek8_gain { i16 223, i16 0 }, %struct.et8ek8_gain { i16 239, i16 0 }, %struct.et8ek8_gain { i16 256, i16 0 }, %struct.et8ek8_gain { i16 256, i16 73 }, %struct.et8ek8_gain { i16 256, i16 152 }, %struct.et8ek8_gain { i16 256, i16 236 }, %struct.et8ek8_gain { i16 256, i16 327 }, %struct.et8ek8_gain { i16 256, i16 424 }, %struct.et8ek8_gain { i16 256, i16 528 }, %struct.et8ek8_gain { i16 256, i16 639 }, %struct.et8ek8_gain { i16 256, i16 758 }, %struct.et8ek8_gain { i16 256, i16 886 }, %struct.et8ek8_gain { i16 256, i16 1023 }], [60 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Normal\00", [25 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Vertical colorbar\00", [46 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Horizontal colorbar\00", [44 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Scale\00", [26 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Ramp\00", [27 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Small vertical colorbar\00", [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Small horizontal colorbar\00", [38 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Small scale\00", [20 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Small ramp\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 1, i64 2, i64 100, i64 255]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.85 = internal global [6 x i64] [i64 4, i64 32, i64 9963793, i64 9963795, i64 10422530, i64 10422531]
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1469, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [18 x i8] c"dev_attr_priv_mem\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [18 x i8] c"et8ek8_i2c_driver\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1500, i32 26 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1253, i32 8 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1502, i32 11 }
@___asan_gen_.101 = private unnamed_addr constant [16 x i8] c"et8ek8_of_table\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1484, i32 34 }
@___asan_gen_.104 = private unnamed_addr constant [14 x i8] c"et8ek8_pm_ops\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1496, i32 32 }
@___asan_gen_.107 = private unnamed_addr constant [16 x i8] c"et8ek8_id_table\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1490, i32 35 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1409, i32 38 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1411, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1415, i32 41 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1417, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1423, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1427, i32 43 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1430, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1434, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant [11 x i8] c"et8ek8_ops\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1362, i32 37 }
@___asan_gen_.161 = private unnamed_addr constant [20 x i8] c"et8ek8_internal_ops\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1368, i32 46 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1444, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1452, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant [16 x i8] c"et8ek8_core_ops\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1350, i32 42 }
@___asan_gen_.176 = private unnamed_addr constant [17 x i8] c"et8ek8_video_ops\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1344, i32 43 }
@___asan_gen_.179 = private unnamed_addr constant [15 x i8] c"et8ek8_pad_ops\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1354, i32 41 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 824, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 835, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 841, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 290, i32 8 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 308, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 208, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 181, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 351, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 767, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 998, i32 6 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1266, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1270, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1280, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1165, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1175, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1181, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1187, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1196, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1208, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1218, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 514, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 533, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 685, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant [16 x i8] c"et8ek8_ctrl_ops\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 665, i32 35 }
@___asan_gen_.335 = private unnamed_addr constant [25 x i8] c"et8ek8_test_pattern_menu\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 669, i32 27 }
@___asan_gen_.338 = private unnamed_addr constant [18 x i8] c"et8ek8_gain_table\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 80, i32 9 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 670, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 671, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 672, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 673, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 674, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 675, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 676, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 677, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.366 = private constant [44 x i8] c"../drivers/media/i2c/et8ek8/et8ek8_driver.c\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 678, i32 2 }
@llvm.compiler.used = appending global [123 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_license304, ptr @__exitcall_et8ek8_i2c_driver_exit, ptr @__initcall__kmod_et8ek8__300_1511_et8ek8_i2c_driver_init6, ptr @et8ek8_configure._entry, ptr @et8ek8_configure._entry_ptr, ptr @et8ek8_dev_init._entry, ptr @et8ek8_dev_init._entry.50, ptr @et8ek8_dev_init._entry.53, ptr @et8ek8_dev_init._entry.57, ptr @et8ek8_dev_init._entry.60, ptr @et8ek8_dev_init._entry.63, ptr @et8ek8_dev_init._entry.66, ptr @et8ek8_dev_init._entry_ptr, ptr @et8ek8_dev_init._entry_ptr.52, ptr @et8ek8_dev_init._entry_ptr.56, ptr @et8ek8_dev_init._entry_ptr.59, ptr @et8ek8_dev_init._entry_ptr.62, ptr @et8ek8_dev_init._entry_ptr.65, ptr @et8ek8_dev_init._entry_ptr.68, ptr @et8ek8_i2c_driver_exit, ptr @et8ek8_i2c_read_reg._entry, ptr @et8ek8_i2c_read_reg._entry_ptr, ptr @et8ek8_i2c_write_reg._entry, ptr @et8ek8_i2c_write_reg._entry_ptr, ptr @et8ek8_i2c_write_regs._entry, ptr @et8ek8_i2c_write_regs._entry_ptr, ptr @et8ek8_power_on._entry, ptr @et8ek8_power_on._entry.25, ptr @et8ek8_power_on._entry.28, ptr @et8ek8_power_on._entry_ptr, ptr @et8ek8_power_on._entry_ptr.27, ptr @et8ek8_power_on._entry_ptr.30, ptr @et8ek8_probe._entry, ptr @et8ek8_probe._entry.10, ptr @et8ek8_probe._entry.14, ptr @et8ek8_probe._entry.19, ptr @et8ek8_probe._entry_ptr, ptr @et8ek8_probe._entry_ptr.12, ptr @et8ek8_probe._entry_ptr.17, ptr @et8ek8_probe._entry_ptr.21, ptr @et8ek8_registered._entry, ptr @et8ek8_registered._entry.45, ptr @et8ek8_registered._entry_ptr, ptr @et8ek8_registered._entry_ptr.47, ptr @et8ek8_reglist_import._entry, ptr @et8ek8_reglist_import._entry_ptr, ptr @et8ek8_remove, ptr @.str, ptr @dev_attr_priv_mem, ptr @et8ek8_i2c_driver, ptr @.str.1, ptr @.str.2, ptr @et8ek8_of_table, ptr @et8ek8_pm_ops, ptr @et8ek8_id_table, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @et8ek8_probe.__key, ptr @.str.18, ptr @et8ek8_ops, ptr @et8ek8_internal_ops, ptr @.str.20, ptr @.str.22, ptr @et8ek8_core_ops, ptr @et8ek8_video_ops, ptr @et8ek8_pad_ops, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @et8ek8_init_controls._key, ptr @.str.72, ptr @et8ek8_ctrl_ops, ptr @et8ek8_test_pattern_menu, ptr @et8ek8_gain_table, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81], section "llvm.metadata"
@0 = internal global [94 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_priv_mem to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et8ek8_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et8ek8_of_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et8ek8_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et8ek8_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et8ek8_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et8ek8_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et8ek8_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et8ek8_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et8ek8_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et8ek8_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et8ek8_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et8ek8_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et8ek8_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et8ek8_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et8ek8_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et8ek8_power_on._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et8ek8_power_on._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et8ek8_i2c_write_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et8ek8_i2c_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et8ek8_i2c_write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et8ek8_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et8ek8_registered._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et8ek8_registered._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et8ek8_dev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et8ek8_dev_init._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et8ek8_dev_init._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et8ek8_dev_init._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et8ek8_dev_init._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et8ek8_dev_init._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et8ek8_dev_init._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et8ek8_reglist_import._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et8ek8_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et8ek8_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et8ek8_test_pattern_menu to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et8ek8_gain_table to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @et8ek8_remove(ptr noundef %client) #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %power_count = getelementptr inbounds %struct.et8ek8_sensor, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %power_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %do.end

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1469, i32 noundef 9, ptr noundef null) #9
  %call18 = tail call fastcc i32 @et8ek8_power_off(ptr noundef %1)
  %4 = ptrtoint ptr %power_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %power_count, align 4
  br label %if.end20

if.end20:                                         ; preds = %do.end, %entry.if.end20_crit_edge
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_priv_mem) #9
  %ctrl_handler = getelementptr inbounds %struct.et8ek8_sensor, ptr %1, i32 0, i32 8
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #9
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #9
  %power_lock = getelementptr inbounds %struct.et8ek8_sensor, ptr %1, i32 0, i32 13
  tail call void @mutex_destroy(ptr noundef %power_lock) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @et8ek8_power_off(ptr nocapture noundef readonly %sensor) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %reset = getelementptr inbounds %struct.et8ek8_sensor, ptr %sensor, i32 0, i32 3
  %0 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value(ptr noundef %1, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #9
  %ext_clk = getelementptr inbounds %struct.et8ek8_sensor, ptr %sensor, i32 0, i32 5
  %3 = ptrtoint ptr %ext_clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ext_clk, align 4
  tail call void @clk_disable(ptr noundef %4) #9
  tail call void @clk_unprepare(ptr noundef %4) #9
  %vana = getelementptr inbounds %struct.et8ek8_sensor, ptr %sensor, i32 0, i32 4
  %5 = ptrtoint ptr %vana to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vana, align 4
  %call = tail call i32 @regulator_disable(ptr noundef %6) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @et8ek8_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @et8ek8_i2c_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @et8ek8_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @et8ek8_i2c_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @priv_mem_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv_mem = getelementptr inbounds %struct.et8ek8_sensor, ptr %1, i32 0, i32 12
  %2 = call ptr @memcpy(ptr %buf, ptr %priv_mem, i32 128)
  ret i32 128
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @et8ek8_probe(ptr noundef %client) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 716, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef 3) #9
  %reset = getelementptr inbounds %struct.et8ek8_sensor, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call3, ptr %reset, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body, label %if.end16

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @et8ek8_probe.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@et8ek8_probe, %if.then11)) #9
          to label %do.end [label %if.then11], !srcloc !199

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @et8ek8_probe.__UNIQUE_ID_ddebug298, ptr noundef %dev1, ptr noundef nonnull @.str.5) #9
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %1 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reset, align 4
  %3 = ptrtoint ptr %2 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %call17 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.6) #9
  %vana = getelementptr inbounds %struct.et8ek8_sensor, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %vana to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call17, ptr %vana, align 4
  %cmp.i128 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i128, label %do.end23, label %if.end27

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #12
  %5 = ptrtoint ptr %vana to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vana, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end16
  %call28 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #9
  %ext_clk = getelementptr inbounds %struct.et8ek8_sensor, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %ext_clk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call28, ptr %ext_clk, align 4
  %cmp.i129 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i129, label %do.end34, label %if.end38

do.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #12
  %9 = ptrtoint ptr %ext_clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ext_clk, align 4
  %11 = ptrtoint ptr %10 to i32
  br label %cleanup

if.end38:                                         ; preds = %if.end27
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %xclk_freq = getelementptr inbounds %struct.et8ek8_sensor, ptr %call.i, i32 0, i32 6
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %13, ptr noundef nonnull @.str.13, ptr noundef %xclk_freq, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool40.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool40.not, label %do.body46, label %do.end44

do.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.15) #12
  br label %cleanup

do.body46:                                        ; preds = %if.end38
  %power_lock = getelementptr inbounds %struct.et8ek8_sensor, ptr %call.i, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %power_lock, ptr noundef nonnull @.str.18, ptr noundef nonnull @et8ek8_probe.__key) #9
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @et8ek8_ops) #9
  %flags = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %or = or i32 %15, 4
  store i32 %or, ptr %flags, align 4
  %internal_ops = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 7
  %16 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @et8ek8_internal_ops, ptr %internal_ops, align 4
  %function = getelementptr inbounds %struct.media_entity, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 131073, ptr %function, align 4
  %pad = getelementptr inbounds %struct.et8ek8_sensor, ptr %call.i, i32 0, i32 1
  %flags52 = getelementptr inbounds %struct.et8ek8_sensor, ptr %call.i, i32 0, i32 1, i32 4
  %18 = ptrtoint ptr %flags52 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %flags52, align 4
  %call56 = tail call i32 @media_entity_pads_init(ptr noundef nonnull %call.i, i16 noundef zeroext 1, ptr noundef %pad) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp = icmp slt i32 %call56, 0
  br i1 %cmp, label %do.end60, label %if.end62

do.end60:                                         ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #12
  br label %err_mutex

if.end62:                                         ; preds = %do.body46
  %call64 = tail call i32 @v4l2_async_register_subdev_sensor(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %if.end62.err_mutex_crit_edge, label %do.body68

if.end62.err_mutex_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_mutex

do.body68:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @et8ek8_probe.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@et8ek8_probe, %if.then80)) #9
          to label %cleanup [label %if.then80], !srcloc !199

if.then80:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @et8ek8_probe.__UNIQUE_ID_ddebug299, ptr noundef %dev1, ptr noundef nonnull @.str.22) #9
  br label %cleanup

err_mutex:                                        ; preds = %if.end62.err_mutex_crit_edge, %do.end60
  %ret.0 = phi i32 [ %call56, %do.end60 ], [ %call64, %if.end62.err_mutex_crit_edge ]
  tail call void @mutex_destroy(ptr noundef %power_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %err_mutex, %if.then80, %do.body68, %do.end44, %do.end34, %do.end23, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %do.end ], [ %7, %do.end23 ], [ %11, %do.end34 ], [ %call.i.i, %do.end44 ], [ %ret.0, %err_mutex ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then80 ], [ 0, %do.body68 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev_sensor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @et8ek8_set_power(ptr noundef %subdev, i32 noundef %on) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %power_lock = getelementptr inbounds %struct.et8ek8_sensor, ptr %subdev, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %power_lock, i32 noundef 0) #9
  %power_count = getelementptr inbounds %struct.et8ek8_sensor, ptr %subdev, i32 0, i32 14
  %0 = ptrtoint ptr %power_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %lnot.ext = zext i1 %tobool.not to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %lnot.ext)
  %cmp = icmp eq i32 %1, %lnot.ext
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call fastcc i32 @et8ek8_power_on(ptr noundef %subdev) #9
  br label %__et8ek8_set_power.exit

cond.false.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %reset.i.i = getelementptr inbounds %struct.et8ek8_sensor, ptr %subdev, i32 0, i32 3
  %2 = ptrtoint ptr %reset.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #9
  %ext_clk.i.i = getelementptr inbounds %struct.et8ek8_sensor, ptr %subdev, i32 0, i32 5
  %5 = ptrtoint ptr %ext_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ext_clk.i.i, align 4
  tail call void @clk_disable(ptr noundef %6) #9
  tail call void @clk_unprepare(ptr noundef %6) #9
  %vana.i.i = getelementptr inbounds %struct.et8ek8_sensor, ptr %subdev, i32 0, i32 4
  %7 = ptrtoint ptr %vana.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vana.i.i, align 4
  %call.i.i = tail call i32 @regulator_disable(ptr noundef %8) #9
  br label %__et8ek8_set_power.exit

__et8ek8_set_power.exit:                          ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call.i, %cond.true.i ], [ %call.i.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp6 = icmp slt i32 %cond.i, 0
  br i1 %cmp6, label %__et8ek8_set_power.exit.done_crit_edge, label %__et8ek8_set_power.exit.if.end8_crit_edge

__et8ek8_set_power.exit.if.end8_crit_edge:        ; preds = %__et8ek8_set_power.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

__et8ek8_set_power.exit.done_crit_edge:           ; preds = %__et8ek8_set_power.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end8:                                          ; preds = %__et8ek8_set_power.exit.if.end8_crit_edge, %entry.if.end8_crit_edge
  %ret.0 = phi i32 [ %cond.i, %__et8ek8_set_power.exit.if.end8_crit_edge ], [ 0, %entry.if.end8_crit_edge ]
  %cond = select i1 %tobool.not, i32 -1, i32 1
  %9 = ptrtoint ptr %power_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %power_count, align 4
  %add = add i32 %10, %cond
  store i32 %add, ptr %power_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp12 = icmp slt i32 %add, 0
  br i1 %cmp12, label %do.end, label %if.end8.done_crit_edge, !prof !200

if.end8.done_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1317, i32 noundef 9, ptr noundef null) #9
  br label %done

done:                                             ; preds = %do.end, %if.end8.done_crit_edge, %__et8ek8_set_power.exit.done_crit_edge
  %ret.1 = phi i32 [ %cond.i, %__et8ek8_set_power.exit.done_crit_edge ], [ %ret.0, %do.end ], [ %ret.0, %if.end8.done_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %power_lock) #9
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @et8ek8_power_on(ptr nocapture noundef readonly %sensor) unnamed_addr #3 align 64 {
entry:
  %msg.i76 = alloca %struct.i2c_msg, align 4
  %data.i77 = alloca [6 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %data.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sensor, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %vana = getelementptr inbounds %struct.et8ek8_sensor, ptr %sensor, i32 0, i32 4
  %2 = ptrtoint ptr %vana to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vana, align 4
  %call2 = tail call i32 @regulator_enable(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %current_reglist = getelementptr inbounds %struct.et8ek8_sensor, ptr %sensor, i32 0, i32 11
  %4 = ptrtoint ptr %current_reglist to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %current_reglist, align 4
  %tobool3.not = icmp eq ptr %5, null
  %ext_clock = getelementptr inbounds %struct.et8ek8_reglist, ptr %5, i32 0, i32 1, i32 13
  %xclk_freq6 = getelementptr inbounds %struct.et8ek8_sensor, ptr %sensor, i32 0, i32 6
  %xclk_freq.0.in = select i1 %tobool3.not, ptr %xclk_freq6, ptr %ext_clock
  %6 = ptrtoint ptr %xclk_freq.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %xclk_freq.0 = load i32, ptr %xclk_freq.0.in, align 4
  %ext_clk = getelementptr inbounds %struct.et8ek8_sensor, ptr %sensor, i32 0, i32 5
  %7 = ptrtoint ptr %ext_clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ext_clk, align 4
  %call8 = tail call i32 @clk_set_rate(ptr noundef %8, i32 noundef %xclk_freq.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end12, label %if.end14

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev13 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.26, i32 noundef %xclk_freq.0) #12
  br label %if.then40

if.end14:                                         ; preds = %if.end
  %9 = ptrtoint ptr %ext_clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ext_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end14.clk_prepare_enable.exit_crit_edge

if.end14.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end14
  %call1.i = tail call i32 @clk_enable(ptr noundef %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end26, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %10) #9
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end14.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end14.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp17 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp17, label %do.end21, label %clk_prepare_enable.exit.if.then40_crit_edge

clk_prepare_enable.exit.if.then40_crit_edge:      ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then40

do.end21:                                         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev22 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.29) #12
  br label %if.then40

if.end26:                                         ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 2147480) #9
  %reset = getelementptr inbounds %struct.et8ek8_sensor, ptr %sensor, i32 0, i32 3
  %12 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value(ptr noundef %13, i32 noundef 1) #9
  %div = udiv i32 5000000, %xclk_freq.0
  %add = add nuw nsw i32 %div, 1
  tail call void @msleep(i32 noundef %add) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.et8ek8_meta_reglist, ptr @meta_reglist, i32 1, i32 0, i32 0) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.et8ek8_meta_reglist, ptr @meta_reglist, i32 1, i32 0, i32 0), align 4
  %tobool.not1.i.i = icmp eq ptr %14, null
  br i1 %tobool.not1.i.i, label %if.end26.if.then40_crit_edge, label %if.end26.while.body.i.i_crit_edge

if.end26.while.body.i.i_crit_edge:                ; preds = %if.end26
  br label %while.body.i.i

if.end26.if.then40_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then40

while.cond.i.i:                                   ; preds = %while.body.i.i
  %incdec.ptr.i.i = getelementptr ptr, ptr %next.02.i.i, i32 1
  %15 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %incdec.ptr.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %while.cond.i.i.if.then40_crit_edge, label %while.cond.i.i.while.body.i.i_crit_edge

while.cond.i.i.while.body.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

while.cond.i.i.if.then40_crit_edge:               ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then40

while.body.i.i:                                   ; preds = %while.cond.i.i.while.body.i.i_crit_edge, %if.end26.while.body.i.i_crit_edge
  %17 = phi ptr [ %16, %while.cond.i.i.while.body.i.i_crit_edge ], [ %14, %if.end26.while.body.i.i_crit_edge ]
  %next.02.i.i = phi ptr [ %incdec.ptr.i.i, %while.cond.i.i.while.body.i.i_crit_edge ], [ getelementptr inbounds (%struct.et8ek8_meta_reglist, ptr @meta_reglist, i32 1, i32 0, i32 0), %if.end26.while.body.i.i_crit_edge ]
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.i.i = icmp eq i32 %19, 1
  br i1 %cmp.i.i, label %et8ek8_i2c_reglist_find_write.exit, label %while.cond.i.i

et8ek8_i2c_reglist_find_write.exit:               ; preds = %while.body.i.i
  %regs.i = getelementptr inbounds %struct.et8ek8_reglist, ptr %17, i32 0, i32 2
  %call1.i70 = tail call fastcc i32 @et8ek8_i2c_write_regs(ptr noundef %1, ptr noundef %regs.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i70)
  %tobool28.not = icmp eq i32 %call1.i70, 0
  br i1 %tobool28.not, label %if.end30, label %et8ek8_i2c_reglist_find_write.exit.if.then40_crit_edge

et8ek8_i2c_reglist_find_write.exit.if.then40_crit_edge: ; preds = %et8ek8_i2c_reglist_find_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then40

if.end30:                                         ; preds = %et8ek8_i2c_reglist_find_write.exit
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
  %20 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 196607, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #9
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %22 = getelementptr inbounds i8, ptr %data.i, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 -1, ptr %22, align 1
  %24 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter.i, align 8
  %tobool.not.i73 = icmp eq ptr %25, null
  br i1 %tobool.not.i73, label %if.end30.et8ek8_i2c_read_reg.exit.thread_crit_edge, label %if.end6.i

if.end30.et8ek8_i2c_read_reg.exit.thread_crit_edge: ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %et8ek8_i2c_read_reg.exit.thread

if.end6.i:                                        ; preds = %if.end30
  %26 = getelementptr inbounds [4 x i8], ptr %data.i, i32 0, i32 1
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %addr.i, align 2
  %29 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %31 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %data.i, ptr %buf.i, align 4
  %32 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 18, ptr %data.i, align 1
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 99, ptr %26, align 1
  %call.i74 = call i32 @i2c_transfer(ptr noundef nonnull %25, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %cmp14.i = icmp slt i32 %call.i74, 0
  br i1 %cmp14.i, label %if.end6.i.do.end.i_crit_edge, label %if.end17.i

if.end6.i.do.end.i_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.end17.i:                                       ; preds = %if.end6.i
  %34 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %20, align 4
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 1, ptr %flags.i, align 2
  %36 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %adapter.i, align 8
  %call21.i = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp22.i = icmp slt i32 %call21.i, 0
  br i1 %cmp22.i, label %if.end17.i.do.end.i_crit_edge, label %if.end34

if.end17.i.do.end.i_crit_edge:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.end17.i.do.end.i_crit_edge, %if.end6.i.do.end.i_crit_edge
  %r.0.i = phi i32 [ %call.i74, %if.end6.i.do.end.i_crit_edge ], [ %call21.i, %if.end17.i.do.end.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.35, i32 noundef 4707, i32 noundef %r.0.i) #12
  br label %et8ek8_i2c_read_reg.exit.thread

et8ek8_i2c_read_reg.exit.thread:                  ; preds = %do.end.i, %if.end30.et8ek8_i2c_read_reg.exit.thread_crit_edge
  %retval.0.i75.ph = phi i32 [ -19, %if.end30.et8ek8_i2c_read_reg.exit.thread_crit_edge ], [ %r.0.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  br label %if.then40

if.end34:                                         ; preds = %if.end17.i
  %38 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %data.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  %40 = or i8 %39, 16
  %or = zext i8 %40 to i32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i76) #9
  %41 = getelementptr inbounds i8, ptr %msg.i76, i32 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 262143, ptr %41, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i77) #9
  %43 = getelementptr inbounds i8, ptr %data.i77, i32 2
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 -1, ptr %43, align 1
  %45 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %adapter.i, align 8
  %tobool.not.i79 = icmp eq ptr %46, null
  br i1 %tobool.not.i79, label %if.end34.out.thread100_crit_edge, label %if.end.i80

if.end34.out.thread100_crit_edge:                 ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread100

if.end.i80:                                       ; preds = %if.end34
  %47 = getelementptr inbounds [6 x i8], ptr %data.i77, i32 0, i32 1
  %48 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %addr.i, align 2
  %50 = ptrtoint ptr %msg.i76 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %msg.i76, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i76, i32 0, i32 1
  %51 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %flags.i.i, align 2
  %buf4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i76, i32 0, i32 3
  %52 = ptrtoint ptr %buf4.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %data.i77, ptr %buf4.i.i, align 4
  %53 = ptrtoint ptr %data.i77 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 18, ptr %data.i77, align 1
  %54 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 99, ptr %47, align 1
  %55 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %40, ptr %43, align 1
  %call.i81 = call i32 @i2c_transfer(ptr noundef nonnull %46, ptr noundef nonnull %msg.i76, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %cmp8.i = icmp slt i32 %call.i81, 0
  br i1 %cmp8.i, label %do.end.i83, label %out

do.end.i83:                                       ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i82 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i82, ptr noundef nonnull @.str.37, i32 noundef %or, i32 noundef 4707, i32 noundef %call.i81) #12
  br label %out.thread100

out.thread100:                                    ; preds = %do.end.i83, %if.end34.out.thread100_crit_edge
  %retval.0.i84.ph = phi i32 [ -19, %if.end34.out.thread100_crit_edge ], [ %call.i81, %do.end.i83 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i77) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i76) #9
  br label %if.then40

out:                                              ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i77) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i76) #9
  br label %cleanup

if.then40:                                        ; preds = %out.thread100, %et8ek8_i2c_read_reg.exit.thread, %et8ek8_i2c_reglist_find_write.exit.if.then40_crit_edge, %while.cond.i.i.if.then40_crit_edge, %if.end26.if.then40_crit_edge, %do.end21, %clk_prepare_enable.exit.if.then40_crit_edge, %do.end12
  %rval.098 = phi i32 [ %retval.0.i84.ph, %out.thread100 ], [ %retval.0.i75.ph, %et8ek8_i2c_read_reg.exit.thread ], [ %retval.0.i, %clk_prepare_enable.exit.if.then40_crit_edge ], [ %call1.i70, %et8ek8_i2c_reglist_find_write.exit.if.then40_crit_edge ], [ %retval.0.i, %do.end21 ], [ %call8, %do.end12 ], [ -22, %if.end26.if.then40_crit_edge ], [ -22, %while.cond.i.i.if.then40_crit_edge ]
  %reset.i = getelementptr inbounds %struct.et8ek8_sensor, ptr %sensor, i32 0, i32 3
  %56 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reset.i, align 4
  call void @gpiod_set_value(ptr noundef %57, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %58(i32 noundef 214748) #9
  %59 = ptrtoint ptr %ext_clk to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ext_clk, align 4
  call void @clk_disable(ptr noundef %60) #9
  call void @clk_unprepare(ptr noundef %60) #9
  %61 = ptrtoint ptr %vana to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %vana, align 4
  %call.i85 = call i32 @regulator_disable(ptr noundef %62) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %out, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %rval.098, %if.then40 ], [ 0, %out ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @et8ek8_i2c_write_regs(ptr noundef %client, ptr noundef readonly %regs) unnamed_addr #3 align 64 {
entry:
  %msg.i = alloca [8 x %struct.i2c_msg], align 4
  %data.i = alloca [8 x [6 x i8]], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %regs, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %do.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.preheader:                                ; preds = %if.end
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.cond60.do.body_crit_edge, %do.body.preheader
  %regs.addr.0 = phi ptr [ %regs.addr.1, %do.cond60.do.body_crit_edge ], [ %regs, %do.body.preheader ]
  %cnt.0 = phi i32 [ %cnt.2, %do.cond60.do.body_crit_edge ], [ 0, %do.body.preheader ]
  %next.0 = phi ptr [ %next.2, %do.cond60.do.body_crit_edge ], [ %regs, %do.body.preheader ]
  br label %while.cond

while.cond:                                       ; preds = %if.end45, %do.body
  %cnt.1 = phi i32 [ %cnt.0, %do.body ], [ %inc, %if.end45 ]
  %next.1 = phi ptr [ %next.0, %do.body ], [ %incdec.ptr, %if.end45 ]
  %2 = ptrtoint ptr %next.1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %next.1, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %do.end.critedge [
    i16 255, label %while.cond.while.end_crit_edge
    i16 100, label %while.cond.while.end_crit_edge119
    i16 1, label %while.cond.if.end45_crit_edge
    i16 2, label %while.cond.if.end45_crit_edge120
  ]

while.cond.if.end45_crit_edge120:                 ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

while.cond.if.end45_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

while.cond.while.end_crit_edge119:                ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.end.critedge:                                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  %conv30 = zext i16 %3 to i32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 292, i32 noundef 9, ptr noundef nonnull @.str.31, i32 noundef %conv30) #9
  br label %cleanup

if.end45:                                         ; preds = %while.cond.if.end45_crit_edge, %while.cond.if.end45_crit_edge120
  %inc = add i32 %cnt.1, 1
  %incdec.ptr = getelementptr %struct.et8ek8_reg, ptr %next.1, i32 1
  br label %while.cond

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %while.cond.while.end_crit_edge119
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %msg.i) #9
  %5 = call ptr @memset(ptr %msg.i, i32 255, i32 96)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %data.i) #9
  %6 = call ptr @memset(ptr %data.i, i32 255, i32 48)
  br label %while.cond.outer.i

while.cond.outer.i:                               ; preds = %if.end.i.while.cond.outer.i_crit_edge, %while.end
  %wnext.addr.0.ph.i = phi ptr [ %incdec.ptr.i, %if.end.i.while.cond.outer.i_crit_edge ], [ %regs.addr.0, %while.end ]
  %cnt.addr.0.ph.i = phi i32 [ %sub.i, %if.end.i.while.cond.outer.i_crit_edge ], [ %cnt.1, %while.end ]
  %smax.i = call i32 @llvm.smax.i32(i32 %cnt.addr.0.ph.i, i32 0) #9
  br label %while.cond.i

while.cond.i:                                     ; preds = %et8ek8_i2c_create_msg.exit.i.while.cond.i_crit_edge, %while.cond.outer.i
  %wnext.addr.0.i = phi ptr [ %incdec.ptr.i, %et8ek8_i2c_create_msg.exit.i.while.cond.i_crit_edge ], [ %wnext.addr.0.ph.i, %while.cond.outer.i ]
  %wcnt.0.i = phi i32 [ %inc.i, %et8ek8_i2c_create_msg.exit.i.while.cond.i_crit_edge ], [ 0, %while.cond.outer.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %wcnt.0.i, i32 %smax.i)
  %exitcond.not.i = icmp eq i32 %wcnt.0.i, %smax.i
  br i1 %exitcond.not.i, label %et8ek8_i2c_buffered_write_regs.exit, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %7 = ptrtoint ptr %wnext.addr.0.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %wnext.addr.0.i, align 4
  %reg1.i = getelementptr inbounds %struct.et8ek8_reg, ptr %wnext.addr.0.i, i32 0, i32 1
  %9 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %reg1.i, align 2
  %val2.i = getelementptr inbounds %struct.et8ek8_reg, ptr %wnext.addr.0.i, i32 0, i32 2
  %11 = ptrtoint ptr %val2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val2.i, align 4
  %incdec.ptr.i = getelementptr %struct.et8ek8_reg, ptr %wnext.addr.0.i, i32 1
  %arrayidx.i = getelementptr [8 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 %wcnt.0.i
  %arrayidx3.i = getelementptr [8 x [6 x i8]], ptr %data.i, i32 0, i32 %wcnt.0.i
  %13 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %addr.i.i, align 2
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %arrayidx.i, align 4
  %flags.i.i = getelementptr [8 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 %wcnt.0.i, i32 1
  %16 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags.i.i, align 2
  %add.i.i = add i16 %8, 2
  %len3.i.i = getelementptr [8 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 %wcnt.0.i, i32 2
  %17 = ptrtoint ptr %len3.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %add.i.i, ptr %len3.i.i, align 4
  %buf4.i.i = getelementptr [8 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 %wcnt.0.i, i32 3
  %18 = ptrtoint ptr %buf4.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx3.i, ptr %buf4.i.i, align 4
  %19 = lshr i16 %10, 8
  %conv6.i.i = trunc i16 %19 to i8
  %20 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv6.i.i, ptr %arrayidx3.i, align 1
  %conv8.i.i = trunc i16 %10 to i8
  %arrayidx9.i.i = getelementptr i8, ptr %arrayidx3.i, i32 1
  %21 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv8.i.i, ptr %arrayidx9.i.i, align 1
  %22 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.82)
  switch i16 %8, label %land.end.i.i [
    i16 1, label %sw.bb.i.i
    i16 2, label %sw.bb16.i.i
  ]

sw.bb.i.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv14.i.i = trunc i32 %12 to i8
  %arrayidx15.i.i = getelementptr i8, ptr %arrayidx3.i, i32 2
  %23 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv14.i.i, ptr %arrayidx15.i.i, align 1
  br label %et8ek8_i2c_create_msg.exit.i

sw.bb16.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv20.i.i = trunc i32 %12 to i8
  %arrayidx21.i.i = getelementptr i8, ptr %arrayidx3.i, i32 2
  %24 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv20.i.i, ptr %arrayidx21.i.i, align 1
  %shr22.i.i = lshr i32 %12, 8
  %conv26.i.i = trunc i32 %shr22.i.i to i8
  %arrayidx27.i.i = getelementptr i8, ptr %arrayidx3.i, i32 3
  %25 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv26.i.i, ptr %arrayidx27.i.i, align 1
  br label %et8ek8_i2c_create_msg.exit.i

land.end.i.i:                                     ; preds = %while.body.i
  %.b75.i.i = load i1, ptr @et8ek8_i2c_create_msg.__already_done, align 1
  br i1 %.b75.i.i, label %land.end.i.i.et8ek8_i2c_create_msg.exit.i_crit_edge, label %if.then.i.i, !prof !201

land.end.i.i.et8ek8_i2c_create_msg.exit.i_crit_edge: ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %et8ek8_i2c_create_msg.exit.i

if.then.i.i:                                      ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @et8ek8_i2c_create_msg.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 209, i32 noundef 9, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.et8ek8_i2c_create_msg) #9
  br label %et8ek8_i2c_create_msg.exit.i

et8ek8_i2c_create_msg.exit.i:                     ; preds = %if.then.i.i, %land.end.i.i.et8ek8_i2c_create_msg.exit.i_crit_edge, %sw.bb16.i.i, %sw.bb.i.i
  %inc.i = add nuw nsw i32 %wcnt.0.i, 1
  %exitcond37.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond37.not.i, label %if.end.i, label %et8ek8_i2c_create_msg.exit.i.while.cond.i_crit_edge

et8ek8_i2c_create_msg.exit.i.while.cond.i_crit_edge: ; preds = %et8ek8_i2c_create_msg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

if.end.i:                                         ; preds = %et8ek8_i2c_create_msg.exit.i
  %26 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %msg.i, i32 noundef 8) #9
  %cmp6.i = icmp slt i32 %call.i, 0
  %sub.i = add i32 %cnt.addr.0.ph.i, -8
  br i1 %cmp6.i, label %et8ek8_i2c_buffered_write_regs.exit.thread, label %if.end.i.while.cond.outer.i_crit_edge

if.end.i.while.cond.outer.i_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.outer.i

et8ek8_i2c_buffered_write_regs.exit.thread:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %data.i) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %msg.i) #9
  br label %do.end51

et8ek8_i2c_buffered_write_regs.exit:              ; preds = %while.cond.i
  %28 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adapter, align 8
  %call11.i = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %msg.i, i32 noundef %smax.i) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %data.i) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %msg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp46 = icmp slt i32 %call11.i, 0
  br i1 %cmp46, label %et8ek8_i2c_buffered_write_regs.exit.do.end51_crit_edge, label %if.end52

et8ek8_i2c_buffered_write_regs.exit.do.end51_crit_edge: ; preds = %et8ek8_i2c_buffered_write_regs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51

do.end51:                                         ; preds = %et8ek8_i2c_buffered_write_regs.exit.do.end51_crit_edge, %et8ek8_i2c_buffered_write_regs.exit.thread
  %retval.0.i87 = phi i32 [ %call.i, %et8ek8_i2c_buffered_write_regs.exit.thread ], [ %call11.i, %et8ek8_i2c_buffered_write_regs.exit.do.end51_crit_edge ]
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32) #12
  br label %cleanup

if.end52:                                         ; preds = %et8ek8_i2c_buffered_write_regs.exit
  %30 = ptrtoint ptr %next.1 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %next.1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %31)
  %cmp55 = icmp eq i16 %31, 100
  br i1 %cmp55, label %if.then57, label %if.end52.do.cond60_crit_edge

if.end52.do.cond60_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond60

if.then57:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %val = getelementptr inbounds %struct.et8ek8_reg, ptr %next.1, i32 0, i32 2
  %32 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val, align 4
  call void @msleep(i32 noundef %33) #9
  %incdec.ptr58 = getelementptr %struct.et8ek8_reg, ptr %next.1, i32 1
  %34 = ptrtoint ptr %incdec.ptr58 to i32
  call void @__asan_load2_noabort(i32 %34)
  %.pr = load i16, ptr %incdec.ptr58, align 4
  br label %do.cond60

do.cond60:                                        ; preds = %if.then57, %if.end52.do.cond60_crit_edge
  %35 = phi i16 [ %31, %if.end52.do.cond60_crit_edge ], [ %.pr, %if.then57 ]
  %regs.addr.1 = phi ptr [ %regs.addr.0, %if.end52.do.cond60_crit_edge ], [ %incdec.ptr58, %if.then57 ]
  %cnt.2 = phi i32 [ %cnt.1, %if.end52.do.cond60_crit_edge ], [ 0, %if.then57 ]
  %next.2 = phi ptr [ %next.1, %if.end52.do.cond60_crit_edge ], [ %incdec.ptr58, %if.then57 ]
  %cmp63.not = icmp eq i16 %35, 255
  br i1 %cmp63.not, label %do.cond60.cleanup_crit_edge, label %do.cond60.do.body_crit_edge

do.cond60.do.body_crit_edge:                      ; preds = %do.cond60
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.cond60.cleanup_crit_edge:                      ; preds = %do.cond60
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %do.cond60.cleanup_crit_edge, %do.end51, %do.end.critedge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.critedge ], [ %retval.0.i87, %do.end51 ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %do.cond60.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @et8ek8_s_stream(ptr noundef %subdev, i32 noundef %streaming) #3 align 64 {
entry:
  %msg.i.i10 = alloca %struct.i2c_msg, align 4
  %data.i.i11 = alloca [6 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %data.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %streaming)
  %tobool.not = icmp eq i32 %streaming, 0
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #9
  %2 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 262143, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i.i) #9
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %4 = getelementptr inbounds i8, ptr %data.i.i, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 822083583, ptr %4, align 1
  %6 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.then.et8ek8_stream_off.exit_crit_edge, label %if.end.i.i

if.then.et8ek8_stream_off.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %et8ek8_stream_off.exit

if.end.i.i:                                       ; preds = %if.then
  %8 = getelementptr inbounds [6 x i8], ptr %data.i.i, i32 0, i32 1
  %addr.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr.i.i.i, align 2
  %11 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %msg.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i.i.i, align 2
  %buf4.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %data.i.i, ptr %buf4.i.i.i, align 4
  %14 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 18, ptr %data.i.i, align 1
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 82, ptr %8, align 1
  %call.i.i = call i32 @i2c_transfer(ptr noundef nonnull %7, ptr noundef nonnull %msg.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp8.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp8.i.i, label %do.end.i.i, label %if.end.i.i.et8ek8_stream_off.exit_crit_edge

if.end.i.i.et8ek8_stream_off.exit_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %et8ek8_stream_off.exit

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.37, i32 noundef 48, i32 noundef 4690, i32 noundef %call.i.i) #12
  br label %et8ek8_stream_off.exit

et8ek8_stream_off.exit:                           ; preds = %do.end.i.i, %if.end.i.i.et8ek8_stream_off.exit_crit_edge, %if.then.et8ek8_stream_off.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %do.end.i.i ], [ -19, %if.then.et8ek8_stream_off.exit_crit_edge ], [ 0, %if.end.i.i.et8ek8_stream_off.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %current_reglist.i = getelementptr inbounds %struct.et8ek8_sensor, ptr %subdev, i32 0, i32 11
  %16 = ptrtoint ptr %current_reglist.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %current_reglist.i, align 4
  %regs.i = getelementptr inbounds %struct.et8ek8_reglist, ptr %17, i32 0, i32 2
  %call2.i = tail call fastcc i32 @et8ek8_i2c_write_regs(ptr noundef %1, ptr noundef %regs.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.et8ek8_configure.exit_crit_edge

if.end.et8ek8_configure.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %et8ek8_configure.exit

if.end.i:                                         ; preds = %if.end
  %ctrl_handler.i = getelementptr inbounds %struct.et8ek8_sensor, ptr %subdev, i32 0, i32 8
  %call3.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_handler.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end3_crit_edge, label %if.end.i.et8ek8_configure.exit_crit_edge

if.end.i.et8ek8_configure.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %et8ek8_configure.exit

if.end.i.if.end3_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

et8ek8_configure.exit:                            ; preds = %if.end.i.et8ek8_configure.exit_crit_edge, %if.end.et8ek8_configure.exit_crit_edge
  %rval.0.i = phi i32 [ %call2.i, %if.end.et8ek8_configure.exit_crit_edge ], [ %call3.i, %if.end.i.et8ek8_configure.exit_crit_edge ]
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.39) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rval.0.i)
  %cmp = icmp slt i32 %rval.0.i, 0
  br i1 %cmp, label %et8ek8_configure.exit.cleanup_crit_edge, label %et8ek8_configure.exit.if.end3_crit_edge

et8ek8_configure.exit.if.end3_crit_edge:          ; preds = %et8ek8_configure.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

et8ek8_configure.exit.cleanup_crit_edge:          ; preds = %et8ek8_configure.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %et8ek8_configure.exit.if.end3_crit_edge, %if.end.i.if.end3_crit_edge
  %18 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i10) #9
  %20 = getelementptr inbounds i8, ptr %msg.i.i10, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 262143, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i.i11) #9
  %adapter.i.i13 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 3
  %22 = getelementptr inbounds i8, ptr %data.i.i11, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 -1325400065, ptr %22, align 1
  %24 = ptrtoint ptr %adapter.i.i13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter.i.i13, align 8
  %tobool.not.i.i14 = icmp eq ptr %25, null
  br i1 %tobool.not.i.i14, label %if.end3.et8ek8_stream_on.exit_crit_edge, label %if.end.i.i20

if.end3.et8ek8_stream_on.exit_crit_edge:          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %et8ek8_stream_on.exit

if.end.i.i20:                                     ; preds = %if.end3
  %26 = getelementptr inbounds [6 x i8], ptr %data.i.i11, i32 0, i32 1
  %addr.i.i.i15 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 1
  %27 = ptrtoint ptr %addr.i.i.i15 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %addr.i.i.i15, align 2
  %29 = ptrtoint ptr %msg.i.i10 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %msg.i.i10, align 4
  %flags.i.i.i16 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i10, i32 0, i32 1
  %30 = ptrtoint ptr %flags.i.i.i16 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %flags.i.i.i16, align 2
  %buf4.i.i.i17 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i10, i32 0, i32 3
  %31 = ptrtoint ptr %buf4.i.i.i17 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %data.i.i11, ptr %buf4.i.i.i17, align 4
  %32 = ptrtoint ptr %data.i.i11 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 18, ptr %data.i.i11, align 1
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 82, ptr %26, align 1
  %call.i.i18 = call i32 @i2c_transfer(ptr noundef nonnull %25, ptr noundef nonnull %msg.i.i10, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i18)
  %cmp8.i.i19 = icmp slt i32 %call.i.i18, 0
  br i1 %cmp8.i.i19, label %do.end.i.i22, label %if.end.i.i20.et8ek8_stream_on.exit_crit_edge

if.end.i.i20.et8ek8_stream_on.exit_crit_edge:     ; preds = %if.end.i.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %et8ek8_stream_on.exit

do.end.i.i22:                                     ; preds = %if.end.i.i20
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i21 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i21, ptr noundef nonnull @.str.37, i32 noundef 176, i32 noundef 4690, i32 noundef %call.i.i18) #12
  br label %et8ek8_stream_on.exit

et8ek8_stream_on.exit:                            ; preds = %do.end.i.i22, %if.end.i.i20.et8ek8_stream_on.exit_crit_edge, %if.end3.et8ek8_stream_on.exit_crit_edge
  %retval.0.i.i23 = phi i32 [ %call.i.i18, %do.end.i.i22 ], [ -19, %if.end3.et8ek8_stream_on.exit_crit_edge ], [ 0, %if.end.i.i20.et8ek8_stream_on.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i.i11) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i10) #9
  br label %cleanup

cleanup:                                          ; preds = %et8ek8_stream_on.exit, %et8ek8_configure.exit.cleanup_crit_edge, %et8ek8_stream_off.exit
  %retval.0 = phi i32 [ %retval.0.i.i23, %et8ek8_stream_on.exit ], [ %retval.0.i.i, %et8ek8_stream_off.exit ], [ %rval.0.i, %et8ek8_configure.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @et8ek8_get_frame_interval(ptr nocapture noundef readonly %subdev, ptr nocapture noundef writeonly %fi) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %fi, i32 0, i32 48)
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1
  %current_reglist = getelementptr inbounds %struct.et8ek8_sensor, ptr %subdev, i32 0, i32 11
  %1 = ptrtoint ptr %current_reglist to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %current_reglist, align 4
  %timeperframe = getelementptr inbounds %struct.et8ek8_reglist, ptr %2, i32 0, i32 1, i32 14
  %3 = ptrtoint ptr %timeperframe to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %timeperframe, align 4
  %5 = ptrtoint ptr %interval to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 %4, ptr %interval, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @et8ek8_set_frame_interval(ptr nocapture noundef %subdev, ptr nocapture noundef readonly %fi) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %current_reglist = getelementptr inbounds %struct.et8ek8_sensor, ptr %subdev, i32 0, i32 11
  %0 = ptrtoint ptr %current_reglist to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_reglist, align 4
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1
  %denominator.i = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %denominator.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %denominator.i, align 4
  %4 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %interval, align 4
  %shr.i = lshr i32 %5, 1
  %add.i = add i32 %shr.i, %3
  %div.i = udiv i32 %add.i, %5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.et8ek8_meta_reglist, ptr @meta_reglist, i32 1, i32 0, i32 0) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.et8ek8_meta_reglist, ptr @meta_reglist, i32 1, i32 0, i32 0), align 4
  %tobool.not4.i = icmp eq ptr %6, null
  br i1 %tobool.not4.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %window_width4.i = getelementptr inbounds %struct.et8ek8_reglist, ptr %1, i32 0, i32 1, i32 10
  %window_height9.i = getelementptr inbounds %struct.et8ek8_reglist, ptr %1, i32 0, i32 1, i32 11
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %7 = phi ptr [ %6, %for.body.lr.ph.i ], [ %23, %for.inc.i.for.body.i_crit_edge ]
  %list.05.i = phi ptr [ getelementptr inbounds (%struct.et8ek8_meta_reglist, ptr @meta_reglist, i32 1, i32 0, i32 0), %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 10
  br i1 %cmp.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %window_width.i = getelementptr inbounds %struct.et8ek8_reglist, ptr %7, i32 0, i32 1, i32 10
  %10 = ptrtoint ptr %window_width.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %window_width.i, align 4
  %12 = ptrtoint ptr %window_width4.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %window_width4.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %13)
  %cmp6.not.i = icmp eq i16 %11, %13
  br i1 %cmp6.not.i, label %lor.lhs.false.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %window_height.i = getelementptr inbounds %struct.et8ek8_reglist, ptr %7, i32 0, i32 1, i32 11
  %14 = ptrtoint ptr %window_height.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %window_height.i, align 2
  %16 = ptrtoint ptr %window_height9.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %window_height9.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %17)
  %cmp11.not.i = icmp eq i16 %15, %17
  br i1 %cmp11.not.i, label %if.end14.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end14.i:                                       ; preds = %lor.lhs.false.i
  %timeperframe15.i = getelementptr inbounds %struct.et8ek8_reglist, ptr %7, i32 0, i32 1, i32 14
  %denominator16.i = getelementptr inbounds %struct.et8ek8_reglist, ptr %7, i32 0, i32 1, i32 14, i32 1
  %18 = ptrtoint ptr %denominator16.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %denominator16.i, align 4
  %20 = ptrtoint ptr %timeperframe15.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %timeperframe15.i, align 4
  %shr19.i = lshr i32 %21, 1
  %add20.i = add i32 %shr19.i, %19
  %div23.i = udiv i32 %add20.i, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %div23.i, i32 %div.i)
  %cmp24.i = icmp eq i32 %div23.i, %div.i
  br i1 %cmp24.i, label %if.end, label %if.end14.i.for.inc.i_crit_edge

if.end14.i.for.inc.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end14.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr ptr, ptr %list.05.i, i32 1
  %22 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.end14.i
  %ext_clock = getelementptr inbounds %struct.et8ek8_reglist, ptr %1, i32 0, i32 1, i32 13
  %24 = ptrtoint ptr %ext_clock to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ext_clock, align 4
  %ext_clock3 = getelementptr inbounds %struct.et8ek8_reglist, ptr %7, i32 0, i32 1, i32 13
  %26 = ptrtoint ptr %ext_clock3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ext_clock3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp.not = icmp eq i32 %25, %27
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %window_width.i.le = getelementptr inbounds %struct.et8ek8_reglist, ptr %7, i32 0, i32 1, i32 10
  %28 = ptrtoint ptr %current_reglist to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %7, ptr %current_reglist, align 4
  %exposure.i = getelementptr inbounds %struct.et8ek8_sensor, ptr %subdev, i32 0, i32 9
  %29 = ptrtoint ptr %exposure.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %exposure.i, align 4
  %max_exp.i = getelementptr inbounds %struct.et8ek8_reglist, ptr %7, i32 0, i32 1, i32 15
  %31 = ptrtoint ptr %max_exp.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_exp.i, align 4
  %pixel_clock.i = getelementptr inbounds %struct.et8ek8_reglist, ptr %7, i32 0, i32 1, i32 12
  %33 = ptrtoint ptr %pixel_clock.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pixel_clock.i, align 4
  %sub.i = add i32 %34, 255
  %shr.i13 = lshr i32 %sub.i, 8
  %width.i = getelementptr inbounds %struct.et8ek8_reglist, ptr %7, i32 0, i32 1, i32 6
  %35 = ptrtoint ptr %width.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %width.i, align 4
  %conv.i = zext i16 %36 to i32
  %37 = ptrtoint ptr %window_width.i.le to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %window_width.i.le, align 4
  %conv3.i = zext i16 %38 to i32
  %add2.i = add nsw i32 %conv.i, -1
  %sub4.i = add nsw i32 %add2.i, %shr.i13
  %mul.i = mul i32 %sub4.i, %conv3.i
  %div.i15 = udiv i32 %mul.i, %conv.i
  %conv8.i = zext i32 %32 to i64
  %call.i = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %30, i64 noundef 1, i64 noundef %conv8.i, i64 noundef 1, i64 noundef %conv8.i) #9
  %pixel_rate11.i = getelementptr inbounds %struct.et8ek8_sensor, ptr %subdev, i32 0, i32 10
  %39 = ptrtoint ptr %pixel_rate11.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pixel_rate11.i, align 4
  %shl.i = shl i32 %div.i15, 8
  %conv12.i = zext i32 %shl.i to i64
  %call13.i = tail call i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef %40, i64 noundef %conv12.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_modify_range(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @et8ek8_enum_mbus_code(ptr nocapture noundef readnone %subdev, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #6 align 64 {
entry:
  %pixelformat = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pixelformat) #9
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %0 = call ptr @memset(ptr %pixelformat, i32 255, i32 16)
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp = icmp ugt i32 %2, 3
  br i1 %cmp, label %entry.cleanup26_crit_edge, label %for.cond.preheader

entry.cleanup26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup26

for.cond.preheader:                               ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.et8ek8_meta_reglist, ptr @meta_reglist, i32 1, i32 0, i32 0) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.et8ek8_meta_reglist, ptr @meta_reglist, i32 1, i32 0, i32 0), align 4
  %tobool.not50 = icmp eq ptr %3, null
  br i1 %tobool.not50, label %for.cond.preheader.cleanup26_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup26_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup26

for.body:                                         ; preds = %for.inc24.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %4 = phi ptr [ %16, %for.inc24.for.body_crit_edge ], [ %3, %for.cond.preheader.for.body_crit_edge ]
  %npixelformat.052 = phi i32 [ %npixelformat.1.ph, %for.inc24.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %list.051 = phi ptr [ %incdec.ptr, %for.inc24.for.body_crit_edge ], [ getelementptr inbounds (%struct.et8ek8_meta_reglist, ptr @meta_reglist, i32 1, i32 0, i32 0), %for.cond.preheader.for.body_crit_edge ]
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %6)
  %cmp2.not = icmp eq i32 %6, 10
  br i1 %cmp2.not, label %for.cond5.preheader, label %for.body.for.inc24_crit_edge

for.body.for.inc24_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc24

for.cond5.preheader:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %npixelformat.052)
  %cmp647 = icmp sgt i32 %npixelformat.052, 0
  br i1 %cmp647, label %for.body7.lr.ph, label %for.cond5.preheader.for.end_crit_edge

for.cond5.preheader.for.end_crit_edge:            ; preds = %for.cond5.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body7.lr.ph:                                  ; preds = %for.cond5.preheader
  %bus_format = getelementptr inbounds %struct.et8ek8_reglist, ptr %4, i32 0, i32 1, i32 16
  %7 = ptrtoint ptr %bus_format to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bus_format, align 4
  br label %for.body7

for.body7:                                        ; preds = %for.inc.for.body7_crit_edge, %for.body7.lr.ph
  %i.048 = phi i32 [ 0, %for.body7.lr.ph ], [ %inc, %for.inc.for.body7_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr %pixelformat, i32 0, i32 %i.048
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp8 = icmp eq i32 %10, %8
  br i1 %cmp8, label %for.body7.for.end_crit_edge, label %for.inc

for.body7.for.end_crit_edge:                      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc:                                          ; preds = %for.body7
  %inc = add nuw nsw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc, %npixelformat.052
  br i1 %exitcond.not, label %for.inc.if.end13_crit_edge, label %for.inc.for.body7_crit_edge

for.inc.for.body7_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body7

for.inc.if.end13_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

for.end:                                          ; preds = %for.body7.for.end_crit_edge, %for.cond5.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond5.preheader.for.end_crit_edge ], [ %i.048, %for.body7.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %npixelformat.052)
  %cmp11.not = icmp eq i32 %i.0.lcssa, %npixelformat.052
  br i1 %cmp11.not, label %for.end.if.end13_crit_edge, label %for.end.for.inc24_crit_edge

for.end.for.inc24_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc24

for.end.if.end13_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.end13:                                         ; preds = %for.end.if.end13_crit_edge, %for.inc.if.end13_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %npixelformat.052)
  %cmp15 = icmp eq i32 %2, %npixelformat.052
  %bus_format17 = getelementptr inbounds %struct.et8ek8_reglist, ptr %4, i32 0, i32 1, i32 16
  %11 = ptrtoint ptr %bus_format17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bus_format17, align 4
  br i1 %cmp15, label %cleanup, label %if.end19

if.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx21 = getelementptr [4 x i32], ptr %pixelformat, i32 0, i32 %npixelformat.052
  %13 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx21, align 4
  %inc22 = add i32 %npixelformat.052, 1
  br label %for.inc24

cleanup:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %code18 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %14 = ptrtoint ptr %code18 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %12, ptr %code18, align 4
  br label %cleanup26

for.inc24:                                        ; preds = %if.end19, %for.end.for.inc24_crit_edge, %for.body.for.inc24_crit_edge
  %npixelformat.1.ph = phi i32 [ %npixelformat.052, %for.end.for.inc24_crit_edge ], [ %npixelformat.052, %for.body.for.inc24_crit_edge ], [ %inc22, %if.end19 ]
  %incdec.ptr = getelementptr ptr, ptr %list.051, i32 1
  %15 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %incdec.ptr, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %for.inc24.cleanup26_crit_edge, label %for.inc24.for.body_crit_edge

for.inc24.for.body_crit_edge:                     ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc24.cleanup26_crit_edge:                    ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup26

cleanup26:                                        ; preds = %for.inc24.cleanup26_crit_edge, %cleanup, %for.cond.preheader.cleanup26_crit_edge, %entry.cleanup26_crit_edge
  %retval.2 = phi i32 [ 0, %cleanup ], [ -22, %entry.cleanup26_crit_edge ], [ -22, %for.cond.preheader.cleanup26_crit_edge ], [ -22, %for.inc24.cleanup26_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pixelformat) #9
  ret i32 %retval.2
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @et8ek8_enum_frame_size(ptr nocapture noundef readnone %subdev, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.et8ek8_meta_reglist, ptr @meta_reglist, i32 1, i32 0, i32 0) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.et8ek8_meta_reglist, ptr @meta_reglist, i32 1, i32 0, i32 0), align 4
  %tobool.not40 = icmp eq ptr %0, null
  br i1 %tobool.not40, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %1 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fse, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %3 = phi ptr [ %0, %for.body.lr.ph ], [ %19, %for.inc.for.body_crit_edge ]
  %index.044 = phi i32 [ %2, %for.body.lr.ph ], [ %index.1, %for.inc.for.body_crit_edge ]
  %cmp_height.043 = phi i32 [ 2147483647, %for.body.lr.ph ], [ %cmp_height.1, %for.inc.for.body_crit_edge ]
  %cmp_width.042 = phi i32 [ 2147483647, %for.body.lr.ph ], [ %cmp_width.1, %for.inc.for.body_crit_edge ]
  %list.041 = phi ptr [ getelementptr inbounds (%struct.et8ek8_meta_reglist, ptr @meta_reglist, i32 1, i32 0, i32 0), %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %5)
  %cmp.not = icmp eq i32 %5, 10
  br i1 %cmp.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %window_width.i = getelementptr inbounds %struct.et8ek8_reglist, ptr %3, i32 0, i32 1, i32 10
  %6 = ptrtoint ptr %window_width.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %window_width.i, align 4
  %conv.i = zext i16 %7 to i32
  %window_height.i = getelementptr inbounds %struct.et8ek8_reglist, ptr %3, i32 0, i32 1, i32 11
  %8 = ptrtoint ptr %window_height.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %window_height.i, align 2
  %conv2.i = zext i16 %9 to i32
  %bus_format.i = getelementptr inbounds %struct.et8ek8_reglist, ptr %3, i32 0, i32 1, i32 16
  %10 = ptrtoint ptr %bus_format.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bus_format.i, align 4
  %12 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp3.not = icmp eq i32 %13, %11
  br i1 %cmp3.not, label %if.end5, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %cmp_width.042, i32 %conv.i)
  %cmp6 = icmp eq i32 %cmp_width.042, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cmp_height.043, i32 %conv2.i)
  %cmp7 = icmp eq i32 %cmp_height.043, %conv2.i
  %or.cond = select i1 %cmp6, i1 %cmp7, i1 false
  br i1 %or.cond, label %if.end5.for.inc_crit_edge, label %if.end9

if.end5.for.inc_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end9:                                          ; preds = %if.end5
  %dec = add i32 %index.044, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.044)
  %cmp12 = icmp eq i32 %index.044, 0
  br i1 %cmp12, label %if.then13, label %if.end9.for.inc_crit_edge

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.le = zext i16 %7 to i32
  %conv2.i.le = zext i16 %9 to i32
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %14 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv.i.le, ptr %min_width, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %15 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv2.i.le, ptr %min_height, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %16 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv.i.le, ptr %max_width, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %17 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv2.i.le, ptr %max_height, align 4
  br label %cleanup

for.inc:                                          ; preds = %if.end9.for.inc_crit_edge, %if.end5.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp_width.1 = phi i32 [ %cmp_width.042, %for.body.for.inc_crit_edge ], [ %cmp_width.042, %if.end.for.inc_crit_edge ], [ %conv.i, %if.end9.for.inc_crit_edge ], [ %cmp_width.042, %if.end5.for.inc_crit_edge ]
  %cmp_height.1 = phi i32 [ %cmp_height.043, %for.body.for.inc_crit_edge ], [ %cmp_height.043, %if.end.for.inc_crit_edge ], [ %conv2.i, %if.end9.for.inc_crit_edge ], [ %cmp_height.043, %if.end5.for.inc_crit_edge ]
  %index.1 = phi i32 [ %index.044, %for.body.for.inc_crit_edge ], [ %index.044, %if.end.for.inc_crit_edge ], [ %dec, %if.end9.for.inc_crit_edge ], [ %index.044, %if.end5.for.inc_crit_edge ]
  %incdec.ptr = getelementptr ptr, ptr %list.041, i32 1
  %18 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then13 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @et8ek8_enum_frame_ival(ptr nocapture noundef readnone %subdev, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fie) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.et8ek8_meta_reglist, ptr @meta_reglist, i32 1, i32 0, i32 0) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.et8ek8_meta_reglist, ptr @meta_reglist, i32 1, i32 0, i32 0), align 4
  %tobool.not31 = icmp eq ptr %0, null
  br i1 %tobool.not31, label %entry.cleanup16_crit_edge, label %for.body.lr.ph

entry.cleanup16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup16

for.body.lr.ph:                                   ; preds = %entry
  %1 = ptrtoint ptr %fie to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fie, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 2
  %width = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 3
  %height = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %3 = phi ptr [ %0, %for.body.lr.ph ], [ %22, %for.inc.for.body_crit_edge ]
  %index.033 = phi i32 [ %2, %for.body.lr.ph ], [ %index.1.ph, %for.inc.for.body_crit_edge ]
  %list.032 = phi ptr [ getelementptr inbounds (%struct.et8ek8_meta_reglist, ptr @meta_reglist, i32 1, i32 0, i32 0), %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %5)
  %cmp.not = icmp eq i32 %5, 10
  br i1 %cmp.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %window_height.i = getelementptr inbounds %struct.et8ek8_reglist, ptr %3, i32 0, i32 1, i32 11
  %6 = ptrtoint ptr %window_height.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %window_height.i, align 2
  %conv2.i = zext i16 %7 to i32
  %bus_format.i = getelementptr inbounds %struct.et8ek8_reglist, ptr %3, i32 0, i32 1, i32 16
  %8 = ptrtoint ptr %bus_format.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bus_format.i, align 4
  %10 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp4.not = icmp eq i32 %11, %9
  br i1 %cmp4.not, label %if.end6, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end6:                                          ; preds = %if.end
  %window_width.i = getelementptr inbounds %struct.et8ek8_reglist, ptr %3, i32 0, i32 1, i32 10
  %12 = ptrtoint ptr %window_width.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %window_width.i, align 4
  %conv.i = zext i16 %13 to i32
  %14 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv.i)
  %cmp8.not = icmp eq i32 %15, %conv.i
  br i1 %cmp8.not, label %lor.lhs.false, label %if.end6.for.inc_crit_edge

if.end6.for.inc_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false:                                    ; preds = %if.end6
  %16 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv2.i)
  %cmp10.not = icmp eq i32 %17, %conv2.i
  br i1 %cmp10.not, label %if.end12, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end12:                                         ; preds = %lor.lhs.false
  %dec = add i32 %index.033, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.033)
  %cmp13 = icmp eq i32 %index.033, 0
  br i1 %cmp13, label %cleanup, label %if.end12.for.inc_crit_edge

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

cleanup:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 5
  %timeperframe = getelementptr inbounds %struct.et8ek8_reglist, ptr %3, i32 0, i32 1, i32 14
  %18 = ptrtoint ptr %timeperframe to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %timeperframe, align 4
  %20 = ptrtoint ptr %interval to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %19, ptr %interval, align 4
  br label %cleanup16

for.inc:                                          ; preds = %if.end12.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %if.end6.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %index.1.ph = phi i32 [ %dec, %if.end12.for.inc_crit_edge ], [ %index.033, %if.end6.for.inc_crit_edge ], [ %index.033, %lor.lhs.false.for.inc_crit_edge ], [ %index.033, %if.end.for.inc_crit_edge ], [ %index.033, %for.body.for.inc_crit_edge ]
  %incdec.ptr = getelementptr ptr, ptr %list.032, i32 1
  %21 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %incdec.ptr, align 4
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %for.inc.cleanup16_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup16_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup16

cleanup16:                                        ; preds = %for.inc.cleanup16_crit_edge, %cleanup, %entry.cleanup16_crit_edge
  %retval.2 = phi i32 [ 0, %cleanup ], [ -22, %entry.cleanup16_crit_edge ], [ -22, %for.inc.cleanup16_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @et8ek8_get_pad_format(ptr noundef readonly %subdev, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i:                                          ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %3 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pad, align 4
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %5 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %4, %conv.i.i
  br i1 %cmp.not.i.i, label %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !201

sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %4, %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %7 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %8, i32 %spec.select.i.i
  br label %__et8ek8_get_pad_format.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %format.i = getelementptr inbounds %struct.et8ek8_sensor, ptr %subdev, i32 0, i32 2
  br label %__et8ek8_get_pad_format.exit

__et8ek8_get_pad_format.exit:                     ; preds = %sw.bb1.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %format.i, %sw.bb1.i ], [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %__et8ek8_get_pad_format.exit.cleanup_crit_edge, label %if.end

__et8ek8_get_pad_format.exit.cleanup_crit_edge:   ; preds = %__et8ek8_get_pad_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %__et8ek8_get_pad_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %9 = call ptr @memcpy(ptr %format1, ptr %retval.0.i, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %__et8ek8_get_pad_format.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %__et8ek8_get_pad_format.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @et8ek8_set_pad_format(ptr noundef %subdev, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i:                                          ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %3 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pad, align 4
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %5 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %4, %conv.i.i
  br i1 %cmp.not.i.i, label %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !201

sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %4, %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %7 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %8, i32 %spec.select.i.i
  br label %__et8ek8_get_pad_format.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %format.i = getelementptr inbounds %struct.et8ek8_sensor, ptr %subdev, i32 0, i32 2
  br label %__et8ek8_get_pad_format.exit

__et8ek8_get_pad_format.exit:                     ; preds = %sw.bb1.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %format.i, %sw.bb1.i ], [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %__et8ek8_get_pad_format.exit.cleanup_crit_edge, label %if.end

__et8ek8_get_pad_format.exit.cleanup_crit_edge:   ; preds = %__et8ek8_get_pad_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %__et8ek8_get_pad_format.exit
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.et8ek8_meta_reglist, ptr @meta_reglist, i32 1, i32 0, i32 0) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.et8ek8_meta_reglist, ptr @meta_reglist, i32 1, i32 0, i32 0), align 4
  %tobool.not9.i = icmp eq ptr %9, null
  br i1 %tobool.not9.i, label %if.end.et8ek8_reglist_find_mode_fmt.exit_crit_edge, label %for.body.lr.ph.i

if.end.et8ek8_reglist_find_mode_fmt.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %et8ek8_reglist_find_mode_fmt.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %10 = phi ptr [ %9, %for.body.lr.ph.i ], [ %28, %cleanup.i.for.body.i_crit_edge ]
  %list.014.i = phi ptr [ getelementptr inbounds (%struct.et8ek8_meta_reglist, ptr @meta_reglist, i32 1, i32 0, i32 0), %for.body.lr.ph.i ], [ %incdec.ptr.i, %cleanup.i.for.body.i_crit_edge ]
  %best_match.013.i = phi ptr [ null, %for.body.lr.ph.i ], [ %best_match.2.i, %cleanup.i.for.body.i_crit_edge ]
  %max_dist_other.012.i = phi i32 [ -1, %for.body.lr.ph.i ], [ %max_dist_other.2.i, %cleanup.i.for.body.i_crit_edge ]
  %max_dist_match.011.i = phi i32 [ -1, %for.body.lr.ph.i ], [ %max_dist_match.2.i, %cleanup.i.for.body.i_crit_edge ]
  %best_other.010.i = phi ptr [ null, %for.body.lr.ph.i ], [ %best_other.2.i, %cleanup.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %12)
  %cmp.not.i = icmp eq i32 %12, 10
  br i1 %cmp.not.i, label %if.end.i, label %for.body.i.cleanup.i_crit_edge

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  %window_width.i.i = getelementptr inbounds %struct.et8ek8_reglist, ptr %10, i32 0, i32 1, i32 10
  %13 = ptrtoint ptr %window_width.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %window_width.i.i, align 4
  %conv.i.i19 = zext i16 %14 to i32
  %window_height.i.i = getelementptr inbounds %struct.et8ek8_reglist, ptr %10, i32 0, i32 1, i32 11
  %15 = ptrtoint ptr %window_height.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %window_height.i.i, align 2
  %conv2.i.i = zext i16 %16 to i32
  %bus_format.i.i = getelementptr inbounds %struct.et8ek8_reglist, ptr %10, i32 0, i32 1, i32 16
  %17 = ptrtoint ptr %bus_format.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bus_format.i.i, align 4
  %19 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %format1, align 4
  %21 = tail call i32 @llvm.umin.i32(i32 %20, i32 %conv.i.i19) #9
  %22 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height.i, align 4
  %24 = tail call i32 @llvm.umin.i32(i32 %23, i32 %conv2.i.i) #9
  %mul12.i = mul nuw i32 %conv2.i.i, %conv.i.i19
  %mul15.i = mul i32 %23, %20
  %add.i = add i32 %mul15.i, %mul12.i
  %mul.i = mul nsw i32 %21, -2
  %mul16.neg.i = mul i32 %mul.i, %24
  %sub.i = add i32 %add.i, %mul16.neg.i
  %25 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %code.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %18)
  %cmp18.i = icmp eq i32 %26, %18
  br i1 %cmp18.i, label %if.then19.i, label %if.else.i

if.then19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %max_dist_match.011.i)
  %cmp20.i = icmp ult i32 %sub.i, %max_dist_match.011.i
  %tobool21.not.i = icmp eq ptr %best_match.013.i, null
  %or.cond.i = select i1 %cmp20.i, i1 true, i1 %tobool21.not.i
  %spec.select.i = select i1 %or.cond.i, i32 %sub.i, i32 %max_dist_match.011.i
  %spec.select6.i = select i1 %or.cond.i, ptr %10, ptr %best_match.013.i
  br label %cleanup.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %max_dist_other.012.i)
  %cmp24.i = icmp ult i32 %sub.i, %max_dist_other.012.i
  %tobool26.not.i = icmp eq ptr %best_other.010.i, null
  %or.cond1.i = select i1 %cmp24.i, i1 true, i1 %tobool26.not.i
  %spec.select7.i = select i1 %or.cond1.i, ptr %10, ptr %best_other.010.i
  %spec.select8.i = select i1 %or.cond1.i, i32 %sub.i, i32 %max_dist_other.012.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else.i, %if.then19.i, %for.body.i.cleanup.i_crit_edge
  %best_other.2.i = phi ptr [ %best_other.010.i, %for.body.i.cleanup.i_crit_edge ], [ %best_other.010.i, %if.then19.i ], [ %spec.select7.i, %if.else.i ]
  %max_dist_match.2.i = phi i32 [ %max_dist_match.011.i, %for.body.i.cleanup.i_crit_edge ], [ %spec.select.i, %if.then19.i ], [ %max_dist_match.011.i, %if.else.i ]
  %max_dist_other.2.i = phi i32 [ %max_dist_other.012.i, %for.body.i.cleanup.i_crit_edge ], [ %max_dist_other.012.i, %if.then19.i ], [ %spec.select8.i, %if.else.i ]
  %best_match.2.i = phi ptr [ %best_match.013.i, %for.body.i.cleanup.i_crit_edge ], [ %spec.select6.i, %if.then19.i ], [ %best_match.013.i, %if.else.i ]
  %incdec.ptr.i = getelementptr ptr, ptr %list.014.i, i32 1
  %27 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %cleanup.i.et8ek8_reglist_find_mode_fmt.exit_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

cleanup.i.et8ek8_reglist_find_mode_fmt.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %et8ek8_reglist_find_mode_fmt.exit

et8ek8_reglist_find_mode_fmt.exit:                ; preds = %cleanup.i.et8ek8_reglist_find_mode_fmt.exit_crit_edge, %if.end.et8ek8_reglist_find_mode_fmt.exit_crit_edge
  %best_other.0.lcssa.i = phi ptr [ null, %if.end.et8ek8_reglist_find_mode_fmt.exit_crit_edge ], [ %best_other.2.i, %cleanup.i.et8ek8_reglist_find_mode_fmt.exit_crit_edge ]
  %best_match.0.lcssa.i = phi ptr [ null, %if.end.et8ek8_reglist_find_mode_fmt.exit_crit_edge ], [ %best_match.2.i, %cleanup.i.et8ek8_reglist_find_mode_fmt.exit_crit_edge ]
  %tobool30.not.i = icmp eq ptr %best_match.0.lcssa.i, null
  %best_other.0.best_match.0.i = select i1 %tobool30.not.i, ptr %best_other.0.lcssa.i, ptr %best_match.0.lcssa.i
  %window_width.i = getelementptr inbounds %struct.et8ek8_reglist, ptr %best_other.0.best_match.0.i, i32 0, i32 1, i32 10
  %29 = ptrtoint ptr %window_width.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %window_width.i, align 4
  %conv.i = zext i16 %30 to i32
  %31 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv.i, ptr %format1, align 4
  %window_height.i = getelementptr inbounds %struct.et8ek8_reglist, ptr %best_other.0.best_match.0.i, i32 0, i32 1, i32 11
  %32 = ptrtoint ptr %window_height.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %window_height.i, align 2
  %conv2.i = zext i16 %33 to i32
  %height.i20 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %height.i20 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv2.i, ptr %height.i20, align 4
  %bus_format.i = getelementptr inbounds %struct.et8ek8_reglist, ptr %best_other.0.best_match.0.i, i32 0, i32 1, i32 16
  %35 = ptrtoint ptr %bus_format.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bus_format.i, align 4
  %code.i21 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %37 = ptrtoint ptr %code.i21 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %code.i21, align 4
  %38 = call ptr @memcpy(ptr %retval.0.i, ptr %format1, i32 48)
  %39 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp = icmp eq i32 %40, 1
  br i1 %cmp, label %if.then6, label %et8ek8_reglist_find_mode_fmt.exit.cleanup_crit_edge

et8ek8_reglist_find_mode_fmt.exit.cleanup_crit_edge: ; preds = %et8ek8_reglist_find_mode_fmt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %et8ek8_reglist_find_mode_fmt.exit
  call void @__sanitizer_cov_trace_pc() #11
  %current_reglist = getelementptr inbounds %struct.et8ek8_sensor, ptr %subdev, i32 0, i32 11
  %41 = ptrtoint ptr %current_reglist to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %best_other.0.best_match.0.i, ptr %current_reglist, align 4
  %exposure.i = getelementptr inbounds %struct.et8ek8_sensor, ptr %subdev, i32 0, i32 9
  %42 = ptrtoint ptr %exposure.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %exposure.i, align 4
  %max_exp.i = getelementptr inbounds %struct.et8ek8_reglist, ptr %best_other.0.best_match.0.i, i32 0, i32 1, i32 15
  %44 = ptrtoint ptr %max_exp.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %max_exp.i, align 4
  %pixel_clock.i = getelementptr inbounds %struct.et8ek8_reglist, ptr %best_other.0.best_match.0.i, i32 0, i32 1, i32 12
  %46 = ptrtoint ptr %pixel_clock.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pixel_clock.i, align 4
  %sub.i22 = add i32 %47, 255
  %shr.i = lshr i32 %sub.i22, 8
  %width.i = getelementptr inbounds %struct.et8ek8_reglist, ptr %best_other.0.best_match.0.i, i32 0, i32 1, i32 6
  %48 = ptrtoint ptr %width.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %width.i, align 4
  %conv.i23 = zext i16 %49 to i32
  %50 = ptrtoint ptr %window_width.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %window_width.i, align 4
  %conv3.i = zext i16 %51 to i32
  %add2.i = add nsw i32 %conv.i23, -1
  %sub4.i = add nsw i32 %add2.i, %shr.i
  %mul.i25 = mul i32 %sub4.i, %conv3.i
  %div.i = udiv i32 %mul.i25, %conv.i23
  %conv8.i = zext i32 %45 to i64
  %call.i = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %43, i64 noundef 1, i64 noundef %conv8.i, i64 noundef 1, i64 noundef %conv8.i) #9
  %pixel_rate11.i = getelementptr inbounds %struct.et8ek8_sensor, ptr %subdev, i32 0, i32 10
  %52 = ptrtoint ptr %pixel_rate11.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pixel_rate11.i, align 4
  %shl.i = shl i32 %div.i, 8
  %conv12.i = zext i32 %shl.i to i64
  %call13.i = tail call i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef %53, i64 noundef %conv12.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %et8ek8_reglist_find_mode_fmt.exit.cleanup_crit_edge, %__et8ek8_get_pad_format.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %__et8ek8_get_pad_format.exit.cleanup_crit_edge ], [ 0, %if.then6 ], [ 0, %et8ek8_reglist_find_mode_fmt.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @et8ek8_registered(ptr noundef %subdev) #3 align 64 {
entry:
  %msg.i.i159.i = alloca %struct.i2c_msg, align 4
  %data.i.i160.i = alloca [6 x i8], align 1
  %msg.i92.i.i = alloca %struct.i2c_msg, align 4
  %data.i93.i.i = alloca [4 x i8], align 1
  %msg.i.i138.i = alloca %struct.i2c_msg, align 4
  %data.i.i139.i = alloca [6 x i8], align 1
  %buffer.i.i = alloca [8 x i8], align 8
  %msg.i140.i = alloca %struct.i2c_msg, align 4
  %msg.i.i.i = alloca %struct.i2c_msg, align 4
  %data.i.i.i = alloca [6 x i8], align 1
  %msg.i114.i = alloca %struct.i2c_msg, align 4
  %data.i115.i = alloca [4 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %data.i.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @et8ek8_registered.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@et8ek8_registered, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !199

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @et8ek8_registered.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.43) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev5 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call6 = tail call i32 @device_create_file(ptr noundef %dev5, ptr noundef nonnull @dev_attr_priv_mem) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end13, label %do.end11

do.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.44) #12
  br label %cleanup

if.end13:                                         ; preds = %do.end
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %call1.i = tail call fastcc i32 @et8ek8_power_on(ptr noundef %subdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.48) #12
  br label %err_file

if.end.i:                                         ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #9
  %4 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 196607, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i.i) #9
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %6 = getelementptr inbounds i8, ptr %data.i.i, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 -1, ptr %6, align 1
  %8 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.if.end6.thread.i_crit_edge, label %if.end6.i.i

if.end.i.if.end6.thread.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.thread.i

if.end6.i.i:                                      ; preds = %if.end.i
  %10 = getelementptr inbounds [4 x i8], ptr %data.i.i, i32 0, i32 1
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %addr.i.i, align 2
  %13 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %data.i.i, ptr %buf.i.i, align 4
  %16 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 18, ptr %data.i.i, align 1
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %10, align 1
  %call.i.i = call i32 @i2c_transfer(ptr noundef nonnull %9, ptr noundef nonnull %msg.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp14.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp14.i.i, label %if.end6.i.i.do.end.i.i_crit_edge, label %if.end17.i.i

if.end6.i.i.do.end.i.i_crit_edge:                 ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

if.end17.i.i:                                     ; preds = %if.end6.i.i
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %4, align 4
  %19 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %flags.i.i, align 2
  %20 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter.i.i, align 8
  %call21.i.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i)
  %cmp22.i.i = icmp slt i32 %call21.i.i, 0
  br i1 %cmp22.i.i, label %if.end17.i.i.do.end.i.i_crit_edge, label %if.then4.i

if.end17.i.i.do.end.i.i_crit_edge:                ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end17.i.i.do.end.i.i_crit_edge, %if.end6.i.i.do.end.i.i_crit_edge
  %r.0.i.i = phi i32 [ %call.i.i, %if.end6.i.i.do.end.i.i_crit_edge ], [ %call21.i.i, %if.end17.i.i.do.end.i.i_crit_edge ]
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.35, i32 noundef 4608, i32 noundef %r.0.i.i) #12
  br label %if.end6.thread.i

if.end6.thread.i:                                 ; preds = %do.end.i.i, %if.end.i.if.end6.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -19, %if.end.i.if.end6.thread.i_crit_edge ], [ %r.0.i.i, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #9
  br label %do.end11.i

if.then4.i:                                       ; preds = %if.end17.i.i
  %22 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %data.i.i, align 1
  %conv31.i.i = zext i8 %23 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i114.i) #9
  %24 = getelementptr inbounds i8, ptr %msg.i114.i, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 196607, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i115.i) #9
  %26 = getelementptr inbounds i8, ptr %data.i115.i, i32 2
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 -1, ptr %26, align 1
  %28 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adapter.i.i, align 8
  %tobool.not.i117.i = icmp eq ptr %29, null
  br i1 %tobool.not.i117.i, label %if.then4.i.if.end6.thread188.i_crit_edge, label %if.end6.i124.i

if.then4.i.if.end6.thread188.i_crit_edge:         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.thread188.i

if.end6.i124.i:                                   ; preds = %if.then4.i
  %30 = getelementptr inbounds [4 x i8], ptr %data.i115.i, i32 0, i32 1
  %31 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %addr.i.i, align 2
  %33 = ptrtoint ptr %msg.i114.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %msg.i114.i, align 4
  %flags.i119.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i114.i, i32 0, i32 1
  %34 = ptrtoint ptr %flags.i119.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %flags.i119.i, align 2
  %buf.i121.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i114.i, i32 0, i32 3
  %35 = ptrtoint ptr %buf.i121.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %data.i115.i, ptr %buf.i121.i, align 4
  %36 = ptrtoint ptr %data.i115.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 18, ptr %data.i115.i, align 1
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %30, align 1
  %call.i122.i = call i32 @i2c_transfer(ptr noundef nonnull %29, ptr noundef nonnull %msg.i114.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122.i)
  %cmp14.i123.i = icmp slt i32 %call.i122.i, 0
  br i1 %cmp14.i123.i, label %if.end6.i124.i.do.end.i132.i_crit_edge, label %if.end17.i127.i

if.end6.i124.i.do.end.i132.i_crit_edge:           ; preds = %if.end6.i124.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i132.i

if.end17.i127.i:                                  ; preds = %if.end6.i124.i
  %38 = ptrtoint ptr %24 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %24, align 4
  %39 = ptrtoint ptr %flags.i119.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 1, ptr %flags.i119.i, align 2
  %40 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %adapter.i.i, align 8
  %call21.i125.i = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %msg.i114.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i125.i)
  %cmp22.i126.i = icmp slt i32 %call21.i125.i, 0
  br i1 %cmp22.i126.i, label %if.end17.i127.i.do.end.i132.i_crit_edge, label %if.end13.i

if.end17.i127.i.do.end.i132.i_crit_edge:          ; preds = %if.end17.i127.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i132.i

do.end.i132.i:                                    ; preds = %if.end17.i127.i.do.end.i132.i_crit_edge, %if.end6.i124.i.do.end.i132.i_crit_edge
  %r.0.i130.i = phi i32 [ %call.i122.i, %if.end6.i124.i.do.end.i132.i_crit_edge ], [ %call21.i125.i, %if.end17.i127.i.do.end.i132.i_crit_edge ]
  %dev.i131.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i131.i, ptr noundef nonnull @.str.35, i32 noundef 4609, i32 noundef %r.0.i130.i) #12
  br label %if.end6.thread188.i

if.end6.thread188.i:                              ; preds = %do.end.i132.i, %if.then4.i.if.end6.thread188.i_crit_edge
  %retval.0.i133.ph.i = phi i32 [ -19, %if.then4.i.if.end6.thread188.i_crit_edge ], [ %r.0.i130.i, %do.end.i132.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i115.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i114.i) #9
  br label %do.end11.i

do.end11.i:                                       ; preds = %if.end6.thread188.i, %if.end6.thread.i
  %rval.0187.i = phi i32 [ %retval.0.i.ph.i, %if.end6.thread.i ], [ %retval.0.i133.ph.i, %if.end6.thread188.i ]
  %dev12.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i, ptr noundef nonnull @.str.51) #12
  br label %out_poweroff.i

if.end13.i:                                       ; preds = %if.end17.i127.i
  %42 = ptrtoint ptr %data.i115.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %data.i115.i, align 1
  %conv31.i128.i = zext i8 %43 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i115.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i114.i) #9
  %shl.i = shl nuw nsw i32 %conv31.i128.i, 8
  %add.i = or i32 %shl.i, %conv31.i.i
  %conv.i = trunc i32 %add.i to i16
  %version.i = getelementptr inbounds %struct.et8ek8_sensor, ptr %subdev, i32 0, i32 7
  %44 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv.i, ptr %version.i, align 4
  %conv15.off.i = add nsw i32 %add.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv15.off.i)
  %switch.i = icmp ult i32 %conv15.off.i, 2
  br i1 %switch.i, label %if.end13.i.if.end28.i_crit_edge, label %do.end24.i

if.end13.i.if.end28.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

do.end24.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev25.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev25.i, ptr noundef nonnull @.str.54, i32 noundef %add.i) #12
  br label %if.end28.i

if.end28.i:                                       ; preds = %do.end24.i, %if.end13.i.if.end28.i_crit_edge
  %call29.i = call fastcc i32 @et8ek8_reglist_import(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end36.i, label %do.end34.i

do.end34.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev35.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev35.i, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.2) #12
  br label %out_poweroff.i

if.end36.i:                                       ; preds = %if.end28.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.et8ek8_meta_reglist, ptr @meta_reglist, i32 1, i32 0, i32 0) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.et8ek8_meta_reglist, ptr @meta_reglist, i32 1, i32 0, i32 0), align 4
  %tobool.not1.i.i = icmp eq ptr %45, null
  br i1 %tobool.not1.i.i, label %if.end36.i.do.end43.i_crit_edge, label %if.end36.i.while.body.i.i_crit_edge

if.end36.i.while.body.i.i_crit_edge:              ; preds = %if.end36.i
  br label %while.body.i.i

if.end36.i.do.end43.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end43.i

while.cond.i.i:                                   ; preds = %while.body.i.i
  %incdec.ptr.i.i = getelementptr ptr, ptr %next.02.i.i, i32 1
  %46 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %incdec.ptr.i.i, align 4
  %tobool.not.i135.i = icmp eq ptr %47, null
  br i1 %tobool.not.i135.i, label %while.cond.i.i.do.end43.i_crit_edge, label %while.cond.i.i.while.body.i.i_crit_edge

while.cond.i.i.while.body.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

while.cond.i.i.do.end43.i_crit_edge:              ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end43.i

while.body.i.i:                                   ; preds = %while.cond.i.i.while.body.i.i_crit_edge, %if.end36.i.while.body.i.i_crit_edge
  %48 = phi ptr [ %47, %while.cond.i.i.while.body.i.i_crit_edge ], [ %45, %if.end36.i.while.body.i.i_crit_edge ]
  %next.02.i.i = phi ptr [ %incdec.ptr.i.i, %while.cond.i.i.while.body.i.i_crit_edge ], [ getelementptr inbounds (%struct.et8ek8_meta_reglist, ptr @meta_reglist, i32 1, i32 0, i32 0), %if.end36.i.while.body.i.i_crit_edge ]
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %50)
  %cmp.i.i = icmp eq i32 %50, 10
  br i1 %cmp.i.i, label %while.body.i.i.preheader.i, label %while.cond.i.i

do.end43.i:                                       ; preds = %while.cond.i.i.do.end43.i_crit_edge, %if.end36.i.do.end43.i_crit_edge
  %current_reglist193.i = getelementptr inbounds %struct.et8ek8_sensor, ptr %subdev, i32 0, i32 11
  %51 = ptrtoint ptr %current_reglist193.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %current_reglist193.i, align 4
  %dev44.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev44.i, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.2) #12
  br label %out_poweroff.i

while.body.i.i.preheader.i:                       ; preds = %while.body.i.i
  %current_reglist.i = getelementptr inbounds %struct.et8ek8_sensor, ptr %subdev, i32 0, i32 11
  %52 = ptrtoint ptr %current_reglist.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %48, ptr %current_reglist.i, align 4
  %format.i = getelementptr inbounds %struct.et8ek8_sensor, ptr %subdev, i32 0, i32 2
  %window_width.i.i = getelementptr inbounds %struct.et8ek8_reglist, ptr %48, i32 0, i32 1, i32 10
  %53 = ptrtoint ptr %window_width.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %window_width.i.i, align 4
  %conv.i.i = zext i16 %54 to i32
  %55 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv.i.i, ptr %format.i, align 4
  %window_height.i.i = getelementptr inbounds %struct.et8ek8_reglist, ptr %48, i32 0, i32 1, i32 11
  %56 = ptrtoint ptr %window_height.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %window_height.i.i, align 2
  %conv2.i.i = zext i16 %57 to i32
  %height.i.i = getelementptr inbounds %struct.et8ek8_sensor, ptr %subdev, i32 0, i32 2, i32 1
  %58 = ptrtoint ptr %height.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv2.i.i, ptr %height.i.i, align 4
  %bus_format.i.i = getelementptr inbounds %struct.et8ek8_reglist, ptr %48, i32 0, i32 1, i32 16
  %59 = ptrtoint ptr %bus_format.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bus_format.i.i, align 4
  %code.i.i = getelementptr inbounds %struct.et8ek8_sensor, ptr %subdev, i32 0, i32 2, i32 2
  %61 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %code.i.i, align 4
  br label %while.body.i.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i.i.i
  %incdec.ptr.i.i.i = getelementptr ptr, ptr %next.02.i.i.i, i32 1
  %62 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %incdec.ptr.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %63, null
  br i1 %tobool.not.i.i.i, label %while.cond.i.i.i.do.end52.i_crit_edge, label %while.cond.i.i.i.while.body.i.i.i_crit_edge

while.cond.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i.i

while.cond.i.i.i.do.end52.i_crit_edge:            ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end52.i

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i.while.body.i.i.i_crit_edge, %while.body.i.i.preheader.i
  %64 = phi ptr [ %63, %while.cond.i.i.i.while.body.i.i.i_crit_edge ], [ %45, %while.body.i.i.preheader.i ]
  %next.02.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %while.cond.i.i.i.while.body.i.i.i_crit_edge ], [ getelementptr inbounds (%struct.et8ek8_meta_reglist, ptr @meta_reglist, i32 1, i32 0, i32 0), %while.body.i.i.preheader.i ]
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp.i.i.i = icmp eq i32 %66, 1
  br i1 %cmp.i.i.i, label %et8ek8_i2c_reglist_find_write.exit.i, label %while.cond.i.i.i

et8ek8_i2c_reglist_find_write.exit.i:             ; preds = %while.body.i.i.i
  %regs.i.i = getelementptr inbounds %struct.et8ek8_reglist, ptr %64, i32 0, i32 2
  %call1.i.i = call fastcc i32 @et8ek8_i2c_write_regs(ptr noundef %3, ptr noundef %regs.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool48.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool48.not.i, label %if.end54.i, label %et8ek8_i2c_reglist_find_write.exit.i.do.end52.i_crit_edge

et8ek8_i2c_reglist_find_write.exit.i.do.end52.i_crit_edge: ; preds = %et8ek8_i2c_reglist_find_write.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end52.i

do.end52.i:                                       ; preds = %et8ek8_i2c_reglist_find_write.exit.i.do.end52.i_crit_edge, %while.cond.i.i.i.do.end52.i_crit_edge
  %retval.0.i136197.i = phi i32 [ %call1.i.i, %et8ek8_i2c_reglist_find_write.exit.i.do.end52.i_crit_edge ], [ -22, %while.cond.i.i.i.do.end52.i_crit_edge ]
  %dev53.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev53.i, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.2) #12
  br label %out_poweroff.i

if.end54.i:                                       ; preds = %et8ek8_i2c_reglist_find_write.exit.i
  %67 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #9
  %69 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 262143, ptr %69, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i.i.i) #9
  %adapter.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %68, i32 0, i32 3
  %71 = getelementptr inbounds i8, ptr %data.i.i.i, i32 2
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_storeN_noabort(i32 %72, i32 4)
  store i32 -1325400065, ptr %71, align 1
  %73 = ptrtoint ptr %adapter.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %adapter.i.i.i, align 8
  %tobool.not.i.i137.i = icmp eq ptr %74, null
  br i1 %tobool.not.i.i137.i, label %if.end54.i.et8ek8_stream_on.exit.thread.i_crit_edge, label %if.end.i.i.i

if.end54.i.et8ek8_stream_on.exit.thread.i_crit_edge: ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %et8ek8_stream_on.exit.thread.i

if.end.i.i.i:                                     ; preds = %if.end54.i
  %75 = getelementptr inbounds [6 x i8], ptr %data.i.i.i, i32 0, i32 1
  %addr.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %68, i32 0, i32 1
  %76 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %addr.i.i.i.i, align 2
  %78 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %msg.i.i.i, align 4
  %flags.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %79 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 0, ptr %flags.i.i.i.i, align 2
  %buf4.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %80 = ptrtoint ptr %buf4.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %data.i.i.i, ptr %buf4.i.i.i.i, align 4
  %81 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 18, ptr %data.i.i.i, align 1
  %82 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 82, ptr %75, align 1
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef nonnull %74, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp8.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp8.i.i.i, label %do.end.i.i.i, label %if.end58.i

do.end.i.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %68, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.37, i32 noundef 176, i32 noundef 4690, i32 noundef %call.i.i.i) #12
  br label %et8ek8_stream_on.exit.thread.i

et8ek8_stream_on.exit.thread.i:                   ; preds = %do.end.i.i.i, %if.end54.i.et8ek8_stream_on.exit.thread.i_crit_edge
  %retval.0.i.i.ph.i = phi i32 [ -19, %if.end54.i.et8ek8_stream_on.exit.thread.i_crit_edge ], [ %call.i.i.i, %do.end.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #9
  br label %out_poweroff.i

if.end58.i:                                       ; preds = %if.end.i.i.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #9
  %83 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev_priv.i, align 4
  %priv_mem.i.i = getelementptr inbounds %struct.et8ek8_sensor, ptr %subdev, i32 0, i32 12
  %85 = getelementptr inbounds [8 x i8], ptr %buffer.i.i, i32 0, i32 1
  %86 = getelementptr inbounds i8, ptr %msg.i.i138.i, i32 4
  %adapter.i.i142.i = getelementptr inbounds %struct.i2c_client, ptr %84, i32 0, i32 3
  %87 = getelementptr inbounds i8, ptr %data.i.i139.i, i32 2
  %88 = getelementptr inbounds [6 x i8], ptr %data.i.i139.i, i32 0, i32 1
  %addr.i.i.i143.i = getelementptr inbounds %struct.i2c_client, ptr %84, i32 0, i32 1
  %flags.i.i.i144.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i138.i, i32 0, i32 1
  %buf4.i.i.i145.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i138.i, i32 0, i32 3
  %89 = getelementptr inbounds i8, ptr %msg.i92.i.i, i32 4
  %90 = getelementptr inbounds i8, ptr %data.i93.i.i, i32 2
  %91 = getelementptr inbounds [4 x i8], ptr %data.i93.i.i, i32 0, i32 1
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i92.i.i, i32 0, i32 1
  %buf.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i92.i.i, i32 0, i32 3
  %flags.i146.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i140.i, i32 0, i32 1
  %len.i147.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i140.i, i32 0, i32 2
  %buf.i148.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i140.i, i32 0, i32 3
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i.do.body.i.i_crit_edge, %if.end58.i
  %length.0.i.i = phi i32 [ 128, %if.end58.i ], [ %sub42.i.i, %do.cond.i.i.do.body.i.i_crit_edge ]
  %offset.0.i.i = phi i32 [ 0, %if.end58.i ], [ %add43.i.i, %do.cond.i.i.do.body.i.i_crit_edge ]
  %ptr.0.i.i = phi ptr [ %priv_mem.i.i, %if.end58.i ], [ %add.ptr44.i.i, %do.cond.i.i.do.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buffer.i.i) #9
  %92 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 -1, ptr %buffer.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i140.i) #9
  %93 = call ptr @memset(ptr %msg.i140.i, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i138.i) #9
  %94 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 262143, ptr %86, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i.i139.i) #9
  %95 = ptrtoint ptr %87 to i32
  call void @__asan_storeN_noabort(i32 %95, i32 4)
  store i32 -1, ptr %87, align 1
  %96 = ptrtoint ptr %adapter.i.i142.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %adapter.i.i142.i, align 8
  %tobool.not.i.i149.i = icmp eq ptr %97, null
  br i1 %tobool.not.i.i149.i, label %do.body.i.i.et8ek8_i2c_write_reg.exit.thread.i.i_crit_edge, label %if.end.i.i152.i

do.body.i.i.et8ek8_i2c_write_reg.exit.thread.i.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %et8ek8_i2c_write_reg.exit.thread.i.i

if.end.i.i152.i:                                  ; preds = %do.body.i.i
  %shr.i.i = lshr i32 %offset.0.i.i, 3
  %or.i.i = or i32 %shr.i.i, 224
  %98 = ptrtoint ptr %addr.i.i.i143.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %addr.i.i.i143.i, align 2
  %100 = ptrtoint ptr %msg.i.i138.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %99, ptr %msg.i.i138.i, align 4
  %101 = ptrtoint ptr %flags.i.i.i144.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 0, ptr %flags.i.i.i144.i, align 2
  %102 = ptrtoint ptr %buf4.i.i.i145.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %data.i.i139.i, ptr %buf4.i.i.i145.i, align 4
  %103 = ptrtoint ptr %data.i.i139.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %data.i.i139.i, align 1
  %104 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 1, ptr %88, align 1
  %conv14.i.i.i.i = trunc i32 %or.i.i to i8
  %105 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv14.i.i.i.i, ptr %87, align 1
  %call.i.i150.i = call i32 @i2c_transfer(ptr noundef nonnull %97, ptr noundef nonnull %msg.i.i138.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i150.i)
  %cmp8.i.i151.i = icmp slt i32 %call.i.i150.i, 0
  br i1 %cmp8.i.i151.i, label %do.end.i.i154.i, label %et8ek8_i2c_write_reg.exit.i.i

do.end.i.i154.i:                                  ; preds = %if.end.i.i152.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i153.i = getelementptr inbounds %struct.i2c_client, ptr %84, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i153.i, ptr noundef nonnull @.str.37, i32 noundef %or.i.i, i32 noundef 1, i32 noundef %call.i.i150.i) #12
  br label %et8ek8_i2c_write_reg.exit.thread.i.i

et8ek8_i2c_write_reg.exit.thread.i.i:             ; preds = %do.end.i.i154.i, %do.body.i.i.et8ek8_i2c_write_reg.exit.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i.i139.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i138.i) #9
  br label %do.end64.i

et8ek8_i2c_write_reg.exit.i.i:                    ; preds = %if.end.i.i152.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i.i139.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i138.i) #9
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %et8ek8_i2c_write_reg.exit.i.i
  %i.0138.i.i = phi i32 [ 0, %et8ek8_i2c_write_reg.exit.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i92.i.i) #9
  %106 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 196607, ptr %89, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i93.i.i) #9
  %107 = ptrtoint ptr %90 to i32
  call void @__asan_storeN_noabort(i32 %107, i32 2)
  store i16 -1, ptr %90, align 1
  %108 = ptrtoint ptr %adapter.i.i142.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %adapter.i.i142.i, align 8
  %tobool.not.i95.i.i = icmp eq ptr %109, null
  br i1 %tobool.not.i95.i.i, label %for.body.i.i.cleanup.thread.i.i_crit_edge, label %if.end6.i.i.i

for.body.i.i.cleanup.thread.i.i_crit_edge:        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i.i

if.end6.i.i.i:                                    ; preds = %for.body.i.i
  %110 = ptrtoint ptr %addr.i.i.i143.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %addr.i.i.i143.i, align 2
  %112 = ptrtoint ptr %msg.i92.i.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %111, ptr %msg.i92.i.i, align 4
  %113 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 0, ptr %flags.i.i.i, align 2
  %114 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %data.i93.i.i, ptr %buf.i.i.i, align 4
  %115 = ptrtoint ptr %data.i93.i.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %data.i93.i.i, align 1
  %116 = ptrtoint ptr %91 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 3, ptr %91, align 1
  %call.i96.i.i = call i32 @i2c_transfer(ptr noundef nonnull %109, ptr noundef nonnull %msg.i92.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96.i.i)
  %cmp14.i.i.i = icmp slt i32 %call.i96.i.i, 0
  br i1 %cmp14.i.i.i, label %if.end6.i.i.i.do.end.i98.i.i_crit_edge, label %if.end17.i.i.i

if.end6.i.i.i.do.end.i98.i.i_crit_edge:           ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i98.i.i

if.end17.i.i.i:                                   ; preds = %if.end6.i.i.i
  %117 = ptrtoint ptr %89 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 1, ptr %89, align 4
  %118 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 1, ptr %flags.i.i.i, align 2
  %119 = ptrtoint ptr %adapter.i.i142.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %adapter.i.i142.i, align 8
  %call21.i.i.i = call i32 @i2c_transfer(ptr noundef %120, ptr noundef nonnull %msg.i92.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i.i)
  %cmp22.i.i.i = icmp slt i32 %call21.i.i.i, 0
  br i1 %cmp22.i.i.i, label %if.end17.i.i.i.do.end.i98.i.i_crit_edge, label %if.end6.i156.i

if.end17.i.i.i.do.end.i98.i.i_crit_edge:          ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i98.i.i

do.end.i98.i.i:                                   ; preds = %if.end17.i.i.i.do.end.i98.i.i_crit_edge, %if.end6.i.i.i.do.end.i98.i.i_crit_edge
  %r.0.i.i.i = phi i32 [ %call.i96.i.i, %if.end6.i.i.i.do.end.i98.i.i_crit_edge ], [ %call21.i.i.i, %if.end17.i.i.i.do.end.i98.i.i_crit_edge ]
  %dev.i97.i.i = getelementptr inbounds %struct.i2c_client, ptr %84, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i97.i.i, ptr noundef nonnull @.str.35, i32 noundef 3, i32 noundef %r.0.i.i.i) #12
  br label %cleanup.thread.i.i

cleanup.thread.i.i:                               ; preds = %do.end.i98.i.i, %for.body.i.i.cleanup.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i93.i.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i92.i.i) #9
  br label %do.end64.i

if.end6.i156.i:                                   ; preds = %if.end17.i.i.i
  %121 = ptrtoint ptr %data.i93.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %data.i93.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i93.i.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i92.i.i) #9
  %123 = and i8 %122, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool.not.i155.i = icmp eq i8 %123, 0
  br i1 %tobool.not.i155.i, label %if.end11.i.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end6.i156.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #9
  %inc.i.i = add nuw nsw i32 %i.0138.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 1000
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.end64.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.do.end64.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end64.i

if.end11.i.i:                                     ; preds = %if.end6.i156.i
  %and12.i.i = and i32 %offset.0.i.i, 7
  %add.i.i = add i32 %and12.i.i, %length.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.i.i)
  %cmp13.i.i = icmp ugt i32 %add.i.i, 8
  %sub.i.i = sub nuw nsw i32 8, %and12.i.i
  %cond.i.i = select i1 %cmp13.i.i, i32 %sub.i.i, i32 %length.0.i.i
  %124 = ptrtoint ptr %addr.i.i.i143.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %addr.i.i.i143.i, align 2
  %126 = ptrtoint ptr %msg.i140.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %125, ptr %msg.i140.i, align 4
  %127 = ptrtoint ptr %flags.i146.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 0, ptr %flags.i146.i, align 2
  %128 = ptrtoint ptr %len.i147.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 2, ptr %len.i147.i, align 4
  %129 = ptrtoint ptr %buf.i148.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %buffer.i.i, ptr %buf.i148.i, align 4
  %130 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 0, ptr %buffer.i.i, align 8
  %131 = trunc i32 %and12.i.i to i8
  %conv19.i.i = or i8 %131, 8
  %132 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %conv19.i.i, ptr %85, align 1
  %133 = ptrtoint ptr %adapter.i.i142.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %adapter.i.i142.i, align 8
  %call21.i157.i = call i32 @i2c_transfer(ptr noundef %134, ptr noundef nonnull %msg.i140.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i157.i)
  %cmp22.i158.i = icmp slt i32 %call21.i157.i, 0
  br i1 %cmp22.i158.i, label %if.end11.i.i.do.end64.i_crit_edge, label %while.body.preheader.i.i

if.end11.i.i.do.end64.i_crit_edge:                ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end64.i

while.body.preheader.i.i:                         ; preds = %if.end11.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %135 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %135(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %136 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %136(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %137 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %137(i32 noundef 214748000) #9
  %138 = ptrtoint ptr %addr.i.i.i143.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %addr.i.i.i143.i, align 2
  %140 = ptrtoint ptr %msg.i140.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %139, ptr %msg.i140.i, align 4
  %conv29.i.i = trunc i32 %cond.i.i to i16
  %141 = ptrtoint ptr %len.i147.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %conv29.i.i, ptr %len.i147.i, align 4
  %142 = ptrtoint ptr %flags.i146.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 1, ptr %flags.i146.i, align 2
  %143 = ptrtoint ptr %buf.i148.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %buffer.i.i, ptr %buf.i148.i, align 4
  %144 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 0, ptr %buffer.i.i, align 8
  %145 = ptrtoint ptr %adapter.i.i142.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %adapter.i.i142.i, align 8
  %call36.i.i = call i32 @i2c_transfer(ptr noundef %146, ptr noundef nonnull %msg.i140.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i.i)
  %cmp37.i.i = icmp slt i32 %call36.i.i, 0
  br i1 %cmp37.i.i, label %while.body.preheader.i.i.do.end64.i_crit_edge, label %do.cond.i.i

while.body.preheader.i.i.do.end64.i_crit_edge:    ; preds = %while.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end64.i

do.cond.i.i:                                      ; preds = %while.body.preheader.i.i
  %147 = call ptr @memcpy(ptr %ptr.0.i.i, ptr %buffer.i.i, i32 %cond.i.i)
  %sub42.i.i = sub i32 %length.0.i.i, %cond.i.i
  %add43.i.i = add i32 %cond.i.i, %offset.0.i.i
  %add.ptr44.i.i = getelementptr i8, ptr %ptr.0.i.i, i32 %cond.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i140.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buffer.i.i) #9
  %cmp52.not.i.i = icmp eq i32 %sub42.i.i, 0
  br i1 %cmp52.not.i.i, label %do.cond.i.i.if.end66.i_crit_edge, label %do.cond.i.i.do.body.i.i_crit_edge

do.cond.i.i.do.body.i.i_crit_edge:                ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

do.cond.i.i.if.end66.i_crit_edge:                 ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66.i

do.end64.i:                                       ; preds = %while.body.preheader.i.i.do.end64.i_crit_edge, %if.end11.i.i.do.end64.i_crit_edge, %for.inc.i.i.do.end64.i_crit_edge, %cleanup.thread.i.i, %et8ek8_i2c_write_reg.exit.thread.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i140.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buffer.i.i) #9
  %dev65.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev65.i, ptr noundef nonnull @.str.67) #12
  br label %if.end66.i

if.end66.i:                                       ; preds = %do.end64.i, %do.cond.i.i.if.end66.i_crit_edge
  %148 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i159.i) #9
  %150 = getelementptr inbounds i8, ptr %msg.i.i159.i, i32 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 262143, ptr %150, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i.i160.i) #9
  %adapter.i.i162.i = getelementptr inbounds %struct.i2c_client, ptr %149, i32 0, i32 3
  %152 = getelementptr inbounds i8, ptr %data.i.i160.i, i32 2
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_storeN_noabort(i32 %153, i32 4)
  store i32 822083583, ptr %152, align 1
  %154 = ptrtoint ptr %adapter.i.i162.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %adapter.i.i162.i, align 8
  %tobool.not.i.i163.i = icmp eq ptr %155, null
  br i1 %tobool.not.i.i163.i, label %if.end66.i.et8ek8_stream_off.exit.thread.i_crit_edge, label %if.end.i.i169.i

if.end66.i.et8ek8_stream_off.exit.thread.i_crit_edge: ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %et8ek8_stream_off.exit.thread.i

if.end.i.i169.i:                                  ; preds = %if.end66.i
  %156 = getelementptr inbounds [6 x i8], ptr %data.i.i160.i, i32 0, i32 1
  %addr.i.i.i164.i = getelementptr inbounds %struct.i2c_client, ptr %149, i32 0, i32 1
  %157 = ptrtoint ptr %addr.i.i.i164.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %addr.i.i.i164.i, align 2
  %159 = ptrtoint ptr %msg.i.i159.i to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %158, ptr %msg.i.i159.i, align 4
  %flags.i.i.i165.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i159.i, i32 0, i32 1
  %160 = ptrtoint ptr %flags.i.i.i165.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 0, ptr %flags.i.i.i165.i, align 2
  %buf4.i.i.i166.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i159.i, i32 0, i32 3
  %161 = ptrtoint ptr %buf4.i.i.i166.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %data.i.i160.i, ptr %buf4.i.i.i166.i, align 4
  %162 = ptrtoint ptr %data.i.i160.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 18, ptr %data.i.i160.i, align 1
  %163 = ptrtoint ptr %156 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 82, ptr %156, align 1
  %call.i.i167.i = call i32 @i2c_transfer(ptr noundef nonnull %155, ptr noundef nonnull %msg.i.i159.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i167.i)
  %cmp8.i.i168.i = icmp slt i32 %call.i.i167.i, 0
  br i1 %cmp8.i.i168.i, label %do.end.i.i171.i, label %if.end70.i

do.end.i.i171.i:                                  ; preds = %if.end.i.i169.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i170.i = getelementptr inbounds %struct.i2c_client, ptr %149, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i170.i, ptr noundef nonnull @.str.37, i32 noundef 48, i32 noundef 4690, i32 noundef %call.i.i167.i) #12
  br label %et8ek8_stream_off.exit.thread.i

et8ek8_stream_off.exit.thread.i:                  ; preds = %do.end.i.i171.i, %if.end66.i.et8ek8_stream_off.exit.thread.i_crit_edge
  %retval.0.i.i172.ph.i = phi i32 [ -19, %if.end66.i.et8ek8_stream_off.exit.thread.i_crit_edge ], [ %call.i.i167.i, %do.end.i.i171.i ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i.i160.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i159.i) #9
  br label %out_poweroff.i

if.end70.i:                                       ; preds = %if.end.i.i169.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i.i160.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i159.i) #9
  %reset.i.i = getelementptr inbounds %struct.et8ek8_sensor, ptr %subdev, i32 0, i32 3
  %164 = ptrtoint ptr %reset.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %reset.i.i, align 4
  call void @gpiod_set_value(ptr noundef %165, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %166 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %166(i32 noundef 214748) #9
  %ext_clk.i.i = getelementptr inbounds %struct.et8ek8_sensor, ptr %subdev, i32 0, i32 5
  %167 = ptrtoint ptr %ext_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %ext_clk.i.i, align 4
  call void @clk_disable(ptr noundef %168) #9
  call void @clk_unprepare(ptr noundef %168) #9
  %vana.i.i = getelementptr inbounds %struct.et8ek8_sensor, ptr %subdev, i32 0, i32 4
  %169 = ptrtoint ptr %vana.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %vana.i.i, align 4
  %call.i174.i = call i32 @regulator_disable(ptr noundef %170) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i174.i)
  %tobool72.not.i = icmp eq i32 %call.i174.i, 0
  br i1 %tobool72.not.i, label %if.end17, label %if.end70.i.out_poweroff.i_crit_edge

if.end70.i.out_poweroff.i_crit_edge:              ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_poweroff.i

out_poweroff.i:                                   ; preds = %if.end70.i.out_poweroff.i_crit_edge, %et8ek8_stream_off.exit.thread.i, %et8ek8_stream_on.exit.thread.i, %do.end52.i, %do.end43.i, %do.end34.i, %do.end11.i
  %rval.1.i = phi i32 [ %rval.0187.i, %do.end11.i ], [ %call29.i, %do.end34.i ], [ %retval.0.i136197.i, %do.end52.i ], [ %call.i174.i, %if.end70.i.out_poweroff.i_crit_edge ], [ -19, %do.end43.i ], [ %retval.0.i.i.ph.i, %et8ek8_stream_on.exit.thread.i ], [ %retval.0.i.i172.ph.i, %et8ek8_stream_off.exit.thread.i ]
  %reset.i175.i = getelementptr inbounds %struct.et8ek8_sensor, ptr %subdev, i32 0, i32 3
  %171 = ptrtoint ptr %reset.i175.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %reset.i175.i, align 4
  call void @gpiod_set_value(ptr noundef %172, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %173 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %173(i32 noundef 214748) #9
  %ext_clk.i176.i = getelementptr inbounds %struct.et8ek8_sensor, ptr %subdev, i32 0, i32 5
  %174 = ptrtoint ptr %ext_clk.i176.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %ext_clk.i176.i, align 4
  call void @clk_disable(ptr noundef %175) #9
  call void @clk_unprepare(ptr noundef %175) #9
  %vana.i177.i = getelementptr inbounds %struct.et8ek8_sensor, ptr %subdev, i32 0, i32 4
  %176 = ptrtoint ptr %vana.i177.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %vana.i177.i, align 4
  %call.i178.i = call i32 @regulator_disable(ptr noundef %177) #9
  br label %err_file

if.end17:                                         ; preds = %if.end70.i
  %ctrl_handler.i = getelementptr inbounds %struct.et8ek8_sensor, ptr %subdev, i32 0, i32 8
  %call.i = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler.i, i32 noundef 4, ptr noundef nonnull @et8ek8_init_controls._key, ptr noundef nonnull @.str.72) #9
  %call2.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @et8ek8_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 40, i64 noundef 1, i64 noundef 0) #9
  %178 = ptrtoint ptr %current_reglist.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %current_reglist.i, align 4
  %max_exp.i = getelementptr inbounds %struct.et8ek8_reglist, ptr %179, i32 0, i32 1, i32 15
  %180 = ptrtoint ptr %max_exp.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %max_exp.i, align 4
  %conv4.i = zext i32 %181 to i64
  %call7.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @et8ek8_ctrl_ops, i32 noundef 9963793, i64 noundef 1, i64 noundef %conv4.i, i64 noundef 1, i64 noundef %conv4.i) #9
  %exposure.i = getelementptr inbounds %struct.et8ek8_sensor, ptr %subdev, i32 0, i32 9
  %182 = ptrtoint ptr %exposure.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %call7.i, ptr %exposure.i, align 4
  %call9.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @et8ek8_ctrl_ops, i32 noundef 10422530, i64 noundef 1, i64 noundef 2147483647, i64 noundef 1, i64 noundef 1) #9
  %pixel_rate.i = getelementptr inbounds %struct.et8ek8_sensor, ptr %subdev, i32 0, i32 10
  %183 = ptrtoint ptr %pixel_rate.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %call9.i, ptr %pixel_rate.i, align 4
  %call11.i = call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %ctrl_handler.i, ptr noundef nonnull @et8ek8_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 8, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @et8ek8_test_pattern_menu) #9
  %error.i = getelementptr inbounds %struct.et8ek8_sensor, ptr %subdev, i32 0, i32 8, i32 9
  %184 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool.not.i43 = icmp eq i32 %185, 0
  br i1 %tobool.not.i43, label %if.end25, label %do.end23

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.46) #12
  br label %err_file

if.end25:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %ctrl_handler16.i = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 8
  %186 = ptrtoint ptr %ctrl_handler16.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %ctrl_handler.i, ptr %ctrl_handler16.i, align 4
  br label %cleanup

err_file:                                         ; preds = %do.end23, %out_poweroff.i, %do.end.i
  %rval.0 = phi i32 [ %185, %do.end23 ], [ %rval.1.i, %out_poweroff.i ], [ %call1.i, %do.end.i ]
  call void @device_remove_file(ptr noundef %dev5, ptr noundef nonnull @dev_attr_priv_mem) #9
  br label %cleanup

cleanup:                                          ; preds = %err_file, %if.end25, %do.end11
  %retval.0 = phi i32 [ %call6, %do.end11 ], [ %rval.0, %err_file ], [ 0, %if.end25 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @et8ek8_open(ptr noundef %sd, ptr nocapture noundef readonly %fh) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.et8ek8_meta_reglist, ptr @meta_reglist, i32 1, i32 0, i32 0) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.et8ek8_meta_reglist, ptr @meta_reglist, i32 1, i32 0, i32 0), align 4
  %tobool.not1.i = icmp eq ptr %0, null
  br i1 %tobool.not1.i, label %entry.et8ek8_reglist_find_type.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.et8ek8_reglist_find_type.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %et8ek8_reglist_find_type.exit

while.cond.i:                                     ; preds = %while.body.i
  %incdec.ptr.i = getelementptr ptr, ptr %next.02.i, i32 1
  %1 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %while.cond.i.et8ek8_reglist_find_type.exit_crit_edge, label %while.cond.i.while.body.i_crit_edge

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.cond.i.et8ek8_reglist_find_type.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %et8ek8_reglist_find_type.exit

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %3 = phi ptr [ %2, %while.cond.i.while.body.i_crit_edge ], [ %0, %entry.while.body.i_crit_edge ]
  %next.02.i = phi ptr [ %incdec.ptr.i, %while.cond.i.while.body.i_crit_edge ], [ getelementptr inbounds (%struct.et8ek8_meta_reglist, ptr @meta_reglist, i32 1, i32 0, i32 0), %entry.while.body.i_crit_edge ]
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %5)
  %cmp.i = icmp eq i32 %5, 10
  br i1 %cmp.i, label %while.body.i.et8ek8_reglist_find_type.exit_crit_edge, label %while.cond.i

while.body.i.et8ek8_reglist_find_type.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %et8ek8_reglist_find_type.exit

et8ek8_reglist_find_type.exit:                    ; preds = %while.body.i.et8ek8_reglist_find_type.exit_crit_edge, %while.cond.i.et8ek8_reglist_find_type.exit_crit_edge, %entry.et8ek8_reglist_find_type.exit_crit_edge
  %.lcssa.i = phi ptr [ null, %entry.et8ek8_reglist_find_type.exit_crit_edge ], [ %3, %while.body.i.et8ek8_reglist_find_type.exit_crit_edge ], [ null, %while.cond.i.et8ek8_reglist_find_type.exit_crit_edge ]
  %state = getelementptr inbounds %struct.v4l2_subdev_fh, ptr %fh, i32 0, i32 2
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state, align 4
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %8 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp.not.i.i.not = icmp eq i16 %9, 0
  br i1 %cmp.not.i.i.not, label %do.end.i.i, label %et8ek8_reglist_find_type.exit.__et8ek8_get_pad_format.exit_crit_edge, !prof !200

et8ek8_reglist_find_type.exit.__et8ek8_get_pad_format.exit_crit_edge: ; preds = %et8ek8_reglist_find_type.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %__et8ek8_get_pad_format.exit

do.end.i.i:                                       ; preds = %et8ek8_reglist_find_type.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %__et8ek8_get_pad_format.exit

__et8ek8_get_pad_format.exit:                     ; preds = %do.end.i.i, %et8ek8_reglist_find_type.exit.__et8ek8_get_pad_format.exit_crit_edge
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %window_width.i = getelementptr inbounds %struct.et8ek8_reglist, ptr %.lcssa.i, i32 0, i32 1, i32 10
  %12 = ptrtoint ptr %window_width.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %window_width.i, align 4
  %conv.i = zext i16 %13 to i32
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv.i, ptr %11, align 4
  %window_height.i = getelementptr inbounds %struct.et8ek8_reglist, ptr %.lcssa.i, i32 0, i32 1, i32 11
  %15 = ptrtoint ptr %window_height.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %window_height.i, align 2
  %conv2.i = zext i16 %16 to i32
  %height.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %11, i32 0, i32 1
  %17 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv2.i, ptr %height.i, align 4
  %bus_format.i = getelementptr inbounds %struct.et8ek8_reglist, ptr %.lcssa.i, i32 0, i32 1, i32 16
  %18 = ptrtoint ptr %bus_format.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bus_format.i, align 4
  %code.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %11, i32 0, i32 2
  %20 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %code.i, align 4
  %power_lock.i = getelementptr inbounds %struct.et8ek8_sensor, ptr %sd, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %power_lock.i, i32 noundef 0) #9
  %power_count.i = getelementptr inbounds %struct.et8ek8_sensor, ptr %sd, i32 0, i32 14
  %21 = ptrtoint ptr %power_count.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %power_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i4 = icmp eq i32 %22, 0
  br i1 %cmp.i4, label %if.then.i, label %__et8ek8_get_pad_format.exit.if.end8.i_crit_edge

__et8ek8_get_pad_format.exit.if.end8.i_crit_edge: ; preds = %__et8ek8_get_pad_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then.i:                                        ; preds = %__et8ek8_get_pad_format.exit
  %call.i.i = tail call fastcc i32 @et8ek8_power_on(ptr noundef %sd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp6.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp6.i, label %if.then.i.et8ek8_set_power.exit_crit_edge, label %if.then.i.if.end8.i_crit_edge

if.then.i.if.end8.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then.i.et8ek8_set_power.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %et8ek8_set_power.exit

if.end8.i:                                        ; preds = %if.then.i.if.end8.i_crit_edge, %__et8ek8_get_pad_format.exit.if.end8.i_crit_edge
  %ret.0.i = phi i32 [ %call.i.i, %if.then.i.if.end8.i_crit_edge ], [ 0, %__et8ek8_get_pad_format.exit.if.end8.i_crit_edge ]
  %23 = ptrtoint ptr %power_count.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %power_count.i, align 4
  %add.i = add i32 %24, 1
  store i32 %add.i, ptr %power_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp12.i = icmp slt i32 %add.i, 0
  br i1 %cmp12.i, label %do.end.i, label %if.end8.i.et8ek8_set_power.exit_crit_edge, !prof !200

if.end8.i.et8ek8_set_power.exit_crit_edge:        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %et8ek8_set_power.exit

do.end.i:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1317, i32 noundef 9, ptr noundef null) #9
  br label %et8ek8_set_power.exit

et8ek8_set_power.exit:                            ; preds = %do.end.i, %if.end8.i.et8ek8_set_power.exit_crit_edge, %if.then.i.et8ek8_set_power.exit_crit_edge
  %ret.1.i = phi i32 [ %call.i.i, %if.then.i.et8ek8_set_power.exit_crit_edge ], [ %ret.0.i, %do.end.i ], [ %ret.0.i, %if.end8.i.et8ek8_set_power.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %power_lock.i) #9
  ret i32 %ret.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @et8ek8_close(ptr noundef %sd, ptr nocapture noundef readnone %fh) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @et8ek8_set_power(ptr noundef %sd, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @et8ek8_reglist_import(ptr noundef %client) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.69, ptr noundef nonnull @meta_reglist) #12
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %nlists.0 = phi i32 [ 0, %entry ], [ %inc, %while.cond.while.cond_crit_edge ]
  %arrayidx = getelementptr [0 x %union.anon.101], ptr getelementptr inbounds (%struct.et8ek8_meta_reglist, ptr @meta_reglist, i32 1, i32 0, i32 0), i32 0, i32 %nlists.0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  %inc = add i32 %nlists.0, 1
  br i1 %tobool.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nlists.0)
  %tobool1.not = icmp eq i32 %nlists.0, 0
  br i1 %tobool1.not, label %while.end.cleanup_crit_edge, label %if.end

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %while.end
  tail call void @sort(ptr noundef getelementptr inbounds (%struct.et8ek8_meta_reglist, ptr @meta_reglist, i32 1, i32 0, i32 0), i32 noundef %nlists.0, i32 noundef 4, ptr noundef nonnull @et8ek8_reglist_cmp, ptr noundef null) #9
  br label %while.body6

while.body6:                                      ; preds = %do.end25.while.body6_crit_edge, %if.end
  %dec5.in = phi i32 [ %nlists.0, %if.end ], [ %dec5, %do.end25.while.body6_crit_edge ]
  %nlists.14 = phi i32 [ 0, %if.end ], [ %inc26, %do.end25.while.body6_crit_edge ]
  %dec5 = add i32 %dec5.in, -1
  %arrayidx8 = getelementptr [0 x %union.anon.101], ptr getelementptr inbounds (%struct.et8ek8_meta_reglist, ptr @meta_reglist, i32 1, i32 0, i32 0), i32 0, i32 %nlists.14
  %2 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx8, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @et8ek8_reglist_import.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@et8ek8_reglist_import, %if.then13)) #9
          to label %do.end25 [label %if.then13], !srcloc !199

if.then13:                                        ; preds = %while.body6
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %window_width = getelementptr inbounds %struct.et8ek8_reglist, ptr %3, i32 0, i32 1, i32 10
  %6 = ptrtoint ptr %window_width to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %window_width, align 4
  %conv = zext i16 %7 to i32
  %window_height = getelementptr inbounds %struct.et8ek8_reglist, ptr %3, i32 0, i32 1, i32 11
  %8 = ptrtoint ptr %window_height to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %window_height, align 2
  %conv16 = zext i16 %9 to i32
  %bus_format = getelementptr inbounds %struct.et8ek8_reglist, ptr %3, i32 0, i32 1, i32 16
  %10 = ptrtoint ptr %bus_format to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bus_format, align 4
  %timeperframe = getelementptr inbounds %struct.et8ek8_reglist, ptr %3, i32 0, i32 1, i32 14
  %12 = ptrtoint ptr %timeperframe to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %timeperframe, align 4
  %denominator = getelementptr inbounds %struct.et8ek8_reglist, ptr %3, i32 0, i32 1, i32 14, i32 1
  %14 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %denominator, align 4
  %16 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx8, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @et8ek8_reglist_import.__UNIQUE_ID_ddebug296, ptr noundef %dev, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.70, i32 noundef %5, i32 noundef %conv, i32 noundef %conv16, i32 noundef %11, i32 noundef %13, i32 noundef %15, ptr noundef %17) #9
  br label %do.end25

do.end25:                                         ; preds = %if.then13, %while.body6
  %inc26 = add nuw i32 %nlists.14, 1
  %tobool5.not = icmp eq i32 %dec5, 0
  br i1 %tobool5.not, label %do.end25.cleanup_crit_edge, label %do.end25.while.body6_crit_edge

do.end25.while.body6_crit_edge:                   ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body6

do.end25.cleanup_crit_edge:                       ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %do.end25.cleanup_crit_edge, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %while.end.cleanup_crit_edge ], [ 0, %do.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @et8ek8_reglist_cmp(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %a, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %cmp = icmp eq i32 %3, 10
  %4 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %7)
  %cmp2.not = icmp eq i32 %7, 10
  br i1 %cmp, label %land.lhs.true, label %land.lhs.true5

land.lhs.true:                                    ; preds = %entry
  br i1 %cmp2.not, label %land.lhs.true.if.end9_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

land.lhs.true5:                                   ; preds = %entry
  br i1 %cmp2.not, label %land.lhs.true5.cleanup_crit_edge, label %land.lhs.true5.if.end9_crit_edge

land.lhs.true5.if.end9_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true5.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge
  %window_width = getelementptr inbounds %struct.et8ek8_reglist, ptr %1, i32 0, i32 1, i32 10
  %8 = ptrtoint ptr %window_width to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %window_width, align 4
  %10 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b, align 4
  %window_width11 = getelementptr inbounds %struct.et8ek8_reglist, ptr %11, i32 0, i32 1, i32 10
  %12 = ptrtoint ptr %window_width11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %window_width11, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %13)
  %cmp13 = icmp ugt i16 %9, %13
  br i1 %cmp13, label %if.end9.cleanup_crit_edge, label %if.end16

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %13)
  %cmp23 = icmp ult i16 %9, %13
  br i1 %cmp23, label %if.end16.cleanup_crit_edge, label %if.end26

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %if.end16
  %window_height = getelementptr inbounds %struct.et8ek8_reglist, ptr %1, i32 0, i32 1, i32 11
  %14 = ptrtoint ptr %window_height to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %window_height, align 2
  %window_height30 = getelementptr inbounds %struct.et8ek8_reglist, ptr %11, i32 0, i32 1, i32 11
  %16 = ptrtoint ptr %window_height30 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %window_height30, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %17)
  %cmp32 = icmp ugt i16 %15, %17
  br i1 %cmp32, label %if.end26.cleanup_crit_edge, label %if.end35

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end35:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %17)
  %cmp42 = icmp ult i16 %15, %17
  %. = zext i1 %cmp42 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end26.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %land.lhs.true5.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %land.lhs.true.cleanup_crit_edge ], [ 1, %land.lhs.true5.cleanup_crit_edge ], [ -1, %if.end9.cleanup_crit_edge ], [ 1, %if.end16.cleanup_crit_edge ], [ -1, %if.end26.cleanup_crit_edge ], [ %., %if.end35 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu_items(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @et8ek8_set_ctrl(ptr nocapture noundef readonly %ctrl) #3 align 64 {
entry:
  %msg.i91.i = alloca %struct.i2c_msg, align 4
  %data.i92.i = alloca [6 x i8], align 1
  %msg.i75.i = alloca %struct.i2c_msg, align 4
  %data.i76.i = alloca [6 x i8], align 1
  %msg.i59.i = alloca %struct.i2c_msg, align 4
  %data.i60.i = alloca [6 x i8], align 1
  %msg.i43.i = alloca %struct.i2c_msg, align 4
  %data.i44.i = alloca [6 x i8], align 1
  %msg.i.i17 = alloca %struct.i2c_msg, align 4
  %data.i.i18 = alloca [6 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %data.i = alloca [6 x i8], align 1
  %msg.i63.i = alloca %struct.i2c_msg, align 4
  %data.i64.i = alloca [6 x i8], align 1
  %msg.i47.i = alloca %struct.i2c_msg, align 4
  %data.i48.i = alloca [6 x i8], align 1
  %msg.i31.i = alloca %struct.i2c_msg, align 4
  %data.i32.i = alloca [6 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %data.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %3, label %sw.default [
    i32 9963795, label %sw.bb
    i32 9963793, label %sw.bb1
    i32 10422531, label %sw.bb5
    i32 10422530, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %dev_priv.i.i = getelementptr i8, ptr %1, i32 -144
  %7 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i.i, align 4
  %arrayidx.i = getelementptr [41 x %struct.et8ek8_gain], ptr @et8ek8_gain_table, i32 0, i32 %6
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %new.sroa.0.0.copyload.i = load i16, ptr %arrayidx.i, align 2
  %new.sroa.6.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 2
  %10 = ptrtoint ptr %new.sroa.6.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %new.sroa.6.0.copyload.i = load i16, ptr %new.sroa.6.0.arrayidx.sroa_idx.i, align 2
  %conv.i = zext i16 %new.sroa.0.0.copyload.i to i32
  %11 = lshr i32 %conv.i, 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #9
  %12 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 262143, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i.i) #9
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 3
  %14 = getelementptr inbounds i8, ptr %data.i.i, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 -1, ptr %14, align 1
  %16 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %sw.bb.et8ek8_i2c_write_reg.exit.thread.i_crit_edge, label %if.end.i.i

sw.bb.et8ek8_i2c_write_reg.exit.thread.i_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %et8ek8_i2c_write_reg.exit.thread.i

if.end.i.i:                                       ; preds = %sw.bb
  %18 = getelementptr inbounds [6 x i8], ptr %data.i.i, i32 0, i32 1
  %addr.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 1
  %19 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %addr.i.i.i, align 2
  %21 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %msg.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %flags.i.i.i, align 2
  %buf4.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %buf4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %data.i.i, ptr %buf4.i.i.i, align 4
  %24 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 18, ptr %data.i.i, align 1
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 74, ptr %18, align 1
  %conv14.i.i.i = trunc i32 %11 to i8
  %26 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv14.i.i.i, ptr %14, align 1
  %call.i.i = call i32 @i2c_transfer(ptr noundef nonnull %17, ptr noundef nonnull %msg.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp8.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp8.i.i, label %do.end.i.i, label %if.end.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.37, i32 noundef %11, i32 noundef 4682, i32 noundef %call.i.i) #12
  br label %et8ek8_i2c_write_reg.exit.thread.i

et8ek8_i2c_write_reg.exit.thread.i:               ; preds = %do.end.i.i, %sw.bb.et8ek8_i2c_write_reg.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -19, %sw.bb.et8ek8_i2c_write_reg.exit.thread.i_crit_edge ], [ %call.i.i, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end.i.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #9
  %and.i = and i32 %conv.i, 255
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i31.i) #9
  %27 = getelementptr inbounds i8, ptr %msg.i31.i, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 262143, ptr %27, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i32.i) #9
  %29 = getelementptr inbounds i8, ptr %data.i32.i, i32 2
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 -1, ptr %29, align 1
  %31 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adapter.i.i, align 8
  %tobool.not.i34.i = icmp eq ptr %32, null
  br i1 %tobool.not.i34.i, label %if.end.i.et8ek8_i2c_write_reg.exit46.thread.i_crit_edge, label %if.end.i39.i

if.end.i.et8ek8_i2c_write_reg.exit46.thread.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %et8ek8_i2c_write_reg.exit46.thread.i

if.end.i39.i:                                     ; preds = %if.end.i
  %33 = getelementptr inbounds [6 x i8], ptr %data.i32.i, i32 0, i32 1
  %34 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %addr.i.i.i, align 2
  %36 = ptrtoint ptr %msg.i31.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %msg.i31.i, align 4
  %flags.i.i36.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31.i, i32 0, i32 1
  %37 = ptrtoint ptr %flags.i.i36.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %flags.i.i36.i, align 2
  %buf4.i.i38.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31.i, i32 0, i32 3
  %38 = ptrtoint ptr %buf4.i.i38.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %data.i32.i, ptr %buf4.i.i38.i, align 4
  %39 = ptrtoint ptr %data.i32.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 18, ptr %data.i32.i, align 1
  %40 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 73, ptr %33, align 1
  %conv14.i.i40.i = trunc i16 %new.sroa.0.0.copyload.i to i8
  %41 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv14.i.i40.i, ptr %29, align 1
  %call.i41.i = call i32 @i2c_transfer(ptr noundef nonnull %32, ptr noundef nonnull %msg.i31.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.i)
  %cmp8.i42.i = icmp slt i32 %call.i41.i, 0
  br i1 %cmp8.i42.i, label %do.end.i44.i, label %if.end7.i

do.end.i44.i:                                     ; preds = %if.end.i39.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i43.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i43.i, ptr noundef nonnull @.str.37, i32 noundef %and.i, i32 noundef 4681, i32 noundef %call.i41.i) #12
  br label %et8ek8_i2c_write_reg.exit46.thread.i

et8ek8_i2c_write_reg.exit46.thread.i:             ; preds = %do.end.i44.i, %if.end.i.et8ek8_i2c_write_reg.exit46.thread.i_crit_edge
  %retval.0.i45.ph.i = phi i32 [ -19, %if.end.i.et8ek8_i2c_write_reg.exit46.thread.i_crit_edge ], [ %call.i41.i, %do.end.i44.i ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i32.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i31.i) #9
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i39.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i32.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i31.i) #9
  %conv8.i = zext i16 %new.sroa.6.0.copyload.i to i32
  %42 = lshr i32 %conv8.i, 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i47.i) #9
  %43 = getelementptr inbounds i8, ptr %msg.i47.i, i32 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 262143, ptr %43, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i48.i) #9
  %45 = getelementptr inbounds i8, ptr %data.i48.i, i32 2
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 -1, ptr %45, align 1
  %47 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %adapter.i.i, align 8
  %tobool.not.i50.i = icmp eq ptr %48, null
  br i1 %tobool.not.i50.i, label %if.end7.i.et8ek8_i2c_write_reg.exit62.thread.i_crit_edge, label %if.end.i55.i

if.end7.i.et8ek8_i2c_write_reg.exit62.thread.i_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %et8ek8_i2c_write_reg.exit62.thread.i

if.end.i55.i:                                     ; preds = %if.end7.i
  %49 = getelementptr inbounds [6 x i8], ptr %data.i48.i, i32 0, i32 1
  %50 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %addr.i.i.i, align 2
  %52 = ptrtoint ptr %msg.i47.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %msg.i47.i, align 4
  %flags.i.i52.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i47.i, i32 0, i32 1
  %53 = ptrtoint ptr %flags.i.i52.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %flags.i.i52.i, align 2
  %buf4.i.i54.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i47.i, i32 0, i32 3
  %54 = ptrtoint ptr %buf4.i.i54.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %data.i48.i, ptr %buf4.i.i54.i, align 4
  %55 = ptrtoint ptr %data.i48.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 18, ptr %data.i48.i, align 1
  %56 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 77, ptr %49, align 1
  %conv14.i.i56.i = trunc i32 %42 to i8
  %57 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv14.i.i56.i, ptr %45, align 1
  %call.i57.i = call i32 @i2c_transfer(ptr noundef nonnull %48, ptr noundef nonnull %msg.i47.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57.i)
  %cmp8.i58.i = icmp slt i32 %call.i57.i, 0
  br i1 %cmp8.i58.i, label %do.end.i60.i, label %if.end13.i

do.end.i60.i:                                     ; preds = %if.end.i55.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i59.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i59.i, ptr noundef nonnull @.str.37, i32 noundef %42, i32 noundef 4685, i32 noundef %call.i57.i) #12
  br label %et8ek8_i2c_write_reg.exit62.thread.i

et8ek8_i2c_write_reg.exit62.thread.i:             ; preds = %do.end.i60.i, %if.end7.i.et8ek8_i2c_write_reg.exit62.thread.i_crit_edge
  %retval.0.i61.ph.i = phi i32 [ -19, %if.end7.i.et8ek8_i2c_write_reg.exit62.thread.i_crit_edge ], [ %call.i57.i, %do.end.i60.i ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i48.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i47.i) #9
  br label %cleanup

if.end13.i:                                       ; preds = %if.end.i55.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i48.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i47.i) #9
  %and16.i = and i32 %conv8.i, 255
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i63.i) #9
  %58 = getelementptr inbounds i8, ptr %msg.i63.i, i32 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 262143, ptr %58, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i64.i) #9
  %60 = getelementptr inbounds i8, ptr %data.i64.i, i32 2
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 -1, ptr %60, align 1
  %62 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %adapter.i.i, align 8
  %tobool.not.i66.i = icmp eq ptr %63, null
  br i1 %tobool.not.i66.i, label %if.end13.i.et8ek8_i2c_write_reg.exit78.i_crit_edge, label %if.end.i71.i

if.end13.i.et8ek8_i2c_write_reg.exit78.i_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %et8ek8_i2c_write_reg.exit78.i

if.end.i71.i:                                     ; preds = %if.end13.i
  %64 = getelementptr inbounds [6 x i8], ptr %data.i64.i, i32 0, i32 1
  %65 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %addr.i.i.i, align 2
  %67 = ptrtoint ptr %msg.i63.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %msg.i63.i, align 4
  %flags.i.i68.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i63.i, i32 0, i32 1
  %68 = ptrtoint ptr %flags.i.i68.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 0, ptr %flags.i.i68.i, align 2
  %buf4.i.i70.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i63.i, i32 0, i32 3
  %69 = ptrtoint ptr %buf4.i.i70.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %data.i64.i, ptr %buf4.i.i70.i, align 4
  %70 = ptrtoint ptr %data.i64.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 18, ptr %data.i64.i, align 1
  %71 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 76, ptr %64, align 1
  %conv14.i.i72.i = trunc i16 %new.sroa.6.0.copyload.i to i8
  %72 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv14.i.i72.i, ptr %60, align 1
  %call.i73.i = call i32 @i2c_transfer(ptr noundef nonnull %63, ptr noundef nonnull %msg.i63.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73.i)
  %cmp8.i74.i = icmp slt i32 %call.i73.i, 0
  br i1 %cmp8.i74.i, label %do.end.i76.i, label %if.end.i71.i.et8ek8_i2c_write_reg.exit78.i_crit_edge

if.end.i71.i.et8ek8_i2c_write_reg.exit78.i_crit_edge: ; preds = %if.end.i71.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %et8ek8_i2c_write_reg.exit78.i

do.end.i76.i:                                     ; preds = %if.end.i71.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i75.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i75.i, ptr noundef nonnull @.str.37, i32 noundef %and16.i, i32 noundef 4684, i32 noundef %call.i73.i) #12
  br label %et8ek8_i2c_write_reg.exit78.i

et8ek8_i2c_write_reg.exit78.i:                    ; preds = %do.end.i76.i, %if.end.i71.i.et8ek8_i2c_write_reg.exit78.i_crit_edge, %if.end13.i.et8ek8_i2c_write_reg.exit78.i_crit_edge
  %retval.0.i77.i = phi i32 [ %call.i73.i, %do.end.i76.i ], [ -19, %if.end13.i.et8ek8_i2c_write_reg.exit78.i_crit_edge ], [ 0, %if.end.i71.i.et8ek8_i2c_write_reg.exit78.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i64.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i63.i) #9
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %dev_priv.i = getelementptr i8, ptr %1, i32 -144
  %73 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev_priv.i, align 4
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %75 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %val3, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
  %77 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 327679, ptr %77, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i) #9
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %74, i32 0, i32 3
  %79 = getelementptr inbounds i8, ptr %data.i, i32 2
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_storeN_noabort(i32 %80, i32 4)
  store i32 -1, ptr %79, align 1
  %81 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %adapter.i, align 8
  %tobool.not.i = icmp eq ptr %82, null
  br i1 %tobool.not.i, label %sw.bb1.et8ek8_i2c_write_reg.exit_crit_edge, label %if.end.i15

sw.bb1.et8ek8_i2c_write_reg.exit_crit_edge:       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %et8ek8_i2c_write_reg.exit

if.end.i15:                                       ; preds = %sw.bb1
  %83 = getelementptr inbounds [6 x i8], ptr %data.i, i32 0, i32 3
  %84 = getelementptr inbounds [6 x i8], ptr %data.i, i32 0, i32 1
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %74, i32 0, i32 1
  %85 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %addr.i.i, align 2
  %87 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %msg.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %88 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 0, ptr %flags.i.i, align 2
  %buf4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %89 = ptrtoint ptr %buf4.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %data.i, ptr %buf4.i.i, align 4
  %90 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 18, ptr %data.i, align 1
  %91 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 67, ptr %84, align 1
  %conv20.i.i = trunc i32 %76 to i8
  %92 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv20.i.i, ptr %79, align 1
  %shr22.i.i = lshr i32 %76, 8
  %conv26.i.i = trunc i32 %shr22.i.i to i8
  %93 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv26.i.i, ptr %83, align 1
  %call.i = call i32 @i2c_transfer(ptr noundef nonnull %82, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8.i = icmp slt i32 %call.i, 0
  br i1 %cmp8.i, label %do.end.i, label %if.end.i15.et8ek8_i2c_write_reg.exit_crit_edge

if.end.i15.et8ek8_i2c_write_reg.exit_crit_edge:   ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #11
  br label %et8ek8_i2c_write_reg.exit

do.end.i:                                         ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %74, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.37, i32 noundef %76, i32 noundef 4675, i32 noundef %call.i) #12
  br label %et8ek8_i2c_write_reg.exit

et8ek8_i2c_write_reg.exit:                        ; preds = %do.end.i, %if.end.i15.et8ek8_i2c_write_reg.exit_crit_edge, %sw.bb1.et8ek8_i2c_write_reg.exit_crit_edge
  %retval.0.i16 = phi i32 [ %call.i, %do.end.i ], [ -19, %sw.bb1.et8ek8_i2c_write_reg.exit_crit_edge ], [ 0, %if.end.i15.et8ek8_i2c_write_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %94 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %val6, align 4
  %dev_priv.i.i19 = getelementptr i8, ptr %1, i32 -144
  %96 = ptrtoint ptr %dev_priv.i.i19 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev_priv.i.i19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool.not.i20 = icmp eq i32 %95, 0
  br i1 %tobool.not.i20, label %sw.bb5.if.end3.i_crit_edge, label %if.then.i

sw.bb5.if.end3.i_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i

if.then.i:                                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %95)
  %cmp.i = icmp slt i32 %95, 5
  %cbv_mode.0.i = select i1 %cmp.i, i32 128, i32 0
  %tp_mode.0.v.i = select i1 %cmp.i, i32 3, i32 268435455
  %tp_mode.0.i = add i32 %tp_mode.0.v.i, %95
  %phi.bo.i = shl i32 %tp_mode.0.i, 4
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then.i, %sw.bb5.if.end3.i_crit_edge
  %cbv_mode.1.i = phi i32 [ %cbv_mode.0.i, %if.then.i ], [ 0, %sw.bb5.if.end3.i_crit_edge ]
  %tp_mode.1.i = phi i32 [ %phi.bo.i, %if.then.i ], [ 0, %sw.bb5.if.end3.i_crit_edge ]
  %din_sw.0.i = phi i32 [ 1, %if.then.i ], [ 0, %sw.bb5.if.end3.i_crit_edge ]
  %r1420.0.i = phi i32 [ 224, %if.then.i ], [ 240, %sw.bb5.if.end3.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i17) #9
  %98 = getelementptr inbounds i8, ptr %msg.i.i17, i32 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 262143, ptr %98, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i.i18) #9
  %adapter.i.i21 = getelementptr inbounds %struct.i2c_client, ptr %97, i32 0, i32 3
  %100 = getelementptr inbounds i8, ptr %data.i.i18, i32 2
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_storeN_noabort(i32 %101, i32 4)
  store i32 -1, ptr %100, align 1
  %102 = ptrtoint ptr %adapter.i.i21 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %adapter.i.i21, align 8
  %tobool.not.i.i22 = icmp eq ptr %103, null
  br i1 %tobool.not.i.i22, label %if.end3.i.et8ek8_i2c_write_reg.exit.thread.i33_crit_edge, label %if.end.i.i29

if.end3.i.et8ek8_i2c_write_reg.exit.thread.i33_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %et8ek8_i2c_write_reg.exit.thread.i33

if.end.i.i29:                                     ; preds = %if.end3.i
  %104 = getelementptr inbounds [6 x i8], ptr %data.i.i18, i32 0, i32 1
  %addr.i.i.i23 = getelementptr inbounds %struct.i2c_client, ptr %97, i32 0, i32 1
  %105 = ptrtoint ptr %addr.i.i.i23 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %addr.i.i.i23, align 2
  %107 = ptrtoint ptr %msg.i.i17 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %106, ptr %msg.i.i17, align 4
  %flags.i.i.i24 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i17, i32 0, i32 1
  %108 = ptrtoint ptr %flags.i.i.i24 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 0, ptr %flags.i.i.i24, align 2
  %buf4.i.i.i25 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i17, i32 0, i32 3
  %109 = ptrtoint ptr %buf4.i.i.i25 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %data.i.i18, ptr %buf4.i.i.i25, align 4
  %110 = ptrtoint ptr %data.i.i18 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 17, ptr %data.i.i18, align 1
  %111 = ptrtoint ptr %104 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 27, ptr %104, align 1
  %conv14.i.i.i26 = trunc i32 %tp_mode.1.i to i8
  %112 = ptrtoint ptr %100 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv14.i.i.i26, ptr %100, align 1
  %call.i.i27 = call i32 @i2c_transfer(ptr noundef nonnull %103, ptr noundef nonnull %msg.i.i17, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i27)
  %cmp8.i.i28 = icmp slt i32 %call.i.i27, 0
  br i1 %cmp8.i.i28, label %do.end.i.i31, label %if.end7.i34

do.end.i.i31:                                     ; preds = %if.end.i.i29
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i30 = getelementptr inbounds %struct.i2c_client, ptr %97, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i30, ptr noundef nonnull @.str.37, i32 noundef %tp_mode.1.i, i32 noundef 4379, i32 noundef %call.i.i27) #12
  br label %et8ek8_i2c_write_reg.exit.thread.i33

et8ek8_i2c_write_reg.exit.thread.i33:             ; preds = %do.end.i.i31, %if.end3.i.et8ek8_i2c_write_reg.exit.thread.i33_crit_edge
  %retval.0.i.ph.i32 = phi i32 [ -19, %if.end3.i.et8ek8_i2c_write_reg.exit.thread.i33_crit_edge ], [ %call.i.i27, %do.end.i.i31 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i.i18) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i17) #9
  br label %cleanup

if.end7.i34:                                      ; preds = %if.end.i.i29
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i.i18) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i17) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i43.i) #9
  %113 = getelementptr inbounds i8, ptr %msg.i43.i, i32 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 262143, ptr %113, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i44.i) #9
  %115 = getelementptr inbounds i8, ptr %data.i44.i, i32 2
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_storeN_noabort(i32 %116, i32 4)
  store i32 -1, ptr %115, align 1
  %117 = ptrtoint ptr %adapter.i.i21 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %adapter.i.i21, align 8
  %tobool.not.i46.i = icmp eq ptr %118, null
  br i1 %tobool.not.i46.i, label %if.end7.i34.et8ek8_i2c_write_reg.exit58.thread.i_crit_edge, label %if.end.i51.i

if.end7.i34.et8ek8_i2c_write_reg.exit58.thread.i_crit_edge: ; preds = %if.end7.i34
  call void @__sanitizer_cov_trace_pc() #11
  br label %et8ek8_i2c_write_reg.exit58.thread.i

if.end.i51.i:                                     ; preds = %if.end7.i34
  %119 = getelementptr inbounds [6 x i8], ptr %data.i44.i, i32 0, i32 1
  %120 = ptrtoint ptr %addr.i.i.i23 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %addr.i.i.i23, align 2
  %122 = ptrtoint ptr %msg.i43.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %121, ptr %msg.i43.i, align 4
  %flags.i.i48.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i43.i, i32 0, i32 1
  %123 = ptrtoint ptr %flags.i.i48.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 0, ptr %flags.i.i48.i, align 2
  %buf4.i.i50.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i43.i, i32 0, i32 3
  %124 = ptrtoint ptr %buf4.i.i50.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %data.i44.i, ptr %buf4.i.i50.i, align 4
  %125 = ptrtoint ptr %data.i44.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 17, ptr %data.i44.i, align 1
  %126 = ptrtoint ptr %119 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 33, ptr %119, align 1
  %conv14.i.i52.i = trunc i32 %cbv_mode.1.i to i8
  %127 = ptrtoint ptr %115 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %conv14.i.i52.i, ptr %115, align 1
  %call.i53.i = call i32 @i2c_transfer(ptr noundef nonnull %118, ptr noundef nonnull %msg.i43.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53.i)
  %cmp8.i54.i = icmp slt i32 %call.i53.i, 0
  br i1 %cmp8.i54.i, label %do.end.i56.i, label %if.end12.i

do.end.i56.i:                                     ; preds = %if.end.i51.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i55.i = getelementptr inbounds %struct.i2c_client, ptr %97, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i55.i, ptr noundef nonnull @.str.37, i32 noundef %cbv_mode.1.i, i32 noundef 4385, i32 noundef %call.i53.i) #12
  br label %et8ek8_i2c_write_reg.exit58.thread.i

et8ek8_i2c_write_reg.exit58.thread.i:             ; preds = %do.end.i56.i, %if.end7.i34.et8ek8_i2c_write_reg.exit58.thread.i_crit_edge
  %retval.0.i57.ph.i = phi i32 [ -19, %if.end7.i34.et8ek8_i2c_write_reg.exit58.thread.i_crit_edge ], [ %call.i53.i, %do.end.i56.i ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i44.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i43.i) #9
  br label %cleanup

if.end12.i:                                       ; preds = %if.end.i51.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i44.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i43.i) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i59.i) #9
  %128 = getelementptr inbounds i8, ptr %msg.i59.i, i32 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 262143, ptr %128, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i60.i) #9
  %130 = getelementptr inbounds i8, ptr %data.i60.i, i32 2
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_storeN_noabort(i32 %131, i32 4)
  store i32 -1, ptr %130, align 1
  %132 = ptrtoint ptr %adapter.i.i21 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %adapter.i.i21, align 8
  %tobool.not.i62.i = icmp eq ptr %133, null
  br i1 %tobool.not.i62.i, label %if.end12.i.et8ek8_i2c_write_reg.exit74.thread.i_crit_edge, label %if.end.i67.i

if.end12.i.et8ek8_i2c_write_reg.exit74.thread.i_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %et8ek8_i2c_write_reg.exit74.thread.i

if.end.i67.i:                                     ; preds = %if.end12.i
  %134 = getelementptr inbounds [6 x i8], ptr %data.i60.i, i32 0, i32 1
  %135 = ptrtoint ptr %addr.i.i.i23 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %addr.i.i.i23, align 2
  %137 = ptrtoint ptr %msg.i59.i to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %136, ptr %msg.i59.i, align 4
  %flags.i.i64.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i59.i, i32 0, i32 1
  %138 = ptrtoint ptr %flags.i.i64.i to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 0, ptr %flags.i.i64.i, align 2
  %buf4.i.i66.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i59.i, i32 0, i32 3
  %139 = ptrtoint ptr %buf4.i.i66.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %data.i60.i, ptr %buf4.i.i66.i, align 4
  %140 = ptrtoint ptr %data.i60.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 17, ptr %data.i60.i, align 1
  %141 = ptrtoint ptr %134 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 36, ptr %134, align 1
  %142 = ptrtoint ptr %130 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %conv14.i.i52.i, ptr %130, align 1
  %call.i69.i = call i32 @i2c_transfer(ptr noundef nonnull %133, ptr noundef nonnull %msg.i59.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69.i)
  %cmp8.i70.i = icmp slt i32 %call.i69.i, 0
  br i1 %cmp8.i70.i, label %do.end.i72.i, label %if.end17.i

do.end.i72.i:                                     ; preds = %if.end.i67.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i71.i = getelementptr inbounds %struct.i2c_client, ptr %97, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i71.i, ptr noundef nonnull @.str.37, i32 noundef %cbv_mode.1.i, i32 noundef 4388, i32 noundef %call.i69.i) #12
  br label %et8ek8_i2c_write_reg.exit74.thread.i

et8ek8_i2c_write_reg.exit74.thread.i:             ; preds = %do.end.i72.i, %if.end12.i.et8ek8_i2c_write_reg.exit74.thread.i_crit_edge
  %retval.0.i73.ph.i = phi i32 [ -19, %if.end12.i.et8ek8_i2c_write_reg.exit74.thread.i_crit_edge ], [ %call.i69.i, %do.end.i72.i ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i60.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i59.i) #9
  br label %cleanup

if.end17.i:                                       ; preds = %if.end.i67.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i60.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i59.i) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i75.i) #9
  %143 = getelementptr inbounds i8, ptr %msg.i75.i, i32 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 262143, ptr %143, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i76.i) #9
  %145 = getelementptr inbounds i8, ptr %data.i76.i, i32 2
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_storeN_noabort(i32 %146, i32 4)
  store i32 -1, ptr %145, align 1
  %147 = ptrtoint ptr %adapter.i.i21 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %adapter.i.i21, align 8
  %tobool.not.i78.i = icmp eq ptr %148, null
  br i1 %tobool.not.i78.i, label %if.end17.i.et8ek8_i2c_write_reg.exit90.thread.i_crit_edge, label %if.end.i83.i

if.end17.i.et8ek8_i2c_write_reg.exit90.thread.i_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %et8ek8_i2c_write_reg.exit90.thread.i

if.end.i83.i:                                     ; preds = %if.end17.i
  %149 = getelementptr inbounds [6 x i8], ptr %data.i76.i, i32 0, i32 1
  %150 = ptrtoint ptr %addr.i.i.i23 to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %addr.i.i.i23, align 2
  %152 = ptrtoint ptr %msg.i75.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %151, ptr %msg.i75.i, align 4
  %flags.i.i80.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i75.i, i32 0, i32 1
  %153 = ptrtoint ptr %flags.i.i80.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 0, ptr %flags.i.i80.i, align 2
  %buf4.i.i82.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i75.i, i32 0, i32 3
  %154 = ptrtoint ptr %buf4.i.i82.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %data.i76.i, ptr %buf4.i.i82.i, align 4
  %155 = ptrtoint ptr %data.i76.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 17, ptr %data.i76.i, align 1
  %156 = ptrtoint ptr %149 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 44, ptr %149, align 1
  %conv14.i.i84.i = trunc i32 %din_sw.0.i to i8
  %157 = ptrtoint ptr %145 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %conv14.i.i84.i, ptr %145, align 1
  %call.i85.i = call i32 @i2c_transfer(ptr noundef nonnull %148, ptr noundef nonnull %msg.i75.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85.i)
  %cmp8.i86.i = icmp slt i32 %call.i85.i, 0
  br i1 %cmp8.i86.i, label %do.end.i88.i, label %if.end21.i

do.end.i88.i:                                     ; preds = %if.end.i83.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i87.i = getelementptr inbounds %struct.i2c_client, ptr %97, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i87.i, ptr noundef nonnull @.str.37, i32 noundef %din_sw.0.i, i32 noundef 4396, i32 noundef %call.i85.i) #12
  br label %et8ek8_i2c_write_reg.exit90.thread.i

et8ek8_i2c_write_reg.exit90.thread.i:             ; preds = %do.end.i88.i, %if.end17.i.et8ek8_i2c_write_reg.exit90.thread.i_crit_edge
  %retval.0.i89.ph.i = phi i32 [ -19, %if.end17.i.et8ek8_i2c_write_reg.exit90.thread.i_crit_edge ], [ %call.i85.i, %do.end.i88.i ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i76.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i75.i) #9
  br label %cleanup

if.end21.i:                                       ; preds = %if.end.i83.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i76.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i75.i) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i91.i) #9
  %158 = getelementptr inbounds i8, ptr %msg.i91.i, i32 4
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 262143, ptr %158, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i92.i) #9
  %160 = getelementptr inbounds i8, ptr %data.i92.i, i32 2
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_storeN_noabort(i32 %161, i32 4)
  store i32 -1, ptr %160, align 1
  %162 = ptrtoint ptr %adapter.i.i21 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %adapter.i.i21, align 8
  %tobool.not.i94.i = icmp eq ptr %163, null
  br i1 %tobool.not.i94.i, label %if.end21.i.et8ek8_i2c_write_reg.exit106.i_crit_edge, label %if.end.i99.i

if.end21.i.et8ek8_i2c_write_reg.exit106.i_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %et8ek8_i2c_write_reg.exit106.i

if.end.i99.i:                                     ; preds = %if.end21.i
  %164 = getelementptr inbounds [6 x i8], ptr %data.i92.i, i32 0, i32 1
  %165 = ptrtoint ptr %addr.i.i.i23 to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %addr.i.i.i23, align 2
  %167 = ptrtoint ptr %msg.i91.i to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %166, ptr %msg.i91.i, align 4
  %flags.i.i96.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i91.i, i32 0, i32 1
  %168 = ptrtoint ptr %flags.i.i96.i to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 0, ptr %flags.i.i96.i, align 2
  %buf4.i.i98.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i91.i, i32 0, i32 3
  %169 = ptrtoint ptr %buf4.i.i98.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %data.i92.i, ptr %buf4.i.i98.i, align 4
  %170 = ptrtoint ptr %data.i92.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 20, ptr %data.i92.i, align 1
  %171 = ptrtoint ptr %164 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 32, ptr %164, align 1
  %conv14.i.i100.i = trunc i32 %r1420.0.i to i8
  %172 = ptrtoint ptr %160 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %conv14.i.i100.i, ptr %160, align 1
  %call.i101.i = call i32 @i2c_transfer(ptr noundef nonnull %163, ptr noundef nonnull %msg.i91.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101.i)
  %cmp8.i102.i = icmp slt i32 %call.i101.i, 0
  br i1 %cmp8.i102.i, label %do.end.i104.i, label %if.end.i99.i.et8ek8_i2c_write_reg.exit106.i_crit_edge

if.end.i99.i.et8ek8_i2c_write_reg.exit106.i_crit_edge: ; preds = %if.end.i99.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %et8ek8_i2c_write_reg.exit106.i

do.end.i104.i:                                    ; preds = %if.end.i99.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i103.i = getelementptr inbounds %struct.i2c_client, ptr %97, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i103.i, ptr noundef nonnull @.str.37, i32 noundef %r1420.0.i, i32 noundef 5152, i32 noundef %call.i101.i) #12
  br label %et8ek8_i2c_write_reg.exit106.i

et8ek8_i2c_write_reg.exit106.i:                   ; preds = %do.end.i104.i, %if.end.i99.i.et8ek8_i2c_write_reg.exit106.i_crit_edge, %if.end21.i.et8ek8_i2c_write_reg.exit106.i_crit_edge
  %retval.0.i105.i = phi i32 [ %call.i101.i, %do.end.i104.i ], [ -19, %if.end21.i.et8ek8_i2c_write_reg.exit106.i_crit_edge ], [ 0, %if.end.i99.i.et8ek8_i2c_write_reg.exit106.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i92.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i91.i) #9
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %et8ek8_i2c_write_reg.exit106.i, %et8ek8_i2c_write_reg.exit90.thread.i, %et8ek8_i2c_write_reg.exit74.thread.i, %et8ek8_i2c_write_reg.exit58.thread.i, %et8ek8_i2c_write_reg.exit.thread.i33, %et8ek8_i2c_write_reg.exit, %et8ek8_i2c_write_reg.exit78.i, %et8ek8_i2c_write_reg.exit62.thread.i, %et8ek8_i2c_write_reg.exit46.thread.i, %et8ek8_i2c_write_reg.exit.thread.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ %retval.0.i16, %et8ek8_i2c_write_reg.exit ], [ 0, %entry.cleanup_crit_edge ], [ %retval.0.i77.i, %et8ek8_i2c_write_reg.exit78.i ], [ %retval.0.i.ph.i, %et8ek8_i2c_write_reg.exit.thread.i ], [ %retval.0.i45.ph.i, %et8ek8_i2c_write_reg.exit46.thread.i ], [ %retval.0.i61.ph.i, %et8ek8_i2c_write_reg.exit62.thread.i ], [ %retval.0.i105.i, %et8ek8_i2c_write_reg.exit106.i ], [ %retval.0.i.ph.i32, %et8ek8_i2c_write_reg.exit.thread.i33 ], [ %retval.0.i57.ph.i, %et8ek8_i2c_write_reg.exit58.thread.i ], [ %retval.0.i73.ph.i, %et8ek8_i2c_write_reg.exit74.thread.i ], [ %retval.0.i89.ph.i, %et8ek8_i2c_write_reg.exit90.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @et8ek8_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %power_count = getelementptr inbounds %struct.et8ek8_sensor, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %power_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %reset.i.i = getelementptr inbounds %struct.et8ek8_sensor, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %reset.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #9
  %ext_clk.i.i = getelementptr inbounds %struct.et8ek8_sensor, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %ext_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ext_clk.i.i, align 4
  tail call void @clk_disable(ptr noundef %8) #9
  tail call void @clk_unprepare(ptr noundef %8) #9
  %vana.i.i = getelementptr inbounds %struct.et8ek8_sensor, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %vana.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vana.i.i, align 4
  %call.i.i = tail call i32 @regulator_disable(ptr noundef %10) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @et8ek8_resume(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %power_count = getelementptr inbounds %struct.et8ek8_sensor, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %power_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call fastcc i32 @et8ek8_power_on(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !15, !17, !19, !21, !23, !24, !25, !27, !29, !30, !31, !32, !33, !35, !36, !37, !39, !41, !42, !43, !44, !46, !47, !49, !50, !51, !53, !54, !56, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !92, !94, !96, !97, !98, !99, !101, !103, !105, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !154, !156, !157, !159, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188}
!llvm.module.flags = !{!190, !191, !192, !193, !194, !195, !196, !197}
!llvm.ident = !{!198}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 1469, i32 3}
!2 = !{ptr @__initcall__kmod_et8ek8__300_1511_et8ek8_i2c_driver_init6, !3, !"__initcall__kmod_et8ek8__300_1511_et8ek8_i2c_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 1511, i32 1}
!4 = !{ptr @__exitcall_et8ek8_i2c_driver_exit, !3, !"__exitcall_et8ek8_i2c_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_author301, !6, !"__UNIQUE_ID_author301", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 1513, i32 1}
!7 = !{ptr @__UNIQUE_ID_description302, !8, !"__UNIQUE_ID_description302", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 1514, i32 1}
!9 = !{ptr @__UNIQUE_ID_file303, !10, !"__UNIQUE_ID_file303", i1 false, i1 false}
!10 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 1515, i32 1}
!11 = !{ptr @__UNIQUE_ID_license304, !10, !"__UNIQUE_ID_license304", i1 false, i1 false}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 1253, i32 8}
!14 = !{ptr @dev_attr_priv_mem, !13, !"dev_attr_priv_mem", i1 false, i1 false}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 1502, i32 11}
!17 = !{ptr @et8ek8_i2c_driver, !18, !"et8ek8_i2c_driver", i1 false, i1 false}
!18 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 1500, i32 26}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 1409, i32 38}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 1411, i32 3}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @et8ek8_probe.__UNIQUE_ID_ddebug298, !22, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 1415, i32 41}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 1417, i32 3}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @et8ek8_probe._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @et8ek8_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 1423, i32 3}
!35 = !{ptr @et8ek8_probe._entry.10, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @et8ek8_probe._entry_ptr.12, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 1427, i32 43}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 1430, i32 3}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @et8ek8_probe._entry.14, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @et8ek8_probe._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @et8ek8_probe.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 1434, i32 2}
!46 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 1444, i32 3}
!49 = !{ptr @et8ek8_probe._entry.19, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @et8ek8_probe._entry_ptr.21, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 1452, i32 2}
!53 = !{ptr @et8ek8_probe.__UNIQUE_ID_ddebug299, !52, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!54 = !{ptr @et8ek8_ops, !55, !"et8ek8_ops", i1 false, i1 false}
!55 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 1362, i32 37}
!56 = !{ptr @et8ek8_core_ops, !57, !"et8ek8_core_ops", i1 false, i1 false}
!57 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 1350, i32 42}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 824, i32 3}
!60 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @et8ek8_power_on._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @et8ek8_power_on._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 835, i32 3}
!65 = !{ptr @et8ek8_power_on._entry.25, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @et8ek8_power_on._entry_ptr.27, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 841, i32 3}
!69 = !{ptr @et8ek8_power_on._entry.28, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @et8ek8_power_on._entry_ptr.30, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 290, i32 8}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 308, i32 4}
!75 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @et8ek8_i2c_write_regs._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @et8ek8_i2c_write_regs._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 208, i32 3}
!80 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @__func__.et8ek8_i2c_create_msg, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 181, i32 2}
!84 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @et8ek8_i2c_read_reg._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @et8ek8_i2c_read_reg._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 351, i32 3}
!89 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @et8ek8_i2c_write_reg._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @et8ek8_i2c_write_reg._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @et8ek8_video_ops, !93, !"et8ek8_video_ops", i1 false, i1 false}
!93 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 1344, i32 43}
!94 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 767, i32 2}
!96 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @et8ek8_configure._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @et8ek8_configure._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = distinct !{null, !100, !"S", i1 false, i1 false}
!100 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 727, i32 19}
!101 = !{ptr @et8ek8_pad_ops, !102, !"et8ek8_pad_ops", i1 false, i1 false}
!102 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 1354, i32 41}
!103 = !{ptr @.str.41, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!105 = !{ptr @et8ek8_internal_ops, !106, !"et8ek8_internal_ops", i1 false, i1 false}
!106 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 1368, i32 46}
!107 = !{ptr @.str.42, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 1266, i32 2}
!109 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @et8ek8_registered.__UNIQUE_ID_ddebug297, !108, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!111 = !{ptr @.str.44, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 1270, i32 3}
!113 = !{ptr @et8ek8_registered._entry, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @et8ek8_registered._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.46, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 1280, i32 3}
!117 = !{ptr @et8ek8_registered._entry.45, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @et8ek8_registered._entry_ptr.47, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.48, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 1165, i32 3}
!121 = !{ptr @.str.49, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @et8ek8_dev_init._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @et8ek8_dev_init._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.51, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 1175, i32 3}
!126 = !{ptr @et8ek8_dev_init._entry.50, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @et8ek8_dev_init._entry_ptr.52, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 1181, i32 3}
!130 = !{ptr @.str.55, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @et8ek8_dev_init._entry.53, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @et8ek8_dev_init._entry_ptr.56, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.58, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 1187, i32 3}
!135 = !{ptr @et8ek8_dev_init._entry.57, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @et8ek8_dev_init._entry_ptr.59, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.61, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 1196, i32 3}
!139 = !{ptr @et8ek8_dev_init._entry.60, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @et8ek8_dev_init._entry_ptr.62, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.64, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 1208, i32 3}
!143 = !{ptr @et8ek8_dev_init._entry.63, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @et8ek8_dev_init._entry_ptr.65, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.67, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 1218, i32 3}
!147 = !{ptr @et8ek8_dev_init._entry.66, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @et8ek8_dev_init._entry_ptr.68, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.69, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 514, i32 2}
!151 = !{ptr @.str.70, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @et8ek8_reglist_import._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @et8ek8_reglist_import._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 533, i32 3}
!156 = !{ptr @et8ek8_reglist_import.__UNIQUE_ID_ddebug296, !155, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!157 = !{ptr @et8ek8_init_controls._key, !158, !"_key", i1 false, i1 false}
!158 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 685, i32 2}
!159 = !{ptr @.str.72, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @et8ek8_ctrl_ops, !161, !"et8ek8_ctrl_ops", i1 false, i1 false}
!161 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 665, i32 35}
!162 = !{ptr @et8ek8_gain_table, !163, !"et8ek8_gain_table", i1 false, i1 false}
!163 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 80, i32 9}
!164 = !{ptr @.str.73, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 670, i32 2}
!166 = !{ptr @.str.74, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 671, i32 2}
!168 = !{ptr @.str.75, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 672, i32 2}
!170 = !{ptr @.str.76, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 673, i32 2}
!172 = !{ptr @.str.77, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 674, i32 2}
!174 = !{ptr @.str.78, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 675, i32 2}
!176 = !{ptr @.str.79, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 676, i32 2}
!178 = !{ptr @.str.80, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 677, i32 2}
!180 = !{ptr @.str.81, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 678, i32 2}
!182 = !{ptr @et8ek8_test_pattern_menu, !183, !"et8ek8_test_pattern_menu", i1 false, i1 false}
!183 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 669, i32 27}
!184 = !{ptr @et8ek8_of_table, !185, !"et8ek8_of_table", i1 false, i1 false}
!185 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 1484, i32 34}
!186 = !{ptr @et8ek8_pm_ops, !187, !"et8ek8_pm_ops", i1 false, i1 false}
!187 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 1496, i32 32}
!188 = !{ptr @et8ek8_id_table, !189, !"et8ek8_id_table", i1 false, i1 false}
!189 = !{!"../drivers/media/i2c/et8ek8/et8ek8_driver.c", i32 1490, i32 35}
!190 = !{i32 1, !"wchar_size", i32 2}
!191 = !{i32 1, !"min_enum_size", i32 4}
!192 = !{i32 8, !"branch-target-enforcement", i32 0}
!193 = !{i32 8, !"sign-return-address", i32 0}
!194 = !{i32 8, !"sign-return-address-all", i32 0}
!195 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!196 = !{i32 7, !"uwtable", i32 1}
!197 = !{i32 7, !"frame-pointer", i32 2}
!198 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!199 = !{i64 2148755696, i64 2148755701, i64 2148755714, i64 2148755758, i64 2148755792, i64 2148755813}
!200 = !{!"branch_weights", i32 1, i32 2000}
!201 = !{!"branch_weights", i32 2000, i32 1}
