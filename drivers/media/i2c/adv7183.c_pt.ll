; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/adv7183.c_pt.bc'
source_filename = "../drivers/media/i2c/adv7183.c"
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.adv7183 = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, i64, i32, i32, i32, i32, %struct.v4l2_mbus_framefmt }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.94 }
%union.anon.94 = type { i32, [28 x i8] }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__initcall__kmod_adv7183__292_642_adv7183_driver_init6 = internal global ptr @adv7183_driver_init, section ".initcall6.init", align 4
@adv7183_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @adv7183_probe, ptr @adv7183_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @adv7183_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_adv7183_driver_exit = internal global ptr @adv7183_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description293 = internal constant [64 x i8] c"adv7183.description=Analog Devices ADV7183 video decoder driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [57 x i8] c"adv7183.author=Scott Jiang <Scott.Jiang.Linux@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [39 x i8] c"adv7183.file=drivers/media/i2c/adv7183\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [23 x i8] c"adv7183.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adv7183\00", [24 x i8] zeroinitializer }, align 32
@adv7183_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"adv7183\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@adv7183_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s %d-%04x: chip found @ 0x%02x (%s)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adv7183_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/i2c/adv7183.c\00", [36 x i8] zeroinitializer }, align 32
@adv7183_probe._entry_ptr = internal global ptr @adv7183_probe._entry, section ".printk_index", align 4
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ADV7183 Reset\00", [18 x i8] zeroinitializer }, align 32
@adv7183_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s %d-%04x: failed to request GPIO %d\0A\00", [55 x i8] zeroinitializer }, align 32
@adv7183_probe._entry_ptr.7 = internal global ptr @adv7183_probe._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ADV7183 Output Enable\00", [42 x i8] zeroinitializer }, align 32
@adv7183_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@adv7183_probe._entry_ptr.10 = internal global ptr @adv7183_probe._entry.9, section ".printk_index", align 4
@adv7183_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @adv7183_core_ops, ptr null, ptr null, ptr @adv7183_video_ops, ptr null, ptr null, ptr null, ptr @adv7183_pad_ops }, [32 x i8] zeroinitializer }, align 32
@adv7183_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"adv7183:571:(hdl)->_lock\00", [39 x i8] zeroinitializer }, align 32
@adv7183_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @adv7183_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@adv7183_init_regs = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\00\04\15\00\17A:\16P\04\0E\80P R\18X\EDw\C5|\93}\00\D0H\D5\A0\D7\EA\E4>\E9>\EA\0F\0E\00", [58 x i8] zeroinitializer }, align 32
@adv7183_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @adv7183_log_status, ptr null, ptr null, ptr null, ptr @adv7183_reset, ptr null, ptr null, ptr null, ptr @adv7183_g_register, ptr @adv7183_s_register, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@adv7183_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr @adv7183_s_routing, ptr null, ptr @adv7183_g_std, ptr @adv7183_s_std, ptr null, ptr null, ptr @adv7183_querystd, ptr null, ptr null, ptr @adv7183_g_input_status, ptr @adv7183_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@adv7183_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @adv7183_enum_mbus_code, ptr null, ptr null, ptr @adv7183_get_fmt, ptr @adv7183_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@adv7183_log_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s: adv7183: Input control = 0x%02x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adv7183_log_status\00", [45 x i8] zeroinitializer }, align 32
@adv7183_log_status._entry_ptr = internal global ptr @adv7183_log_status._entry, section ".printk_index", align 4
@adv7183_log_status._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.3, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s: adv7183: Video selection = 0x%02x\0A\00", [55 x i8] zeroinitializer }, align 32
@adv7183_log_status._entry_ptr.16 = internal global ptr @adv7183_log_status._entry.14, section ".printk_index", align 4
@adv7183_log_status._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.3, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s: adv7183: Output control = 0x%02x\0A\00", [56 x i8] zeroinitializer }, align 32
@adv7183_log_status._entry_ptr.19 = internal global ptr @adv7183_log_status._entry.17, section ".printk_index", align 4
@adv7183_log_status._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.3, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016%s: adv7183: Extended output control = 0x%02x\0A\00", [47 x i8] zeroinitializer }, align 32
@adv7183_log_status._entry_ptr.22 = internal global ptr @adv7183_log_status._entry.20, section ".printk_index", align 4
@adv7183_log_status._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.13, ptr @.str.3, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s: adv7183: Autodetect enable = 0x%02x\0A\00", [53 x i8] zeroinitializer }, align 32
@adv7183_log_status._entry_ptr.25 = internal global ptr @adv7183_log_status._entry.23, section ".printk_index", align 4
@adv7183_log_status._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.13, ptr @.str.3, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: adv7183: Contrast = 0x%02x\0A\00", [62 x i8] zeroinitializer }, align 32
@adv7183_log_status._entry_ptr.28 = internal global ptr @adv7183_log_status._entry.26, section ".printk_index", align 4
@adv7183_log_status._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.13, ptr @.str.3, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s: adv7183: Brightness = 0x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@adv7183_log_status._entry_ptr.31 = internal global ptr @adv7183_log_status._entry.29, section ".printk_index", align 4
@adv7183_log_status._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.13, ptr @.str.3, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: adv7183: Hue = 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@adv7183_log_status._entry_ptr.34 = internal global ptr @adv7183_log_status._entry.32, section ".printk_index", align 4
@adv7183_log_status._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.13, ptr @.str.3, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s: adv7183: Default value Y = 0x%02x\0A\00", [55 x i8] zeroinitializer }, align 32
@adv7183_log_status._entry_ptr.37 = internal global ptr @adv7183_log_status._entry.35, section ".printk_index", align 4
@adv7183_log_status._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.13, ptr @.str.3, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s: adv7183: Default value C = 0x%02x\0A\00", [55 x i8] zeroinitializer }, align 32
@adv7183_log_status._entry_ptr.40 = internal global ptr @adv7183_log_status._entry.38, section ".printk_index", align 4
@adv7183_log_status._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.13, ptr @.str.3, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: adv7183: ADI control = 0x%02x\0A\00", [59 x i8] zeroinitializer }, align 32
@adv7183_log_status._entry_ptr.43 = internal global ptr @adv7183_log_status._entry.41, section ".printk_index", align 4
@adv7183_log_status._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.13, ptr @.str.3, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s: adv7183: Power Management = 0x%02x\0A\00", [54 x i8] zeroinitializer }, align 32
@adv7183_log_status._entry_ptr.46 = internal global ptr @adv7183_log_status._entry.44, section ".printk_index", align 4
@adv7183_log_status._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.13, ptr @.str.3, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016%s: adv7183: Status 1 2 and 3 = 0x%02x 0x%02x 0x%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@adv7183_log_status._entry_ptr.49 = internal global ptr @adv7183_log_status._entry.47, section ".printk_index", align 4
@adv7183_log_status._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.13, ptr @.str.3, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: adv7183: Ident = 0x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@adv7183_log_status._entry_ptr.52 = internal global ptr @adv7183_log_status._entry.50, section ".printk_index", align 4
@adv7183_log_status._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.13, ptr @.str.3, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: adv7183: Analog clamp control = 0x%02x\0A\00", [50 x i8] zeroinitializer }, align 32
@adv7183_log_status._entry_ptr.55 = internal global ptr @adv7183_log_status._entry.53, section ".printk_index", align 4
@adv7183_log_status._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.13, ptr @.str.3, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016%s: adv7183: Digital clamp control 1 = 0x%02x\0A\00", [47 x i8] zeroinitializer }, align 32
@adv7183_log_status._entry_ptr.58 = internal global ptr @adv7183_log_status._entry.56, section ".printk_index", align 4
@adv7183_log_status._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.13, ptr @.str.3, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016%s: adv7183: Shaping filter control 1 and 2 = 0x%02x 0x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@adv7183_log_status._entry_ptr.61 = internal global ptr @adv7183_log_status._entry.59, section ".printk_index", align 4
@adv7183_log_status._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.13, ptr @.str.3, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016%s: adv7183: Comb filter control = 0x%02x\0A\00", [51 x i8] zeroinitializer }, align 32
@adv7183_log_status._entry_ptr.64 = internal global ptr @adv7183_log_status._entry.62, section ".printk_index", align 4
@adv7183_log_status._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.13, ptr @.str.3, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s: adv7183: ADI control 2 = 0x%02x\0A\00", [57 x i8] zeroinitializer }, align 32
@adv7183_log_status._entry_ptr.67 = internal global ptr @adv7183_log_status._entry.65, section ".printk_index", align 4
@adv7183_log_status._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.13, ptr @.str.3, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016%s: adv7183: Pixel delay control = 0x%02x\0A\00", [51 x i8] zeroinitializer }, align 32
@adv7183_log_status._entry_ptr.70 = internal global ptr @adv7183_log_status._entry.68, section ".printk_index", align 4
@adv7183_log_status._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.13, ptr @.str.3, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s: adv7183: Misc gain control = 0x%02x\0A\00", [53 x i8] zeroinitializer }, align 32
@adv7183_log_status._entry_ptr.73 = internal global ptr @adv7183_log_status._entry.71, section ".printk_index", align 4
@adv7183_log_status._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.13, ptr @.str.3, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s: adv7183: AGC mode control = 0x%02x\0A\00", [54 x i8] zeroinitializer }, align 32
@adv7183_log_status._entry_ptr.76 = internal global ptr @adv7183_log_status._entry.74, section ".printk_index", align 4
@adv7183_log_status._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.13, ptr @.str.3, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016%s: adv7183: Chroma gain control 1 and 2 = 0x%02x 0x%02x\0A\00", [36 x i8] zeroinitializer }, align 32
@adv7183_log_status._entry_ptr.79 = internal global ptr @adv7183_log_status._entry.77, section ".printk_index", align 4
@adv7183_log_status._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.13, ptr @.str.3, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016%s: adv7183: Luma gain control 1 and 2 = 0x%02x 0x%02x\0A\00", [38 x i8] zeroinitializer }, align 32
@adv7183_log_status._entry_ptr.82 = internal global ptr @adv7183_log_status._entry.80, section ".printk_index", align 4
@adv7183_log_status._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.13, ptr @.str.3, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016%s: adv7183: Vsync field control 1 2 and 3 = 0x%02x 0x%02x 0x%02x\0A\00", [59 x i8] zeroinitializer }, align 32
@adv7183_log_status._entry_ptr.85 = internal global ptr @adv7183_log_status._entry.83, section ".printk_index", align 4
@adv7183_log_status._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.13, ptr @.str.3, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\016%s: adv7183: Hsync position control 1 2 and 3 = 0x%02x 0x%02x 0x%02x\0A\00", [56 x i8] zeroinitializer }, align 32
@adv7183_log_status._entry_ptr.88 = internal global ptr @adv7183_log_status._entry.86, section ".printk_index", align 4
@adv7183_log_status._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.13, ptr @.str.3, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: adv7183: Polarity = 0x%02x\0A\00", [62 x i8] zeroinitializer }, align 32
@adv7183_log_status._entry_ptr.91 = internal global ptr @adv7183_log_status._entry.89, section ".printk_index", align 4
@adv7183_log_status._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.13, ptr @.str.3, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: adv7183: ADC control = 0x%02x\0A\00", [59 x i8] zeroinitializer }, align 32
@adv7183_log_status._entry_ptr.94 = internal global ptr @adv7183_log_status._entry.92, section ".printk_index", align 4
@adv7183_log_status._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.13, ptr @.str.3, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016%s: adv7183: SD offset Cb and Cr = 0x%02x 0x%02x\0A\00", [44 x i8] zeroinitializer }, align 32
@adv7183_log_status._entry_ptr.97 = internal global ptr @adv7183_log_status._entry.95, section ".printk_index", align 4
@adv7183_log_status._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.13, ptr @.str.3, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016%s: adv7183: SD saturation Cb and Cr = 0x%02x 0x%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@adv7183_log_status._entry_ptr.100 = internal global ptr @adv7183_log_status._entry.98, section ".printk_index", align 4
@adv7183_log_status._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.13, ptr @.str.3, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s: adv7183: Drive strength = 0x%02x\0A\00", [56 x i8] zeroinitializer }, align 32
@adv7183_log_status._entry_ptr.103 = internal global ptr @adv7183_log_status._entry.101, section ".printk_index", align 4
@adv7183_writeregs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.3, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: invalid regs array\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adv7183_writeregs\00", [46 x i8] zeroinitializer }, align 32
@adv7183_writeregs._entry_ptr = internal global ptr @adv7183_writeregs._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 64, i64 256, i64 512, i64 1024, i64 2048, i64 16384]
@__sancov_gen_cov_switch_values.106 = internal global [17 x i64] [i64 15, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.107 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.108 = internal global [7 x i64] [i64 5, i64 64, i64 256, i64 512, i64 1024, i64 2048, i64 16384]
@__sancov_gen_cov_switch_values.109 = internal global [6 x i64] [i64 4, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963779]
@___asan_gen_.110 = private unnamed_addr constant [15 x i8] c"adv7183_driver\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 633, i32 26 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 635, i32 13 }
@___asan_gen_.116 = private unnamed_addr constant [11 x i8] c"adv7183_id\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 626, i32 35 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 540, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 555, i32 27 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 556, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 562, i32 7 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 563, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [12 x i8] c"adv7183_ops\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 518, i32 37 }
@___asan_gen_.149 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 571, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"adv7183_ctrl_ops\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 490, i32 35 }
@___asan_gen_.158 = private unnamed_addr constant [18 x i8] c"adv7183_init_regs\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 40, i32 28 }
@___asan_gen_.161 = private unnamed_addr constant [17 x i8] c"adv7183_core_ops\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 494, i32 42 }
@___asan_gen_.164 = private unnamed_addr constant [18 x i8] c"adv7183_video_ops\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 503, i32 43 }
@___asan_gen_.167 = private unnamed_addr constant [16 x i8] c"adv7183_pad_ops\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 512, i32 41 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 112, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 114, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 116, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 118, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 120, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 122, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 124, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 126, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 128, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 130, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 132, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 134, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 136, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 140, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 142, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 144, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 146, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 149, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 151, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 153, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 155, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 157, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 159, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 162, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 165, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 169, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 173, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 175, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 177, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 180, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 183, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.365 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.366 = private constant [31 x i8] c"../drivers/media/i2c/adv7183.c\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 94, i32 3 }
@llvm.compiler.used = appending global [128 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_adv7183_driver_exit, ptr @__initcall__kmod_adv7183__292_642_adv7183_driver_init6, ptr @adv7183_driver_exit, ptr @adv7183_log_status._entry, ptr @adv7183_log_status._entry.101, ptr @adv7183_log_status._entry.14, ptr @adv7183_log_status._entry.17, ptr @adv7183_log_status._entry.20, ptr @adv7183_log_status._entry.23, ptr @adv7183_log_status._entry.26, ptr @adv7183_log_status._entry.29, ptr @adv7183_log_status._entry.32, ptr @adv7183_log_status._entry.35, ptr @adv7183_log_status._entry.38, ptr @adv7183_log_status._entry.41, ptr @adv7183_log_status._entry.44, ptr @adv7183_log_status._entry.47, ptr @adv7183_log_status._entry.50, ptr @adv7183_log_status._entry.53, ptr @adv7183_log_status._entry.56, ptr @adv7183_log_status._entry.59, ptr @adv7183_log_status._entry.62, ptr @adv7183_log_status._entry.65, ptr @adv7183_log_status._entry.68, ptr @adv7183_log_status._entry.71, ptr @adv7183_log_status._entry.74, ptr @adv7183_log_status._entry.77, ptr @adv7183_log_status._entry.80, ptr @adv7183_log_status._entry.83, ptr @adv7183_log_status._entry.86, ptr @adv7183_log_status._entry.89, ptr @adv7183_log_status._entry.92, ptr @adv7183_log_status._entry.95, ptr @adv7183_log_status._entry.98, ptr @adv7183_log_status._entry_ptr, ptr @adv7183_log_status._entry_ptr.100, ptr @adv7183_log_status._entry_ptr.103, ptr @adv7183_log_status._entry_ptr.16, ptr @adv7183_log_status._entry_ptr.19, ptr @adv7183_log_status._entry_ptr.22, ptr @adv7183_log_status._entry_ptr.25, ptr @adv7183_log_status._entry_ptr.28, ptr @adv7183_log_status._entry_ptr.31, ptr @adv7183_log_status._entry_ptr.34, ptr @adv7183_log_status._entry_ptr.37, ptr @adv7183_log_status._entry_ptr.40, ptr @adv7183_log_status._entry_ptr.43, ptr @adv7183_log_status._entry_ptr.46, ptr @adv7183_log_status._entry_ptr.49, ptr @adv7183_log_status._entry_ptr.52, ptr @adv7183_log_status._entry_ptr.55, ptr @adv7183_log_status._entry_ptr.58, ptr @adv7183_log_status._entry_ptr.61, ptr @adv7183_log_status._entry_ptr.64, ptr @adv7183_log_status._entry_ptr.67, ptr @adv7183_log_status._entry_ptr.70, ptr @adv7183_log_status._entry_ptr.73, ptr @adv7183_log_status._entry_ptr.76, ptr @adv7183_log_status._entry_ptr.79, ptr @adv7183_log_status._entry_ptr.82, ptr @adv7183_log_status._entry_ptr.85, ptr @adv7183_log_status._entry_ptr.88, ptr @adv7183_log_status._entry_ptr.91, ptr @adv7183_log_status._entry_ptr.94, ptr @adv7183_log_status._entry_ptr.97, ptr @adv7183_probe._entry, ptr @adv7183_probe._entry.5, ptr @adv7183_probe._entry.9, ptr @adv7183_probe._entry_ptr, ptr @adv7183_probe._entry_ptr.10, ptr @adv7183_probe._entry_ptr.7, ptr @adv7183_writeregs._entry, ptr @adv7183_writeregs._entry_ptr, ptr @adv7183_driver, ptr @.str, ptr @adv7183_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @adv7183_ops, ptr @adv7183_probe._key, ptr @.str.11, ptr @adv7183_ctrl_ops, ptr @adv7183_init_regs, ptr @adv7183_core_ops, ptr @adv7183_video_ops, ptr @adv7183_pad_ops, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @.str.102, ptr @.str.104, ptr @.str.105], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_init_regs to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_log_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_log_status._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_log_status._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_log_status._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_log_status._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_log_status._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_log_status._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_log_status._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_log_status._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_log_status._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_log_status._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_log_status._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_log_status._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_log_status._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_log_status._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_log_status._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_log_status._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_log_status._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_log_status._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_log_status._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_log_status._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_log_status._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_log_status._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_log_status._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_log_status._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_log_status._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_log_status._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_log_status._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_log_status._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_log_status._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_log_status._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7183_writeregs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7183_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @adv7183_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adv7183_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @adv7183_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7183_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #7
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %driver = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %6 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %addr, align 2
  %conv = zext i16 %15 to i32
  %shl = shl nuw nsw i32 %conv, 1
  %name6 = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 12
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %9, i32 noundef %13, i32 noundef %conv, i32 noundef %shl, ptr noundef %name6) #10
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %16 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %platform_data, align 8
  %cmp = icmp eq ptr %17, null
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end11

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 456, i32 noundef 3520) #7
  %cmp14 = icmp eq ptr %call.i, null
  br i1 %cmp14, label %if.end11.cleanup_crit_edge, label %if.end17

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %reset_pin = getelementptr inbounds %struct.adv7183, ptr %call.i, i32 0, i32 5
  %20 = ptrtoint ptr %reset_pin to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %reset_pin, align 8
  %arrayidx18 = getelementptr i32, ptr %17, i32 1
  %21 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx18, align 4
  %oe_pin = getelementptr inbounds %struct.adv7183, ptr %call.i, i32 0, i32 6
  %23 = ptrtoint ptr %oe_pin to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %oe_pin, align 4
  %call21 = tail call i32 @devm_gpio_request_one(ptr noundef %dev, i32 noundef %19, i32 noundef 0, ptr noundef nonnull @.str.4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end37, label %do.end26

do.end26:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %28 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adapter, align 8
  %nr.i139 = getelementptr inbounds %struct.i2c_adapter, ptr %29, i32 0, i32 11
  %30 = ptrtoint ptr %nr.i139 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nr.i139, align 4
  %32 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %addr, align 2
  %conv34 = zext i16 %33 to i32
  %34 = ptrtoint ptr %reset_pin to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %reset_pin, align 8
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %27, i32 noundef %31, i32 noundef %conv34, i32 noundef %35) #10
  br label %cleanup

if.end37:                                         ; preds = %if.end17
  %36 = ptrtoint ptr %oe_pin to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %oe_pin, align 4
  %call40 = tail call i32 @devm_gpio_request_one(ptr noundef %dev, i32 noundef %37, i32 noundef 2, ptr noundef nonnull @.str.8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end56, label %do.end45

do.end45:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %driver, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %42 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %adapter, align 8
  %nr.i140 = getelementptr inbounds %struct.i2c_adapter, ptr %43, i32 0, i32 11
  %44 = ptrtoint ptr %nr.i140 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nr.i140, align 4
  %46 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %addr, align 2
  %conv53 = zext i16 %47 to i32
  %48 = ptrtoint ptr %oe_pin to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %oe_pin, align 4
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %41, i32 noundef %45, i32 noundef %conv53, i32 noundef %49) #10
  br label %cleanup

if.end56:                                         ; preds = %if.end37
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @adv7183_ops) #7
  %hdl58 = getelementptr inbounds %struct.adv7183, ptr %call.i, i32 0, i32 1
  %call60 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl58, i32 noundef 4, ptr noundef nonnull @adv7183_probe._key, ptr noundef nonnull @.str.11) #7
  %call61 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl58, ptr noundef nonnull @adv7183_ctrl_ops, i32 noundef 9963776, i64 noundef -128, i64 noundef 127, i64 noundef 1, i64 noundef 0) #7
  %call62 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl58, ptr noundef nonnull @adv7183_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #7
  %call63 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl58, ptr noundef nonnull @adv7183_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 65535, i64 noundef 1, i64 noundef 32896) #7
  %call64 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl58, ptr noundef nonnull @adv7183_ctrl_ops, i32 noundef 9963779, i64 noundef 0, i64 noundef 65535, i64 noundef 1, i64 noundef 32896) #7
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %50 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %hdl58, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.adv7183, ptr %call.i, i32 0, i32 1, i32 9
  %51 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool65.not = icmp eq i32 %52, 0
  br i1 %tobool65.not, label %if.end68, label %if.then66

if.then66:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl58) #7
  br label %cleanup

if.end68:                                         ; preds = %if.end56
  %std = getelementptr inbounds %struct.adv7183, ptr %call.i, i32 0, i32 2
  %53 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 255, ptr %std, align 8
  %input = getelementptr inbounds %struct.adv7183, ptr %call.i, i32 0, i32 3
  %54 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 4, ptr %input, align 8
  %output = getelementptr inbounds %struct.adv7183, ptr %call.i, i32 0, i32 4
  %55 = ptrtoint ptr %output to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %output, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 214748000) #7
  %66 = ptrtoint ptr %reset_pin to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %reset_pin, align 8
  %call.i141 = tail call ptr @gpio_to_desc(i32 noundef %67) #7
  tail call void @gpiod_set_raw_value(ptr noundef %call.i141, i32 noundef 1) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 214748000) #7
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 11
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end68
  %cnt.02.i = phi i32 [ 0, %if.end68 ], [ %add.i, %while.body.i.while.body.i_crit_edge ]
  %regs.addr.01.i = phi ptr [ @adv7183_init_regs, %if.end68 ], [ %incdec.ptr1.i, %while.body.i.while.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i8, ptr %regs.addr.01.i, i32 1
  %73 = ptrtoint ptr %regs.addr.01.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %regs.addr.01.i, align 1
  %incdec.ptr1.i = getelementptr i8, ptr %regs.addr.01.i, i32 2
  %75 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %incdec.ptr.i, align 1
  %add.i = add nuw nsw i32 %cnt.02.i, 2
  %77 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %78, i8 noundef zeroext %74, i8 noundef zeroext %76) #7
  %cmp.i142 = icmp ult i32 %cnt.02.i, 36
  br i1 %cmp.i142, label %while.body.i.while.body.i_crit_edge, label %adv7183_set_fmt.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

adv7183_set_fmt.exit:                             ; preds = %while.body.i
  %79 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %std, align 8
  %call79 = tail call i32 @adv7183_s_std(ptr noundef nonnull %call.i, i64 noundef %80)
  %81 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %std, align 8
  %and.i143 = and i64 %82, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i143)
  %tobool2.not.i = icmp eq i64 %and.i143, 0
  %..i = select i1 %tobool2.not.i, i32 6, i32 5
  %.26.i = select i1 %tobool2.not.i, i32 576, i32 480
  %fmt9.i = getelementptr inbounds %struct.adv7183, ptr %call.i, i32 0, i32 7
  %83 = ptrtoint ptr %fmt9.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 720, ptr %fmt9.i, align 8
  %fmt.sroa.10.8.fmt9.i.sroa_idx = getelementptr inbounds %struct.adv7183, ptr %call.i, i32 0, i32 7, i32 1
  %84 = ptrtoint ptr %fmt.sroa.10.8.fmt9.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %.26.i, ptr %fmt.sroa.10.8.fmt9.i.sroa_idx, align 4
  %fmt.sroa.12.8.fmt9.i.sroa_idx = getelementptr inbounds %struct.adv7183, ptr %call.i, i32 0, i32 7, i32 2
  %85 = ptrtoint ptr %fmt.sroa.12.8.fmt9.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 8198, ptr %fmt.sroa.12.8.fmt9.i.sroa_idx, align 8
  %fmt.sroa.13.8.fmt9.i.sroa_idx = getelementptr inbounds %struct.adv7183, ptr %call.i, i32 0, i32 7, i32 3
  %86 = ptrtoint ptr %fmt.sroa.13.8.fmt9.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %..i, ptr %fmt.sroa.13.8.fmt9.i.sroa_idx, align 4
  %fmt.sroa.14.8.fmt9.i.sroa_idx = getelementptr inbounds %struct.adv7183, ptr %call.i, i32 0, i32 7, i32 4
  %87 = ptrtoint ptr %fmt.sroa.14.8.fmt9.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1, ptr %fmt.sroa.14.8.fmt9.i.sroa_idx, align 8
  %fmt.sroa.15.8.fmt9.i.sroa_idx = getelementptr inbounds %struct.adv7183, ptr %call.i, i32 0, i32 7, i32 5
  %88 = call ptr @memset(ptr %fmt.sroa.15.8.fmt9.i.sroa_idx, i32 0, i32 28)
  %call82 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl58) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %adv7183_set_fmt.exit.cleanup_crit_edge, label %if.then84

adv7183_set_fmt.exit.cleanup_crit_edge:           ; preds = %adv7183_set_fmt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then84:                                        ; preds = %adv7183_set_fmt.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl58) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then84, %adv7183_set_fmt.exit.cleanup_crit_edge, %if.then66, %do.end45, %do.end26, %if.end11.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end26 ], [ -16, %do.end45 ], [ %52, %if.then66 ], [ %call82, %if.then84 ], [ -5, %entry.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ -12, %if.end11.cleanup_crit_edge ], [ 0, %adv7183_set_fmt.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7183_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #7
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_handler, align 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7183_s_std(ptr nocapture noundef %sd, i64 noundef %std) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 0) #7
  %and = and i32 %call1.i, 15
  call void @__sanitizer_cov_trace_switch(i64 %std, ptr @__sancov_gen_cov_switch_values)
  switch i64 %std, label %if.else17 [
    i64 2048, label %entry.if.end38_crit_edge
    i64 16384, label %if.then3
    i64 512, label %if.then7
    i64 256, label %if.then11
    i64 1024, label %if.then15
  ]

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then15:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.else17:                                        ; preds = %entry
  %and18 = and i64 %std, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and18)
  %tobool.not = icmp eq i64 %and18, 0
  br i1 %tobool.not, label %if.else21, label %if.else17.if.end38_crit_edge

if.else17.if.end38_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.else21:                                        ; preds = %if.else17
  %and22 = and i64 %std, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and22)
  %tobool23.not = icmp eq i64 %and22, 0
  br i1 %tobool23.not, label %if.else26, label %if.else21.if.end38_crit_edge

if.else21.if.end38_crit_edge:                     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.else26:                                        ; preds = %if.else21
  %and27 = and i64 %std, 16711680
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and27)
  %tobool28.not = icmp eq i64 %and27, 0
  br i1 %tobool28.not, label %if.else26.cleanup_crit_edge, label %if.else26.if.end38_crit_edge

if.else26.if.end38_crit_edge:                     ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.else26.cleanup_crit_edge:                      ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end38:                                         ; preds = %if.else26.if.end38_crit_edge, %if.else21.if.end38_crit_edge, %if.else17.if.end38_crit_edge, %if.then15, %if.then11, %if.then7, %if.then3, %entry.if.end38_crit_edge
  %.sink = phi i32 [ 112, %if.then3 ], [ 160, %if.then11 ], [ 192, %if.then15 ], [ 144, %if.then7 ], [ 96, %entry.if.end38_crit_edge ], [ 128, %if.else17.if.end38_crit_edge ], [ 80, %if.else21.if.end38_crit_edge ], [ 224, %if.else26.if.end38_crit_edge ]
  %or4 = or i32 %and, %.sink
  %conv = trunc i32 %or4 to i8
  %2 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i61 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext %conv) #7
  %std40 = getelementptr inbounds %struct.adv7183, ptr %sd, i32 0, i32 2
  %4 = ptrtoint ptr %std40 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %std, ptr %std40, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.else26.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end38 ], [ -22, %if.else26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adv7183_set_fmt(ptr nocapture noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
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
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8198, ptr %code, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %3 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %colorspace, align 4
  %std = getelementptr inbounds %struct.adv7183, ptr %sd, i32 0, i32 2
  %4 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %std, align 8
  %and = and i64 %5, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool2.not = icmp eq i64 %and, 0
  %field4 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %. = select i1 %tobool2.not, i32 6, i32 5
  %.26 = select i1 %tobool2.not, i32 576, i32 480
  %6 = ptrtoint ptr %field4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %., ptr %field4, align 4
  %7 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 720, ptr %format1, align 4
  %8 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.26, ptr %8, align 4
  %10 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp eq i32 %11, 1
  br i1 %cmp, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %fmt9 = getelementptr inbounds %struct.adv7183, ptr %sd, i32 0, i32 7
  %12 = call ptr @memcpy(ptr %fmt9, ptr %format1, i32 48)
  br label %cleanup

if.else10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sd_state, align 4
  %15 = call ptr @memcpy(ptr %14, ptr %format1, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.else10, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.else10 ], [ 0, %if.then8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7183_log_status(ptr noundef %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 0) #7
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name, i32 noundef %call1.i) #10
  %2 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i331 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 1) #7
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name, i32 noundef %call1.i331) #10
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i333 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 3) #7
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name, i32 noundef %call1.i333) #10
  %6 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i335 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext 4) #7
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name, i32 noundef %call1.i335) #10
  %8 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i337 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %9, i8 noundef zeroext 7) #7
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name, i32 noundef %call1.i337) #10
  %10 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i339 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext 8) #7
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name, i32 noundef %call1.i339) #10
  %12 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i341 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %13, i8 noundef zeroext 10) #7
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name, i32 noundef %call1.i341) #10
  %14 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i343 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %15, i8 noundef zeroext 11) #7
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name, i32 noundef %call1.i343) #10
  %16 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i345 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %17, i8 noundef zeroext 12) #7
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name, i32 noundef %call1.i345) #10
  %18 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i347 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %19, i8 noundef zeroext 13) #7
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name, i32 noundef %call1.i347) #10
  %20 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i349 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %21, i8 noundef zeroext 14) #7
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name, i32 noundef %call1.i349) #10
  %22 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i351 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %23, i8 noundef zeroext 15) #7
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %name, i32 noundef %call1.i351) #10
  %24 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i353 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %25, i8 noundef zeroext 16) #7
  %26 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i355 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %27, i8 noundef zeroext 18) #7
  %28 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i357 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %29, i8 noundef zeroext 19) #7
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %name, i32 noundef %call1.i353, i32 noundef %call1.i355, i32 noundef %call1.i357) #10
  %30 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i359 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %31, i8 noundef zeroext 17) #7
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %name, i32 noundef %call1.i359) #10
  %32 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i361 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %33, i8 noundef zeroext 20) #7
  %call116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %name, i32 noundef %call1.i361) #10
  %34 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i363 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %35, i8 noundef zeroext 21) #7
  %call124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %name, i32 noundef %call1.i363) #10
  %36 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i365 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %37, i8 noundef zeroext 23) #7
  %38 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i367 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %39, i8 noundef zeroext 24) #7
  %call133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %name, i32 noundef %call1.i365, i32 noundef %call1.i367) #10
  %40 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i369 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %41, i8 noundef zeroext 25) #7
  %call141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %name, i32 noundef %call1.i369) #10
  %42 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i371 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %43, i8 noundef zeroext 29) #7
  %call149 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %name, i32 noundef %call1.i371) #10
  %44 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i373 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %45, i8 noundef zeroext 39) #7
  %call157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %name, i32 noundef %call1.i373) #10
  %46 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i375 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %47, i8 noundef zeroext 43) #7
  %call165 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %name, i32 noundef %call1.i375) #10
  %48 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i377 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %49, i8 noundef zeroext 44) #7
  %call173 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name, i32 noundef %call1.i377) #10
  %50 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i379 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %51, i8 noundef zeroext 45) #7
  %52 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i381 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %53, i8 noundef zeroext 46) #7
  %call182 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name, i32 noundef %call1.i379, i32 noundef %call1.i381) #10
  %54 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i383 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %55, i8 noundef zeroext 47) #7
  %56 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i385 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %57, i8 noundef zeroext 48) #7
  %call191 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef %name, i32 noundef %call1.i383, i32 noundef %call1.i385) #10
  %58 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i387 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %59, i8 noundef zeroext 49) #7
  %60 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i389 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %61, i8 noundef zeroext 50) #7
  %62 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i391 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %63, i8 noundef zeroext 51) #7
  %call201 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef %name, i32 noundef %call1.i387, i32 noundef %call1.i389, i32 noundef %call1.i391) #10
  %64 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i393 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %65, i8 noundef zeroext 52) #7
  %66 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i395 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %67, i8 noundef zeroext 53) #7
  %68 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i397 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %69, i8 noundef zeroext 54) #7
  %call211 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef %name, i32 noundef %call1.i393, i32 noundef %call1.i395, i32 noundef %call1.i397) #10
  %70 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i399 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %71, i8 noundef zeroext 55) #7
  %call219 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef %name, i32 noundef %call1.i399) #10
  %72 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i401 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %73, i8 noundef zeroext 58) #7
  %call227 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %name, i32 noundef %call1.i401) #10
  %74 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i403 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %75, i8 noundef zeroext -31) #7
  %76 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i405 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %77, i8 noundef zeroext -30) #7
  %call236 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name, i32 noundef %call1.i403, i32 noundef %call1.i405) #10
  %78 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i407 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %79, i8 noundef zeroext -29) #7
  %80 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i409 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %81, i8 noundef zeroext -28) #7
  %call245 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef %name, i32 noundef %call1.i407, i32 noundef %call1.i409) #10
  %82 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i411 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %83, i8 noundef zeroext -12) #7
  %call253 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %name, i32 noundef %call1.i411) #10
  %hdl = getelementptr inbounds %struct.adv7183, ptr %sd, i32 0, i32 1
  tail call void @v4l2_ctrl_handler_log_status(ptr noundef %hdl, ptr noundef %name) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7183_reset(ptr nocapture noundef readonly %sd, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 15) #7
  %2 = trunc i32 %call1.i to i8
  %conv = or i8 %2, -128
  %3 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i4 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 15, i8 noundef zeroext %conv) #7
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7183_g_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv) #7
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
define internal i32 @adv7183_s_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %conv, i8 noundef zeroext %conv3) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_log_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7183_s_routing(ptr nocapture noundef %sd, i32 noundef %input, i32 noundef %output, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %input)
  %cmp = icmp ugt i32 %input, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %output)
  %cmp1 = icmp ugt i32 %output, 1
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %input2 = getelementptr inbounds %struct.adv7183, ptr %sd, i32 0, i32 3
  %0 = ptrtoint ptr %input2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %input2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %input)
  %cmp3.not = icmp eq i32 %1, %input
  br i1 %cmp3.not, label %if.end.if.end36_crit_edge, label %if.then4

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then4:                                         ; preds = %if.end
  %2 = ptrtoint ptr %input2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %input, ptr %input2, align 8
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %3 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 0) #7
  %and = and i32 %call1.i, 240
  %5 = zext i32 %input to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %input, label %if.then4.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb7
    i32 3, label %sw.bb9
    i32 4, label %sw.bb11
    i32 5, label %sw.bb13
    i32 6, label %sw.bb15
    i32 7, label %sw.bb17
    i32 8, label %sw.bb19
    i32 9, label %sw.bb21
    i32 10, label %sw.bb23
    i32 11, label %sw.bb25
    i32 12, label %sw.bb27
    i32 13, label %sw.bb29
    i32 14, label %sw.bb31
    i32 15, label %sw.bb33
  ]

if.then4.sw.epilog_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %and, 1
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %or8 = or i32 %and, 2
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %or10 = or i32 %and, 3
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %or12 = or i32 %and, 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %or14 = or i32 %and, 5
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %or16 = or i32 %and, 11
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %or18 = or i32 %and, 12
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %or20 = or i32 %and, 13
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %or22 = or i32 %and, 14
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %or24 = or i32 %and, 15
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %or26 = or i32 %and, 6
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %or28 = or i32 %and, 7
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %or30 = or i32 %and, 8
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %or32 = or i32 %and, 9
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %or34 = or i32 %and, 10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb33, %sw.bb31, %sw.bb29, %sw.bb27, %sw.bb25, %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb, %if.then4.sw.epilog_crit_edge
  %reg.0 = phi i32 [ %and, %if.then4.sw.epilog_crit_edge ], [ %or34, %sw.bb33 ], [ %or32, %sw.bb31 ], [ %or30, %sw.bb29 ], [ %or28, %sw.bb27 ], [ %or26, %sw.bb25 ], [ %or24, %sw.bb23 ], [ %or22, %sw.bb21 ], [ %or20, %sw.bb19 ], [ %or18, %sw.bb17 ], [ %or16, %sw.bb15 ], [ %or14, %sw.bb13 ], [ %or12, %sw.bb11 ], [ %or10, %sw.bb9 ], [ %or8, %sw.bb7 ], [ %or, %sw.bb ]
  %conv = trunc i32 %reg.0 to i8
  %6 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i85 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 0, i8 noundef zeroext %conv) #7
  br label %if.end36

if.end36:                                         ; preds = %sw.epilog, %if.end.if.end36_crit_edge
  %output37 = getelementptr inbounds %struct.adv7183, ptr %sd, i32 0, i32 4
  %8 = ptrtoint ptr %output37 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %output37, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %output)
  %cmp38.not = icmp eq i32 %9, %output
  br i1 %cmp38.not, label %if.end36.cleanup_crit_edge, label %if.then40

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %output37 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %output, ptr %output37, align 4
  %dev_priv.i.i86 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %11 = ptrtoint ptr %dev_priv.i.i86 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_priv.i.i86, align 4
  %call1.i87 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %12, i8 noundef zeroext 3) #7
  %and43 = and i32 %call1.i87, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %output)
  %cond = icmp eq i32 %output, 1
  %reg.1.v = select i1 %cond, i32 9, i32 12
  %reg.1 = or i32 %and43, %reg.1.v
  %conv49 = trunc i32 %reg.1 to i8
  %13 = ptrtoint ptr %dev_priv.i.i86 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_priv.i.i86, align 4
  %call1.i89 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 3, i8 noundef zeroext %conv49) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %if.end36.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then40 ], [ 0, %if.end36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adv7183_g_std(ptr nocapture noundef readonly %sd, ptr nocapture noundef writeonly %std) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %std1 = getelementptr inbounds %struct.adv7183, ptr %sd, i32 0, i32 2
  %0 = ptrtoint ptr %std1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %std1, align 8
  %2 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %std, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7183_querystd(ptr nocapture noundef %sd, ptr nocapture noundef %std) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 0) #7
  %2 = trunc i32 %call1.i to i8
  %conv = and i8 %2, 15
  %3 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i35 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 0, i8 noundef zeroext %conv) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #7
  %15 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i37 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %16, i8 noundef zeroext 16) #7
  %17 = lshr i32 %call1.i37, 4
  %and4 = and i32 %17, 7
  %18 = zext i32 %and4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %and4, label %while.end.unreachabledefault [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb6
    i32 2, label %sw.bb8
    i32 3, label %sw.bb10
    i32 4, label %sw.bb12
    i32 5, label %sw.bb14
    i32 6, label %sw.bb16
    i32 7, label %sw.bb18
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

while.end.unreachabledefault:                     ; preds = %entry
  unreachable

sw.epilog:                                        ; preds = %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb6, %entry.sw.epilog_crit_edge
  %.sink39 = phi i64 [ 16711680, %sw.bb18 ], [ 1024, %sw.bb16 ], [ 16711680, %sw.bb14 ], [ 255, %sw.bb12 ], [ 2048, %sw.bb10 ], [ 256, %sw.bb8 ], [ 16384, %sw.bb6 ], [ 45056, %entry.sw.epilog_crit_edge ]
  %19 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %std, align 8
  %and19 = and i64 %20, %.sink39
  store i64 %and19, ptr %std, align 8
  %std20 = getelementptr inbounds %struct.adv7183, ptr %sd, i32 0, i32 2
  %21 = ptrtoint ptr %std20 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %std20, align 8
  %23 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %24, i8 noundef zeroext 0) #7
  %and.i = and i32 %call1.i.i, 15
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.108)
  switch i64 %22, label %if.else17.i [
    i64 2048, label %sw.epilog.if.end38.i_crit_edge
    i64 16384, label %if.then3.i
    i64 512, label %if.then7.i
    i64 256, label %if.then11.i
    i64 1024, label %if.then15.i
  ]

sw.epilog.if.end38.i_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.i

if.then3.i:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.i

if.then7.i:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.i

if.then11.i:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.i

if.then15.i:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.i

if.else17.i:                                      ; preds = %sw.epilog
  %and18.i = and i64 %22, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and18.i)
  %tobool.not.i = icmp eq i64 %and18.i, 0
  br i1 %tobool.not.i, label %if.else21.i, label %if.else17.i.if.end38.i_crit_edge

if.else17.i.if.end38.i_crit_edge:                 ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.i

if.else21.i:                                      ; preds = %if.else17.i
  %and22.i = and i64 %22, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and22.i)
  %tobool23.not.i = icmp eq i64 %and22.i, 0
  br i1 %tobool23.not.i, label %if.else26.i, label %if.else21.i.if.end38.i_crit_edge

if.else21.i.if.end38.i_crit_edge:                 ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.i

if.else26.i:                                      ; preds = %if.else21.i
  %and27.i = and i64 %22, 16711680
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and27.i)
  %tobool28.not.i = icmp eq i64 %and27.i, 0
  br i1 %tobool28.not.i, label %if.else26.i.adv7183_s_std.exit_crit_edge, label %if.else26.i.if.end38.i_crit_edge

if.else26.i.if.end38.i_crit_edge:                 ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.i

if.else26.i.adv7183_s_std.exit_crit_edge:         ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adv7183_s_std.exit

if.end38.i:                                       ; preds = %if.else26.i.if.end38.i_crit_edge, %if.else21.i.if.end38.i_crit_edge, %if.else17.i.if.end38.i_crit_edge, %if.then15.i, %if.then11.i, %if.then7.i, %if.then3.i, %sw.epilog.if.end38.i_crit_edge
  %.sink.i = phi i32 [ 112, %if.then3.i ], [ 160, %if.then11.i ], [ 192, %if.then15.i ], [ 144, %if.then7.i ], [ 96, %sw.epilog.if.end38.i_crit_edge ], [ 128, %if.else17.i.if.end38.i_crit_edge ], [ 80, %if.else21.i.if.end38.i_crit_edge ], [ 224, %if.else26.i.if.end38.i_crit_edge ]
  %or4.i = or i32 %.sink.i, %and.i
  %conv.i = trunc i32 %or4.i to i8
  %25 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i61.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %26, i8 noundef zeroext 0, i8 noundef zeroext %conv.i) #7
  %27 = ptrtoint ptr %std20 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %22, ptr %std20, align 8
  br label %adv7183_s_std.exit

adv7183_s_std.exit:                               ; preds = %if.end38.i, %if.else26.i.adv7183_s_std.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7183_g_input_status(ptr nocapture noundef readonly %sd, ptr nocapture noundef writeonly %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %status, align 4
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %1 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %2, i8 noundef zeroext 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %entry.cleanup_crit_edge ], [ 0, %if.then1 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7183_s_stream(ptr nocapture noundef readonly %sd, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %oe_pin1 = getelementptr inbounds %struct.adv7183, ptr %sd, i32 0, i32 6
  %0 = ptrtoint ptr %oe_pin1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %oe_pin1, align 4
  %call.i3 = tail call ptr @gpio_to_desc(i32 noundef %1) #7
  %. = zext i1 %tobool.not to i32
  tail call void @gpiod_set_raw_value(ptr noundef %call.i3, i32 noundef %.) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #7
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adv7183_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %code1 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %4 = ptrtoint ptr %code1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8198, ptr %code1, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adv7183_get_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %format) #6 align 64 {
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
  call void @__sanitizer_cov_trace_pc() #9
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %fmt = getelementptr inbounds %struct.adv7183, ptr %sd, i32 0, i32 7
  %2 = call ptr @memcpy(ptr %format1, ptr %fmt, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7183_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %val1 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %2 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val1, align 4
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963777, label %sw.bb3
    i32 9963778, label %sw.bb6
    i32 9963779, label %sw.bb11
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  %sub = sub i32 127, %3
  %spec.select = select i1 %cmp, i32 %sub, i32 %3
  %conv = trunc i32 %spec.select to i8
  %dev_priv.i.i = getelementptr i8, ptr %1, i32 -44
  %7 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 10, i8 noundef zeroext %conv) #7
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv4 = trunc i32 %3 to i8
  %dev_priv.i.i33 = getelementptr i8, ptr %1, i32 -44
  %9 = ptrtoint ptr %dev_priv.i.i33 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_priv.i.i33, align 4
  %call1.i34 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 8, i8 noundef zeroext %conv4) #7
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = lshr i32 %3, 8
  %conv7 = trunc i32 %11 to i8
  %dev_priv.i.i35 = getelementptr i8, ptr %1, i32 -44
  %12 = ptrtoint ptr %dev_priv.i.i35 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_priv.i.i35, align 4
  %call1.i36 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext -29, i8 noundef zeroext %conv7) #7
  %conv9 = trunc i32 %3 to i8
  %14 = ptrtoint ptr %dev_priv.i.i35 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_priv.i.i35, align 4
  %call1.i38 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext -28, i8 noundef zeroext %conv9) #7
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %16 = lshr i32 %3, 8
  %conv13 = trunc i32 %16 to i8
  %dev_priv.i.i39 = getelementptr i8, ptr %1, i32 -44
  %17 = ptrtoint ptr %dev_priv.i.i39 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_priv.i.i39, align 4
  %call1.i40 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext -31, i8 noundef zeroext %conv13) #7
  %conv16 = trunc i32 %3 to i8
  %19 = ptrtoint ptr %dev_priv.i.i39 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_priv.i.i39, align 4
  %call1.i42 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %20, i8 noundef zeroext -30, i8 noundef zeroext %conv16) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb11, %sw.bb6, %sw.bb3, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb11 ], [ 0, %sw.bb6 ], [ 0, %sw.bb3 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !22, !24, !25, !26, !28, !30, !31, !33, !34, !36, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !167, !169, !171, !172, !173, !174, !176}
!llvm.module.flags = !{!178, !179, !180, !181, !182, !183, !184, !185}
!llvm.ident = !{!186}

!0 = !{ptr @__initcall__kmod_adv7183__292_642_adv7183_driver_init6, !1, !"__initcall__kmod_adv7183__292_642_adv7183_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/adv7183.c", i32 642, i32 1}
!2 = !{ptr @__exitcall_adv7183_driver_exit, !1, !"__exitcall_adv7183_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description293, !4, !"__UNIQUE_ID_description293", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/adv7183.c", i32 644, i32 1}
!5 = !{ptr @__UNIQUE_ID_author294, !6, !"__UNIQUE_ID_author294", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/adv7183.c", i32 645, i32 1}
!7 = !{ptr @__UNIQUE_ID_file295, !8, !"__UNIQUE_ID_file295", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/adv7183.c", i32 646, i32 1}
!9 = !{ptr @__UNIQUE_ID_license296, !8, !"__UNIQUE_ID_license296", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/adv7183.c", i32 635, i32 13}
!12 = !{ptr @adv7183_driver, !13, !"adv7183_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/adv7183.c", i32 633, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/adv7183.c", i32 540, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @adv7183_probe._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @adv7183_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/adv7183.c", i32 555, i32 27}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/adv7183.c", i32 556, i32 3}
!24 = !{ptr @adv7183_probe._entry.5, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @adv7183_probe._entry_ptr.7, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/i2c/adv7183.c", i32 562, i32 7}
!28 = !{ptr @adv7183_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!29 = !{!"../drivers/media/i2c/adv7183.c", i32 563, i32 3}
!30 = !{ptr @adv7183_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @adv7183_probe._key, !32, !"_key", i1 false, i1 false}
!32 = !{!"../drivers/media/i2c/adv7183.c", i32 571, i32 2}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @adv7183_ops, !35, !"adv7183_ops", i1 false, i1 false}
!35 = !{!"../drivers/media/i2c/adv7183.c", i32 518, i32 37}
!36 = !{ptr @adv7183_core_ops, !37, !"adv7183_core_ops", i1 false, i1 false}
!37 = !{!"../drivers/media/i2c/adv7183.c", i32 494, i32 42}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/i2c/adv7183.c", i32 112, i32 2}
!40 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @adv7183_log_status._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @adv7183_log_status._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/i2c/adv7183.c", i32 114, i32 2}
!45 = !{ptr @adv7183_log_status._entry.14, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @adv7183_log_status._entry_ptr.16, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/i2c/adv7183.c", i32 116, i32 2}
!49 = !{ptr @adv7183_log_status._entry.17, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @adv7183_log_status._entry_ptr.19, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/i2c/adv7183.c", i32 118, i32 2}
!53 = !{ptr @adv7183_log_status._entry.20, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @adv7183_log_status._entry_ptr.22, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/i2c/adv7183.c", i32 120, i32 2}
!57 = !{ptr @adv7183_log_status._entry.23, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @adv7183_log_status._entry_ptr.25, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/i2c/adv7183.c", i32 122, i32 2}
!61 = !{ptr @adv7183_log_status._entry.26, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @adv7183_log_status._entry_ptr.28, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/i2c/adv7183.c", i32 124, i32 2}
!65 = !{ptr @adv7183_log_status._entry.29, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @adv7183_log_status._entry_ptr.31, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/i2c/adv7183.c", i32 126, i32 2}
!69 = !{ptr @adv7183_log_status._entry.32, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @adv7183_log_status._entry_ptr.34, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/i2c/adv7183.c", i32 128, i32 2}
!73 = !{ptr @adv7183_log_status._entry.35, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @adv7183_log_status._entry_ptr.37, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/i2c/adv7183.c", i32 130, i32 2}
!77 = !{ptr @adv7183_log_status._entry.38, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @adv7183_log_status._entry_ptr.40, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/i2c/adv7183.c", i32 132, i32 2}
!81 = !{ptr @adv7183_log_status._entry.41, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @adv7183_log_status._entry_ptr.43, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/i2c/adv7183.c", i32 134, i32 2}
!85 = !{ptr @adv7183_log_status._entry.44, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @adv7183_log_status._entry_ptr.46, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.48, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/i2c/adv7183.c", i32 136, i32 2}
!89 = !{ptr @adv7183_log_status._entry.47, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @adv7183_log_status._entry_ptr.49, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.51, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/i2c/adv7183.c", i32 140, i32 2}
!93 = !{ptr @adv7183_log_status._entry.50, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @adv7183_log_status._entry_ptr.52, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.54, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/i2c/adv7183.c", i32 142, i32 2}
!97 = !{ptr @adv7183_log_status._entry.53, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @adv7183_log_status._entry_ptr.55, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.57, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/i2c/adv7183.c", i32 144, i32 2}
!101 = !{ptr @adv7183_log_status._entry.56, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @adv7183_log_status._entry_ptr.58, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.60, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/i2c/adv7183.c", i32 146, i32 2}
!105 = !{ptr @adv7183_log_status._entry.59, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @adv7183_log_status._entry_ptr.61, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.63, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/i2c/adv7183.c", i32 149, i32 2}
!109 = !{ptr @adv7183_log_status._entry.62, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @adv7183_log_status._entry_ptr.64, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.66, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/i2c/adv7183.c", i32 151, i32 2}
!113 = !{ptr @adv7183_log_status._entry.65, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @adv7183_log_status._entry_ptr.67, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.69, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/i2c/adv7183.c", i32 153, i32 2}
!117 = !{ptr @adv7183_log_status._entry.68, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @adv7183_log_status._entry_ptr.70, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.72, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/i2c/adv7183.c", i32 155, i32 2}
!121 = !{ptr @adv7183_log_status._entry.71, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @adv7183_log_status._entry_ptr.73, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.75, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/i2c/adv7183.c", i32 157, i32 2}
!125 = !{ptr @adv7183_log_status._entry.74, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @adv7183_log_status._entry_ptr.76, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.78, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/i2c/adv7183.c", i32 159, i32 2}
!129 = !{ptr @adv7183_log_status._entry.77, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @adv7183_log_status._entry_ptr.79, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.81, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/i2c/adv7183.c", i32 162, i32 2}
!133 = !{ptr @adv7183_log_status._entry.80, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @adv7183_log_status._entry_ptr.82, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.84, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/i2c/adv7183.c", i32 165, i32 2}
!137 = !{ptr @adv7183_log_status._entry.83, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @adv7183_log_status._entry_ptr.85, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.87, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/i2c/adv7183.c", i32 169, i32 2}
!141 = !{ptr @adv7183_log_status._entry.86, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @adv7183_log_status._entry_ptr.88, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.90, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/i2c/adv7183.c", i32 173, i32 2}
!145 = !{ptr @adv7183_log_status._entry.89, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @adv7183_log_status._entry_ptr.91, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.93, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/i2c/adv7183.c", i32 175, i32 2}
!149 = !{ptr @adv7183_log_status._entry.92, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @adv7183_log_status._entry_ptr.94, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.96, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/i2c/adv7183.c", i32 177, i32 2}
!153 = !{ptr @adv7183_log_status._entry.95, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @adv7183_log_status._entry_ptr.97, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.99, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/i2c/adv7183.c", i32 180, i32 2}
!157 = !{ptr @adv7183_log_status._entry.98, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @adv7183_log_status._entry_ptr.100, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.102, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/i2c/adv7183.c", i32 183, i32 2}
!161 = !{ptr @adv7183_log_status._entry.101, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @adv7183_log_status._entry_ptr.103, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @adv7183_video_ops, !164, !"adv7183_video_ops", i1 false, i1 false}
!164 = !{!"../drivers/media/i2c/adv7183.c", i32 503, i32 43}
!165 = !{ptr @adv7183_pad_ops, !166, !"adv7183_pad_ops", i1 false, i1 false}
!166 = !{!"../drivers/media/i2c/adv7183.c", i32 512, i32 41}
!167 = !{ptr @adv7183_ctrl_ops, !168, !"adv7183_ctrl_ops", i1 false, i1 false}
!168 = !{!"../drivers/media/i2c/adv7183.c", i32 490, i32 35}
!169 = !{ptr @.str.104, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/i2c/adv7183.c", i32 94, i32 3}
!171 = !{ptr @.str.105, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @adv7183_writeregs._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @adv7183_writeregs._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @adv7183_init_regs, !175, !"adv7183_init_regs", i1 false, i1 false}
!175 = !{!"../drivers/media/i2c/adv7183.c", i32 40, i32 28}
!176 = !{ptr @adv7183_id, !177, !"adv7183_id", i1 false, i1 false}
!177 = !{!"../drivers/media/i2c/adv7183.c", i32 626, i32 35}
!178 = !{i32 1, !"wchar_size", i32 2}
!179 = !{i32 1, !"min_enum_size", i32 4}
!180 = !{i32 8, !"branch-target-enforcement", i32 0}
!181 = !{i32 8, !"sign-return-address", i32 0}
!182 = !{i32 8, !"sign-return-address-all", i32 0}
!183 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!184 = !{i32 7, !"uwtable", i32 1}
!185 = !{i32 7, !"frame-pointer", i32 2}
!186 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
