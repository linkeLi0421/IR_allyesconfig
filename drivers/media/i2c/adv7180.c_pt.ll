; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/adv7180.c_pt.bc'
source_filename = "../drivers/media/i2c/adv7180.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_sensor_ops = type { ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_event_src_change = type { i32 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.adv7180_chip_info = type { i32, i32, ptr, ptr, ptr }
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
%struct.adv7180_state = type { %struct.v4l2_ctrl_handler, %struct.v4l2_subdev, %struct.media_pad, %struct.mutex, i32, ptr, ptr, i64, i8, i8, i8, ptr, i32, ptr, ptr, ptr, i32, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.92 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.92 = type { %struct.anon.93 }
%struct.anon.93 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_subdev_frame_interval = type { i32, %struct.v4l2_fract, [9 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.116, i16, i16, i16, [10 x i16] }
%union.anon.116 = type { i16 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_mbus_config = type { i32, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.86, %union.anon.87, i32, ptr, i32, %struct.anon.88, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.86 = type { i64 }
%union.anon.87 = type { ptr }
%struct.anon.88 = type { i32 }

@__initcall__kmod_adv7180__292_1571_adv7180_driver_init6 = internal global ptr @adv7180_driver_init, section ".initcall6.init", align 4
@adv7180_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @adv7180_probe, ptr @adv7180_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @adv7180_of_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adv7180_pm_ops, ptr null, ptr null }, ptr @adv7180_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_adv7180_driver_exit = internal global ptr @adv7180_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description293 = internal constant [64 x i8] c"adv7180.description=Analog Devices ADV7180 video decoder driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [35 x i8] c"adv7180.author=Mocean Laboratories\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [39 x i8] c"adv7180.file=drivers/media/i2c/adv7180\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [23 x i8] c"adv7180.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adv7180\00", [24 x i8] zeroinitializer }, align 32
@adv7180_of_id = internal constant { [12 x %struct.of_device_id], [592 x i8] } { [12 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adv7180\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adv7180cp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adv7180st\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adv7182\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adv7280\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adv7280-m\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adv7281\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adv7281-m\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adv7281-ma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adv7282\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adv7282-m\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [592 x i8] zeroinitializer }, align 32
@adv7180_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @adv7180_suspend, ptr @adv7180_resume, ptr @adv7180_suspend, ptr @adv7180_resume, ptr @adv7180_suspend, ptr @adv7180_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@adv7180_id = internal constant { [12 x %struct.i2c_device_id], [64 x i8] } { [12 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"adv7180\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @adv7180_info to i32) }, %struct.i2c_device_id { [20 x i8] c"adv7180cp\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @adv7180_info to i32) }, %struct.i2c_device_id { [20 x i8] c"adv7180st\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @adv7180_info to i32) }, %struct.i2c_device_id { [20 x i8] c"adv7182\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @adv7182_info to i32) }, %struct.i2c_device_id { [20 x i8] c"adv7280\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @adv7280_info to i32) }, %struct.i2c_device_id { [20 x i8] c"adv7280-m\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @adv7280_m_info to i32) }, %struct.i2c_device_id { [20 x i8] c"adv7281\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @adv7281_info to i32) }, %struct.i2c_device_id { [20 x i8] c"adv7281-m\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @adv7281_m_info to i32) }, %struct.i2c_device_id { [20 x i8] c"adv7281-ma\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @adv7281_ma_info to i32) }, %struct.i2c_device_id { [20 x i8] c"adv7282\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @adv7282_info to i32) }, %struct.i2c_device_id { [20 x i8] c"adv7282-m\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @adv7282_m_info to i32) }, %struct.i2c_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"powerdown\00", [22 x i8] zeroinitializer }, align 32
@adv7180_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s %d-%04x: request for power pin failed: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adv7180_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/i2c/adv7180.c\00", [36 x i8] zeroinitializer }, align 32
@adv7180_probe._entry_ptr = internal global ptr @adv7180_probe._entry, section ".printk_index", align 4
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@adv7180_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str.4, i32 1379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s %d-%04x: request for reset pin failed: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@adv7180_probe._entry_ptr.8 = internal global ptr @adv7180_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adv,force-bt656-4\00", [46 x i8] zeroinitializer }, align 32
@adv7180_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&state->mutex\00", [18 x i8] zeroinitializer }, align 32
@adv7180_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @adv7180_core_ops, ptr null, ptr null, ptr @adv7180_video_ops, ptr null, ptr null, ptr @adv7180_sensor_ops, ptr @adv7180_pad_ops }, [32 x i8] zeroinitializer }, align 32
@adv7180_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016%s %d-%04x: chip id 0x%x found @ 0x%02x (%s)\0A\00", [48 x i8] zeroinitializer }, align 32
@adv7180_probe._entry_ptr.13 = internal global ptr @adv7180_probe._entry.11, section ".printk_index", align 4
@adv7180_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adv7180_s_power, ptr null, ptr @adv7180_subscribe_event, ptr @v4l2_event_subdev_unsubscribe }, [40 x i8] zeroinitializer }, align 32
@adv7180_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr @adv7180_s_routing, ptr null, ptr @adv7180_g_std, ptr @adv7180_s_std, ptr null, ptr null, ptr @adv7180_querystd, ptr @adv7180_g_tvnorms, ptr null, ptr @adv7180_g_input_status, ptr @adv7180_s_stream, ptr @adv7180_g_pixelaspect, ptr @adv7180_g_frame_interval, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@adv7180_sensor_ops = internal constant { %struct.v4l2_subdev_sensor_ops, [24 x i8] } { %struct.v4l2_subdev_sensor_ops { ptr null, ptr @adv7180_get_skip_frames }, [24 x i8] zeroinitializer }, align 32
@adv7180_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr @adv7180_init_cfg, ptr @adv7180_enum_mbus_code, ptr null, ptr null, ptr @adv7180_get_pad_format, ptr @adv7180_set_pad_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adv7180_get_mbus_config, ptr null }, [60 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@adv7180_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"adv7180:619:(&state->ctrl_hdl)->_lock\00", [58 x i8] zeroinitializer }, align 32
@adv7180_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @adv7180_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@adv7180_ctrl_fast_switch = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @adv7180_ctrl_ops, ptr null, i32 9967984, ptr @.str.16, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Fast Switching\00", [17 x i8] zeroinitializer }, align 32
@adv7180_irq.src_ch = internal constant { { i32, [4 x i8], { %struct.v4l2_event_src_change, [60 x i8] }, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] }, [56 x i8] } { { i32, [4 x i8], { %struct.v4l2_event_src_change, [60 x i8] }, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] } { i32 5, [4 x i8] undef, { %struct.v4l2_event_src_change, [60 x i8] } { %struct.v4l2_event_src_change { i32 1 }, [60 x i8] undef }, i32 0, i32 0, %struct.__kernel_timespec zeroinitializer, i32 0, [8 x i32] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@adv7180_info = internal constant { %struct.adv7180_chip_info, [44 x i8] } { %struct.adv7180_chip_info { i32 1, i32 2047, ptr @adv7180_set_std, ptr @adv7180_select_input, ptr @adv7180_init }, [44 x i8] zeroinitializer }, align 32
@adv7182_info = internal constant { %struct.adv7180_chip_info, [44 x i8] } { %struct.adv7180_chip_info { i32 0, i32 54031, ptr @adv7182_set_std, ptr @adv7182_select_input, ptr @adv7182_init }, [44 x i8] zeroinitializer }, align 32
@adv7280_info = internal constant { %struct.adv7180_chip_info, [44 x i8] } { %struct.adv7180_chip_info { i32 10, i32 4879, ptr @adv7182_set_std, ptr @adv7182_select_input, ptr @adv7182_init }, [44 x i8] zeroinitializer }, align 32
@adv7280_m_info = internal constant { %struct.adv7180_chip_info, [44 x i8] } { %struct.adv7180_chip_info { i32 14, i32 16383, ptr @adv7182_set_std, ptr @adv7182_select_input, ptr @adv7182_init }, [44 x i8] zeroinitializer }, align 32
@adv7281_info = internal constant { %struct.adv7180_chip_info, [44 x i8] } { %struct.adv7180_chip_info { i32 6, i32 149955, ptr @adv7182_set_std, ptr @adv7182_select_input, ptr @adv7182_init }, [44 x i8] zeroinitializer }, align 32
@adv7281_m_info = internal constant { %struct.adv7180_chip_info, [44 x i8] } { %struct.adv7180_chip_info { i32 6, i32 187343, ptr @adv7182_set_std, ptr @adv7182_select_input, ptr @adv7182_init }, [44 x i8] zeroinitializer }, align 32
@adv7281_ma_info = internal constant { %struct.adv7180_chip_info, [44 x i8] } { %struct.adv7180_chip_info { i32 6, i32 262143, ptr @adv7182_set_std, ptr @adv7182_select_input, ptr @adv7182_init }, [44 x i8] zeroinitializer }, align 32
@adv7282_info = internal constant { %struct.adv7180_chip_info, [44 x i8] } { %struct.adv7180_chip_info { i32 10, i32 149955, ptr @adv7182_set_std, ptr @adv7182_select_input, ptr @adv7182_init }, [44 x i8] zeroinitializer }, align 32
@adv7282_m_info = internal constant { %struct.adv7180_chip_info, [44 x i8] } { %struct.adv7180_chip_info { i32 14, i32 183247, ptr @adv7182_set_std, ptr @adv7182_select_input, ptr @adv7182_init }, [44 x i8] zeroinitializer }, align 32
@adv7280_lbias_settings = internal constant { [4 x [3 x i32]], [48 x i8] } { [4 x [3 x i32]] [[3 x i32] [i32 205, i32 78, i32 128], [3 x i32] [i32 192, i32 78, i32 128], [3 x i32] [i32 11, i32 206, i32 128], [3 x i32] [i32 11, i32 78, i32 192]], [48 x i8] zeroinitializer }, align 32
@adv7182_lbias_settings = internal constant { [4 x [3 x i32]], [48 x i8] } { [4 x [3 x i32]] [[3 x i32] [i32 203, i32 78, i32 128], [3 x i32] [i32 192, i32 78, i32 128], [3 x i32] [i32 11, i32 206, i32 128], [3 x i32] [i32 11, i32 78, i32 192]], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 64, i64 256, i64 512, i64 1024, i64 2048, i64 16384]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.18 = internal global [7 x i64] [i64 5, i64 64, i64 256, i64 512, i64 1024, i64 2048, i64 16384]
@__sancov_gen_cov_switch_values.19 = internal global [6 x i64] [i64 4, i64 64, i64 256, i64 512, i64 2048, i64 16384]
@__sancov_gen_cov_switch_values.20 = internal global [7 x i64] [i64 5, i64 64, i64 256, i64 512, i64 1024, i64 2048, i64 16384]
@__sancov_gen_cov_switch_values.21 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.22 = internal global [7 x i64] [i64 5, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963779, i64 9967984]
@__sancov_gen_cov_switch_values.23 = internal global [12 x i64] [i64 10, i64 32, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17]
@___asan_gen_.24 = private unnamed_addr constant [15 x i8] c"adv7180_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1560, i32 26 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1562, i32 14 }
@___asan_gen_.30 = private unnamed_addr constant [14 x i8] c"adv7180_of_id\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1542, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant [15 x i8] c"adv7180_pm_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1534, i32 8 }
@___asan_gen_.36 = private unnamed_addr constant [11 x i8] c"adv7180_id\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1492, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1367, i32 59 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1371, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1375, i32 58 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1379, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1383, i32 32 }
@___asan_gen_.66 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1403, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [12 x i8] c"adv7180_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 895, i32 37 }
@___asan_gen_.75 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1446, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"adv7180_core_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 877, i32 42 }
@___asan_gen_.84 = private unnamed_addr constant [18 x i8] c"adv7180_video_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 865, i32 43 }
@___asan_gen_.87 = private unnamed_addr constant [19 x i8] c"adv7180_sensor_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 891, i32 44 }
@___asan_gen_.90 = private unnamed_addr constant [16 x i8] c"adv7180_pad_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 883, i32 41 }
@___asan_gen_.94 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 998, i32 6 }
@___asan_gen_.96 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 619, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"adv7180_ctrl_ops\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 603, i32 35 }
@___asan_gen_.105 = private unnamed_addr constant [25 x i8] c"adv7180_ctrl_fast_switch\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 607, i32 38 }
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 610, i32 10 }
@___asan_gen_.111 = private unnamed_addr constant [7 x i8] c"src_ch\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 913, i32 34 }
@___asan_gen_.114 = private unnamed_addr constant [13 x i8] c"adv7180_info\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1126, i32 39 }
@___asan_gen_.117 = private unnamed_addr constant [13 x i8] c"adv7182_info\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1147, i32 39 }
@___asan_gen_.120 = private unnamed_addr constant [13 x i8] c"adv7280_info\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1162, i32 39 }
@___asan_gen_.123 = private unnamed_addr constant [15 x i8] c"adv7280_m_info\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1176, i32 39 }
@___asan_gen_.126 = private unnamed_addr constant [13 x i8] c"adv7281_info\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1197, i32 39 }
@___asan_gen_.129 = private unnamed_addr constant [15 x i8] c"adv7281_m_info\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1212, i32 39 }
@___asan_gen_.132 = private unnamed_addr constant [16 x i8] c"adv7281_ma_info\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1232, i32 39 }
@___asan_gen_.135 = private unnamed_addr constant [13 x i8] c"adv7282_info\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1257, i32 39 }
@___asan_gen_.138 = private unnamed_addr constant [15 x i8] c"adv7282_m_info\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1272, i32 39 }
@___asan_gen_.141 = private unnamed_addr constant [23 x i8] c"adv7280_lbias_settings\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1065, i32 21 }
@___asan_gen_.144 = private unnamed_addr constant [23 x i8] c"adv7182_lbias_settings\00", align 1
@___asan_gen_.145 = private constant [31 x i8] c"../drivers/media/i2c/adv7180.c\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1058, i32 21 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_adv7180_driver_exit, ptr @__initcall__kmod_adv7180__292_1571_adv7180_driver_init6, ptr @adv7180_driver_exit, ptr @adv7180_probe._entry, ptr @adv7180_probe._entry.11, ptr @adv7180_probe._entry.6, ptr @adv7180_probe._entry_ptr, ptr @adv7180_probe._entry_ptr.13, ptr @adv7180_probe._entry_ptr.8, ptr @adv7180_driver, ptr @.str, ptr @adv7180_of_id, ptr @adv7180_pm_ops, ptr @adv7180_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @adv7180_probe.__key, ptr @.str.10, ptr @adv7180_ops, ptr @.str.12, ptr @adv7180_core_ops, ptr @adv7180_video_ops, ptr @adv7180_sensor_ops, ptr @adv7180_pad_ops, ptr @.str.14, ptr @adv7180_init_controls._key, ptr @.str.15, ptr @adv7180_ctrl_ops, ptr @adv7180_ctrl_fast_switch, ptr @.str.16, ptr @adv7180_irq.src_ch, ptr @adv7180_info, ptr @adv7182_info, ptr @adv7280_info, ptr @adv7280_m_info, ptr @adv7281_info, ptr @adv7281_m_info, ptr @adv7281_ma_info, ptr @adv7282_info, ptr @adv7282_m_info, ptr @adv7280_lbias_settings, ptr @adv7182_lbias_settings], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7180_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7180_of_id to i32), i32 2352, i32 2944, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7180_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7180_id to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7180_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7180_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7180_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7180_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7180_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7180_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7180_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7180_sensor_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7180_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7180_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7180_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7180_ctrl_fast_switch to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7180_irq.src_ch to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7180_info to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7182_info to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7280_info to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7280_m_info to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7281_info to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7281_m_info to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7281_ma_info to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7282_info to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7282_m_info to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7280_lbias_settings to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7182_lbias_settings to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7180_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @adv7180_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adv7180_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @adv7180_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7180_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
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
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 560, i32 noundef 3520) #9
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %client5 = getelementptr inbounds %struct.adv7180_state, ptr %call.i, i32 0, i32 11
  %8 = ptrtoint ptr %client5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %client, ptr %client5, align 4
  %field = getelementptr inbounds %struct.adv7180_state, ptr %call.i, i32 0, i32 16
  %9 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 7, ptr %field, align 8
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %10 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %driver_data, align 4
  %12 = inttoptr i32 %11 to ptr
  %chip_info = getelementptr inbounds %struct.adv7180_state, ptr %call.i, i32 0, i32 15
  %13 = ptrtoint ptr %chip_info to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %chip_info, align 4
  %call7 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 7) #9
  %pwdn_gpio = getelementptr inbounds %struct.adv7180_state, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %pwdn_gpio to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7, ptr %pwdn_gpio, align 4
  %cmp.i225 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i225, label %if.then10, label %if.end17

if.then10:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %call7 to i32
  %driver = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %16 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %20 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %24 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %addr, align 2
  %conv = zext i16 %25 to i32
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %19, i32 noundef %23, i32 noundef %conv, i32 noundef %15) #12
  br label %cleanup

if.end17:                                         ; preds = %if.end4
  %call19 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef 7) #9
  %rst_gpio = getelementptr inbounds %struct.adv7180_state, ptr %call.i, i32 0, i32 6
  %26 = ptrtoint ptr %rst_gpio to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call19, ptr %rst_gpio, align 8
  %cmp.i226 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i226, label %if.then22, label %if.end37

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %call19 to i32
  %driver30 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %28 = ptrtoint ptr %driver30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver30, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %32 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %adapter, align 8
  %nr.i227 = getelementptr inbounds %struct.i2c_adapter, ptr %33, i32 0, i32 11
  %34 = ptrtoint ptr %nr.i227 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nr.i227, align 4
  %addr34 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %36 = ptrtoint ptr %addr34 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %addr34, align 2
  %conv35 = zext i16 %37 to i32
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %31, i32 noundef %35, i32 noundef %conv35, i32 noundef %27) #12
  br label %cleanup

if.end37:                                         ; preds = %if.end17
  %call.i228 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef null) #9
  %tobool.i.not = icmp eq ptr %call.i228, null
  br i1 %tobool.i.not, label %if.end37.if.end40_crit_edge, label %if.then39

if.end37.if.end40_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %force_bt656_4 = getelementptr inbounds %struct.adv7180_state, ptr %call.i, i32 0, i32 17
  %38 = ptrtoint ptr %force_bt656_4 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %force_bt656_4, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end37.if.end40_crit_edge
  %39 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chip_info, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %and = and i32 %42, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool42.not = icmp eq i32 %and, 0
  br i1 %tobool42.not, label %if.end40.if.end52_crit_edge, label %if.then43

if.end40.if.end52_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then43:                                        ; preds = %if.end40
  %43 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %adapter, align 8
  %call45 = tail call ptr @i2c_new_dummy_device(ptr noundef %44, i16 noundef zeroext 68) #9
  %csi_client = getelementptr inbounds %struct.adv7180_state, ptr %call.i, i32 0, i32 13
  %45 = ptrtoint ptr %csi_client to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call45, ptr %csi_client, align 4
  %cmp.i229 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i229, label %if.then48, label %if.then43.if.end52_crit_edge

if.then43.if.end52_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then48:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %call45 to i32
  br label %cleanup

if.end52:                                         ; preds = %if.then43.if.end52_crit_edge, %if.end40.if.end52_crit_edge
  %47 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %chip_info, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %and55 = and i32 %50, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end52.if.end66_crit_edge, label %if.then57

if.end52.if.end66_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then57:                                        ; preds = %if.end52
  %51 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %adapter, align 8
  %call59 = tail call ptr @i2c_new_dummy_device(ptr noundef %52, i16 noundef zeroext 66) #9
  %vpp_client = getelementptr inbounds %struct.adv7180_state, ptr %call.i, i32 0, i32 14
  %53 = ptrtoint ptr %vpp_client to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call59, ptr %vpp_client, align 8
  %cmp.i230 = icmp ugt ptr %call59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i230, label %if.then62, label %if.then57.if.end66_crit_edge

if.then57.if.end66_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then62:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %call59 to i32
  br label %err_unregister_csi_client

if.end66:                                         ; preds = %if.then57.if.end66_crit_edge, %if.end52.if.end66_crit_edge
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %55 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %irq, align 4
  %irq67 = getelementptr inbounds %struct.adv7180_state, ptr %call.i, i32 0, i32 4
  %57 = ptrtoint ptr %irq67 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %irq67, align 8
  %mutex = getelementptr inbounds %struct.adv7180_state, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.10, ptr noundef nonnull @adv7180_probe.__key) #9
  %curr_norm = getelementptr inbounds %struct.adv7180_state, ptr %call.i, i32 0, i32 7
  %58 = ptrtoint ptr %curr_norm to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 45056, ptr %curr_norm, align 8
  %59 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %chip_info, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  %63 = trunc i32 %62 to i8
  %64 = and i8 %63, 1
  %65 = getelementptr inbounds %struct.adv7180_state, ptr %call.i, i32 0, i32 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %64, ptr %65, align 8
  %input = getelementptr inbounds %struct.adv7180_state, ptr %call.i, i32 0, i32 10
  %67 = ptrtoint ptr %input to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %input, align 2
  %sd78 = getelementptr inbounds %struct.adv7180_state, ptr %call.i, i32 0, i32 1
  tail call void @v4l2_i2c_subdev_init(ptr noundef %sd78, ptr noundef %client, ptr noundef nonnull @adv7180_ops) #9
  %flags79 = getelementptr inbounds %struct.adv7180_state, ptr %call.i, i32 0, i32 1, i32 4
  %68 = ptrtoint ptr %flags79 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags79, align 4
  %or = or i32 %69, 12
  store i32 %or, ptr %flags79, align 4
  %call.i231 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef nonnull %call.i, i32 noundef 4, ptr noundef nonnull @adv7180_init_controls._key, ptr noundef nonnull @.str.15) #9
  %call2.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef nonnull %call.i, ptr noundef nonnull @adv7180_ctrl_ops, i32 noundef 9963776, i64 noundef -128, i64 noundef 127, i64 noundef 1, i64 noundef 0) #9
  %call4.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef nonnull %call.i, ptr noundef nonnull @adv7180_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #9
  %call6.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef nonnull %call.i, ptr noundef nonnull @adv7180_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #9
  %call8.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef nonnull %call.i, ptr noundef nonnull @adv7180_ctrl_ops, i32 noundef 9963779, i64 noundef -127, i64 noundef 128, i64 noundef 1, i64 noundef 0) #9
  %call10.i = tail call ptr @v4l2_ctrl_new_custom(ptr noundef nonnull %call.i, ptr noundef nonnull @adv7180_ctrl_fast_switch, ptr noundef null) #9
  %ctrl_handler.i = getelementptr inbounds %struct.adv7180_state, ptr %call.i, i32 0, i32 1, i32 8
  %70 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call.i, ptr %ctrl_handler.i, align 8
  %error.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %call.i, i32 0, i32 9
  %71 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i = icmp eq i32 %72, 0
  br i1 %tobool.not.i, label %if.end83, label %if.end66.err_unregister_vpp_client_crit_edge

if.end66.err_unregister_vpp_client_crit_edge:     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unregister_vpp_client

if.end83:                                         ; preds = %if.end66
  %call17.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef nonnull %call.i) #9
  %pad = getelementptr inbounds %struct.adv7180_state, ptr %call.i, i32 0, i32 2
  %flags84 = getelementptr inbounds %struct.adv7180_state, ptr %call.i, i32 0, i32 2, i32 4
  %73 = ptrtoint ptr %flags84 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 2, ptr %flags84, align 4
  %function = getelementptr inbounds %struct.adv7180_state, ptr %call.i, i32 0, i32 1, i32 0, i32 3
  %74 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 131076, ptr %function, align 4
  %call87 = tail call i32 @media_entity_pads_init(ptr noundef %sd78, i16 noundef zeroext 1, ptr noundef %pad) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end90, label %if.end83.err_unregister_vpp_client_crit_edge

if.end83.err_unregister_vpp_client_crit_edge:     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unregister_vpp_client

if.end90:                                         ; preds = %if.end83
  %call91 = tail call fastcc i32 @init_device(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %if.end90.err_unregister_vpp_client_crit_edge

if.end90.err_unregister_vpp_client_crit_edge:     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unregister_vpp_client

if.end94:                                         ; preds = %if.end90
  %75 = ptrtoint ptr %irq67 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %irq67, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool96.not = icmp eq i32 %76, 0
  br i1 %tobool96.not, label %if.end94.if.end103_crit_edge, label %if.then97

if.end94.if.end103_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103

if.then97:                                        ; preds = %if.end94
  %77 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %irq, align 4
  %call99 = tail call i32 @request_threaded_irq(i32 noundef %78, ptr noundef null, ptr noundef nonnull @adv7180_irq, i32 noundef 8194, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.then97.if.end103_crit_edge, label %if.then97.err_unregister_vpp_client_crit_edge

if.then97.err_unregister_vpp_client_crit_edge:    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unregister_vpp_client

if.then97.if.end103_crit_edge:                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103

if.end103:                                        ; preds = %if.then97.if.end103_crit_edge, %if.end94.if.end103_crit_edge
  %call104 = tail call i32 @v4l2_async_register_subdev(ptr noundef %sd78) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end107, label %if.end103.err_free_irq_crit_edge

if.end103.err_free_irq_crit_edge:                 ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_irq

if.end107:                                        ; preds = %if.end103
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %call109 = tail call fastcc i32 @adv7180_read(ptr noundef nonnull %call.i, i32 noundef 17)
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %cmp111 = icmp slt i32 %call109, 0
  br i1 %cmp111, label %err_v4l2_async_unregister, label %do.end117

do.end117:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  %driver120 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %79 = ptrtoint ptr %driver120 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %driver120, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %83 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %adapter, align 8
  %nr.i232 = getelementptr inbounds %struct.i2c_adapter, ptr %84, i32 0, i32 11
  %85 = ptrtoint ptr %nr.i232 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %nr.i232, align 4
  %addr124 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %87 = ptrtoint ptr %addr124 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %addr124, align 2
  %conv125 = zext i16 %88 to i32
  %name129 = getelementptr inbounds %struct.i2c_adapter, ptr %84, i32 0, i32 12
  %call130 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %82, i32 noundef %86, i32 noundef %conv125, i32 noundef %call109, i32 noundef %conv125, ptr noundef %name129) #12
  br label %cleanup

err_v4l2_async_unregister:                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @v4l2_async_unregister_subdev(ptr noundef %sd78) #9
  br label %err_free_irq

err_free_irq:                                     ; preds = %err_v4l2_async_unregister, %if.end103.err_free_irq_crit_edge
  %ret.0 = phi i32 [ %call104, %if.end103.err_free_irq_crit_edge ], [ %call109, %err_v4l2_async_unregister ]
  %89 = ptrtoint ptr %irq67 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %irq67, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp132 = icmp sgt i32 %90, 0
  br i1 %cmp132, label %if.then134, label %err_free_irq.err_unregister_vpp_client_crit_edge

err_free_irq.err_unregister_vpp_client_crit_edge: ; preds = %err_free_irq
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unregister_vpp_client

if.then134:                                       ; preds = %err_free_irq
  call void @__sanitizer_cov_trace_pc() #11
  %91 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %irq, align 4
  %call136 = tail call ptr @free_irq(i32 noundef %92, ptr noundef nonnull %call.i) #9
  br label %err_unregister_vpp_client

err_unregister_vpp_client:                        ; preds = %if.then134, %err_free_irq.err_unregister_vpp_client_crit_edge, %if.then97.err_unregister_vpp_client_crit_edge, %if.end90.err_unregister_vpp_client_crit_edge, %if.end83.err_unregister_vpp_client_crit_edge, %if.end66.err_unregister_vpp_client_crit_edge
  %ret.3 = phi i32 [ %72, %if.end66.err_unregister_vpp_client_crit_edge ], [ %call87, %if.end83.err_unregister_vpp_client_crit_edge ], [ %call91, %if.end90.err_unregister_vpp_client_crit_edge ], [ %call99, %if.then97.err_unregister_vpp_client_crit_edge ], [ %ret.0, %if.then134 ], [ %ret.0, %err_free_irq.err_unregister_vpp_client_crit_edge ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef nonnull %call.i) #9
  %vpp_client139 = getelementptr inbounds %struct.adv7180_state, ptr %call.i, i32 0, i32 14
  %93 = ptrtoint ptr %vpp_client139 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %vpp_client139, align 8
  tail call void @i2c_unregister_device(ptr noundef %94) #9
  br label %err_unregister_csi_client

err_unregister_csi_client:                        ; preds = %err_unregister_vpp_client, %if.then62
  %ret.4 = phi i32 [ %54, %if.then62 ], [ %ret.3, %err_unregister_vpp_client ]
  %csi_client140 = getelementptr inbounds %struct.adv7180_state, ptr %call.i, i32 0, i32 13
  %95 = ptrtoint ptr %csi_client140 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %csi_client140, align 4
  tail call void @i2c_unregister_device(ptr noundef %96) #9
  %mutex141 = getelementptr inbounds %struct.adv7180_state, ptr %call.i, i32 0, i32 3
  tail call void @mutex_destroy(ptr noundef %mutex141) #9
  br label %cleanup

cleanup:                                          ; preds = %err_unregister_csi_client, %do.end117, %if.then48, %if.then22, %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %15, %if.then10 ], [ %27, %if.then22 ], [ %46, %if.then48 ], [ %ret.4, %err_unregister_csi_client ], [ 0, %do.end117 ], [ -5, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7180_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -184
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #9
  %irq = getelementptr i8, ptr %1, i32 320
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %irq2 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %4 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq2, align 4
  %call3 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %add.ptr.i) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @v4l2_ctrl_handler_free(ptr noundef %add.ptr.i) #9
  %vpp_client = getelementptr i8, ptr %1, i32 360
  %6 = ptrtoint ptr %vpp_client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vpp_client, align 8
  tail call void @i2c_unregister_device(ptr noundef %7) #9
  %csi_client = getelementptr i8, ptr %1, i32 356
  %8 = ptrtoint ptr %csi_client to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %csi_client, align 4
  tail call void @i2c_unregister_device(ptr noundef %9) #9
  %rst_gpio.i = getelementptr i8, ptr %1, i32 328
  %10 = ptrtoint ptr %rst_gpio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rst_gpio.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.adv7180_set_reset_pin.exit_crit_edge, label %if.end.i

if.end.adv7180_set_reset_pin.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_set_reset_pin.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %11, i32 noundef 1) #9
  br label %adv7180_set_reset_pin.exit

adv7180_set_reset_pin.exit:                       ; preds = %if.end.i, %if.end.adv7180_set_reset_pin.exit_crit_edge
  %pwdn_gpio.i = getelementptr i8, ptr %1, i32 324
  %12 = ptrtoint ptr %pwdn_gpio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pwdn_gpio.i, align 4
  %tobool.not.i14 = icmp eq ptr %13, null
  br i1 %tobool.not.i14, label %adv7180_set_reset_pin.exit.adv7180_set_power_pin.exit_crit_edge, label %if.end.i15

adv7180_set_reset_pin.exit.adv7180_set_power_pin.exit_crit_edge: ; preds = %adv7180_set_reset_pin.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_set_power_pin.exit

if.end.i15:                                       ; preds = %adv7180_set_reset_pin.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %13, i32 noundef 1) #9
  br label %adv7180_set_power_pin.exit

adv7180_set_power_pin.exit:                       ; preds = %if.end.i15, %adv7180_set_reset_pin.exit.adv7180_set_power_pin.exit_crit_edge
  %mutex = getelementptr i8, ptr %1, i32 228
  tail call void @mutex_destroy(ptr noundef %mutex) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_device(ptr noundef %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %pwdn_gpio.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 5
  %0 = ptrtoint ptr %pwdn_gpio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwdn_gpio.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.adv7180_set_power_pin.exit_crit_edge, label %if.end.i

entry.adv7180_set_power_pin.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_set_power_pin.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %1, i32 noundef 0) #9
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #9
  br label %adv7180_set_power_pin.exit

adv7180_set_power_pin.exit:                       ; preds = %if.end.i, %entry.adv7180_set_power_pin.exit_crit_edge
  %rst_gpio.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 6
  %2 = ptrtoint ptr %rst_gpio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rst_gpio.i, align 8
  %tobool.not.i50 = icmp eq ptr %3, null
  br i1 %tobool.not.i50, label %adv7180_set_power_pin.exit.adv7180_set_reset_pin.exit_crit_edge, label %if.end.i51

adv7180_set_power_pin.exit.adv7180_set_reset_pin.exit_crit_edge: ; preds = %adv7180_set_power_pin.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_set_reset_pin.exit

if.end.i51:                                       ; preds = %adv7180_set_power_pin.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %3, i32 noundef 0) #9
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #9
  br label %adv7180_set_reset_pin.exit

adv7180_set_reset_pin.exit:                       ; preds = %if.end.i51, %adv7180_set_power_pin.exit.adv7180_set_reset_pin.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i52 = icmp eq i32 %4, 0
  br i1 %tobool.not.i52, label %adv7180_set_reset_pin.exit.if.end.i53_crit_edge, label %land.rhs.i

adv7180_set_reset_pin.exit.if.end.i53_crit_edge:  ; preds = %adv7180_set_reset_pin.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i53

land.rhs.i:                                       ; preds = %adv7180_set_reset_pin.exit
  %dep_map.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 3, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i53_crit_edge, !prof !97

land.rhs.i.if.end.i53_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i53

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i53

if.end.i53:                                       ; preds = %do.end.i, %land.rhs.i.if.end.i53_crit_edge, %adv7180_set_reset_pin.exit.if.end.i53_crit_edge
  %register_page.i.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 12
  %5 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %register_page.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not.i.i = icmp eq i32 %6, 0
  br i1 %cmp.not.i.i, label %if.end.i53.adv7180_write.exit_crit_edge, label %if.then.i.i

if.end.i53.adv7180_write.exit_crit_edge:          ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit

if.then.i.i:                                      ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 11
  %7 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %client.i.i, align 4
  %call.i31.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  %9 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %register_page.i.i, align 8
  br label %adv7180_write.exit

adv7180_write.exit:                               ; preds = %if.then.i.i, %if.end.i53.adv7180_write.exit_crit_edge
  %client.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 11
  %10 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client.i, align 4
  %call26.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 15, i8 noundef zeroext -128) #9
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #9
  %chip_info = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 15
  %12 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip_info, align 4
  %init = getelementptr inbounds %struct.adv7180_chip_info, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init, align 4
  %call1 = tail call i32 %15(ptr noundef %state) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %adv7180_write.exit.out_unlock_crit_edge

adv7180_write.exit.out_unlock_crit_edge:          ; preds = %adv7180_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end:                                           ; preds = %adv7180_write.exit
  %curr_norm.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 7
  %16 = ptrtoint ptr %curr_norm.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %curr_norm.i, align 8
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i64 %17, label %if.end12.i.i [
    i64 2048, label %if.end.adv7180_program_std.exit_crit_edge
    i64 16384, label %if.then2.i.i
    i64 512, label %if.then5.i.i
    i64 256, label %if.then8.i.i
    i64 1024, label %if.then11.i.i
  ]

if.end.adv7180_program_std.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_program_std.exit

if.then2.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_program_std.exit

if.then5.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_program_std.exit

if.then8.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_program_std.exit

if.then11.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_program_std.exit

if.end12.i.i:                                     ; preds = %if.end
  %and.i.i = and i64 %17, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end14.i.i, label %if.end12.i.i.adv7180_program_std.exit_crit_edge

if.end12.i.i.adv7180_program_std.exit_crit_edge:  ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_program_std.exit

if.end14.i.i:                                     ; preds = %if.end12.i.i
  %and15.i.i = and i64 %17, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and15.i.i)
  %tobool16.not.i.i = icmp eq i64 %and15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end18.i.i, label %if.end14.i.i.adv7180_program_std.exit_crit_edge

if.end14.i.i.adv7180_program_std.exit_crit_edge:  ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_program_std.exit

if.end18.i.i:                                     ; preds = %if.end14.i.i
  %and19.i.i = and i64 %17, 16711680
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and19.i.i)
  %tobool20.not.i.i = icmp eq i64 %and19.i.i, 0
  br i1 %tobool20.not.i.i, label %if.end18.i.i.out_unlock_crit_edge, label %if.end18.i.i.adv7180_program_std.exit_crit_edge

if.end18.i.i.adv7180_program_std.exit_crit_edge:  ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_program_std.exit

if.end18.i.i.out_unlock_crit_edge:                ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

adv7180_program_std.exit:                         ; preds = %if.end18.i.i.adv7180_program_std.exit_crit_edge, %if.end14.i.i.adv7180_program_std.exit_crit_edge, %if.end12.i.i.adv7180_program_std.exit_crit_edge, %if.then11.i.i, %if.then8.i.i, %if.then5.i.i, %if.then2.i.i, %if.end.adv7180_program_std.exit_crit_edge
  %retval.0.i.ph.i = phi i32 [ 14, %if.end18.i.i.adv7180_program_std.exit_crit_edge ], [ 5, %if.end14.i.i.adv7180_program_std.exit_crit_edge ], [ 8, %if.end12.i.i.adv7180_program_std.exit_crit_edge ], [ 6, %if.end.adv7180_program_std.exit_crit_edge ], [ 12, %if.then11.i.i ], [ 10, %if.then8.i.i ], [ 9, %if.then5.i.i ], [ 7, %if.then2.i.i ]
  %18 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chip_info, align 4
  %set_std.i.i = getelementptr inbounds %struct.adv7180_chip_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %set_std.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_std.i.i, align 4
  %call.i.i54 = tail call i32 %21(ptr noundef %state, i32 noundef %retval.0.i.ph.i) #9
  %22 = tail call i32 @llvm.smin.i32(i32 %call.i.i54, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i54)
  %tobool3.not = icmp sgt i32 %call.i.i54, -1
  br i1 %tobool3.not, label %if.end5, label %adv7180_program_std.exit.out_unlock_crit_edge

adv7180_program_std.exit.out_unlock_crit_edge:    ; preds = %adv7180_program_std.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end5:                                          ; preds = %adv7180_program_std.exit
  tail call fastcc void @adv7180_set_field_mode(ptr noundef %state)
  %irq = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 4
  %23 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp = icmp sgt i32 %24, 0
  br i1 %cmp, label %if.then7, label %if.end5.out_unlock_crit_edge

if.end5.out_unlock_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.then7:                                         ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %25 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i56 = icmp eq i32 %25, 0
  br i1 %tobool.not.i56, label %if.then7.if.end.i64_crit_edge, label %land.rhs.i60

if.then7.if.end.i64_crit_edge:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i64

land.rhs.i60:                                     ; preds = %if.then7
  %dep_map.i57 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 3, i32 5
  %call.i.i58 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i57, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i58)
  %cmp.not.i59 = icmp eq i32 %call.i.i58, 0
  br i1 %cmp.not.i59, label %do.end.i61, label %land.rhs.i60.if.end.i64_crit_edge, !prof !97

land.rhs.i60.if.end.i64_crit_edge:                ; preds = %land.rhs.i60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i64

do.end.i61:                                       ; preds = %land.rhs.i60
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i64

if.end.i64:                                       ; preds = %do.end.i61, %land.rhs.i60.if.end.i64_crit_edge, %if.then7.if.end.i64_crit_edge
  %26 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %register_page.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %27)
  %cmp.not.i.i63 = icmp eq i32 %27, 32
  br i1 %cmp.not.i.i63, label %if.end.i64.adv7180_write.exit70_crit_edge, label %if.then.i.i67

if.end.i64.adv7180_write.exit70_crit_edge:        ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit70

if.then.i.i67:                                    ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %client.i, align 4
  %call.i31.i66 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %29, i8 noundef zeroext 14, i8 noundef zeroext 32) #9
  %30 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 32, ptr %register_page.i.i, align 8
  br label %adv7180_write.exit70

adv7180_write.exit70:                             ; preds = %if.then.i.i67, %if.end.i64.adv7180_write.exit70_crit_edge
  %31 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %client.i, align 4
  %call26.i69 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %32, i8 noundef zeroext 64, i8 noundef zeroext 17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i69)
  %cmp9 = icmp slt i32 %call26.i69, 0
  br i1 %cmp9, label %adv7180_write.exit70.out_unlock_crit_edge, label %if.end11

adv7180_write.exit70.out_unlock_crit_edge:        ; preds = %adv7180_write.exit70
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end11:                                         ; preds = %adv7180_write.exit70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %33 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i71 = icmp eq i32 %33, 0
  br i1 %tobool.not.i71, label %if.end11.if.end.i79_crit_edge, label %land.rhs.i75

if.end11.if.end.i79_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i79

land.rhs.i75:                                     ; preds = %if.end11
  %dep_map.i72 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 3, i32 5
  %call.i.i73 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i72, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i73)
  %cmp.not.i74 = icmp eq i32 %call.i.i73, 0
  br i1 %cmp.not.i74, label %do.end.i76, label %land.rhs.i75.if.end.i79_crit_edge, !prof !97

land.rhs.i75.if.end.i79_crit_edge:                ; preds = %land.rhs.i75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i79

do.end.i76:                                       ; preds = %land.rhs.i75
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i79

if.end.i79:                                       ; preds = %do.end.i76, %land.rhs.i75.if.end.i79_crit_edge, %if.end11.if.end.i79_crit_edge
  %34 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %register_page.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %35)
  %cmp.not.i.i78 = icmp eq i32 %35, 32
  br i1 %cmp.not.i.i78, label %if.end.i79.adv7180_write.exit85_crit_edge, label %if.then.i.i82

if.end.i79.adv7180_write.exit85_crit_edge:        ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit85

if.then.i.i82:                                    ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %client.i, align 4
  %call.i31.i81 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %37, i8 noundef zeroext 14, i8 noundef zeroext 32) #9
  %38 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 32, ptr %register_page.i.i, align 8
  br label %adv7180_write.exit85

adv7180_write.exit85:                             ; preds = %if.then.i.i82, %if.end.i79.adv7180_write.exit85_crit_edge
  %39 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %client.i, align 4
  %call26.i84 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %40, i8 noundef zeroext 68, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i84)
  %cmp13 = icmp slt i32 %call26.i84, 0
  br i1 %cmp13, label %adv7180_write.exit85.out_unlock_crit_edge, label %if.end15

adv7180_write.exit85.out_unlock_crit_edge:        ; preds = %adv7180_write.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end15:                                         ; preds = %adv7180_write.exit85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %41 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i86 = icmp eq i32 %41, 0
  br i1 %tobool.not.i86, label %if.end15.if.end.i94_crit_edge, label %land.rhs.i90

if.end15.if.end.i94_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i94

land.rhs.i90:                                     ; preds = %if.end15
  %dep_map.i87 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 3, i32 5
  %call.i.i88 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i87, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i88)
  %cmp.not.i89 = icmp eq i32 %call.i.i88, 0
  br i1 %cmp.not.i89, label %do.end.i91, label %land.rhs.i90.if.end.i94_crit_edge, !prof !97

land.rhs.i90.if.end.i94_crit_edge:                ; preds = %land.rhs.i90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i94

do.end.i91:                                       ; preds = %land.rhs.i90
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i94

if.end.i94:                                       ; preds = %do.end.i91, %land.rhs.i90.if.end.i94_crit_edge, %if.end15.if.end.i94_crit_edge
  %42 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %register_page.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %43)
  %cmp.not.i.i93 = icmp eq i32 %43, 32
  br i1 %cmp.not.i.i93, label %if.end.i94.adv7180_write.exit100_crit_edge, label %if.then.i.i97

if.end.i94.adv7180_write.exit100_crit_edge:       ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit100

if.then.i.i97:                                    ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %client.i, align 4
  %call.i31.i96 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %45, i8 noundef zeroext 14, i8 noundef zeroext 32) #9
  %46 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 32, ptr %register_page.i.i, align 8
  br label %adv7180_write.exit100

adv7180_write.exit100:                            ; preds = %if.then.i.i97, %if.end.i94.adv7180_write.exit100_crit_edge
  %47 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %client.i, align 4
  %call26.i99 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %48, i8 noundef zeroext 72, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i99)
  %cmp17 = icmp slt i32 %call26.i99, 0
  br i1 %cmp17, label %adv7180_write.exit100.out_unlock_crit_edge, label %if.end19

adv7180_write.exit100.out_unlock_crit_edge:       ; preds = %adv7180_write.exit100
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end19:                                         ; preds = %adv7180_write.exit100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %49 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i101 = icmp eq i32 %49, 0
  br i1 %tobool.not.i101, label %if.end19.if.end.i109_crit_edge, label %land.rhs.i105

if.end19.if.end.i109_crit_edge:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i109

land.rhs.i105:                                    ; preds = %if.end19
  %dep_map.i102 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 3, i32 5
  %call.i.i103 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i102, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i103)
  %cmp.not.i104 = icmp eq i32 %call.i.i103, 0
  br i1 %cmp.not.i104, label %do.end.i106, label %land.rhs.i105.if.end.i109_crit_edge, !prof !97

land.rhs.i105.if.end.i109_crit_edge:              ; preds = %land.rhs.i105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i109

do.end.i106:                                      ; preds = %land.rhs.i105
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i109

if.end.i109:                                      ; preds = %do.end.i106, %land.rhs.i105.if.end.i109_crit_edge, %if.end19.if.end.i109_crit_edge
  %50 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %register_page.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %51)
  %cmp.not.i.i108 = icmp eq i32 %51, 32
  br i1 %cmp.not.i.i108, label %if.end.i109.adv7180_write.exit115_crit_edge, label %if.then.i.i112

if.end.i109.adv7180_write.exit115_crit_edge:      ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit115

if.then.i.i112:                                   ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %client.i, align 4
  %call.i31.i111 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %53, i8 noundef zeroext 14, i8 noundef zeroext 32) #9
  %54 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 32, ptr %register_page.i.i, align 8
  br label %adv7180_write.exit115

adv7180_write.exit115:                            ; preds = %if.then.i.i112, %if.end.i109.adv7180_write.exit115_crit_edge
  %55 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %client.i, align 4
  %call26.i114 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %56, i8 noundef zeroext 76, i8 noundef zeroext 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i114)
  %cmp21 = icmp slt i32 %call26.i114, 0
  br i1 %cmp21, label %adv7180_write.exit115.out_unlock_crit_edge, label %if.end23

adv7180_write.exit115.out_unlock_crit_edge:       ; preds = %adv7180_write.exit115
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end23:                                         ; preds = %adv7180_write.exit115
  call void @__sanitizer_cov_trace_pc() #11
  %call24 = tail call fastcc i32 @adv7180_write(ptr noundef %state, i32 noundef 8272, i32 noundef 0)
  br label %out_unlock

out_unlock:                                       ; preds = %if.end23, %adv7180_write.exit115.out_unlock_crit_edge, %adv7180_write.exit100.out_unlock_crit_edge, %adv7180_write.exit85.out_unlock_crit_edge, %adv7180_write.exit70.out_unlock_crit_edge, %if.end5.out_unlock_crit_edge, %adv7180_program_std.exit.out_unlock_crit_edge, %if.end18.i.i.out_unlock_crit_edge, %adv7180_write.exit.out_unlock_crit_edge
  %ret.0 = phi i32 [ %call1, %adv7180_write.exit.out_unlock_crit_edge ], [ %22, %adv7180_program_std.exit.out_unlock_crit_edge ], [ %call26.i69, %adv7180_write.exit70.out_unlock_crit_edge ], [ %call26.i84, %adv7180_write.exit85.out_unlock_crit_edge ], [ %call26.i99, %adv7180_write.exit100.out_unlock_crit_edge ], [ %call26.i114, %adv7180_write.exit115.out_unlock_crit_edge ], [ %call24, %if.end23 ], [ 0, %if.end5.out_unlock_crit_edge ], [ -22, %if.end18.i.i.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7180_irq(i32 noundef %irq, ptr noundef %devid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.adv7180_state, ptr %devid, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.adv7180_state, ptr %devid, i32 0, i32 3, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !97

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 248, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %register_page.i.i = getelementptr inbounds %struct.adv7180_state, ptr %devid, i32 0, i32 12
  %1 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %register_page.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %2)
  %cmp.not.i.i = icmp eq i32 %2, 32
  br i1 %cmp.not.i.i, label %if.end.i.adv7180_read.exit_crit_edge, label %if.then.i.i

if.end.i.adv7180_read.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_read.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i = getelementptr inbounds %struct.adv7180_state, ptr %devid, i32 0, i32 11
  %3 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client.i.i, align 4
  %call.i30.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 14, i8 noundef zeroext 32) #9
  %5 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 32, ptr %register_page.i.i, align 8
  br label %adv7180_read.exit

adv7180_read.exit:                                ; preds = %if.then.i.i, %if.end.i.adv7180_read.exit_crit_edge
  %client.i = getelementptr inbounds %struct.adv7180_state, ptr %devid, i32 0, i32 11
  %6 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client.i, align 4
  %call25.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext 74) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %8 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i10 = icmp eq i32 %8, 0
  br i1 %tobool.not.i10, label %adv7180_read.exit.if.end.i18_crit_edge, label %land.rhs.i14

adv7180_read.exit.if.end.i18_crit_edge:           ; preds = %adv7180_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i18

land.rhs.i14:                                     ; preds = %adv7180_read.exit
  %dep_map.i11 = getelementptr inbounds %struct.adv7180_state, ptr %devid, i32 0, i32 3, i32 5
  %call.i.i12 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i11, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i12)
  %cmp.not.i13 = icmp eq i32 %call.i.i12, 0
  br i1 %cmp.not.i13, label %do.end.i15, label %land.rhs.i14.if.end.i18_crit_edge, !prof !97

land.rhs.i14.if.end.i18_crit_edge:                ; preds = %land.rhs.i14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i18

do.end.i15:                                       ; preds = %land.rhs.i14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i18

if.end.i18:                                       ; preds = %do.end.i15, %land.rhs.i14.if.end.i18_crit_edge, %adv7180_read.exit.if.end.i18_crit_edge
  %9 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %register_page.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %10)
  %cmp.not.i.i17 = icmp eq i32 %10, 32
  br i1 %cmp.not.i.i17, label %if.end.i18.adv7180_write.exit_crit_edge, label %if.then.i.i20

if.end.i18.adv7180_write.exit_crit_edge:          ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit

if.then.i.i20:                                    ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client.i, align 4
  %call.i31.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 14, i8 noundef zeroext 32) #9
  %13 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 32, ptr %register_page.i.i, align 8
  br label %adv7180_write.exit

adv7180_write.exit:                               ; preds = %if.then.i.i20, %if.end.i18.adv7180_write.exit_crit_edge
  %14 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client.i, align 4
  %conv25.i = trunc i32 %call25.i to i8
  %call26.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext 75, i8 noundef zeroext %conv25.i) #9
  %and = and i32 %call25.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %adv7180_write.exit.if.end_crit_edge, label %if.then

adv7180_write.exit.if.end_crit_edge:              ; preds = %adv7180_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %adv7180_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sd = getelementptr inbounds %struct.adv7180_state, ptr %devid, i32 0, i32 1
  tail call void @v4l2_subdev_notify_event(ptr noundef %sd, ptr noundef nonnull @adv7180_irq.src_ch) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %adv7180_write.exit.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adv7180_read(ptr noundef %state, i32 noundef %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 3, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !97

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 248, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %shr = lshr i32 %reg, 8
  %register_page.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 12
  %1 = ptrtoint ptr %register_page.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %register_page.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %shr)
  %cmp.not.i = icmp eq i32 %2, %shr
  br i1 %cmp.not.i, label %if.end.adv7180_select_page.exit_crit_edge, label %if.then.i

if.end.adv7180_select_page.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_select_page.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %client.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 11
  %3 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client.i, align 4
  %conv.i = trunc i32 %shr to i8
  %call.i30 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 14, i8 noundef zeroext %conv.i) #9
  %5 = ptrtoint ptr %register_page.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shr, ptr %register_page.i, align 8
  br label %adv7180_select_page.exit

adv7180_select_page.exit:                         ; preds = %if.then.i, %if.end.adv7180_select_page.exit_crit_edge
  %client = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 11
  %6 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client, align 4
  %conv = trunc i32 %reg to i8
  %call25 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext %conv) #9
  ret i32 %call25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7180_s_power(ptr noundef %sd, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr i8, ptr %sd, i32 228
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool2 = icmp ne i32 %on, 0
  %call3 = tail call fastcc i32 @adv7180_set_power(ptr noundef %add.ptr.i, i1 noundef zeroext %tobool2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %powered = getelementptr i8, ptr %sd, i32 344
  %frombool = zext i1 %tobool2 to i8
  %0 = ptrtoint ptr %powered to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %powered, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end6 ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7180_subscribe_event(ptr noundef %sd, ptr noundef %fh, ptr noundef %sub) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sub, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.17)
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
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adv7180_set_power(ptr noundef %state, i1 noundef zeroext %on) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 3, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !97

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %register_page.i.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 12
  %1 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %register_page.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not.i.i = icmp eq i32 %2, 0
  br i1 %cmp.not.i.i, label %if.end.i.adv7180_write.exit_crit_edge, label %if.then.i.i

if.end.i.adv7180_write.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 11
  %3 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client.i.i, align 4
  %call.i31.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  %5 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %register_page.i.i, align 8
  br label %adv7180_write.exit

adv7180_write.exit:                               ; preds = %if.then.i.i, %if.end.i.adv7180_write.exit_crit_edge
  %client.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 11
  %6 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client.i, align 4
  %conv25.i = select i1 %on, i8 4, i8 36
  %call26.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 15, i8 noundef zeroext %conv25.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool1.not = icmp eq i32 %call26.i, 0
  br i1 %tobool1.not, label %if.end3, label %adv7180_write.exit.cleanup_crit_edge

adv7180_write.exit.cleanup_crit_edge:             ; preds = %adv7180_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %adv7180_write.exit
  %chip_info = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 15
  %8 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip_info, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %and = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.then5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5:                                         ; preds = %if.end3
  %csi_client.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 13
  %12 = ptrtoint ptr %csi_client.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %csi_client.i, align 4
  br i1 %on, label %if.then7, label %if.else18

if.then7:                                         ; preds = %if.then5
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext -34, i8 noundef zeroext 2) #9
  %14 = ptrtoint ptr %csi_client.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %csi_client.i, align 4
  %call.i36 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext -46, i8 noundef zeroext -9) #9
  %16 = ptrtoint ptr %csi_client.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %csi_client.i, align 4
  %call.i38 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext -40, i8 noundef zeroext 101) #9
  %18 = ptrtoint ptr %csi_client.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %csi_client.i, align 4
  %call.i40 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext -32, i8 noundef zeroext 9) #9
  %20 = ptrtoint ptr %csi_client.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %csi_client.i, align 4
  %call.i42 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 44, i8 noundef zeroext 0) #9
  %field = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 16
  %22 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %field, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp = icmp eq i32 %23, 1
  br i1 %cmp, label %if.then14, label %if.then7.if.end16_crit_edge

if.then7.if.end16_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then14:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %csi_client.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %csi_client.i, align 4
  %call.i44 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %25, i8 noundef zeroext 29, i8 noundef zeroext -128) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.then7.if.end16_crit_edge
  %26 = ptrtoint ptr %csi_client.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %csi_client.i, align 4
  %call.i46 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  br label %cleanup

if.else18:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %call.i48 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 0, i8 noundef zeroext -128) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else18, %if.end16, %if.end3.cleanup_crit_edge, %adv7180_write.exit.cleanup_crit_edge
  ret i32 %call26.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adv7180_write(ptr noundef %state, i32 noundef %reg, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 3, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !97

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %shr = lshr i32 %reg, 8
  %register_page.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 12
  %1 = ptrtoint ptr %register_page.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %register_page.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %shr)
  %cmp.not.i = icmp eq i32 %2, %shr
  br i1 %cmp.not.i, label %if.end.adv7180_select_page.exit_crit_edge, label %if.then.i

if.end.adv7180_select_page.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_select_page.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %client.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 11
  %3 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client.i, align 4
  %conv.i = trunc i32 %shr to i8
  %call.i31 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 14, i8 noundef zeroext %conv.i) #9
  %5 = ptrtoint ptr %register_page.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shr, ptr %register_page.i, align 8
  br label %adv7180_select_page.exit

adv7180_select_page.exit:                         ; preds = %if.then.i, %if.end.adv7180_select_page.exit_crit_edge
  %client = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 11
  %6 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client, align 4
  %conv = trunc i32 %reg to i8
  %conv25 = trunc i32 %value to i8
  %call26 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext %conv, i8 noundef zeroext %conv25) #9
  ret i32 %call26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_src_change_event_subdev_subscribe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subdev_subscribe_event(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7180_s_routing(ptr noundef %sd, i32 noundef %input, i32 noundef %output, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -184
  %mutex = getelementptr i8, ptr %sd, i32 228
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %input)
  %cmp = icmp ugt i32 %input, 31
  br i1 %cmp, label %if.end.out_crit_edge, label %lor.lhs.false

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

lor.lhs.false:                                    ; preds = %if.end
  %shl = shl nuw i32 1, %input
  %chip_info = getelementptr i8, ptr %sd, i32 364
  %0 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_info, align 4
  %valid_input_mask = getelementptr inbounds %struct.adv7180_chip_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %valid_input_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %valid_input_mask, align 4
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %lor.lhs.false.out_crit_edge, label %if.end4

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end4:                                          ; preds = %lor.lhs.false
  %select_input = getelementptr inbounds %struct.adv7180_chip_info, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %select_input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %select_input, align 4
  %call6 = tail call i32 %5(ptr noundef %add.ptr.i, i32 noundef %input) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i32 %input to i8
  %input9 = getelementptr i8, ptr %sd, i32 346
  %6 = ptrtoint ptr %input9 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %input9, align 2
  br label %out

out:                                              ; preds = %if.then8, %if.end4.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.then8 ], [ %call6, %if.end4.out_crit_edge ], [ -22, %lor.lhs.false.out_crit_edge ], [ -22, %if.end.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adv7180_g_std(ptr nocapture noundef readonly %sd, ptr nocapture noundef writeonly %norm) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_norm = getelementptr i8, ptr %sd, i32 336
  %0 = ptrtoint ptr %curr_norm to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %curr_norm, align 8
  %2 = ptrtoint ptr %norm to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %norm, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7180_s_std(ptr noundef %sd, i64 noundef %std) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -184
  %mutex = getelementptr i8, ptr %sd, i32 228
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_switch(i64 %std, ptr @__sancov_gen_cov_switch_values.18)
  switch i64 %std, label %if.end12.i [
    i64 2048, label %if.end4.thread
    i64 16384, label %if.end4.thread19
    i64 512, label %if.end4.thread21
    i64 256, label %if.end4.thread23
    i64 1024, label %if.end4.thread25
  ]

if.end4.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %curr_norm18 = getelementptr i8, ptr %sd, i32 336
  %0 = ptrtoint ptr %curr_norm18 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 2048, ptr %curr_norm18, align 8
  br label %if.end.i

if.end4.thread19:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %curr_norm20 = getelementptr i8, ptr %sd, i32 336
  %1 = ptrtoint ptr %curr_norm20 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 16384, ptr %curr_norm20, align 8
  br label %if.then2.i.i

if.end4.thread21:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %curr_norm22 = getelementptr i8, ptr %sd, i32 336
  %2 = ptrtoint ptr %curr_norm22 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 512, ptr %curr_norm22, align 8
  br label %if.then5.i.i

if.end4.thread23:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %curr_norm24 = getelementptr i8, ptr %sd, i32 336
  %3 = ptrtoint ptr %curr_norm24 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 256, ptr %curr_norm24, align 8
  br label %if.then8.i.i

if.end4.thread25:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %curr_norm26 = getelementptr i8, ptr %sd, i32 336
  %4 = ptrtoint ptr %curr_norm26 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 1024, ptr %curr_norm26, align 8
  br label %if.end.i

if.end12.i:                                       ; preds = %if.end
  %5 = and i64 %std, 16756991
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %if.end12.i.out_crit_edge, label %if.end4

if.end12.i.out_crit_edge:                         ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end4:                                          ; preds = %if.end12.i
  %curr_norm = getelementptr i8, ptr %sd, i32 336
  %7 = ptrtoint ptr %curr_norm to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %std, ptr %curr_norm, align 8
  call void @__sanitizer_cov_trace_switch(i64 %std, ptr @__sancov_gen_cov_switch_values.19)
  switch i64 %std, label %if.end12.i.i [
    i64 2048, label %if.end4.if.end.i_crit_edge
    i64 16384, label %if.end4.if.then2.i.i_crit_edge
    i64 512, label %if.end4.if.then5.i.i_crit_edge
    i64 256, label %if.end4.if.then8.i.i_crit_edge
  ]

if.end4.if.then8.i.i_crit_edge:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8.i.i

if.end4.if.then5.i.i_crit_edge:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5.i.i

if.end4.if.then2.i.i_crit_edge:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.i.i

if.end4.if.end.i_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then2.i.i:                                     ; preds = %if.end4.if.then2.i.i_crit_edge, %if.end4.thread19
  br label %if.end.i

if.then5.i.i:                                     ; preds = %if.end4.if.then5.i.i_crit_edge, %if.end4.thread21
  br label %if.end.i

if.then8.i.i:                                     ; preds = %if.end4.if.then8.i.i_crit_edge, %if.end4.thread23
  br label %if.end.i

if.end12.i.i:                                     ; preds = %if.end4
  %and.i.i = and i64 %std, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end14.i.i, label %if.end12.i.i.if.end.i_crit_edge

if.end12.i.i.if.end.i_crit_edge:                  ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end14.i.i:                                     ; preds = %if.end12.i.i
  %and15.i.i = and i64 %std, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and15.i.i)
  %tobool16.not.i.i = icmp eq i64 %and15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end18.i.i, label %if.end14.i.i.if.end.i_crit_edge

if.end14.i.i.if.end.i_crit_edge:                  ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end18.i.i:                                     ; preds = %if.end14.i.i
  %and19.i.i = and i64 %std, 16711680
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and19.i.i)
  %tobool20.not.i.i = icmp eq i64 %and19.i.i, 0
  br i1 %tobool20.not.i.i, label %if.end18.i.i.out_crit_edge, label %if.end18.i.i.if.end.i_crit_edge

if.end18.i.i.if.end.i_crit_edge:                  ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end18.i.i.out_crit_edge:                       ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i:                                         ; preds = %if.end18.i.i.if.end.i_crit_edge, %if.end14.i.i.if.end.i_crit_edge, %if.end12.i.i.if.end.i_crit_edge, %if.then8.i.i, %if.then5.i.i, %if.then2.i.i, %if.end4.if.end.i_crit_edge, %if.end4.thread25, %if.end4.thread
  %retval.0.i.ph.i = phi i32 [ 14, %if.end18.i.i.if.end.i_crit_edge ], [ 5, %if.end14.i.i.if.end.i_crit_edge ], [ 8, %if.end12.i.i.if.end.i_crit_edge ], [ 6, %if.end4.if.end.i_crit_edge ], [ 12, %if.end4.thread25 ], [ 10, %if.then8.i.i ], [ 9, %if.then5.i.i ], [ 7, %if.then2.i.i ], [ 6, %if.end4.thread ]
  %chip_info.i.i = getelementptr i8, ptr %sd, i32 364
  %8 = ptrtoint ptr %chip_info.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip_info.i.i, align 4
  %set_std.i.i = getelementptr inbounds %struct.adv7180_chip_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %set_std.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_std.i.i, align 4
  %call.i.i = tail call i32 %11(ptr noundef %add.ptr.i, i32 noundef %retval.0.i.ph.i) #9
  %12 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #9
  br label %out

out:                                              ; preds = %if.end.i, %if.end18.i.i.out_crit_edge, %if.end12.i.out_crit_edge
  %ret.0 = phi i32 [ %12, %if.end.i ], [ -22, %if.end18.i.i.out_crit_edge ], [ -22, %if.end12.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7180_querystd(ptr noundef %sd, ptr noundef %std) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -184
  %mutex = getelementptr i8, ptr %sd, i32 228
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %streaming = getelementptr i8, ptr %sd, i32 345
  %0 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %streaming, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool2.not = icmp eq i8 %1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.unlock_crit_edge

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end4:                                          ; preds = %if.end
  %chip_info.i = getelementptr i8, ptr %sd, i32 364
  %2 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_info.i, align 4
  %set_std.i = getelementptr inbounds %struct.adv7180_chip_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %set_std.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_std.i, align 4
  %call.i = tail call i32 %5(ptr noundef %add.ptr.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.unlock_crit_edge

if.end4.unlock_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end8:                                          ; preds = %if.end4
  tail call void @msleep(i32 noundef 100) #9
  %call9 = tail call fastcc i32 @__adv7180_status(ptr noundef %add.ptr.i, ptr noundef null, ptr noundef %std)
  %curr_norm = getelementptr i8, ptr %sd, i32 336
  %6 = ptrtoint ptr %curr_norm to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %curr_norm, align 8
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.20)
  switch i64 %7, label %if.end12.i [
    i64 2048, label %if.end8.if.end12_crit_edge
    i64 16384, label %if.then2.i
    i64 512, label %if.then5.i
    i64 256, label %if.then8.i
    i64 1024, label %if.then11.i
  ]

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then2.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then5.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then8.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then11.i:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end12.i:                                       ; preds = %if.end8
  %and.i = and i64 %7, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end14.i, label %if.end12.i.if.end12_crit_edge

if.end12.i.if.end12_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end14.i:                                       ; preds = %if.end12.i
  %and15.i = and i64 %7, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and15.i)
  %tobool16.not.i = icmp eq i64 %and15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end14.i.if.end12_crit_edge

if.end14.i.if.end12_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end18.i:                                       ; preds = %if.end14.i
  %and19.i = and i64 %7, 16711680
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and19.i)
  %tobool20.not.i = icmp eq i64 %and19.i, 0
  br i1 %tobool20.not.i, label %if.end18.i.unlock_crit_edge, label %if.end18.i.if.end12_crit_edge

if.end18.i.if.end12_crit_edge:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end18.i.unlock_crit_edge:                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end12:                                         ; preds = %if.end18.i.if.end12_crit_edge, %if.end14.i.if.end12_crit_edge, %if.end12.i.if.end12_crit_edge, %if.then11.i, %if.then8.i, %if.then5.i, %if.then2.i, %if.end8.if.end12_crit_edge
  %retval.0.i.ph = phi i32 [ 14, %if.end18.i.if.end12_crit_edge ], [ 5, %if.end14.i.if.end12_crit_edge ], [ 8, %if.end12.i.if.end12_crit_edge ], [ 6, %if.end8.if.end12_crit_edge ], [ 12, %if.then11.i ], [ 10, %if.then8.i ], [ 9, %if.then5.i ], [ 7, %if.then2.i ]
  %8 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip_info.i, align 4
  %set_std.i28 = getelementptr inbounds %struct.adv7180_chip_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %set_std.i28 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_std.i28, align 4
  %call.i29 = tail call i32 %11(ptr noundef %add.ptr.i, i32 noundef %retval.0.i.ph) #9
  br label %unlock

unlock:                                           ; preds = %if.end12, %if.end18.i.unlock_crit_edge, %if.end4.unlock_crit_edge, %if.end.unlock_crit_edge
  %err.0 = phi i32 [ %call.i, %if.end4.unlock_crit_edge ], [ %call.i29, %if.end12 ], [ -16, %if.end.unlock_crit_edge ], [ -22, %if.end18.i.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %unlock ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @adv7180_g_tvnorms(ptr nocapture noundef readnone %sd, ptr nocapture noundef writeonly %norm) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %norm to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 16777215, ptr %norm, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7180_g_input_status(ptr noundef %sd, ptr noundef %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr i8, ptr %sd, i32 228
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -184
  %call2 = tail call fastcc i32 @__adv7180_status(ptr noundef %add.ptr.i, ptr noundef %status, ptr noundef null)
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7180_s_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %streaming = getelementptr i8, ptr %sd, i32 345
  %0 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %streaming, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr i8, ptr %sd, i32 228
  %call2 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %streaming7 = getelementptr i8, ptr %sd, i32 345
  %1 = ptrtoint ptr %streaming7 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %streaming7, align 1
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.end5 ], [ 0, %if.then ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adv7180_g_pixelaspect(ptr nocapture noundef readonly %sd, ptr nocapture noundef writeonly %aspect) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_norm = getelementptr i8, ptr %sd, i32 336
  %0 = ptrtoint ptr %curr_norm to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %curr_norm, align 8
  %and = and i64 %1, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %spec.select = select i1 %tobool.not, i32 54, i32 11
  %spec.select6 = select i1 %tobool.not, i32 59, i32 10
  %2 = ptrtoint ptr %aspect to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %spec.select, ptr %aspect, align 4
  %3 = getelementptr inbounds %struct.v4l2_fract, ptr %aspect, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %spec.select6, ptr %3, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adv7180_g_frame_interval(ptr nocapture noundef readonly %sd, ptr nocapture noundef writeonly %fi) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_norm = getelementptr i8, ptr %sd, i32 336
  %0 = ptrtoint ptr %curr_norm to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %curr_norm, align 8
  %and = and i64 %1, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 1001
  %spec.select10 = select i1 %tobool.not, i32 25, i32 30000
  %2 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.select, ptr %2, align 4
  %4 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %spec.select10, ptr %4, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__adv7180_status(ptr noundef %state, ptr noundef writeonly %status, ptr noundef writeonly %std) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 3, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !97

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 248, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %register_page.i.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 12
  %1 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %register_page.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not.i.i = icmp eq i32 %2, 0
  br i1 %cmp.not.i.i, label %if.end.i.adv7180_read.exit_crit_edge, label %if.then.i.i

if.end.i.adv7180_read.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_read.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 11
  %3 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client.i.i, align 4
  %call.i30.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  %5 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %register_page.i.i, align 8
  br label %adv7180_read.exit

adv7180_read.exit:                                ; preds = %if.then.i.i, %if.end.i.adv7180_read.exit_crit_edge
  %client.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 11
  %6 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client.i, align 4
  %call25.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp = icmp slt i32 %call25.i, 0
  br i1 %cmp, label %adv7180_read.exit.cleanup_crit_edge, label %if.end

adv7180_read.exit.cleanup_crit_edge:              ; preds = %adv7180_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %adv7180_read.exit
  %tobool.not = icmp eq ptr %status, null
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then1

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = shl nuw i32 %call25.i, 1
  %9 = and i32 %8, 2
  %10 = xor i32 %9, 2
  %11 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %status, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end.if.end3_crit_edge
  %tobool4.not = icmp eq ptr %std, null
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.then5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5:                                         ; preds = %if.end3
  %and.i = and i32 %call25.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i14 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i14, label %if.then5.adv7180_std_to_v4l2.exit_crit_edge, label %if.end.i15

if.then5.adv7180_std_to_v4l2.exit_crit_edge:      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_std_to_v4l2.exit

if.end.i15:                                       ; preds = %if.then5
  %conv.i = lshr i32 %call25.i, 4
  %12 = and i32 %conv.i, 7
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %12, label %if.end.unreachabledefault.i [
    i32 0, label %if.end.i15.adv7180_std_to_v4l2.exit_crit_edge
    i32 1, label %sw.bb3.i
    i32 2, label %sw.bb4.i
    i32 3, label %sw.bb5.i
    i32 4, label %sw.bb6.i
    i32 5, label %sw.bb7.i
    i32 6, label %sw.bb8.i
    i32 7, label %sw.bb9.i
  ]

if.end.i15.adv7180_std_to_v4l2.exit_crit_edge:    ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_std_to_v4l2.exit

sw.bb3.i:                                         ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_std_to_v4l2.exit

sw.bb4.i:                                         ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_std_to_v4l2.exit

sw.bb5.i:                                         ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_std_to_v4l2.exit

sw.bb6.i:                                         ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_std_to_v4l2.exit

sw.bb7.i:                                         ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_std_to_v4l2.exit

sw.bb8.i:                                         ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_std_to_v4l2.exit

sw.bb9.i:                                         ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_std_to_v4l2.exit

if.end.unreachabledefault.i:                      ; preds = %if.end.i15
  unreachable

adv7180_std_to_v4l2.exit:                         ; preds = %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %if.end.i15.adv7180_std_to_v4l2.exit_crit_edge, %if.then5.adv7180_std_to_v4l2.exit_crit_edge
  %retval.0.i = phi i64 [ 16711680, %sw.bb9.i ], [ 1536, %sw.bb8.i ], [ 16711680, %sw.bb7.i ], [ 255, %sw.bb6.i ], [ 2048, %sw.bb5.i ], [ 256, %sw.bb4.i ], [ 16384, %sw.bb3.i ], [ 0, %if.then5.adv7180_std_to_v4l2.exit_crit_edge ], [ 45056, %if.end.i15.adv7180_std_to_v4l2.exit_crit_edge ]
  %14 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %retval.0.i, ptr %std, align 8
  br label %cleanup

cleanup:                                          ; preds = %adv7180_std_to_v4l2.exit, %if.end3.cleanup_crit_edge, %adv7180_read.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25.i, %adv7180_read.exit.cleanup_crit_edge ], [ 0, %adv7180_std_to_v4l2.exit ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @adv7180_get_skip_frames(ptr nocapture noundef readnone %sd, ptr nocapture noundef writeonly %frames) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %frames to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %frames, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7180_init_cfg(ptr noundef %sd, ptr noundef readonly %sd_state) #2 align 64 {
entry:
  %fmt = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fmt) #9
  %0 = getelementptr inbounds i8, ptr %fmt, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 84)
  %tobool.not = icmp eq ptr %sd_state, null
  %cond = zext i1 %tobool.not to i32
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond, ptr %fmt, align 4
  %call = call i32 @adv7180_set_pad_format(ptr noundef %sd, ptr noundef %sd_state, ptr noundef nonnull %fmt)
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt) #9
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adv7180_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %code1 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %2 = ptrtoint ptr %code1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8198, ptr %code1, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7180_get_pad_format(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %2 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.i = icmp eq i16 %3, 0
  br i1 %cmp.i, label %do.end.i, label %if.then.v4l2_subdev_get_try_format.exit_crit_edge, !prof !97

if.then.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then.v4l2_subdev_get_try_format.exit_crit_edge
  %4 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sd_state, align 4
  %6 = call ptr @memcpy(ptr %format1, ptr %5, i32 48)
  br label %if.end

if.else:                                          ; preds = %entry
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8198, ptr %code.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %8 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %colorspace.i, align 4
  %9 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 720, ptr %format1, align 4
  %curr_norm.i = getelementptr i8, ptr %sd, i32 336
  %10 = ptrtoint ptr %curr_norm.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %curr_norm.i, align 8
  %and.i = and i64 %11, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 576, i32 480
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cond.i, ptr %height.i, align 4
  %field.i = getelementptr i8, ptr %sd, i32 368
  %13 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %field.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %14)
  %cmp.i12 = icmp eq i32 %14, 7
  br i1 %cmp.i12, label %if.then.i, label %if.else.adv7180_mbus_fmt.exit_crit_edge

if.else.adv7180_mbus_fmt.exit_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_mbus_fmt.exit

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %div1.i = lshr exact i32 %cond.i, 1
  %15 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div1.i, ptr %height.i, align 4
  br label %adv7180_mbus_fmt.exit

adv7180_mbus_fmt.exit:                            ; preds = %if.then.i, %if.else.adv7180_mbus_fmt.exit_crit_edge
  %16 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %field.i, align 8
  %field6 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %18 = ptrtoint ptr %field6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %field6, align 4
  br label %if.end

if.end:                                           ; preds = %adv7180_mbus_fmt.exit, %v4l2_subdev_get_try_format.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7180_set_pad_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -184
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond = icmp eq i32 %1, 1
  br i1 %cond, label %sw.bb, label %entry.sw.default_crit_edge

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default

sw.bb:                                            ; preds = %entry
  %chip_info = getelementptr i8, ptr %sd, i32 364
  %2 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_info, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.sw.default_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb.sw.default_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default

sw.default:                                       ; preds = %sw.bb.sw.default_crit_edge, %entry.sw.default_crit_edge
  %6 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 7, ptr %field, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.sw.epilog_crit_edge
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8198, ptr %code.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %8 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %colorspace.i, align 4
  %9 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 720, ptr %format1, align 4
  %curr_norm.i = getelementptr i8, ptr %sd, i32 336
  %10 = ptrtoint ptr %curr_norm.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %curr_norm.i, align 8
  %and.i = and i64 %11, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 576, i32 480
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cond.i, ptr %height.i, align 4
  %field.i = getelementptr i8, ptr %sd, i32 368
  %13 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %field.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %14)
  %cmp.i = icmp eq i32 %14, 7
  br i1 %cmp.i, label %if.then.i, label %sw.epilog.adv7180_mbus_fmt.exit_crit_edge

sw.epilog.adv7180_mbus_fmt.exit_crit_edge:        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_mbus_fmt.exit

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %div1.i = lshr exact i32 %cond.i, 1
  %15 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div1.i, ptr %height.i, align 4
  br label %adv7180_mbus_fmt.exit

adv7180_mbus_fmt.exit:                            ; preds = %if.then.i, %sw.epilog.adv7180_mbus_fmt.exit_crit_edge
  %16 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp = icmp eq i32 %17, 1
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %adv7180_mbus_fmt.exit
  %18 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %field.i, align 8
  %20 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp10.not = icmp eq i32 %19, %21
  br i1 %cmp10.not, label %if.then6.if.end21_crit_edge, label %if.then11

if.then6.if.end21_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then11:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %field.i, align 8
  %call15 = tail call fastcc i32 @adv7180_set_power(ptr noundef %add.ptr.i, i1 noundef zeroext false)
  tail call fastcc void @adv7180_set_field_mode(ptr noundef %add.ptr.i)
  %call17 = tail call fastcc i32 @adv7180_set_power(ptr noundef %add.ptr.i, i1 noundef zeroext true)
  br label %if.end21

if.else:                                          ; preds = %adv7180_mbus_fmt.exit
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %23 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp.i35 = icmp eq i16 %24, 0
  br i1 %cmp.i35, label %do.end.i, label %if.else.v4l2_subdev_get_try_format.exit_crit_edge, !prof !97

if.else.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.else.v4l2_subdev_get_try_format.exit_crit_edge
  %25 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sd_state, align 4
  %27 = call ptr @memcpy(ptr %26, ptr %format1, i32 48)
  br label %if.end21

if.end21:                                         ; preds = %v4l2_subdev_get_try_format.exit, %if.then11, %if.then6.if.end21_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adv7180_get_mbus_config(ptr nocapture noundef readonly %sd, i32 noundef %pad, ptr nocapture noundef writeonly %cfg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_info = getelementptr i8, ptr %sd, i32 364
  %0 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_info, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 5, ptr %cfg, align 4
  %flags1 = getelementptr inbounds %struct.v4l2_mbus_config, ptr %cfg, i32 0, i32 1
  %5 = ptrtoint ptr %flags1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 273, ptr %flags1, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %flags2 = getelementptr inbounds %struct.v4l2_mbus_config, ptr %cfg, i32 0, i32 1
  %6 = ptrtoint ptr %flags2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 321, ptr %flags2, align 4
  %7 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %cfg, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adv7180_set_field_mode(ptr noundef readonly %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_info = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 15
  %0 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_info, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %field = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 16
  %4 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %field, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  %and4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %. = select i1 %cmp, i8 0, i8 112
  %.62 = select i1 %cmp, i8 0, i8 -128
  %.63 = select i1 %cmp, i8 -128, i8 0
  br i1 %tobool5.not, label %if.end.return.sink.split_crit_edge, label %return.sink.split.sink.split

if.end.return.sink.split_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split

return.sink.split.sink.split:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %.71 = select i1 %cmp, i8 80, i8 48
  %.70 = select i1 %cmp, i8 112, i8 88
  %.69 = select i1 %cmp, i8 -128, i8 64
  %.68 = select i1 %cmp, i8 48, i8 40
  %.67 = select i1 %cmp, i8 48, i8 32
  %.66 = select i1 %cmp, i8 56, i8 48
  %.65 = select i1 %cmp, i8 40, i8 24
  %.64 = select i1 %cmp, i8 32, i8 24
  %csi_client.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 13
  %6 = ptrtoint ptr %csi_client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %csi_client.i, align 4
  %call.i21 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 1, i8 noundef zeroext %.64) #9
  %8 = ptrtoint ptr %csi_client.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %csi_client.i, align 4
  %call.i23 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 2, i8 noundef zeroext %.65) #9
  %10 = ptrtoint ptr %csi_client.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %csi_client.i, align 4
  %call.i25 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 3, i8 noundef zeroext %.66) #9
  %12 = ptrtoint ptr %csi_client.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %csi_client.i, align 4
  %call.i27 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 4, i8 noundef zeroext %.67) #9
  %14 = ptrtoint ptr %csi_client.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %csi_client.i, align 4
  %call.i29 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext 5, i8 noundef zeroext %.68) #9
  %16 = ptrtoint ptr %csi_client.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %csi_client.i, align 4
  %call.i31 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext 6, i8 noundef zeroext %.69) #9
  %18 = ptrtoint ptr %csi_client.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %csi_client.i, align 4
  %call.i33 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext 7, i8 noundef zeroext %.70) #9
  %20 = ptrtoint ptr %csi_client.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %csi_client.i, align 4
  %call.i35 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 8, i8 noundef zeroext %.71) #9
  br label %return.sink.split

return.sink.split:                                ; preds = %return.sink.split.sink.split, %if.end.return.sink.split_crit_edge
  %vpp_client.i36 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 14
  %22 = ptrtoint ptr %vpp_client.i36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vpp_client.i36, align 8
  %call.i15 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext -93, i8 noundef zeroext %.) #9
  %24 = ptrtoint ptr %vpp_client.i36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vpp_client.i36, align 8
  %call.i17 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %25, i8 noundef zeroext 91, i8 noundef zeroext %.62) #9
  %26 = ptrtoint ptr %vpp_client.i36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vpp_client.i36, align 8
  %call.i19 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext 85, i8 noundef zeroext %.63) #9
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7180_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %mutex = getelementptr inbounds %struct.adv7180_state, ptr %1, i32 0, i32 3
  %call2 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %2 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val3, align 4
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %5, label %if.end.sw.epilog_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963779, label %sw.bb5
    i32 9963777, label %sw.bb7
    i32 9963778, label %sw.bb9
    i32 9967984, label %sw.bb14
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %7 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %sw.bb.if.end.i_crit_edge, label %land.rhs.i

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.rhs.i:                                       ; preds = %sw.bb
  %dep_map.i = getelementptr inbounds %struct.adv7180_state, ptr %1, i32 0, i32 3, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !97

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %sw.bb.if.end.i_crit_edge
  %register_page.i.i = getelementptr inbounds %struct.adv7180_state, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %register_page.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i.i, label %if.end.i.adv7180_write.exit_crit_edge, label %if.then.i.i

if.end.i.adv7180_write.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i = getelementptr inbounds %struct.adv7180_state, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client.i.i, align 4
  %call.i31.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  %12 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %register_page.i.i, align 8
  br label %adv7180_write.exit

adv7180_write.exit:                               ; preds = %if.then.i.i, %if.end.i.adv7180_write.exit_crit_edge
  %client.i = getelementptr inbounds %struct.adv7180_state, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client.i, align 4
  %conv25.i = trunc i32 %3 to i8
  %call26.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 10, i8 noundef zeroext %conv25.i) #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %15 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i47 = icmp eq i32 %15, 0
  br i1 %tobool.not.i47, label %sw.bb5.if.end.i55_crit_edge, label %land.rhs.i51

sw.bb5.if.end.i55_crit_edge:                      ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i55

land.rhs.i51:                                     ; preds = %sw.bb5
  %dep_map.i48 = getelementptr inbounds %struct.adv7180_state, ptr %1, i32 0, i32 3, i32 5
  %call.i.i49 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i48, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i49)
  %cmp.not.i50 = icmp eq i32 %call.i.i49, 0
  br i1 %cmp.not.i50, label %do.end.i52, label %land.rhs.i51.if.end.i55_crit_edge, !prof !97

land.rhs.i51.if.end.i55_crit_edge:                ; preds = %land.rhs.i51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i55

do.end.i52:                                       ; preds = %land.rhs.i51
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i55

if.end.i55:                                       ; preds = %do.end.i52, %land.rhs.i51.if.end.i55_crit_edge, %sw.bb5.if.end.i55_crit_edge
  %register_page.i.i53 = getelementptr inbounds %struct.adv7180_state, ptr %1, i32 0, i32 12
  %16 = ptrtoint ptr %register_page.i.i53 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %register_page.i.i53, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not.i.i54 = icmp eq i32 %17, 0
  br i1 %cmp.not.i.i54, label %if.end.i55.adv7180_write.exit62_crit_edge, label %if.then.i.i58

if.end.i55.adv7180_write.exit62_crit_edge:        ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit62

if.then.i.i58:                                    ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i56 = getelementptr inbounds %struct.adv7180_state, ptr %1, i32 0, i32 11
  %18 = ptrtoint ptr %client.i.i56 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %client.i.i56, align 4
  %call.i31.i57 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  %20 = ptrtoint ptr %register_page.i.i53 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %register_page.i.i53, align 8
  br label %adv7180_write.exit62

adv7180_write.exit62:                             ; preds = %if.then.i.i58, %if.end.i55.adv7180_write.exit62_crit_edge
  %client.i59 = getelementptr inbounds %struct.adv7180_state, ptr %1, i32 0, i32 11
  %21 = ptrtoint ptr %client.i59 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %client.i59, align 4
  %23 = trunc i32 %3 to i8
  %conv25.i60 = sub i8 0, %23
  %call26.i61 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %22, i8 noundef zeroext 11, i8 noundef zeroext %conv25.i60) #9
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %24 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i63 = icmp eq i32 %24, 0
  br i1 %tobool.not.i63, label %sw.bb7.if.end.i71_crit_edge, label %land.rhs.i67

sw.bb7.if.end.i71_crit_edge:                      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i71

land.rhs.i67:                                     ; preds = %sw.bb7
  %dep_map.i64 = getelementptr inbounds %struct.adv7180_state, ptr %1, i32 0, i32 3, i32 5
  %call.i.i65 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i64, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i65)
  %cmp.not.i66 = icmp eq i32 %call.i.i65, 0
  br i1 %cmp.not.i66, label %do.end.i68, label %land.rhs.i67.if.end.i71_crit_edge, !prof !97

land.rhs.i67.if.end.i71_crit_edge:                ; preds = %land.rhs.i67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i71

do.end.i68:                                       ; preds = %land.rhs.i67
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i71

if.end.i71:                                       ; preds = %do.end.i68, %land.rhs.i67.if.end.i71_crit_edge, %sw.bb7.if.end.i71_crit_edge
  %register_page.i.i69 = getelementptr inbounds %struct.adv7180_state, ptr %1, i32 0, i32 12
  %25 = ptrtoint ptr %register_page.i.i69 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %register_page.i.i69, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.not.i.i70 = icmp eq i32 %26, 0
  br i1 %cmp.not.i.i70, label %if.end.i71.adv7180_write.exit78_crit_edge, label %if.then.i.i74

if.end.i71.adv7180_write.exit78_crit_edge:        ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit78

if.then.i.i74:                                    ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i72 = getelementptr inbounds %struct.adv7180_state, ptr %1, i32 0, i32 11
  %27 = ptrtoint ptr %client.i.i72 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %client.i.i72, align 4
  %call.i31.i73 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %28, i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  %29 = ptrtoint ptr %register_page.i.i69 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %register_page.i.i69, align 8
  br label %adv7180_write.exit78

adv7180_write.exit78:                             ; preds = %if.then.i.i74, %if.end.i71.adv7180_write.exit78_crit_edge
  %client.i75 = getelementptr inbounds %struct.adv7180_state, ptr %1, i32 0, i32 11
  %30 = ptrtoint ptr %client.i75 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %client.i75, align 4
  %conv25.i76 = trunc i32 %3 to i8
  %call26.i77 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %31, i8 noundef zeroext 8, i8 noundef zeroext %conv25.i76) #9
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %32 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i79 = icmp eq i32 %32, 0
  br i1 %tobool.not.i79, label %sw.bb9.if.end.i87_crit_edge, label %land.rhs.i83

sw.bb9.if.end.i87_crit_edge:                      ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i87

land.rhs.i83:                                     ; preds = %sw.bb9
  %dep_map.i80 = getelementptr inbounds %struct.adv7180_state, ptr %1, i32 0, i32 3, i32 5
  %call.i.i81 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i80, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i81)
  %cmp.not.i82 = icmp eq i32 %call.i.i81, 0
  br i1 %cmp.not.i82, label %do.end.i84, label %land.rhs.i83.if.end.i87_crit_edge, !prof !97

land.rhs.i83.if.end.i87_crit_edge:                ; preds = %land.rhs.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i87

do.end.i84:                                       ; preds = %land.rhs.i83
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i87

if.end.i87:                                       ; preds = %do.end.i84, %land.rhs.i83.if.end.i87_crit_edge, %sw.bb9.if.end.i87_crit_edge
  %register_page.i.i85 = getelementptr inbounds %struct.adv7180_state, ptr %1, i32 0, i32 12
  %33 = ptrtoint ptr %register_page.i.i85 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %register_page.i.i85, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.not.i.i86 = icmp eq i32 %34, 0
  br i1 %cmp.not.i.i86, label %if.end.i87.adv7180_write.exit94_crit_edge, label %if.then.i.i90

if.end.i87.adv7180_write.exit94_crit_edge:        ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit94

if.then.i.i90:                                    ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i88 = getelementptr inbounds %struct.adv7180_state, ptr %1, i32 0, i32 11
  %35 = ptrtoint ptr %client.i.i88 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %client.i.i88, align 4
  %call.i31.i89 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %36, i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  %37 = ptrtoint ptr %register_page.i.i85 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %register_page.i.i85, align 8
  br label %adv7180_write.exit94

adv7180_write.exit94:                             ; preds = %if.then.i.i90, %if.end.i87.adv7180_write.exit94_crit_edge
  %client.i91 = getelementptr inbounds %struct.adv7180_state, ptr %1, i32 0, i32 11
  %38 = ptrtoint ptr %client.i91 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %client.i91, align 4
  %conv25.i92 = trunc i32 %3 to i8
  %call26.i93 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %39, i8 noundef zeroext -29, i8 noundef zeroext %conv25.i92) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i93)
  %cmp = icmp slt i32 %call26.i93, 0
  br i1 %cmp, label %adv7180_write.exit94.sw.epilog_crit_edge, label %if.end12

adv7180_write.exit94.sw.epilog_crit_edge:         ; preds = %adv7180_write.exit94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end12:                                         ; preds = %adv7180_write.exit94
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %40 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i95 = icmp eq i32 %40, 0
  br i1 %tobool.not.i95, label %if.end12.if.end.i103_crit_edge, label %land.rhs.i99

if.end12.if.end.i103_crit_edge:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i103

land.rhs.i99:                                     ; preds = %if.end12
  %dep_map.i96 = getelementptr inbounds %struct.adv7180_state, ptr %1, i32 0, i32 3, i32 5
  %call.i.i97 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i96, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i97)
  %cmp.not.i98 = icmp eq i32 %call.i.i97, 0
  br i1 %cmp.not.i98, label %do.end.i100, label %land.rhs.i99.if.end.i103_crit_edge, !prof !97

land.rhs.i99.if.end.i103_crit_edge:               ; preds = %land.rhs.i99
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i103

do.end.i100:                                      ; preds = %land.rhs.i99
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i103

if.end.i103:                                      ; preds = %do.end.i100, %land.rhs.i99.if.end.i103_crit_edge, %if.end12.if.end.i103_crit_edge
  %41 = ptrtoint ptr %register_page.i.i85 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %register_page.i.i85, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.not.i.i102 = icmp eq i32 %42, 0
  br i1 %cmp.not.i.i102, label %if.end.i103.adv7180_write.exit110_crit_edge, label %if.then.i.i106

if.end.i103.adv7180_write.exit110_crit_edge:      ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit110

if.then.i.i106:                                   ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %client.i91 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %client.i91, align 4
  %call.i31.i105 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %44, i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  %45 = ptrtoint ptr %register_page.i.i85 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %register_page.i.i85, align 8
  br label %adv7180_write.exit110

adv7180_write.exit110:                            ; preds = %if.then.i.i106, %if.end.i103.adv7180_write.exit110_crit_edge
  %46 = ptrtoint ptr %client.i91 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %client.i91, align 4
  %call26.i109 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %47, i8 noundef zeroext -28, i8 noundef zeroext %conv25.i92) #9
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool16.not = icmp eq i32 %3, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %48 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i141 = icmp eq i32 %48, 0
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %sw.bb14
  br i1 %tobool.not.i141, label %if.then17.if.end.i119_crit_edge, label %land.rhs.i115

if.then17.if.end.i119_crit_edge:                  ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i119

land.rhs.i115:                                    ; preds = %if.then17
  %dep_map.i112 = getelementptr inbounds %struct.adv7180_state, ptr %1, i32 0, i32 3, i32 5
  %call.i.i113 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i112, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i113)
  %cmp.not.i114 = icmp eq i32 %call.i.i113, 0
  br i1 %cmp.not.i114, label %do.end.i116, label %land.rhs.i115.if.end.i119_crit_edge, !prof !97

land.rhs.i115.if.end.i119_crit_edge:              ; preds = %land.rhs.i115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i119

do.end.i116:                                      ; preds = %land.rhs.i115
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i119

if.end.i119:                                      ; preds = %do.end.i116, %land.rhs.i115.if.end.i119_crit_edge, %if.then17.if.end.i119_crit_edge
  %register_page.i.i117 = getelementptr inbounds %struct.adv7180_state, ptr %1, i32 0, i32 12
  %49 = ptrtoint ptr %register_page.i.i117 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %register_page.i.i117, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %50)
  %cmp.not.i.i118 = icmp eq i32 %50, 128
  br i1 %cmp.not.i.i118, label %if.end.i119.adv7180_write.exit125_crit_edge, label %if.then.i.i122

if.end.i119.adv7180_write.exit125_crit_edge:      ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit125

if.then.i.i122:                                   ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i120 = getelementptr inbounds %struct.adv7180_state, ptr %1, i32 0, i32 11
  %51 = ptrtoint ptr %client.i.i120 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %client.i.i120, align 4
  %call.i31.i121 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %52, i8 noundef zeroext 14, i8 noundef zeroext -128) #9
  %53 = ptrtoint ptr %register_page.i.i117 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 128, ptr %register_page.i.i117, align 8
  br label %adv7180_write.exit125

adv7180_write.exit125:                            ; preds = %if.then.i.i122, %if.end.i119.adv7180_write.exit125_crit_edge
  %client.i123 = getelementptr inbounds %struct.adv7180_state, ptr %1, i32 0, i32 11
  %54 = ptrtoint ptr %client.i123 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %client.i123, align 4
  %call26.i124 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %55, i8 noundef zeroext -39, i8 noundef zeroext 68) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %56 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i126 = icmp eq i32 %56, 0
  br i1 %tobool.not.i126, label %adv7180_write.exit125.if.end.i134_crit_edge, label %land.rhs.i130

adv7180_write.exit125.if.end.i134_crit_edge:      ; preds = %adv7180_write.exit125
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i134

land.rhs.i130:                                    ; preds = %adv7180_write.exit125
  %dep_map.i127 = getelementptr inbounds %struct.adv7180_state, ptr %1, i32 0, i32 3, i32 5
  %call.i.i128 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i127, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i128)
  %cmp.not.i129 = icmp eq i32 %call.i.i128, 0
  br i1 %cmp.not.i129, label %do.end.i131, label %land.rhs.i130.if.end.i134_crit_edge, !prof !97

land.rhs.i130.if.end.i134_crit_edge:              ; preds = %land.rhs.i130
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i134

do.end.i131:                                      ; preds = %land.rhs.i130
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i134

if.end.i134:                                      ; preds = %do.end.i131, %land.rhs.i130.if.end.i134_crit_edge, %adv7180_write.exit125.if.end.i134_crit_edge
  %57 = ptrtoint ptr %register_page.i.i117 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %register_page.i.i117, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %58)
  %cmp.not.i.i133 = icmp eq i32 %58, 64
  br i1 %cmp.not.i.i133, label %if.end.i134.adv7180_write.exit140_crit_edge, label %if.then.i.i137

if.end.i134.adv7180_write.exit140_crit_edge:      ; preds = %if.end.i134
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit140

if.then.i.i137:                                   ; preds = %if.end.i134
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %client.i123 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %client.i123, align 4
  %call.i31.i136 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %60, i8 noundef zeroext 14, i8 noundef zeroext 64) #9
  %61 = ptrtoint ptr %register_page.i.i117 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 64, ptr %register_page.i.i117, align 8
  br label %adv7180_write.exit140

adv7180_write.exit140:                            ; preds = %if.then.i.i137, %if.end.i134.adv7180_write.exit140_crit_edge
  %62 = ptrtoint ptr %client.i123 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %client.i123, align 4
  %call26.i139 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %63, i8 noundef zeroext -32, i8 noundef zeroext 1) #9
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb14
  br i1 %tobool.not.i141, label %if.else.if.end.i149_crit_edge, label %land.rhs.i145

if.else.if.end.i149_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i149

land.rhs.i145:                                    ; preds = %if.else
  %dep_map.i142 = getelementptr inbounds %struct.adv7180_state, ptr %1, i32 0, i32 3, i32 5
  %call.i.i143 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i142, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i143)
  %cmp.not.i144 = icmp eq i32 %call.i.i143, 0
  br i1 %cmp.not.i144, label %do.end.i146, label %land.rhs.i145.if.end.i149_crit_edge, !prof !97

land.rhs.i145.if.end.i149_crit_edge:              ; preds = %land.rhs.i145
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i149

do.end.i146:                                      ; preds = %land.rhs.i145
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i149

if.end.i149:                                      ; preds = %do.end.i146, %land.rhs.i145.if.end.i149_crit_edge, %if.else.if.end.i149_crit_edge
  %register_page.i.i147 = getelementptr inbounds %struct.adv7180_state, ptr %1, i32 0, i32 12
  %64 = ptrtoint ptr %register_page.i.i147 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %register_page.i.i147, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %65)
  %cmp.not.i.i148 = icmp eq i32 %65, 128
  br i1 %cmp.not.i.i148, label %if.end.i149.adv7180_write.exit155_crit_edge, label %if.then.i.i152

if.end.i149.adv7180_write.exit155_crit_edge:      ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit155

if.then.i.i152:                                   ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i150 = getelementptr inbounds %struct.adv7180_state, ptr %1, i32 0, i32 11
  %66 = ptrtoint ptr %client.i.i150 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %client.i.i150, align 4
  %call.i31.i151 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %67, i8 noundef zeroext 14, i8 noundef zeroext -128) #9
  %68 = ptrtoint ptr %register_page.i.i147 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 128, ptr %register_page.i.i147, align 8
  br label %adv7180_write.exit155

adv7180_write.exit155:                            ; preds = %if.then.i.i152, %if.end.i149.adv7180_write.exit155_crit_edge
  %client.i153 = getelementptr inbounds %struct.adv7180_state, ptr %1, i32 0, i32 11
  %69 = ptrtoint ptr %client.i153 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %client.i153, align 4
  %call26.i154 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %70, i8 noundef zeroext -39, i8 noundef zeroext -60) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %71 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i156 = icmp eq i32 %71, 0
  br i1 %tobool.not.i156, label %adv7180_write.exit155.if.end.i164_crit_edge, label %land.rhs.i160

adv7180_write.exit155.if.end.i164_crit_edge:      ; preds = %adv7180_write.exit155
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i164

land.rhs.i160:                                    ; preds = %adv7180_write.exit155
  %dep_map.i157 = getelementptr inbounds %struct.adv7180_state, ptr %1, i32 0, i32 3, i32 5
  %call.i.i158 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i157, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i158)
  %cmp.not.i159 = icmp eq i32 %call.i.i158, 0
  br i1 %cmp.not.i159, label %do.end.i161, label %land.rhs.i160.if.end.i164_crit_edge, !prof !97

land.rhs.i160.if.end.i164_crit_edge:              ; preds = %land.rhs.i160
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i164

do.end.i161:                                      ; preds = %land.rhs.i160
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i164

if.end.i164:                                      ; preds = %do.end.i161, %land.rhs.i160.if.end.i164_crit_edge, %adv7180_write.exit155.if.end.i164_crit_edge
  %72 = ptrtoint ptr %register_page.i.i147 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %register_page.i.i147, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %73)
  %cmp.not.i.i163 = icmp eq i32 %73, 64
  br i1 %cmp.not.i.i163, label %if.end.i164.adv7180_write.exit170_crit_edge, label %if.then.i.i167

if.end.i164.adv7180_write.exit170_crit_edge:      ; preds = %if.end.i164
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit170

if.then.i.i167:                                   ; preds = %if.end.i164
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %client.i153 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %client.i153, align 4
  %call.i31.i166 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %75, i8 noundef zeroext 14, i8 noundef zeroext 64) #9
  %76 = ptrtoint ptr %register_page.i.i147 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 64, ptr %register_page.i.i147, align 8
  br label %adv7180_write.exit170

adv7180_write.exit170:                            ; preds = %if.then.i.i167, %if.end.i164.adv7180_write.exit170_crit_edge
  %77 = ptrtoint ptr %client.i153 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %client.i153, align 4
  %call26.i169 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %78, i8 noundef zeroext -32, i8 noundef zeroext 0) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %adv7180_write.exit170, %adv7180_write.exit140, %adv7180_write.exit110, %adv7180_write.exit94.sw.epilog_crit_edge, %adv7180_write.exit78, %adv7180_write.exit62, %adv7180_write.exit, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %adv7180_write.exit140 ], [ 0, %adv7180_write.exit170 ], [ %call26.i93, %adv7180_write.exit94.sw.epilog_crit_edge ], [ %call26.i109, %adv7180_write.exit110 ], [ %call26.i77, %adv7180_write.exit78 ], [ %call26.i61, %adv7180_write.exit62 ], [ %call26.i, %adv7180_write.exit ], [ -22, %if.end.sw.epilog_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_notify_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7180_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -184
  %call2 = tail call fastcc i32 @adv7180_set_power(ptr noundef %add.ptr.i, i1 noundef zeroext false)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7180_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -184
  %call2 = tail call fastcc i32 @init_device(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %powered = getelementptr i8, ptr %1, i32 344
  %2 = ptrtoint ptr %powered to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %powered, align 8, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool = icmp ne i8 %3, 0
  %call3 = tail call fastcc i32 @adv7180_set_power(ptr noundef %add.ptr.i, i1 noundef zeroext %tobool)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7180_set_std(ptr noundef %state, i32 noundef %std) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %input = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 10
  %0 = ptrtoint ptr %input to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %input, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 3, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !97

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %register_page.i.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 12
  %3 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %register_page.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not.i.i = icmp eq i32 %4, 0
  br i1 %cmp.not.i.i, label %if.end.i.adv7180_write.exit_crit_edge, label %if.then.i.i

if.end.i.adv7180_write.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 11
  %5 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client.i.i, align 4
  %call.i31.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  %7 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %register_page.i.i, align 8
  br label %adv7180_write.exit

adv7180_write.exit:                               ; preds = %if.then.i.i, %if.end.i.adv7180_write.exit_crit_edge
  %client.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 11
  %8 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client.i, align 4
  %std.tr = trunc i32 %std to i8
  %10 = shl i8 %std.tr, 4
  %conv25.i = or i8 %1, %10
  %call26.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 0, i8 noundef zeroext %conv25.i) #9
  ret i32 %call26.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7180_select_input(ptr noundef %state, i32 noundef %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 3, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !97

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 248, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %register_page.i.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 12
  %1 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %register_page.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not.i.i = icmp eq i32 %2, 0
  br i1 %cmp.not.i.i, label %if.end.i.adv7180_read.exit_crit_edge, label %if.then.i.i

if.end.i.adv7180_read.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_read.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 11
  %3 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client.i.i, align 4
  %call.i30.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  %5 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %register_page.i.i, align 8
  br label %adv7180_read.exit

adv7180_read.exit:                                ; preds = %if.then.i.i, %if.end.i.adv7180_read.exit_crit_edge
  %client.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 11
  %6 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client.i, align 4
  %call25.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp = icmp slt i32 %call25.i, 0
  br i1 %cmp, label %adv7180_read.exit.cleanup_crit_edge, label %if.end

adv7180_read.exit.cleanup_crit_edge:              ; preds = %adv7180_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %adv7180_read.exit
  %and = and i32 %call25.i, 240
  %or = or i32 %and, %input
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %8 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i7 = icmp eq i32 %8, 0
  br i1 %tobool.not.i7, label %if.end.if.end.i15_crit_edge, label %land.rhs.i11

if.end.if.end.i15_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i15

land.rhs.i11:                                     ; preds = %if.end
  %dep_map.i8 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 3, i32 5
  %call.i.i9 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i8, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i9)
  %cmp.not.i10 = icmp eq i32 %call.i.i9, 0
  br i1 %cmp.not.i10, label %do.end.i12, label %land.rhs.i11.if.end.i15_crit_edge, !prof !97

land.rhs.i11.if.end.i15_crit_edge:                ; preds = %land.rhs.i11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i15

do.end.i12:                                       ; preds = %land.rhs.i11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i15

if.end.i15:                                       ; preds = %do.end.i12, %land.rhs.i11.if.end.i15_crit_edge, %if.end.if.end.i15_crit_edge
  %9 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %register_page.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not.i.i14 = icmp eq i32 %10, 0
  br i1 %cmp.not.i.i14, label %if.end.i15.adv7180_write.exit_crit_edge, label %if.then.i.i17

if.end.i15.adv7180_write.exit_crit_edge:          ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit

if.then.i.i17:                                    ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client.i, align 4
  %call.i31.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  %13 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %register_page.i.i, align 8
  br label %adv7180_write.exit

adv7180_write.exit:                               ; preds = %if.then.i.i17, %if.end.i15.adv7180_write.exit_crit_edge
  %14 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client.i, align 4
  %conv25.i = trunc i32 %or to i8
  %call26.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext 0, i8 noundef zeroext %conv25.i) #9
  br label %cleanup

cleanup:                                          ; preds = %adv7180_write.exit, %adv7180_read.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call26.i, %adv7180_write.exit ], [ %call25.i, %adv7180_read.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7180_init(ptr noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 3, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !97

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %register_page.i.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 12
  %1 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %register_page.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not.i.i = icmp eq i32 %2, 0
  br i1 %cmp.not.i.i, label %if.end.i.adv7180_write.exit_crit_edge, label %if.then.i.i

if.end.i.adv7180_write.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 11
  %3 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client.i.i, align 4
  %call.i31.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  %5 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %register_page.i.i, align 8
  br label %adv7180_write.exit

adv7180_write.exit:                               ; preds = %if.then.i.i, %if.end.i.adv7180_write.exit_crit_edge
  %client.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 11
  %6 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client.i, align 4
  %call26.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 4, i8 noundef zeroext -59) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp = icmp slt i32 %call26.i, 0
  br i1 %cmp, label %adv7180_write.exit.cleanup_crit_edge, label %if.end

adv7180_write.exit.cleanup_crit_edge:             ; preds = %adv7180_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %adv7180_write.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %8 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i4 = icmp eq i32 %8, 0
  br i1 %tobool.not.i4, label %if.end.if.end.i12_crit_edge, label %land.rhs.i8

if.end.if.end.i12_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i12

land.rhs.i8:                                      ; preds = %if.end
  %dep_map.i5 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 3, i32 5
  %call.i.i6 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i5, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i6)
  %cmp.not.i7 = icmp eq i32 %call.i.i6, 0
  br i1 %cmp.not.i7, label %do.end.i9, label %land.rhs.i8.if.end.i12_crit_edge, !prof !97

land.rhs.i8.if.end.i12_crit_edge:                 ; preds = %land.rhs.i8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i12

do.end.i9:                                        ; preds = %land.rhs.i8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i12

if.end.i12:                                       ; preds = %do.end.i9, %land.rhs.i8.if.end.i12_crit_edge, %if.end.if.end.i12_crit_edge
  %9 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %register_page.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not.i.i11 = icmp eq i32 %10, 0
  br i1 %cmp.not.i.i11, label %if.end.i12.adv7180_write.exit18_crit_edge, label %if.then.i.i15

if.end.i12.adv7180_write.exit18_crit_edge:        ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit18

if.then.i.i15:                                    ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client.i, align 4
  %call.i31.i14 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  %13 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %register_page.i.i, align 8
  br label %adv7180_write.exit18

adv7180_write.exit18:                             ; preds = %if.then.i.i15, %if.end.i12.adv7180_write.exit18_crit_edge
  %14 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client.i, align 4
  %call26.i17 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext -26, i8 noundef zeroext 79) #9
  br label %cleanup

cleanup:                                          ; preds = %adv7180_write.exit18, %adv7180_write.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call26.i17, %adv7180_write.exit18 ], [ %call26.i, %adv7180_write.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7182_set_std(ptr noundef %state, i32 noundef %std) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 3, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !97

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %register_page.i.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 12
  %1 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %register_page.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not.i.i = icmp eq i32 %2, 0
  br i1 %cmp.not.i.i, label %if.end.i.adv7180_write.exit_crit_edge, label %if.then.i.i

if.end.i.adv7180_write.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 11
  %3 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client.i.i, align 4
  %call.i31.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  %5 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %register_page.i.i, align 8
  br label %adv7180_write.exit

adv7180_write.exit:                               ; preds = %if.then.i.i, %if.end.i.adv7180_write.exit_crit_edge
  %client.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 11
  %6 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client.i, align 4
  %std.tr = trunc i32 %std to i8
  %conv25.i = shl i8 %std.tr, 4
  %call26.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 2, i8 noundef zeroext %conv25.i) #9
  ret i32 %call26.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7182_select_input(ptr noundef %state, i32 noundef %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 3, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !97

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %register_page.i.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 12
  %1 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %register_page.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not.i.i = icmp eq i32 %2, 0
  br i1 %cmp.not.i.i, label %if.end.i.adv7180_write.exit_crit_edge, label %if.then.i.i

if.end.i.adv7180_write.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 11
  %3 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client.i.i, align 4
  %call.i31.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  %5 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %register_page.i.i, align 8
  br label %adv7180_write.exit

adv7180_write.exit:                               ; preds = %if.then.i.i, %if.end.i.adv7180_write.exit_crit_edge
  %client.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 11
  %6 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client.i, align 4
  %conv25.i = trunc i32 %input to i8
  %call26.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 0, i8 noundef zeroext %conv25.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool.not = icmp eq i32 %call26.i, 0
  br i1 %tobool.not, label %if.end, label %adv7180_write.exit.cleanup_crit_edge

adv7180_write.exit.cleanup_crit_edge:             ; preds = %adv7180_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %adv7180_write.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %8 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i54 = icmp eq i32 %8, 0
  br i1 %tobool.not.i54, label %if.end.if.end.i62_crit_edge, label %land.rhs.i58

if.end.if.end.i62_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i62

land.rhs.i58:                                     ; preds = %if.end
  %dep_map.i55 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 3, i32 5
  %call.i.i56 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i55, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i56)
  %cmp.not.i57 = icmp eq i32 %call.i.i56, 0
  br i1 %cmp.not.i57, label %do.end.i59, label %land.rhs.i58.if.end.i62_crit_edge, !prof !97

land.rhs.i58.if.end.i62_crit_edge:                ; preds = %land.rhs.i58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i62

do.end.i59:                                       ; preds = %land.rhs.i58
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i62

if.end.i62:                                       ; preds = %do.end.i59, %land.rhs.i58.if.end.i62_crit_edge, %if.end.if.end.i62_crit_edge
  %9 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %register_page.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %10)
  %cmp.not.i.i61 = icmp eq i32 %10, 128
  br i1 %cmp.not.i.i61, label %if.end.i62.adv7180_write.exit68_crit_edge, label %if.then.i.i65

if.end.i62.adv7180_write.exit68_crit_edge:        ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit68

if.then.i.i65:                                    ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client.i, align 4
  %call.i31.i64 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 14, i8 noundef zeroext -128) #9
  %13 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 128, ptr %register_page.i.i, align 8
  br label %adv7180_write.exit68

adv7180_write.exit68:                             ; preds = %if.then.i.i65, %if.end.i62.adv7180_write.exit68_crit_edge
  %14 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client.i, align 4
  %call26.i67 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext -100, i8 noundef zeroext 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %16 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i69 = icmp eq i32 %16, 0
  br i1 %tobool.not.i69, label %adv7180_write.exit68.if.end.i77_crit_edge, label %land.rhs.i73

adv7180_write.exit68.if.end.i77_crit_edge:        ; preds = %adv7180_write.exit68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i77

land.rhs.i73:                                     ; preds = %adv7180_write.exit68
  %dep_map.i70 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 3, i32 5
  %call.i.i71 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i70, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i71)
  %cmp.not.i72 = icmp eq i32 %call.i.i71, 0
  br i1 %cmp.not.i72, label %do.end.i74, label %land.rhs.i73.if.end.i77_crit_edge, !prof !97

land.rhs.i73.if.end.i77_crit_edge:                ; preds = %land.rhs.i73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i77

do.end.i74:                                       ; preds = %land.rhs.i73
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i77

if.end.i77:                                       ; preds = %do.end.i74, %land.rhs.i73.if.end.i77_crit_edge, %adv7180_write.exit68.if.end.i77_crit_edge
  %17 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %register_page.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %18)
  %cmp.not.i.i76 = icmp eq i32 %18, 128
  br i1 %cmp.not.i.i76, label %if.end.i77.adv7180_write.exit83_crit_edge, label %if.then.i.i80

if.end.i77.adv7180_write.exit83_crit_edge:        ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit83

if.then.i.i80:                                    ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %client.i, align 4
  %call.i31.i79 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %20, i8 noundef zeroext 14, i8 noundef zeroext -128) #9
  %21 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 128, ptr %register_page.i.i, align 8
  br label %adv7180_write.exit83

adv7180_write.exit83:                             ; preds = %if.then.i.i80, %if.end.i77.adv7180_write.exit83_crit_edge
  %22 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %client.i, align 4
  %call26.i82 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext -100, i8 noundef zeroext -1) #9
  %24 = zext i32 %input to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %input, label %adv7180_write.exit83.sw.bb_crit_edge [
    i32 17, label %adv7180_write.exit83.sw.bb3.i_crit_edge
    i32 16, label %adv7180_write.exit83.sw.bb3.i_crit_edge287
    i32 15, label %adv7180_write.exit83.sw.bb3.i_crit_edge288
    i32 14, label %adv7180_write.exit83.sw.bb3.i_crit_edge289
    i32 13, label %adv7180_write.exit83.sw.bb2.i_crit_edge
    i32 12, label %adv7180_write.exit83.sw.bb2.i_crit_edge290
    i32 11, label %adv7180_write.exit83.sw.default_crit_edge
    i32 10, label %adv7180_write.exit83.sw.default_crit_edge291
    i32 8, label %adv7180_write.exit83.sw.default_crit_edge292
    i32 9, label %adv7180_write.exit83.sw.default_crit_edge293
  ]

adv7180_write.exit83.sw.default_crit_edge293:     ; preds = %adv7180_write.exit83
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default

adv7180_write.exit83.sw.default_crit_edge292:     ; preds = %adv7180_write.exit83
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default

adv7180_write.exit83.sw.default_crit_edge291:     ; preds = %adv7180_write.exit83
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default

adv7180_write.exit83.sw.default_crit_edge:        ; preds = %adv7180_write.exit83
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default

adv7180_write.exit83.sw.bb2.i_crit_edge290:       ; preds = %adv7180_write.exit83
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i

adv7180_write.exit83.sw.bb2.i_crit_edge:          ; preds = %adv7180_write.exit83
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i

adv7180_write.exit83.sw.bb3.i_crit_edge289:       ; preds = %adv7180_write.exit83
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3.i

adv7180_write.exit83.sw.bb3.i_crit_edge288:       ; preds = %adv7180_write.exit83
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3.i

adv7180_write.exit83.sw.bb3.i_crit_edge287:       ; preds = %adv7180_write.exit83
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3.i

adv7180_write.exit83.sw.bb3.i_crit_edge:          ; preds = %adv7180_write.exit83
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3.i

adv7180_write.exit83.sw.bb_crit_edge:             ; preds = %adv7180_write.exit83
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb2.i:                                         ; preds = %adv7180_write.exit83.sw.bb2.i_crit_edge, %adv7180_write.exit83.sw.bb2.i_crit_edge290
  br label %sw.default

sw.bb3.i:                                         ; preds = %adv7180_write.exit83.sw.bb3.i_crit_edge, %adv7180_write.exit83.sw.bb3.i_crit_edge287, %adv7180_write.exit83.sw.bb3.i_crit_edge288, %adv7180_write.exit83.sw.bb3.i_crit_edge289
  br label %sw.bb

sw.bb:                                            ; preds = %sw.bb3.i, %adv7180_write.exit83.sw.bb_crit_edge
  %retval.0.i.ph = phi i32 [ 0, %adv7180_write.exit83.sw.bb_crit_edge ], [ 1, %sw.bb3.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %25 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i84 = icmp eq i32 %25, 0
  br i1 %tobool.not.i84, label %sw.bb.if.end.i92_crit_edge, label %land.rhs.i88

sw.bb.if.end.i92_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i92

land.rhs.i88:                                     ; preds = %sw.bb
  %dep_map.i85 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 3, i32 5
  %call.i.i86 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i85, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i86)
  %cmp.not.i87 = icmp eq i32 %call.i.i86, 0
  br i1 %cmp.not.i87, label %do.end.i89, label %land.rhs.i88.if.end.i92_crit_edge, !prof !97

land.rhs.i88.if.end.i92_crit_edge:                ; preds = %land.rhs.i88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i92

do.end.i89:                                       ; preds = %land.rhs.i88
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i92

if.end.i92:                                       ; preds = %do.end.i89, %land.rhs.i88.if.end.i92_crit_edge, %sw.bb.if.end.i92_crit_edge
  %26 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %register_page.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.not.i.i91 = icmp eq i32 %27, 0
  br i1 %cmp.not.i.i91, label %if.end.i92.sw.epilog_crit_edge, label %if.end.i92.sw.epilog.sink.split_crit_edge

if.end.i92.sw.epilog.sink.split_crit_edge:        ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

if.end.i92.sw.epilog_crit_edge:                   ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb2.i, %adv7180_write.exit83.sw.default_crit_edge, %adv7180_write.exit83.sw.default_crit_edge291, %adv7180_write.exit83.sw.default_crit_edge292, %adv7180_write.exit83.sw.default_crit_edge293
  %retval.0.i = phi i32 [ 3, %sw.bb2.i ], [ 2, %adv7180_write.exit83.sw.default_crit_edge ], [ 2, %adv7180_write.exit83.sw.default_crit_edge291 ], [ 2, %adv7180_write.exit83.sw.default_crit_edge292 ], [ 2, %adv7180_write.exit83.sw.default_crit_edge293 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %28 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i99 = icmp eq i32 %28, 0
  br i1 %tobool.not.i99, label %sw.default.if.end.i107_crit_edge, label %land.rhs.i103

sw.default.if.end.i107_crit_edge:                 ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i107

land.rhs.i103:                                    ; preds = %sw.default
  %dep_map.i100 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 3, i32 5
  %call.i.i101 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i100, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i101)
  %cmp.not.i102 = icmp eq i32 %call.i.i101, 0
  br i1 %cmp.not.i102, label %do.end.i104, label %land.rhs.i103.if.end.i107_crit_edge, !prof !97

land.rhs.i103.if.end.i107_crit_edge:              ; preds = %land.rhs.i103
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i107

do.end.i104:                                      ; preds = %land.rhs.i103
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i107

if.end.i107:                                      ; preds = %do.end.i104, %land.rhs.i103.if.end.i107_crit_edge, %sw.default.if.end.i107_crit_edge
  %29 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %register_page.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.not.i.i106 = icmp eq i32 %30, 0
  br i1 %cmp.not.i.i106, label %if.end.i107.sw.epilog_crit_edge, label %if.end.i107.sw.epilog.sink.split_crit_edge

if.end.i107.sw.epilog.sink.split_crit_edge:       ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

if.end.i107.sw.epilog_crit_edge:                  ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %if.end.i107.sw.epilog.sink.split_crit_edge, %if.end.i92.sw.epilog.sink.split_crit_edge
  %.sink285.ph = phi i8 [ 65, %if.end.i92.sw.epilog.sink.split_crit_edge ], [ 1, %if.end.i107.sw.epilog.sink.split_crit_edge ]
  %retval.0.i282.ph = phi i32 [ %retval.0.i.ph, %if.end.i92.sw.epilog.sink.split_crit_edge ], [ %retval.0.i, %if.end.i107.sw.epilog.sink.split_crit_edge ]
  %31 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %client.i, align 4
  %call.i31.i109 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %32, i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  %33 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %register_page.i.i, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.i107.sw.epilog_crit_edge, %if.end.i92.sw.epilog_crit_edge
  %.sink285 = phi i8 [ 65, %if.end.i92.sw.epilog_crit_edge ], [ 1, %if.end.i107.sw.epilog_crit_edge ], [ %.sink285.ph, %sw.epilog.sink.split ]
  %retval.0.i282 = phi i32 [ %retval.0.i.ph, %if.end.i92.sw.epilog_crit_edge ], [ %retval.0.i, %if.end.i107.sw.epilog_crit_edge ], [ %retval.0.i282.ph, %sw.epilog.sink.split ]
  %34 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %client.i, align 4
  %call26.i112 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext 23, i8 noundef zeroext %.sink285) #9
  %chip_info = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 15
  %36 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chip_info, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %and = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %adv7182_lbias_settings.adv7280_lbias_settings = select i1 %tobool6.not, ptr @adv7182_lbias_settings, ptr @adv7280_lbias_settings
  %lbias.0 = getelementptr [4 x [3 x i32]], ptr %adv7182_lbias_settings.adv7280_lbias_settings, i32 0, i32 %retval.0.i282
  %dep_map.i115 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 3, i32 5
  %40 = ptrtoint ptr %lbias.0 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %lbias.0, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %42 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i114 = icmp eq i32 %42, 0
  br i1 %tobool.not.i114, label %sw.epilog.if.end.i122_crit_edge, label %land.rhs.i118

sw.epilog.if.end.i122_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i122

land.rhs.i118:                                    ; preds = %sw.epilog
  %call.i.i116 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i115, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i116)
  %cmp.not.i117 = icmp eq i32 %call.i.i116, 0
  br i1 %cmp.not.i117, label %do.end.i119, label %land.rhs.i118.if.end.i122_crit_edge, !prof !97

land.rhs.i118.if.end.i122_crit_edge:              ; preds = %land.rhs.i118
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i122

do.end.i119:                                      ; preds = %land.rhs.i118
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i122

if.end.i122:                                      ; preds = %do.end.i119, %land.rhs.i118.if.end.i122_crit_edge, %sw.epilog.if.end.i122_crit_edge
  %43 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %register_page.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.not.i.i121 = icmp eq i32 %44, 0
  br i1 %cmp.not.i.i121, label %if.end.i122.adv7180_write.exit129_crit_edge, label %if.then.i.i125

if.end.i122.adv7180_write.exit129_crit_edge:      ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit129

if.then.i.i125:                                   ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %client.i, align 4
  %call.i31.i124 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %46, i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  %47 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %register_page.i.i, align 8
  br label %adv7180_write.exit129

adv7180_write.exit129:                            ; preds = %if.then.i.i125, %if.end.i122.adv7180_write.exit129_crit_edge
  %48 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %client.i, align 4
  %conv25.i127 = trunc i32 %41 to i8
  %call26.i128 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %49, i8 noundef zeroext 82, i8 noundef zeroext %conv25.i127) #9
  %arrayidx11.1 = getelementptr i32, ptr %lbias.0, i32 1
  %50 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx11.1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %52 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i114.1 = icmp eq i32 %52, 0
  br i1 %tobool.not.i114.1, label %adv7180_write.exit129.if.end.i122.1_crit_edge, label %land.rhs.i118.1

adv7180_write.exit129.if.end.i122.1_crit_edge:    ; preds = %adv7180_write.exit129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i122.1

land.rhs.i118.1:                                  ; preds = %adv7180_write.exit129
  %call.i.i116.1 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i115, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i116.1)
  %cmp.not.i117.1 = icmp eq i32 %call.i.i116.1, 0
  br i1 %cmp.not.i117.1, label %do.end.i119.1, label %land.rhs.i118.1.if.end.i122.1_crit_edge, !prof !97

land.rhs.i118.1.if.end.i122.1_crit_edge:          ; preds = %land.rhs.i118.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i122.1

do.end.i119.1:                                    ; preds = %land.rhs.i118.1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i122.1

if.end.i122.1:                                    ; preds = %do.end.i119.1, %land.rhs.i118.1.if.end.i122.1_crit_edge, %adv7180_write.exit129.if.end.i122.1_crit_edge
  %53 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %register_page.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.not.i.i121.1 = icmp eq i32 %54, 0
  br i1 %cmp.not.i.i121.1, label %if.end.i122.1.adv7180_write.exit129.1_crit_edge, label %if.then.i.i125.1

if.end.i122.1.adv7180_write.exit129.1_crit_edge:  ; preds = %if.end.i122.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit129.1

if.then.i.i125.1:                                 ; preds = %if.end.i122.1
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %client.i, align 4
  %call.i31.i124.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %56, i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  %57 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %register_page.i.i, align 8
  br label %adv7180_write.exit129.1

adv7180_write.exit129.1:                          ; preds = %if.then.i.i125.1, %if.end.i122.1.adv7180_write.exit129.1_crit_edge
  %58 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %client.i, align 4
  %conv25.i127.1 = trunc i32 %51 to i8
  %call26.i128.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %59, i8 noundef zeroext 83, i8 noundef zeroext %conv25.i127.1) #9
  %arrayidx11.2 = getelementptr i32, ptr %lbias.0, i32 2
  %60 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx11.2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %62 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i114.2 = icmp eq i32 %62, 0
  br i1 %tobool.not.i114.2, label %adv7180_write.exit129.1.if.end.i122.2_crit_edge, label %land.rhs.i118.2

adv7180_write.exit129.1.if.end.i122.2_crit_edge:  ; preds = %adv7180_write.exit129.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i122.2

land.rhs.i118.2:                                  ; preds = %adv7180_write.exit129.1
  %call.i.i116.2 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i115, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i116.2)
  %cmp.not.i117.2 = icmp eq i32 %call.i.i116.2, 0
  br i1 %cmp.not.i117.2, label %do.end.i119.2, label %land.rhs.i118.2.if.end.i122.2_crit_edge, !prof !97

land.rhs.i118.2.if.end.i122.2_crit_edge:          ; preds = %land.rhs.i118.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i122.2

do.end.i119.2:                                    ; preds = %land.rhs.i118.2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i122.2

if.end.i122.2:                                    ; preds = %do.end.i119.2, %land.rhs.i118.2.if.end.i122.2_crit_edge, %adv7180_write.exit129.1.if.end.i122.2_crit_edge
  %63 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %register_page.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp.not.i.i121.2 = icmp eq i32 %64, 0
  br i1 %cmp.not.i.i121.2, label %if.end.i122.2.adv7180_write.exit129.2_crit_edge, label %if.then.i.i125.2

if.end.i122.2.adv7180_write.exit129.2_crit_edge:  ; preds = %if.end.i122.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit129.2

if.then.i.i125.2:                                 ; preds = %if.end.i122.2
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %client.i, align 4
  %call.i31.i124.2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %66, i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  %67 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %register_page.i.i, align 8
  br label %adv7180_write.exit129.2

adv7180_write.exit129.2:                          ; preds = %if.then.i.i125.2, %if.end.i122.2.adv7180_write.exit129.2_crit_edge
  %68 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %client.i, align 4
  %conv25.i127.2 = trunc i32 %61 to i8
  %call26.i128.2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %69, i8 noundef zeroext 84, i8 noundef zeroext %conv25.i127.2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i282)
  %cmp13 = icmp eq i32 %retval.0.i282, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %70 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i130 = icmp eq i32 %70, 0
  br i1 %cmp13, label %if.then14, label %if.else20

if.then14:                                        ; preds = %adv7180_write.exit129.2
  br i1 %tobool.not.i130, label %if.then14.if.end.i138_crit_edge, label %land.rhs.i134

if.then14.if.end.i138_crit_edge:                  ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i138

land.rhs.i134:                                    ; preds = %if.then14
  %call.i.i132 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i115, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i132)
  %cmp.not.i133 = icmp eq i32 %call.i.i132, 0
  br i1 %cmp.not.i133, label %do.end.i135, label %land.rhs.i134.if.end.i138_crit_edge, !prof !97

land.rhs.i134.if.end.i138_crit_edge:              ; preds = %land.rhs.i134
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i138

do.end.i135:                                      ; preds = %land.rhs.i134
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i138

if.end.i138:                                      ; preds = %do.end.i135, %land.rhs.i134.if.end.i138_crit_edge, %if.then14.if.end.i138_crit_edge
  %71 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %register_page.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp.not.i.i137 = icmp eq i32 %72, 0
  br i1 %cmp.not.i.i137, label %if.end.i138.adv7180_write.exit144_crit_edge, label %if.then.i.i141

if.end.i138.adv7180_write.exit144_crit_edge:      ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit144

if.then.i.i141:                                   ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %client.i, align 4
  %call.i31.i140 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %74, i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  %75 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %register_page.i.i, align 8
  br label %adv7180_write.exit144

adv7180_write.exit144:                            ; preds = %if.then.i.i141, %if.end.i138.adv7180_write.exit144_crit_edge
  %76 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %client.i, align 4
  %call26.i143 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %77, i8 noundef zeroext 95, i8 noundef zeroext -88) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %78 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not.i145 = icmp eq i32 %78, 0
  br i1 %tobool.not.i145, label %adv7180_write.exit144.if.end.i153_crit_edge, label %land.rhs.i149

adv7180_write.exit144.if.end.i153_crit_edge:      ; preds = %adv7180_write.exit144
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i153

land.rhs.i149:                                    ; preds = %adv7180_write.exit144
  %call.i.i147 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i115, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i147)
  %cmp.not.i148 = icmp eq i32 %call.i.i147, 0
  br i1 %cmp.not.i148, label %do.end.i150, label %land.rhs.i149.if.end.i153_crit_edge, !prof !97

land.rhs.i149.if.end.i153_crit_edge:              ; preds = %land.rhs.i149
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i153

do.end.i150:                                      ; preds = %land.rhs.i149
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i153

if.end.i153:                                      ; preds = %do.end.i150, %land.rhs.i149.if.end.i153_crit_edge, %adv7180_write.exit144.if.end.i153_crit_edge
  %79 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %register_page.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp.not.i.i152 = icmp eq i32 %80, 0
  br i1 %cmp.not.i.i152, label %if.end.i153.adv7180_write.exit159_crit_edge, label %if.then.i.i156

if.end.i153.adv7180_write.exit159_crit_edge:      ; preds = %if.end.i153
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit159

if.then.i.i156:                                   ; preds = %if.end.i153
  call void @__sanitizer_cov_trace_pc() #11
  %81 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %client.i, align 4
  %call.i31.i155 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %82, i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  %83 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %register_page.i.i, align 8
  br label %adv7180_write.exit159

adv7180_write.exit159:                            ; preds = %if.then.i.i156, %if.end.i153.adv7180_write.exit159_crit_edge
  %84 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %client.i, align 4
  %call26.i158 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %85, i8 noundef zeroext 90, i8 noundef zeroext -112) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %86 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.not.i160 = icmp eq i32 %86, 0
  br i1 %tobool.not.i160, label %adv7180_write.exit159.if.end.i168_crit_edge, label %land.rhs.i164

adv7180_write.exit159.if.end.i168_crit_edge:      ; preds = %adv7180_write.exit159
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i168

land.rhs.i164:                                    ; preds = %adv7180_write.exit159
  %call.i.i162 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i115, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i162)
  %cmp.not.i163 = icmp eq i32 %call.i.i162, 0
  br i1 %cmp.not.i163, label %do.end.i165, label %land.rhs.i164.if.end.i168_crit_edge, !prof !97

land.rhs.i164.if.end.i168_crit_edge:              ; preds = %land.rhs.i164
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i168

do.end.i165:                                      ; preds = %land.rhs.i164
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i168

if.end.i168:                                      ; preds = %do.end.i165, %land.rhs.i164.if.end.i168_crit_edge, %adv7180_write.exit159.if.end.i168_crit_edge
  %87 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %register_page.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp.not.i.i167 = icmp eq i32 %88, 0
  br i1 %cmp.not.i.i167, label %if.end.i168.adv7180_write.exit174_crit_edge, label %if.then.i.i171

if.end.i168.adv7180_write.exit174_crit_edge:      ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit174

if.then.i.i171:                                   ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #11
  %89 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %client.i, align 4
  %call.i31.i170 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %90, i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  %91 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %register_page.i.i, align 8
  br label %adv7180_write.exit174

adv7180_write.exit174:                            ; preds = %if.then.i.i171, %if.end.i168.adv7180_write.exit174_crit_edge
  %92 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %client.i, align 4
  %call26.i173 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %93, i8 noundef zeroext 96, i8 noundef zeroext -80) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %94 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.not.i175 = icmp eq i32 %94, 0
  br i1 %tobool.not.i175, label %adv7180_write.exit174.if.end.i183_crit_edge, label %land.rhs.i179

adv7180_write.exit174.if.end.i183_crit_edge:      ; preds = %adv7180_write.exit174
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i183

land.rhs.i179:                                    ; preds = %adv7180_write.exit174
  %call.i.i177 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i115, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i177)
  %cmp.not.i178 = icmp eq i32 %call.i.i177, 0
  br i1 %cmp.not.i178, label %do.end.i180, label %land.rhs.i179.if.end.i183_crit_edge, !prof !97

land.rhs.i179.if.end.i183_crit_edge:              ; preds = %land.rhs.i179
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i183

do.end.i180:                                      ; preds = %land.rhs.i179
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i183

if.end.i183:                                      ; preds = %do.end.i180, %land.rhs.i179.if.end.i183_crit_edge, %adv7180_write.exit174.if.end.i183_crit_edge
  %95 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %register_page.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %96)
  %cmp.not.i.i182 = icmp eq i32 %96, 128
  br i1 %cmp.not.i.i182, label %if.end.i183.adv7180_write.exit189_crit_edge, label %if.then.i.i186

if.end.i183.adv7180_write.exit189_crit_edge:      ; preds = %if.end.i183
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit189

if.then.i.i186:                                   ; preds = %if.end.i183
  call void @__sanitizer_cov_trace_pc() #11
  %97 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %client.i, align 4
  %call.i31.i185 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %98, i8 noundef zeroext 14, i8 noundef zeroext -128) #9
  %99 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 128, ptr %register_page.i.i, align 8
  br label %adv7180_write.exit189

adv7180_write.exit189:                            ; preds = %if.then.i.i186, %if.end.i183.adv7180_write.exit189_crit_edge
  %100 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %client.i, align 4
  %call26.i188 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %101, i8 noundef zeroext -74, i8 noundef zeroext 8) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %102 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool.not.i190 = icmp eq i32 %102, 0
  br i1 %tobool.not.i190, label %adv7180_write.exit189.if.end.i198_crit_edge, label %land.rhs.i194

adv7180_write.exit189.if.end.i198_crit_edge:      ; preds = %adv7180_write.exit189
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i198

land.rhs.i194:                                    ; preds = %adv7180_write.exit189
  %call.i.i192 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i115, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i192)
  %cmp.not.i193 = icmp eq i32 %call.i.i192, 0
  br i1 %cmp.not.i193, label %do.end.i195, label %land.rhs.i194.if.end.i198_crit_edge, !prof !97

land.rhs.i194.if.end.i198_crit_edge:              ; preds = %land.rhs.i194
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i198

do.end.i195:                                      ; preds = %land.rhs.i194
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i198

if.end.i198:                                      ; preds = %do.end.i195, %land.rhs.i194.if.end.i198_crit_edge, %adv7180_write.exit189.if.end.i198_crit_edge
  %103 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %register_page.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %104)
  %cmp.not.i.i197 = icmp eq i32 %104, 128
  br i1 %cmp.not.i.i197, label %if.end.i198.cleanup.sink.split_crit_edge, label %if.end.i198.cleanup.sink.split.sink.split_crit_edge

if.end.i198.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end.i198
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.sink.split

if.end.i198.cleanup.sink.split_crit_edge:         ; preds = %if.end.i198
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.else20:                                        ; preds = %adv7180_write.exit129.2
  br i1 %tobool.not.i130, label %if.else20.if.end.i213_crit_edge, label %land.rhs.i209

if.else20.if.end.i213_crit_edge:                  ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i213

land.rhs.i209:                                    ; preds = %if.else20
  %call.i.i207 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i115, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i207)
  %cmp.not.i208 = icmp eq i32 %call.i.i207, 0
  br i1 %cmp.not.i208, label %do.end.i210, label %land.rhs.i209.if.end.i213_crit_edge, !prof !97

land.rhs.i209.if.end.i213_crit_edge:              ; preds = %land.rhs.i209
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i213

do.end.i210:                                      ; preds = %land.rhs.i209
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i213

if.end.i213:                                      ; preds = %do.end.i210, %land.rhs.i209.if.end.i213_crit_edge, %if.else20.if.end.i213_crit_edge
  %105 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %register_page.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp.not.i.i212 = icmp eq i32 %106, 0
  br i1 %cmp.not.i.i212, label %if.end.i213.adv7180_write.exit219_crit_edge, label %if.then.i.i216

if.end.i213.adv7180_write.exit219_crit_edge:      ; preds = %if.end.i213
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit219

if.then.i.i216:                                   ; preds = %if.end.i213
  call void @__sanitizer_cov_trace_pc() #11
  %107 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %client.i, align 4
  %call.i31.i215 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %108, i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  %109 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %register_page.i.i, align 8
  br label %adv7180_write.exit219

adv7180_write.exit219:                            ; preds = %if.then.i.i216, %if.end.i213.adv7180_write.exit219_crit_edge
  %110 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %client.i, align 4
  %call26.i218 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %111, i8 noundef zeroext 95, i8 noundef zeroext -16) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %112 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool.not.i220 = icmp eq i32 %112, 0
  br i1 %tobool.not.i220, label %adv7180_write.exit219.if.end.i228_crit_edge, label %land.rhs.i224

adv7180_write.exit219.if.end.i228_crit_edge:      ; preds = %adv7180_write.exit219
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i228

land.rhs.i224:                                    ; preds = %adv7180_write.exit219
  %call.i.i222 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i115, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i222)
  %cmp.not.i223 = icmp eq i32 %call.i.i222, 0
  br i1 %cmp.not.i223, label %do.end.i225, label %land.rhs.i224.if.end.i228_crit_edge, !prof !97

land.rhs.i224.if.end.i228_crit_edge:              ; preds = %land.rhs.i224
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i228

do.end.i225:                                      ; preds = %land.rhs.i224
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i228

if.end.i228:                                      ; preds = %do.end.i225, %land.rhs.i224.if.end.i228_crit_edge, %adv7180_write.exit219.if.end.i228_crit_edge
  %113 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %register_page.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp.not.i.i227 = icmp eq i32 %114, 0
  br i1 %cmp.not.i.i227, label %if.end.i228.adv7180_write.exit234_crit_edge, label %if.then.i.i231

if.end.i228.adv7180_write.exit234_crit_edge:      ; preds = %if.end.i228
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit234

if.then.i.i231:                                   ; preds = %if.end.i228
  call void @__sanitizer_cov_trace_pc() #11
  %115 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %client.i, align 4
  %call.i31.i230 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %116, i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  %117 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %register_page.i.i, align 8
  br label %adv7180_write.exit234

adv7180_write.exit234:                            ; preds = %if.then.i.i231, %if.end.i228.adv7180_write.exit234_crit_edge
  %118 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %client.i, align 4
  %call26.i233 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %119, i8 noundef zeroext 90, i8 noundef zeroext -48) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %120 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool.not.i235 = icmp eq i32 %120, 0
  br i1 %tobool.not.i235, label %adv7180_write.exit234.if.end.i243_crit_edge, label %land.rhs.i239

adv7180_write.exit234.if.end.i243_crit_edge:      ; preds = %adv7180_write.exit234
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i243

land.rhs.i239:                                    ; preds = %adv7180_write.exit234
  %call.i.i237 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i115, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i237)
  %cmp.not.i238 = icmp eq i32 %call.i.i237, 0
  br i1 %cmp.not.i238, label %do.end.i240, label %land.rhs.i239.if.end.i243_crit_edge, !prof !97

land.rhs.i239.if.end.i243_crit_edge:              ; preds = %land.rhs.i239
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i243

do.end.i240:                                      ; preds = %land.rhs.i239
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i243

if.end.i243:                                      ; preds = %do.end.i240, %land.rhs.i239.if.end.i243_crit_edge, %adv7180_write.exit234.if.end.i243_crit_edge
  %121 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %register_page.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp.not.i.i242 = icmp eq i32 %122, 0
  br i1 %cmp.not.i.i242, label %if.end.i243.adv7180_write.exit249_crit_edge, label %if.then.i.i246

if.end.i243.adv7180_write.exit249_crit_edge:      ; preds = %if.end.i243
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit249

if.then.i.i246:                                   ; preds = %if.end.i243
  call void @__sanitizer_cov_trace_pc() #11
  %123 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %client.i, align 4
  %call.i31.i245 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %124, i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  %125 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %register_page.i.i, align 8
  br label %adv7180_write.exit249

adv7180_write.exit249:                            ; preds = %if.then.i.i246, %if.end.i243.adv7180_write.exit249_crit_edge
  %126 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %client.i, align 4
  %call26.i248 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %127, i8 noundef zeroext 96, i8 noundef zeroext 16) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %128 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool.not.i250 = icmp eq i32 %128, 0
  br i1 %tobool.not.i250, label %adv7180_write.exit249.if.end.i258_crit_edge, label %land.rhs.i254

adv7180_write.exit249.if.end.i258_crit_edge:      ; preds = %adv7180_write.exit249
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i258

land.rhs.i254:                                    ; preds = %adv7180_write.exit249
  %call.i.i252 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i115, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i252)
  %cmp.not.i253 = icmp eq i32 %call.i.i252, 0
  br i1 %cmp.not.i253, label %do.end.i255, label %land.rhs.i254.if.end.i258_crit_edge, !prof !97

land.rhs.i254.if.end.i258_crit_edge:              ; preds = %land.rhs.i254
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i258

do.end.i255:                                      ; preds = %land.rhs.i254
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i258

if.end.i258:                                      ; preds = %do.end.i255, %land.rhs.i254.if.end.i258_crit_edge, %adv7180_write.exit249.if.end.i258_crit_edge
  %129 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %register_page.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %130)
  %cmp.not.i.i257 = icmp eq i32 %130, 128
  br i1 %cmp.not.i.i257, label %if.end.i258.adv7180_write.exit264_crit_edge, label %if.then.i.i261

if.end.i258.adv7180_write.exit264_crit_edge:      ; preds = %if.end.i258
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit264

if.then.i.i261:                                   ; preds = %if.end.i258
  call void @__sanitizer_cov_trace_pc() #11
  %131 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %client.i, align 4
  %call.i31.i260 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %132, i8 noundef zeroext 14, i8 noundef zeroext -128) #9
  %133 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 128, ptr %register_page.i.i, align 8
  br label %adv7180_write.exit264

adv7180_write.exit264:                            ; preds = %if.then.i.i261, %if.end.i258.adv7180_write.exit264_crit_edge
  %134 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %client.i, align 4
  %call26.i263 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %135, i8 noundef zeroext -74, i8 noundef zeroext -100) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %136 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool.not.i265 = icmp eq i32 %136, 0
  br i1 %tobool.not.i265, label %adv7180_write.exit264.if.end.i273_crit_edge, label %land.rhs.i269

adv7180_write.exit264.if.end.i273_crit_edge:      ; preds = %adv7180_write.exit264
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i273

land.rhs.i269:                                    ; preds = %adv7180_write.exit264
  %call.i.i267 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i115, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i267)
  %cmp.not.i268 = icmp eq i32 %call.i.i267, 0
  br i1 %cmp.not.i268, label %do.end.i270, label %land.rhs.i269.if.end.i273_crit_edge, !prof !97

land.rhs.i269.if.end.i273_crit_edge:              ; preds = %land.rhs.i269
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i273

do.end.i270:                                      ; preds = %land.rhs.i269
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i273

if.end.i273:                                      ; preds = %do.end.i270, %land.rhs.i269.if.end.i273_crit_edge, %adv7180_write.exit264.if.end.i273_crit_edge
  %137 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %register_page.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %138)
  %cmp.not.i.i272 = icmp eq i32 %138, 128
  br i1 %cmp.not.i.i272, label %if.end.i273.cleanup.sink.split_crit_edge, label %if.end.i273.cleanup.sink.split.sink.split_crit_edge

if.end.i273.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end.i273
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.sink.split

if.end.i273.cleanup.sink.split_crit_edge:         ; preds = %if.end.i273
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.end.i273.cleanup.sink.split.sink.split_crit_edge, %if.end.i198.cleanup.sink.split.sink.split_crit_edge
  %.sink286.ph = phi i8 [ -96, %if.end.i198.cleanup.sink.split.sink.split_crit_edge ], [ 0, %if.end.i273.cleanup.sink.split.sink.split_crit_edge ]
  %139 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %client.i, align 4
  %call.i31.i275 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %140, i8 noundef zeroext 14, i8 noundef zeroext -128) #9
  %141 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 128, ptr %register_page.i.i, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end.i273.cleanup.sink.split_crit_edge, %if.end.i198.cleanup.sink.split_crit_edge
  %.sink286 = phi i8 [ -96, %if.end.i198.cleanup.sink.split_crit_edge ], [ 0, %if.end.i273.cleanup.sink.split_crit_edge ], [ %.sink286.ph, %cleanup.sink.split.sink.split ]
  %142 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %client.i, align 4
  %call26.i203 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %143, i8 noundef zeroext -64, i8 noundef zeroext %.sink286) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %adv7180_write.exit.cleanup_crit_edge
  ret i32 %call26.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7182_init(ptr noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_info = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 15
  %0 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_info, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %land.rhs.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.then
  %dep_map.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 3, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !97

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %register_page.i.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 12
  %5 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %register_page.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not.i.i = icmp eq i32 %6, 0
  br i1 %cmp.not.i.i, label %if.end.i.adv7180_write.exit_crit_edge, label %if.then.i.i

if.end.i.adv7180_write.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 11
  %7 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %client.i.i, align 4
  %call.i31.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  %9 = ptrtoint ptr %register_page.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %register_page.i.i, align 8
  br label %adv7180_write.exit

adv7180_write.exit:                               ; preds = %if.then.i.i, %if.end.i.adv7180_write.exit_crit_edge
  %client.i = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 11
  %10 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client.i, align 4
  %call26.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext -2, i8 noundef zeroext -120) #9
  br label %if.end

if.end:                                           ; preds = %adv7180_write.exit, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip_info, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %and3 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %16 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i66 = icmp eq i32 %16, 0
  br i1 %tobool.not.i66, label %if.then5.if.end.i74_crit_edge, label %land.rhs.i70

if.then5.if.end.i74_crit_edge:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i74

land.rhs.i70:                                     ; preds = %if.then5
  %dep_map.i67 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 3, i32 5
  %call.i.i68 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i67, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i68)
  %cmp.not.i69 = icmp eq i32 %call.i.i68, 0
  br i1 %cmp.not.i69, label %do.end.i71, label %land.rhs.i70.if.end.i74_crit_edge, !prof !97

land.rhs.i70.if.end.i74_crit_edge:                ; preds = %land.rhs.i70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i74

do.end.i71:                                       ; preds = %land.rhs.i70
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i74

if.end.i74:                                       ; preds = %do.end.i71, %land.rhs.i70.if.end.i74_crit_edge, %if.then5.if.end.i74_crit_edge
  %register_page.i.i72 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 12
  %17 = ptrtoint ptr %register_page.i.i72 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %register_page.i.i72, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not.i.i73 = icmp eq i32 %18, 0
  br i1 %cmp.not.i.i73, label %if.end.i74.adv7180_write.exit80_crit_edge, label %if.then.i.i77

if.end.i74.adv7180_write.exit80_crit_edge:        ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit80

if.then.i.i77:                                    ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i75 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 11
  %19 = ptrtoint ptr %client.i.i75 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %client.i.i75, align 4
  %call.i31.i76 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %20, i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  %21 = ptrtoint ptr %register_page.i.i72 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %register_page.i.i72, align 8
  br label %adv7180_write.exit80

adv7180_write.exit80:                             ; preds = %if.then.i.i77, %if.end.i74.adv7180_write.exit80_crit_edge
  %client.i78 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 11
  %22 = ptrtoint ptr %client.i78 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %client.i78, align 4
  %call26.i79 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext -3, i8 noundef zeroext -124) #9
  br label %if.end7

if.end7:                                          ; preds = %adv7180_write.exit80, %if.end.if.end7_crit_edge
  %24 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip_info, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %and10 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end7.if.end16_crit_edge, label %if.then12

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then12:                                        ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %28 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i81 = icmp eq i32 %28, 0
  br i1 %tobool.not.i81, label %if.then12.if.end.i89_crit_edge, label %land.rhs.i85

if.then12.if.end.i89_crit_edge:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i89

land.rhs.i85:                                     ; preds = %if.then12
  %dep_map.i82 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 3, i32 5
  %call.i.i83 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i82, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i83)
  %cmp.not.i84 = icmp eq i32 %call.i.i83, 0
  br i1 %cmp.not.i84, label %do.end.i86, label %land.rhs.i85.if.end.i89_crit_edge, !prof !97

land.rhs.i85.if.end.i89_crit_edge:                ; preds = %land.rhs.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i89

do.end.i86:                                       ; preds = %land.rhs.i85
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i89

if.end.i89:                                       ; preds = %do.end.i86, %land.rhs.i85.if.end.i89_crit_edge, %if.then12.if.end.i89_crit_edge
  %register_page.i.i87 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 12
  %29 = ptrtoint ptr %register_page.i.i87 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %register_page.i.i87, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.not.i.i88 = icmp eq i32 %30, 0
  br i1 %cmp.not.i.i88, label %if.end.i89.adv7180_write.exit95_crit_edge, label %if.then.i.i92

if.end.i89.adv7180_write.exit95_crit_edge:        ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit95

if.then.i.i92:                                    ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i90 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 11
  %31 = ptrtoint ptr %client.i.i90 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %client.i.i90, align 4
  %call.i31.i91 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %32, i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  %33 = ptrtoint ptr %register_page.i.i87 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %register_page.i.i87, align 8
  br label %adv7180_write.exit95

adv7180_write.exit95:                             ; preds = %if.then.i.i92, %if.end.i89.adv7180_write.exit95_crit_edge
  %client.i93 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 11
  %34 = ptrtoint ptr %client.i93 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %client.i93, align 4
  %call26.i94 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext -128, i8 noundef zeroext 81) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %36 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i96 = icmp eq i32 %36, 0
  br i1 %tobool.not.i96, label %adv7180_write.exit95.if.end.i104_crit_edge, label %land.rhs.i100

adv7180_write.exit95.if.end.i104_crit_edge:       ; preds = %adv7180_write.exit95
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i104

land.rhs.i100:                                    ; preds = %adv7180_write.exit95
  %dep_map.i97 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 3, i32 5
  %call.i.i98 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i97, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i98)
  %cmp.not.i99 = icmp eq i32 %call.i.i98, 0
  br i1 %cmp.not.i99, label %do.end.i101, label %land.rhs.i100.if.end.i104_crit_edge, !prof !97

land.rhs.i100.if.end.i104_crit_edge:              ; preds = %land.rhs.i100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i104

do.end.i101:                                      ; preds = %land.rhs.i100
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i104

if.end.i104:                                      ; preds = %do.end.i101, %land.rhs.i100.if.end.i104_crit_edge, %adv7180_write.exit95.if.end.i104_crit_edge
  %37 = ptrtoint ptr %register_page.i.i87 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %register_page.i.i87, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.not.i.i103 = icmp eq i32 %38, 0
  br i1 %cmp.not.i.i103, label %if.end.i104.adv7180_write.exit110_crit_edge, label %if.then.i.i107

if.end.i104.adv7180_write.exit110_crit_edge:      ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit110

if.then.i.i107:                                   ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %client.i93 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %client.i93, align 4
  %call.i31.i106 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %40, i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  %41 = ptrtoint ptr %register_page.i.i87 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %register_page.i.i87, align 8
  br label %adv7180_write.exit110

adv7180_write.exit110:                            ; preds = %if.then.i.i107, %if.end.i104.adv7180_write.exit110_crit_edge
  %42 = ptrtoint ptr %client.i93 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %client.i93, align 4
  %call26.i109 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %43, i8 noundef zeroext -127, i8 noundef zeroext 81) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %44 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i111 = icmp eq i32 %44, 0
  br i1 %tobool.not.i111, label %adv7180_write.exit110.if.end.i119_crit_edge, label %land.rhs.i115

adv7180_write.exit110.if.end.i119_crit_edge:      ; preds = %adv7180_write.exit110
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i119

land.rhs.i115:                                    ; preds = %adv7180_write.exit110
  %dep_map.i112 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 3, i32 5
  %call.i.i113 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i112, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i113)
  %cmp.not.i114 = icmp eq i32 %call.i.i113, 0
  br i1 %cmp.not.i114, label %do.end.i116, label %land.rhs.i115.if.end.i119_crit_edge, !prof !97

land.rhs.i115.if.end.i119_crit_edge:              ; preds = %land.rhs.i115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i119

do.end.i116:                                      ; preds = %land.rhs.i115
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i119

if.end.i119:                                      ; preds = %do.end.i116, %land.rhs.i115.if.end.i119_crit_edge, %adv7180_write.exit110.if.end.i119_crit_edge
  %45 = ptrtoint ptr %register_page.i.i87 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %register_page.i.i87, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp.not.i.i118 = icmp eq i32 %46, 0
  br i1 %cmp.not.i.i118, label %if.end.i119.adv7180_write.exit125_crit_edge, label %if.then.i.i122

if.end.i119.adv7180_write.exit125_crit_edge:      ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit125

if.then.i.i122:                                   ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %client.i93 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %client.i93, align 4
  %call.i31.i121 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %48, i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  %49 = ptrtoint ptr %register_page.i.i87 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %register_page.i.i87, align 8
  br label %adv7180_write.exit125

adv7180_write.exit125:                            ; preds = %if.then.i.i122, %if.end.i119.adv7180_write.exit125_crit_edge
  %50 = ptrtoint ptr %client.i93 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %client.i93, align 4
  %call26.i124 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %51, i8 noundef zeroext -126, i8 noundef zeroext 104) #9
  br label %if.end16

if.end16:                                         ; preds = %adv7180_write.exit125, %if.end7.if.end16_crit_edge
  %52 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chip_info, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  %and19 = and i32 %55, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %56 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i126 = icmp eq i32 %56, 0
  br i1 %tobool.not.i126, label %if.then21.if.end.i134_crit_edge, label %land.rhs.i130

if.then21.if.end.i134_crit_edge:                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i134

land.rhs.i130:                                    ; preds = %if.then21
  %dep_map.i127 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 3, i32 5
  %call.i.i128 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i127, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i128)
  %cmp.not.i129 = icmp eq i32 %call.i.i128, 0
  br i1 %cmp.not.i129, label %do.end.i131, label %land.rhs.i130.if.end.i134_crit_edge, !prof !97

land.rhs.i130.if.end.i134_crit_edge:              ; preds = %land.rhs.i130
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i134

do.end.i131:                                      ; preds = %land.rhs.i130
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i134

if.end.i134:                                      ; preds = %do.end.i131, %land.rhs.i130.if.end.i134_crit_edge, %if.then21.if.end.i134_crit_edge
  %register_page.i.i132 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 12
  %57 = ptrtoint ptr %register_page.i.i132 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %register_page.i.i132, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp.not.i.i133 = icmp eq i32 %58, 0
  br i1 %cmp.not.i.i133, label %if.end.i134.adv7180_write.exit140_crit_edge, label %if.then.i.i137

if.end.i134.adv7180_write.exit140_crit_edge:      ; preds = %if.end.i134
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit140

if.then.i.i137:                                   ; preds = %if.end.i134
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i135 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 11
  %59 = ptrtoint ptr %client.i.i135 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %client.i.i135, align 4
  %call.i31.i136 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %60, i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  %61 = ptrtoint ptr %register_page.i.i132 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %register_page.i.i132, align 8
  br label %adv7180_write.exit140

adv7180_write.exit140:                            ; preds = %if.then.i.i137, %if.end.i134.adv7180_write.exit140_crit_edge
  %client.i138 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 11
  %62 = ptrtoint ptr %client.i138 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %client.i138, align 4
  %call26.i139 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %63, i8 noundef zeroext 3, i8 noundef zeroext 78) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %64 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i141 = icmp eq i32 %64, 0
  br i1 %tobool.not.i141, label %adv7180_write.exit140.if.end.i149_crit_edge, label %land.rhs.i145

adv7180_write.exit140.if.end.i149_crit_edge:      ; preds = %adv7180_write.exit140
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i149

land.rhs.i145:                                    ; preds = %adv7180_write.exit140
  %dep_map.i142 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 3, i32 5
  %call.i.i143 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i142, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i143)
  %cmp.not.i144 = icmp eq i32 %call.i.i143, 0
  br i1 %cmp.not.i144, label %do.end.i146, label %land.rhs.i145.if.end.i149_crit_edge, !prof !97

land.rhs.i145.if.end.i149_crit_edge:              ; preds = %land.rhs.i145
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i149

do.end.i146:                                      ; preds = %land.rhs.i145
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i149

if.end.i149:                                      ; preds = %do.end.i146, %land.rhs.i145.if.end.i149_crit_edge, %adv7180_write.exit140.if.end.i149_crit_edge
  %65 = ptrtoint ptr %register_page.i.i132 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %register_page.i.i132, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp.not.i.i148 = icmp eq i32 %66, 0
  br i1 %cmp.not.i.i148, label %if.end.i149.adv7180_write.exit155_crit_edge, label %if.then.i.i152

if.end.i149.adv7180_write.exit155_crit_edge:      ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit155

if.then.i.i152:                                   ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %client.i138 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %client.i138, align 4
  %call.i31.i151 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %68, i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  %69 = ptrtoint ptr %register_page.i.i132 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %register_page.i.i132, align 8
  br label %adv7180_write.exit155

adv7180_write.exit155:                            ; preds = %if.then.i.i152, %if.end.i149.adv7180_write.exit155_crit_edge
  %70 = ptrtoint ptr %client.i138 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %client.i138, align 4
  %call26.i154 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %71, i8 noundef zeroext 4, i8 noundef zeroext 87) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %72 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i156 = icmp eq i32 %72, 0
  br i1 %tobool.not.i156, label %adv7180_write.exit155.if.end.i164_crit_edge, label %land.rhs.i160

adv7180_write.exit155.if.end.i164_crit_edge:      ; preds = %adv7180_write.exit155
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i164

land.rhs.i160:                                    ; preds = %adv7180_write.exit155
  %dep_map.i157 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 3, i32 5
  %call.i.i158 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i157, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i158)
  %cmp.not.i159 = icmp eq i32 %call.i.i158, 0
  br i1 %cmp.not.i159, label %do.end.i161, label %land.rhs.i160.if.end.i164_crit_edge, !prof !97

land.rhs.i160.if.end.i164_crit_edge:              ; preds = %land.rhs.i160
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i164

do.end.i161:                                      ; preds = %land.rhs.i160
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i164

if.end.i164:                                      ; preds = %do.end.i161, %land.rhs.i160.if.end.i164_crit_edge, %adv7180_write.exit155.if.end.i164_crit_edge
  %73 = ptrtoint ptr %register_page.i.i132 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %register_page.i.i132, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp.not.i.i163 = icmp eq i32 %74, 0
  br i1 %cmp.not.i.i163, label %if.end.i164.if.end43_crit_edge, label %if.end.i164.if.end43.sink.split_crit_edge

if.end.i164.if.end43.sink.split_crit_edge:        ; preds = %if.end.i164
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.sink.split

if.end.i164.if.end43_crit_edge:                   ; preds = %if.end.i164
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.else:                                          ; preds = %if.end16
  %and27 = and i32 %55, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.else38, label %if.then29

if.then29:                                        ; preds = %if.else
  %force_bt656_4 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 17
  %75 = ptrtoint ptr %force_bt656_4 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %force_bt656_4, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool30.not = icmp eq i8 %76, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %77 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.not.i216 = icmp eq i32 %77, 0
  br i1 %tobool30.not, label %if.else35, label %if.then31

if.then31:                                        ; preds = %if.then29
  br i1 %tobool.not.i216, label %if.then31.if.end.i179_crit_edge, label %land.rhs.i175

if.then31.if.end.i179_crit_edge:                  ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i179

land.rhs.i175:                                    ; preds = %if.then31
  %dep_map.i172 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 3, i32 5
  %call.i.i173 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i172, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i173)
  %cmp.not.i174 = icmp eq i32 %call.i.i173, 0
  br i1 %cmp.not.i174, label %do.end.i176, label %land.rhs.i175.if.end.i179_crit_edge, !prof !97

land.rhs.i175.if.end.i179_crit_edge:              ; preds = %land.rhs.i175
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i179

do.end.i176:                                      ; preds = %land.rhs.i175
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i179

if.end.i179:                                      ; preds = %do.end.i176, %land.rhs.i175.if.end.i179_crit_edge, %if.then31.if.end.i179_crit_edge
  %register_page.i.i177 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 12
  %78 = ptrtoint ptr %register_page.i.i177 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %register_page.i.i177, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp.not.i.i178 = icmp eq i32 %79, 0
  br i1 %cmp.not.i.i178, label %if.end.i179.adv7180_write.exit185_crit_edge, label %if.then.i.i182

if.end.i179.adv7180_write.exit185_crit_edge:      ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit185

if.then.i.i182:                                   ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i180 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 11
  %80 = ptrtoint ptr %client.i.i180 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %client.i.i180, align 4
  %call.i31.i181 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %81, i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  %82 = ptrtoint ptr %register_page.i.i177 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %register_page.i.i177, align 8
  br label %adv7180_write.exit185

adv7180_write.exit185:                            ; preds = %if.then.i.i182, %if.end.i179.adv7180_write.exit185_crit_edge
  %client.i183 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 11
  %83 = ptrtoint ptr %client.i183 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %client.i183, align 4
  %call26.i184 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %84, i8 noundef zeroext 4, i8 noundef zeroext -59) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %85 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.not.i186 = icmp eq i32 %85, 0
  br i1 %tobool.not.i186, label %adv7180_write.exit185.if.end.i194_crit_edge, label %land.rhs.i190

adv7180_write.exit185.if.end.i194_crit_edge:      ; preds = %adv7180_write.exit185
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i194

land.rhs.i190:                                    ; preds = %adv7180_write.exit185
  %dep_map.i187 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 3, i32 5
  %call.i.i188 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i187, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i188)
  %cmp.not.i189 = icmp eq i32 %call.i.i188, 0
  br i1 %cmp.not.i189, label %do.end.i191, label %land.rhs.i190.if.end.i194_crit_edge, !prof !97

land.rhs.i190.if.end.i194_crit_edge:              ; preds = %land.rhs.i190
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i194

do.end.i191:                                      ; preds = %land.rhs.i190
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i194

if.end.i194:                                      ; preds = %do.end.i191, %land.rhs.i190.if.end.i194_crit_edge, %adv7180_write.exit185.if.end.i194_crit_edge
  %86 = ptrtoint ptr %register_page.i.i177 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %register_page.i.i177, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp.not.i.i193 = icmp eq i32 %87, 0
  br i1 %cmp.not.i.i193, label %if.end.i194.adv7180_write.exit200_crit_edge, label %if.then.i.i197

if.end.i194.adv7180_write.exit200_crit_edge:      ; preds = %if.end.i194
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit200

if.then.i.i197:                                   ; preds = %if.end.i194
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %client.i183 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %client.i183, align 4
  %call.i31.i196 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %89, i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  %90 = ptrtoint ptr %register_page.i.i177 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %register_page.i.i177, align 8
  br label %adv7180_write.exit200

adv7180_write.exit200:                            ; preds = %if.then.i.i197, %if.end.i194.adv7180_write.exit200_crit_edge
  %91 = ptrtoint ptr %client.i183 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %client.i183, align 4
  %call26.i199 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %92, i8 noundef zeroext 49, i8 noundef zeroext 18) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %93 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.not.i201 = icmp eq i32 %93, 0
  br i1 %tobool.not.i201, label %adv7180_write.exit200.if.end.i209_crit_edge, label %land.rhs.i205

adv7180_write.exit200.if.end.i209_crit_edge:      ; preds = %adv7180_write.exit200
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i209

land.rhs.i205:                                    ; preds = %adv7180_write.exit200
  %dep_map.i202 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 3, i32 5
  %call.i.i203 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i202, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i203)
  %cmp.not.i204 = icmp eq i32 %call.i.i203, 0
  br i1 %cmp.not.i204, label %do.end.i206, label %land.rhs.i205.if.end.i209_crit_edge, !prof !97

land.rhs.i205.if.end.i209_crit_edge:              ; preds = %land.rhs.i205
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i209

do.end.i206:                                      ; preds = %land.rhs.i205
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i209

if.end.i209:                                      ; preds = %do.end.i206, %land.rhs.i205.if.end.i209_crit_edge, %adv7180_write.exit200.if.end.i209_crit_edge
  %94 = ptrtoint ptr %register_page.i.i177 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %register_page.i.i177, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp.not.i.i208 = icmp eq i32 %95, 0
  br i1 %cmp.not.i.i208, label %if.end.i209.adv7180_write.exit215_crit_edge, label %if.then.i.i212

if.end.i209.adv7180_write.exit215_crit_edge:      ; preds = %if.end.i209
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit215

if.then.i.i212:                                   ; preds = %if.end.i209
  call void @__sanitizer_cov_trace_pc() #11
  %96 = ptrtoint ptr %client.i183 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %client.i183, align 4
  %call.i31.i211 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %97, i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  %98 = ptrtoint ptr %register_page.i.i177 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %register_page.i.i177, align 8
  br label %adv7180_write.exit215

adv7180_write.exit215:                            ; preds = %if.then.i.i212, %if.end.i209.adv7180_write.exit215_crit_edge
  %99 = ptrtoint ptr %client.i183 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %client.i183, align 4
  %call26.i214 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %100, i8 noundef zeroext -26, i8 noundef zeroext 79) #9
  br label %if.end40

if.else35:                                        ; preds = %if.then29
  br i1 %tobool.not.i216, label %if.else35.if.end.i224_crit_edge, label %land.rhs.i220

if.else35.if.end.i224_crit_edge:                  ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i224

land.rhs.i220:                                    ; preds = %if.else35
  %dep_map.i217 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 3, i32 5
  %call.i.i218 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i217, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i218)
  %cmp.not.i219 = icmp eq i32 %call.i.i218, 0
  br i1 %cmp.not.i219, label %do.end.i221, label %land.rhs.i220.if.end.i224_crit_edge, !prof !97

land.rhs.i220.if.end.i224_crit_edge:              ; preds = %land.rhs.i220
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i224

do.end.i221:                                      ; preds = %land.rhs.i220
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i224

if.end.i224:                                      ; preds = %do.end.i221, %land.rhs.i220.if.end.i224_crit_edge, %if.else35.if.end.i224_crit_edge
  %register_page.i.i222 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 12
  %101 = ptrtoint ptr %register_page.i.i222 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %register_page.i.i222, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp.not.i.i223 = icmp eq i32 %102, 0
  br i1 %cmp.not.i.i223, label %if.end.i224.adv7180_write.exit230_crit_edge, label %if.then.i.i227

if.end.i224.adv7180_write.exit230_crit_edge:      ; preds = %if.end.i224
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit230

if.then.i.i227:                                   ; preds = %if.end.i224
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i225 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 11
  %103 = ptrtoint ptr %client.i.i225 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %client.i.i225, align 4
  %call.i31.i226 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %104, i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  %105 = ptrtoint ptr %register_page.i.i222 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %register_page.i.i222, align 8
  br label %adv7180_write.exit230

adv7180_write.exit230:                            ; preds = %if.then.i.i227, %if.end.i224.adv7180_write.exit230_crit_edge
  %client.i228 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 11
  %106 = ptrtoint ptr %client.i228 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %client.i228, align 4
  %call26.i229 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %107, i8 noundef zeroext 4, i8 noundef zeroext 23) #9
  br label %if.end40

if.else38:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %108 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool.not.i231 = icmp eq i32 %108, 0
  br i1 %tobool.not.i231, label %if.else38.if.end.i239_crit_edge, label %land.rhs.i235

if.else38.if.end.i239_crit_edge:                  ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i239

land.rhs.i235:                                    ; preds = %if.else38
  %dep_map.i232 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 3, i32 5
  %call.i.i233 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i232, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i233)
  %cmp.not.i234 = icmp eq i32 %call.i.i233, 0
  br i1 %cmp.not.i234, label %do.end.i236, label %land.rhs.i235.if.end.i239_crit_edge, !prof !97

land.rhs.i235.if.end.i239_crit_edge:              ; preds = %land.rhs.i235
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i239

do.end.i236:                                      ; preds = %land.rhs.i235
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i239

if.end.i239:                                      ; preds = %do.end.i236, %land.rhs.i235.if.end.i239_crit_edge, %if.else38.if.end.i239_crit_edge
  %register_page.i.i237 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 12
  %109 = ptrtoint ptr %register_page.i.i237 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %register_page.i.i237, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp.not.i.i238 = icmp eq i32 %110, 0
  br i1 %cmp.not.i.i238, label %if.end.i239.adv7180_write.exit245_crit_edge, label %if.then.i.i242

if.end.i239.adv7180_write.exit245_crit_edge:      ; preds = %if.end.i239
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit245

if.then.i.i242:                                   ; preds = %if.end.i239
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i240 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 11
  %111 = ptrtoint ptr %client.i.i240 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %client.i.i240, align 4
  %call.i31.i241 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %112, i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  %113 = ptrtoint ptr %register_page.i.i237 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %register_page.i.i237, align 8
  br label %adv7180_write.exit245

adv7180_write.exit245:                            ; preds = %if.then.i.i242, %if.end.i239.adv7180_write.exit245_crit_edge
  %client.i243 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 11
  %114 = ptrtoint ptr %client.i243 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %client.i243, align 4
  %call26.i244 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %115, i8 noundef zeroext 4, i8 noundef zeroext 7) #9
  br label %if.end40

if.end40:                                         ; preds = %adv7180_write.exit245, %adv7180_write.exit230, %adv7180_write.exit215
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %116 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool.not.i246 = icmp eq i32 %116, 0
  br i1 %tobool.not.i246, label %if.end40.if.end.i254_crit_edge, label %land.rhs.i250

if.end40.if.end.i254_crit_edge:                   ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i254

land.rhs.i250:                                    ; preds = %if.end40
  %dep_map.i247 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 3, i32 5
  %call.i.i248 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i247, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i248)
  %cmp.not.i249 = icmp eq i32 %call.i.i248, 0
  br i1 %cmp.not.i249, label %do.end.i251, label %land.rhs.i250.if.end.i254_crit_edge, !prof !97

land.rhs.i250.if.end.i254_crit_edge:              ; preds = %land.rhs.i250
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i254

do.end.i251:                                      ; preds = %land.rhs.i250
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i254

if.end.i254:                                      ; preds = %do.end.i251, %land.rhs.i250.if.end.i254_crit_edge, %if.end40.if.end.i254_crit_edge
  %register_page.i.i252 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 12
  %117 = ptrtoint ptr %register_page.i.i252 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %register_page.i.i252, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp.not.i.i253 = icmp eq i32 %118, 0
  br i1 %cmp.not.i.i253, label %if.end.i254.adv7180_write.exit260_crit_edge, label %if.then.i.i257

if.end.i254.adv7180_write.exit260_crit_edge:      ; preds = %if.end.i254
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit260

if.then.i.i257:                                   ; preds = %if.end.i254
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i255 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 11
  %119 = ptrtoint ptr %client.i.i255 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %client.i.i255, align 4
  %call.i31.i256 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %120, i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  %121 = ptrtoint ptr %register_page.i.i252 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %register_page.i.i252, align 8
  br label %adv7180_write.exit260

adv7180_write.exit260:                            ; preds = %if.then.i.i257, %if.end.i254.adv7180_write.exit260_crit_edge
  %client.i258 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 11
  %122 = ptrtoint ptr %client.i258 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %client.i258, align 4
  %call26.i259 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %123, i8 noundef zeroext 3, i8 noundef zeroext 12) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %124 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool.not.i261 = icmp eq i32 %124, 0
  br i1 %tobool.not.i261, label %adv7180_write.exit260.if.end.i269_crit_edge, label %land.rhs.i265

adv7180_write.exit260.if.end.i269_crit_edge:      ; preds = %adv7180_write.exit260
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i269

land.rhs.i265:                                    ; preds = %adv7180_write.exit260
  %dep_map.i262 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 3, i32 5
  %call.i.i263 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i262, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i263)
  %cmp.not.i264 = icmp eq i32 %call.i.i263, 0
  br i1 %cmp.not.i264, label %do.end.i266, label %land.rhs.i265.if.end.i269_crit_edge, !prof !97

land.rhs.i265.if.end.i269_crit_edge:              ; preds = %land.rhs.i265
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i269

do.end.i266:                                      ; preds = %land.rhs.i265
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i269

if.end.i269:                                      ; preds = %do.end.i266, %land.rhs.i265.if.end.i269_crit_edge, %adv7180_write.exit260.if.end.i269_crit_edge
  %125 = ptrtoint ptr %register_page.i.i252 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %register_page.i.i252, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp.not.i.i268 = icmp eq i32 %126, 0
  br i1 %cmp.not.i.i268, label %if.end.i269.if.end43_crit_edge, label %if.end.i269.if.end43.sink.split_crit_edge

if.end.i269.if.end43.sink.split_crit_edge:        ; preds = %if.end.i269
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.sink.split

if.end.i269.if.end43_crit_edge:                   ; preds = %if.end.i269
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.end43.sink.split:                              ; preds = %if.end.i269.if.end43.sink.split_crit_edge, %if.end.i164.if.end43.sink.split_crit_edge
  %client.i258.sink292 = phi ptr [ %client.i138, %if.end.i164.if.end43.sink.split_crit_edge ], [ %client.i258, %if.end.i269.if.end43.sink.split_crit_edge ]
  %register_page.i.i252.sink = phi ptr [ %register_page.i.i132, %if.end.i164.if.end43.sink.split_crit_edge ], [ %register_page.i.i252, %if.end.i269.if.end43.sink.split_crit_edge ]
  %.sink291.ph = phi i8 [ -64, %if.end.i164.if.end43.sink.split_crit_edge ], [ 64, %if.end.i269.if.end43.sink.split_crit_edge ]
  %127 = ptrtoint ptr %client.i258.sink292 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %client.i258.sink292, align 4
  %call.i31.i271 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %128, i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  %129 = ptrtoint ptr %register_page.i.i252.sink to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %register_page.i.i252.sink, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.end43.sink.split, %if.end.i269.if.end43_crit_edge, %if.end.i164.if.end43_crit_edge
  %client.i258.sink = phi ptr [ %client.i138, %if.end.i164.if.end43_crit_edge ], [ %client.i258, %if.end.i269.if.end43_crit_edge ], [ %client.i258.sink292, %if.end43.sink.split ]
  %.sink291 = phi i8 [ -64, %if.end.i164.if.end43_crit_edge ], [ 64, %if.end.i269.if.end43_crit_edge ], [ %.sink291.ph, %if.end43.sink.split ]
  %130 = ptrtoint ptr %client.i258.sink to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %client.i258.sink, align 4
  %call26.i274 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %131, i8 noundef zeroext 29, i8 noundef zeroext %.sink291) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %132 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool.not.i276 = icmp eq i32 %132, 0
  br i1 %tobool.not.i276, label %if.end43.if.end.i284_crit_edge, label %land.rhs.i280

if.end43.if.end.i284_crit_edge:                   ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i284

land.rhs.i280:                                    ; preds = %if.end43
  %dep_map.i277 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 3, i32 5
  %call.i.i278 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i277, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i278)
  %cmp.not.i279 = icmp eq i32 %call.i.i278, 0
  br i1 %cmp.not.i279, label %do.end.i281, label %land.rhs.i280.if.end.i284_crit_edge, !prof !97

land.rhs.i280.if.end.i284_crit_edge:              ; preds = %land.rhs.i280
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i284

do.end.i281:                                      ; preds = %land.rhs.i280
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i284

if.end.i284:                                      ; preds = %do.end.i281, %land.rhs.i280.if.end.i284_crit_edge, %if.end43.if.end.i284_crit_edge
  %register_page.i.i282 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 12
  %133 = ptrtoint ptr %register_page.i.i282 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %register_page.i.i282, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %cmp.not.i.i283 = icmp eq i32 %134, 0
  br i1 %cmp.not.i.i283, label %if.end.i284.adv7180_write.exit290_crit_edge, label %if.then.i.i287

if.end.i284.adv7180_write.exit290_crit_edge:      ; preds = %if.end.i284
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv7180_write.exit290

if.then.i.i287:                                   ; preds = %if.end.i284
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i285 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 11
  %135 = ptrtoint ptr %client.i.i285 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %client.i.i285, align 4
  %call.i31.i286 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %136, i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  %137 = ptrtoint ptr %register_page.i.i282 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %register_page.i.i282, align 8
  br label %adv7180_write.exit290

adv7180_write.exit290:                            ; preds = %if.then.i.i287, %if.end.i284.adv7180_write.exit290_crit_edge
  %client.i288 = getelementptr inbounds %struct.adv7180_state, ptr %state, i32 0, i32 11
  %138 = ptrtoint ptr %client.i288 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %client.i288, align 4
  %call26.i289 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %139, i8 noundef zeroext 19, i8 noundef zeroext 0) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !32, !33, !35, !36, !37, !39, !41, !43, !45, !47, !49, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @__initcall__kmod_adv7180__292_1571_adv7180_driver_init6, !1, !"__initcall__kmod_adv7180__292_1571_adv7180_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/adv7180.c", i32 1571, i32 1}
!2 = !{ptr @__exitcall_adv7180_driver_exit, !1, !"__exitcall_adv7180_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description293, !4, !"__UNIQUE_ID_description293", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/adv7180.c", i32 1573, i32 1}
!5 = !{ptr @__UNIQUE_ID_author294, !6, !"__UNIQUE_ID_author294", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/adv7180.c", i32 1574, i32 1}
!7 = !{ptr @__UNIQUE_ID_file295, !8, !"__UNIQUE_ID_file295", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/adv7180.c", i32 1575, i32 1}
!9 = !{ptr @__UNIQUE_ID_license296, !8, !"__UNIQUE_ID_license296", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/adv7180.c", i32 1562, i32 14}
!12 = !{ptr @adv7180_driver, !13, !"adv7180_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/adv7180.c", i32 1560, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/adv7180.c", i32 1367, i32 59}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/adv7180.c", i32 1371, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @adv7180_probe._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @adv7180_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/adv7180.c", i32 1375, i32 58}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/i2c/adv7180.c", i32 1379, i32 3}
!26 = !{ptr @adv7180_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @adv7180_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/i2c/adv7180.c", i32 1383, i32 32}
!30 = !{ptr @adv7180_probe.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/adv7180.c", i32 1403, i32 2}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/i2c/adv7180.c", i32 1446, i32 2}
!35 = !{ptr @adv7180_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @adv7180_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @adv7180_ops, !38, !"adv7180_ops", i1 false, i1 false}
!38 = !{!"../drivers/media/i2c/adv7180.c", i32 895, i32 37}
!39 = !{ptr @adv7180_core_ops, !40, !"adv7180_core_ops", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/adv7180.c", i32 877, i32 42}
!41 = !{ptr @adv7180_video_ops, !42, !"adv7180_video_ops", i1 false, i1 false}
!42 = !{!"../drivers/media/i2c/adv7180.c", i32 865, i32 43}
!43 = !{ptr @adv7180_sensor_ops, !44, !"adv7180_sensor_ops", i1 false, i1 false}
!44 = !{!"../drivers/media/i2c/adv7180.c", i32 891, i32 44}
!45 = !{ptr @adv7180_pad_ops, !46, !"adv7180_pad_ops", i1 false, i1 false}
!46 = !{!"../drivers/media/i2c/adv7180.c", i32 883, i32 41}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!49 = !{ptr @adv7180_init_controls._key, !50, !"_key", i1 false, i1 false}
!50 = !{!"../drivers/media/i2c/adv7180.c", i32 619, i32 2}
!51 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @adv7180_ctrl_ops, !53, !"adv7180_ctrl_ops", i1 false, i1 false}
!53 = !{!"../drivers/media/i2c/adv7180.c", i32 603, i32 35}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/i2c/adv7180.c", i32 610, i32 10}
!56 = !{ptr @adv7180_ctrl_fast_switch, !57, !"adv7180_ctrl_fast_switch", i1 false, i1 false}
!57 = !{!"../drivers/media/i2c/adv7180.c", i32 607, i32 38}
!58 = !{ptr @adv7180_irq.src_ch, !59, !"src_ch", i1 false, i1 false}
!59 = !{!"../drivers/media/i2c/adv7180.c", i32 913, i32 34}
!60 = !{ptr @adv7180_of_id, !61, !"adv7180_of_id", i1 false, i1 false}
!61 = !{!"../drivers/media/i2c/adv7180.c", i32 1542, i32 34}
!62 = !{ptr @adv7180_pm_ops, !63, !"adv7180_pm_ops", i1 false, i1 false}
!63 = !{!"../drivers/media/i2c/adv7180.c", i32 1534, i32 8}
!64 = !{ptr @adv7180_id, !65, !"adv7180_id", i1 false, i1 false}
!65 = !{!"../drivers/media/i2c/adv7180.c", i32 1492, i32 35}
!66 = !{ptr @adv7180_info, !67, !"adv7180_info", i1 false, i1 false}
!67 = !{!"../drivers/media/i2c/adv7180.c", i32 1126, i32 39}
!68 = !{ptr @adv7182_info, !69, !"adv7182_info", i1 false, i1 false}
!69 = !{!"../drivers/media/i2c/adv7180.c", i32 1147, i32 39}
!70 = !{ptr @adv7280_lbias_settings, !71, !"adv7280_lbias_settings", i1 false, i1 false}
!71 = !{!"../drivers/media/i2c/adv7180.c", i32 1065, i32 21}
!72 = !{ptr @adv7182_lbias_settings, !73, !"adv7182_lbias_settings", i1 false, i1 false}
!73 = !{!"../drivers/media/i2c/adv7180.c", i32 1058, i32 21}
!74 = !{ptr @adv7280_info, !75, !"adv7280_info", i1 false, i1 false}
!75 = !{!"../drivers/media/i2c/adv7180.c", i32 1162, i32 39}
!76 = !{ptr @adv7280_m_info, !77, !"adv7280_m_info", i1 false, i1 false}
!77 = !{!"../drivers/media/i2c/adv7180.c", i32 1176, i32 39}
!78 = !{ptr @adv7281_info, !79, !"adv7281_info", i1 false, i1 false}
!79 = !{!"../drivers/media/i2c/adv7180.c", i32 1197, i32 39}
!80 = !{ptr @adv7281_m_info, !81, !"adv7281_m_info", i1 false, i1 false}
!81 = !{!"../drivers/media/i2c/adv7180.c", i32 1212, i32 39}
!82 = !{ptr @adv7281_ma_info, !83, !"adv7281_ma_info", i1 false, i1 false}
!83 = !{!"../drivers/media/i2c/adv7180.c", i32 1232, i32 39}
!84 = !{ptr @adv7282_info, !85, !"adv7282_info", i1 false, i1 false}
!85 = !{!"../drivers/media/i2c/adv7180.c", i32 1257, i32 39}
!86 = !{ptr @adv7282_m_info, !87, !"adv7282_m_info", i1 false, i1 false}
!87 = !{!"../drivers/media/i2c/adv7180.c", i32 1272, i32 39}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{!"branch_weights", i32 1, i32 2000}
!98 = !{i8 0, i8 2}
