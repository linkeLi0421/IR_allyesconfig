; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/m5mols/m5mols_core.c_pt.bc'
source_filename = "../drivers/media/i2c/m5mols/m5mols_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.94, i16, i16, i16, [10 x i16] }
%union.anon.94 = type { i16 }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.m5mols_resolution = type { i8, i32, i16, i16 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
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
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.m5mols_info = type { ptr, %struct.v4l2_subdev, %struct.media_pad, %struct.wait_queue_head, %struct.atomic_t, %struct.v4l2_ctrl_handler, %struct.anon.98, %struct.anon.99, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, [2 x %struct.v4l2_mbus_framefmt], i32, %struct.m5mols_version, %struct.m5mols_capture, i8, i8, i8 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.98 = type { ptr, ptr, ptr, ptr }
%struct.anon.99 = type { ptr, ptr }
%struct.m5mols_version = type { i8, i8, i16, i16, i16, i16, [22 x i8], i8 }
%struct.m5mols_capture = type { %struct.m5mols_exif, i32, i32, i32, i32 }
%struct.m5mols_exif = type { i32, i32, i32, i32, i32, i16, i16, i16, i16 }
%struct.m5mols_platform_data = type { i32, i8, ptr }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_frame_desc_entry = type { i32, i32, i32 }
%struct.v4l2_mbus_frame_desc = type { [4 x %struct.v4l2_mbus_frame_desc_entry], i16 }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }

@__param_str_m5mols_debug = internal constant [20 x i8] c"m5mols.m5mols_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@m5mols_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_m5mols_debug = internal constant %struct.kernel_param { ptr @__param_str_m5mols_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @m5mols_debug } }, section "__param", align 4
@__UNIQUE_ID_m5mols_debugtype292 = internal constant [33 x i8] c"m5mols.parmtype=m5mols_debug:int\00", section ".modinfo", align 1
@m5mols_read_u8._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s: Wrong data size\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"m5mols_read_u8\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/i2c/m5mols/m5mols_core.c\00", [57 x i8] zeroinitializer }, align 32
@m5mols_read_u8._entry_ptr = internal global ptr @m5mols_read_u8._entry, section ".printk_index", align 4
@m5mols_read_u16._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"m5mols_read_u16\00", [16 x i8] zeroinitializer }, align 32
@m5mols_read_u16._entry_ptr = internal global ptr @m5mols_read_u16._entry, section ".printk_index", align 4
@m5mols_read_u32._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.4, ptr @.str.2, i32 224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"m5mols_read_u32\00", [16 x i8] zeroinitializer }, align 32
@m5mols_read_u32._entry_ptr = internal global ptr @m5mols_read_u32._entry, section ".printk_index", align 4
@m5mols_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.5, ptr @.str.2, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"m5mols_write\00", [19 x i8] zeroinitializer }, align 32
@m5mols_write._entry_ptr = internal global ptr @m5mols_write._entry, section ".printk_index", align 4
@m5mols_write._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: write failed: cat:%02x cmd:%02x ret:%d\0A\00", [50 x i8] zeroinitializer }, align 32
@m5mols_write._entry_ptr.8 = internal global ptr @m5mols_write._entry.6, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@m5mols_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\014%s: Wrong mode: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"m5mols_set_mode\00", [16 x i8] zeroinitializer }, align 32
@m5mols_set_mode._entry_ptr = internal global ptr @m5mols_set_mode._entry, section ".printk_index", align 4
@__initcall__kmod_m5mols__297_1058_m5mols_i2c_driver_init6 = internal global ptr @m5mols_i2c_driver_init, section ".initcall6.init", align 4
@m5mols_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @m5mols_probe, ptr @m5mols_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.13, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @m5mols_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_m5mols_i2c_driver_exit = internal global ptr @m5mols_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author298 = internal constant [54 x i8] c"m5mols.author=HeungJun Kim <riverful.kim@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author299 = internal constant [54 x i8] c"m5mols.author=Dongsoo Kim <dongsoo45.kim@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description300 = internal constant [58 x i8] c"m5mols.description=Fujitsu M-5MOLS 8M Pixel camera driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file301 = internal constant [44 x i8] c"m5mols.file=drivers/media/i2c/m5mols/m5mols\00", section ".modinfo", align 1
@__UNIQUE_ID_license302 = internal constant [19 x i8] c"m5mols.license=GPL\00", section ".modinfo", align 1
@m5mols_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013%s: read failed: size:%d cat:%02x cmd:%02x. %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"m5mols_read\00", [20 x i8] zeroinitializer }, align 32
@m5mols_read._entry_ptr = internal global ptr @m5mols_read._entry, section ".printk_index", align 4
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"M5MOLS\00", [25 x i8] zeroinitializer }, align 32
@m5mols_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"M5MOLS\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@m5mols_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 953, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No platform data\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"m5mols_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@m5mols_probe._entry_ptr = internal global ptr @m5mols_probe._entry, section ".printk_index", align 4
@m5mols_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.15, ptr @.str.2, i32 958, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"No valid RESET GPIO specified\0A\00", [33 x i8] zeroinitializer }, align 32
@m5mols_probe._entry_ptr.20 = internal global ptr @m5mols_probe._entry.18, section ".printk_index", align 4
@m5mols_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.15, ptr @.str.2, i32 963, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Interrupt not assigned\0A\00", [40 x i8] zeroinitializer }, align 32
@m5mols_probe._entry_ptr.23 = internal global ptr @m5mols_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"M5MOLS_NRST\00", [20 x i8] zeroinitializer }, align 32
@m5mols_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.15, ptr @.str.2, i32 979, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to request gpio: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@m5mols_probe._entry_ptr.27 = internal global ptr @m5mols_probe._entry.25, section ".printk_index", align 4
@supplies = internal global { [6 x %struct.regulator_bulk_data], [56 x i8] } { [6 x %struct.regulator_bulk_data] [%struct.regulator_bulk_data { ptr @.str.37, ptr null, i32 0 }, %struct.regulator_bulk_data { ptr @.str.38, ptr null, i32 0 }, %struct.regulator_bulk_data { ptr @.str.39, ptr null, i32 0 }, %struct.regulator_bulk_data { ptr @.str.40, ptr null, i32 0 }, %struct.regulator_bulk_data { ptr @.str.41, ptr null, i32 0 }, %struct.regulator_bulk_data { ptr @.str.42, ptr null, i32 0 }], [56 x i8] zeroinitializer }, align 32
@m5mols_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.15, ptr @.str.2, i32 986, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get regulators: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@m5mols_probe._entry_ptr.30 = internal global ptr @m5mols_probe._entry.28, section ".printk_index", align 4
@m5mols_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @m5mols_core_ops, ptr null, ptr null, ptr @m5mols_video_ops, ptr null, ptr null, ptr null, ptr @m5mols_pad_ops }, [32 x i8] zeroinitializer }, align 32
@m5mols_subdev_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @m5mols_open, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@m5mols_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&info->irq_waitq\00", [47 x i8] zeroinitializer }, align 32
@m5mols_probe.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&info->lock\00", [20 x i8] zeroinitializer }, align 32
@m5mols_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.15, ptr @.str.2, i32 1009, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Interrupt request failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@m5mols_probe._entry_ptr.36 = internal global ptr @m5mols_probe._entry.34, section ".printk_index", align 4
@m5mols_default_ffmt = internal constant { [2 x %struct.v4l2_mbus_framefmt], [32 x i8] } { [2 x %struct.v4l2_mbus_framefmt] [%struct.v4l2_mbus_framefmt { i32 1920, i32 1080, i32 8199, i32 1, i32 7, %union.anon.94 zeroinitializer, i16 0, i16 0, i16 0, [10 x i16] zeroinitializer }, %struct.v4l2_mbus_framefmt { i32 1920, i32 1080, i32 16385, i32 1, i32 7, %union.anon.94 zeroinitializer, i16 0, i16 0, i16 0, [10 x i16] zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dig_18\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"d_sensor\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dig_28\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"a_sensor\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dig_12\00", [25 x i8] zeroinitializer }, align 32
@m5mols_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @m5mols_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @m5mols_s_power, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@m5mols_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @m5mols_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@m5mols_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @m5mols_enum_mbus_code, ptr null, ptr null, ptr @m5mols_get_fmt, ptr @m5mols_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @m5mols_get_frame_desc, ptr @m5mols_set_frame_desc, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@m5mols_s_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 885, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014%s: Soft landing lens failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"m5mols_s_power\00", [17 x i8] zeroinitializer }, align 32
@m5mols_s_power._entry_ptr = internal global ptr @m5mols_s_power._entry, section ".printk_index", align 4
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@m5mols_reg_res = internal constant { [37 x %struct.m5mols_resolution], [100 x i8] } { [37 x %struct.m5mols_resolution] [%struct.m5mols_resolution { i8 1, i32 0, i16 128, i16 96 }, %struct.m5mols_resolution { i8 3, i32 0, i16 160, i16 120 }, %struct.m5mols_resolution { i8 5, i32 0, i16 176, i16 144 }, %struct.m5mols_resolution { i8 6, i32 0, i16 176, i16 176 }, %struct.m5mols_resolution { i8 8, i32 0, i16 240, i16 320 }, %struct.m5mols_resolution { i8 9, i32 0, i16 320, i16 240 }, %struct.m5mols_resolution { i8 12, i32 0, i16 240, i16 400 }, %struct.m5mols_resolution { i8 13, i32 0, i16 400, i16 240 }, %struct.m5mols_resolution { i8 14, i32 0, i16 352, i16 288 }, %struct.m5mols_resolution { i8 19, i32 0, i16 480, i16 360 }, %struct.m5mols_resolution { i8 21, i32 0, i16 640, i16 360 }, %struct.m5mols_resolution { i8 23, i32 0, i16 640, i16 480 }, %struct.m5mols_resolution { i8 24, i32 0, i16 720, i16 480 }, %struct.m5mols_resolution { i8 26, i32 0, i16 800, i16 480 }, %struct.m5mols_resolution { i8 31, i32 0, i16 800, i16 600 }, %struct.m5mols_resolution { i8 33, i32 0, i16 1280, i16 720 }, %struct.m5mols_resolution { i8 37, i32 0, i16 1920, i16 1080 }, %struct.m5mols_resolution { i8 41, i32 0, i16 3264, i16 2448 }, %struct.m5mols_resolution { i8 57, i32 0, i16 800, i16 602 }, %struct.m5mols_resolution { i8 2, i32 1, i16 320, i16 240 }, %struct.m5mols_resolution { i8 4, i32 1, i16 400, i16 240 }, %struct.m5mols_resolution { i8 7, i32 1, i16 480, i16 360 }, %struct.m5mols_resolution { i8 8, i32 1, i16 640, i16 360 }, %struct.m5mols_resolution { i8 9, i32 1, i16 640, i16 480 }, %struct.m5mols_resolution { i8 10, i32 1, i16 800, i16 480 }, %struct.m5mols_resolution { i8 16, i32 1, i16 1280, i16 720 }, %struct.m5mols_resolution { i8 20, i32 1, i16 1280, i16 960 }, %struct.m5mols_resolution { i8 23, i32 1, i16 1600, i16 1200 }, %struct.m5mols_resolution { i8 25, i32 1, i16 1920, i16 1080 }, %struct.m5mols_resolution { i8 26, i32 1, i16 2048, i16 1152 }, %struct.m5mols_resolution { i8 27, i32 1, i16 2048, i16 1536 }, %struct.m5mols_resolution { i8 28, i32 1, i16 2560, i16 1440 }, %struct.m5mols_resolution { i8 29, i32 1, i16 2560, i16 1536 }, %struct.m5mols_resolution { i8 31, i32 1, i16 2560, i16 1920 }, %struct.m5mols_resolution { i8 33, i32 1, i16 3264, i16 1836 }, %struct.m5mols_resolution { i8 34, i32 1, i16 3264, i16 1960 }, %struct.m5mols_resolution { i8 37, i32 1, i16 3264, i16 2448 }], [100 x i8] zeroinitializer }, align 32
@m5mols_fw_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 835, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: Success ARM Booting\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"m5mols_fw_start\00", [16 x i8] zeroinitializer }, align 32
@m5mols_fw_start._entry_ptr = internal global ptr @m5mols_fw_start._entry, section ".printk_index", align 4
@m5mols_get_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016%s: Manufacturer\09[%s]\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"m5mols_get_version\00", [45 x i8] zeroinitializer }, align 32
@m5mols_get_version._entry_ptr = internal global ptr @m5mols_get_version._entry, section ".printk_index", align 4
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Samsung Electro-Mechanics\00", [38 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Samsung Fiber-Optics\00", [43 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Samsung Techwin\00", [16 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@m5mols_get_version._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.50, ptr @.str.2, i32 472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s: Customer/Project\09[0x%02x/0x%02x]\0A\00", [56 x i8] zeroinitializer }, align 32
@m5mols_get_version._entry_ptr.59 = internal global ptr @m5mols_get_version._entry.57, section ".printk_index", align 4
@m5mols_get_version._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.50, ptr @.str.2, i32 475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: No support Auto Focus on this firmware\0A\00", [50 x i8] zeroinitializer }, align 32
@m5mols_get_version._entry_ptr.62 = internal global ptr @m5mols_get_version._entry.60, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.65 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.66 = internal global [5 x i64] [i64 3, i64 8, i64 79, i64 83, i64 84]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 8199, i64 16385]
@___asan_gen_.68 = private unnamed_addr constant [13 x i8] c"m5mols_debug\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 29, i32 5 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 191, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 209, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 224, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 255, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 278, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 418, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [18 x i8] c"m5mols_i2c_driver\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1049, i32 26 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 179, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1051, i32 11 }
@___asan_gen_.131 = private unnamed_addr constant [10 x i8] c"m5mols_id\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1043, i32 35 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 953, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 958, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 963, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 977, i32 9 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 979, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant [9 x i8] c"supplies\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 36, i32 35 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 986, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant [11 x i8] c"m5mols_ops\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 927, i32 37 }
@___asan_gen_.182 = private unnamed_addr constant [27 x i8] c"m5mols_subdev_internal_ops\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 923, i32 46 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1003, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1004, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1009, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant [20 x i8] c"m5mols_default_ffmt\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 52, i32 34 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 38, i32 13 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 40, i32 13 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 42, i32 13 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 44, i32 13 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 46, i32 13 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 48, i32 13 }
@___asan_gen_.224 = private unnamed_addr constant [16 x i8] c"m5mols_core_ops\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 905, i32 42 }
@___asan_gen_.227 = private unnamed_addr constant [17 x i8] c"m5mols_video_ops\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 747, i32 43 }
@___asan_gen_.230 = private unnamed_addr constant [15 x i8] c"m5mols_pad_ops\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 665, i32 41 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 885, i32 5 }
@___asan_gen_.243 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 998, i32 6 }
@___asan_gen_.245 = private unnamed_addr constant [15 x i8] c"m5mols_reg_res\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 70, i32 39 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 835, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 464, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 471, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.288 = private constant [42 x i8] c"../drivers/media/i2c/m5mols/m5mols_core.c\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 475, i32 3 }
@llvm.compiler.used = appending global [102 x ptr] [ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file301, ptr @__UNIQUE_ID_license302, ptr @__UNIQUE_ID_m5mols_debugtype292, ptr @__exitcall_m5mols_i2c_driver_exit, ptr @__initcall__kmod_m5mols__297_1058_m5mols_i2c_driver_init6, ptr @__param_m5mols_debug, ptr @m5mols_fw_start._entry, ptr @m5mols_fw_start._entry_ptr, ptr @m5mols_get_version._entry, ptr @m5mols_get_version._entry.57, ptr @m5mols_get_version._entry.60, ptr @m5mols_get_version._entry_ptr, ptr @m5mols_get_version._entry_ptr.59, ptr @m5mols_get_version._entry_ptr.62, ptr @m5mols_i2c_driver_exit, ptr @m5mols_probe._entry, ptr @m5mols_probe._entry.18, ptr @m5mols_probe._entry.21, ptr @m5mols_probe._entry.25, ptr @m5mols_probe._entry.28, ptr @m5mols_probe._entry.34, ptr @m5mols_probe._entry_ptr, ptr @m5mols_probe._entry_ptr.20, ptr @m5mols_probe._entry_ptr.23, ptr @m5mols_probe._entry_ptr.27, ptr @m5mols_probe._entry_ptr.30, ptr @m5mols_probe._entry_ptr.36, ptr @m5mols_read._entry, ptr @m5mols_read._entry_ptr, ptr @m5mols_read_u16._entry, ptr @m5mols_read_u16._entry_ptr, ptr @m5mols_read_u32._entry, ptr @m5mols_read_u32._entry_ptr, ptr @m5mols_read_u8._entry, ptr @m5mols_read_u8._entry_ptr, ptr @m5mols_s_power._entry, ptr @m5mols_s_power._entry_ptr, ptr @m5mols_set_mode._entry, ptr @m5mols_set_mode._entry_ptr, ptr @m5mols_write._entry, ptr @m5mols_write._entry.6, ptr @m5mols_write._entry_ptr, ptr @m5mols_write._entry_ptr.8, ptr @m5mols_debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @m5mols_i2c_driver, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @m5mols_id, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @supplies, ptr @.str.29, ptr @m5mols_ops, ptr @m5mols_subdev_internal_ops, ptr @m5mols_probe.__key, ptr @.str.31, ptr @m5mols_probe.__key.32, ptr @.str.33, ptr @.str.35, ptr @m5mols_default_ffmt, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @m5mols_core_ops, ptr @m5mols_video_ops, ptr @m5mols_pad_ops, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @m5mols_reg_res, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5mols_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5mols_read_u8._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5mols_read_u16._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5mols_read_u32._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5mols_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5mols_write._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5mols_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5mols_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5mols_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5mols_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5mols_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5mols_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5mols_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5mols_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supplies to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5mols_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5mols_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5mols_subdev_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5mols_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5mols_probe.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5mols_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5mols_default_ffmt to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5mols_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5mols_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5mols_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5mols_s_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5mols_reg_res to i32), i32 444, i32 544, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5mols_fw_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5mols_get_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5mols_get_version._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5mols_get_version._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @m5mols_read_u8(ptr noundef %sd, i32 noundef %reg, ptr nocapture noundef writeonly %val) local_unnamed_addr #0 align 64 {
entry:
  %val_32 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_32) #8
  %0 = ptrtoint ptr %val_32 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val_32, align 4, !annotation !161
  %and = and i32 %reg, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp.not = icmp eq i32 %and, 1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @m5mols_read(ptr noundef %sd, i32 noundef 1, i32 noundef %reg, ptr noundef nonnull %val_32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %val_32 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val_32, align 4
  %conv = trunc i32 %2 to i8
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %val, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end4 ], [ %call2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_32) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @m5mols_read(ptr noundef %sd, i32 noundef %size, i32 noundef %reg, ptr nocapture noundef writeonly %val) unnamed_addr #0 align 64 {
entry:
  %rbuf = alloca [5 x i8], align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  %wbuf = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %rbuf) #8
  %2 = getelementptr inbounds [5 x i8], ptr %rbuf, i32 0, i32 1
  %shr = lshr i32 %reg, 16
  %shr2 = lshr i32 %reg, 8
  %3 = call ptr @memset(ptr %rbuf, i32 255, i32 5)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #8
  %4 = getelementptr inbounds i8, ptr %msg, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %wbuf) #8
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = getelementptr inbounds [5 x i8], ptr %wbuf, i32 0, i32 4
  %9 = getelementptr inbounds [5 x i8], ptr %wbuf, i32 0, i32 3
  %10 = getelementptr inbounds [5 x i8], ptr %wbuf, i32 0, i32 2
  %11 = getelementptr inbounds [5 x i8], ptr %wbuf, i32 0, i32 1
  %conv4 = trunc i32 %shr2 to i8
  %conv = trunc i32 %shr to i8
  %addr = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %addr, align 2
  %14 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %16 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 5, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %wbuf, ptr %buf, align 4
  %18 = ptrtoint ptr %wbuf to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 5, ptr %wbuf, align 1
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %11, align 1
  %20 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv, ptr %10, align 1
  %21 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv4, ptr %9, align 1
  %conv13 = trunc i32 %size to i8
  %22 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv13, ptr %8, align 1
  %23 = load i16, ptr %addr, align 2
  %arrayidx16 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %arrayidx16, align 4
  %flags19 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %flags19 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 1, ptr %flags19, align 2
  %26 = trunc i32 %size to i16
  %conv20 = add i16 %26, 1
  %len22 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg, i32 0, i32 1, i32 2
  %27 = ptrtoint ptr %len22 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv20, ptr %len22, align 4
  %buf25 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg, i32 0, i32 1, i32 3
  %28 = ptrtoint ptr %buf25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %rbuf, ptr %buf25, align 4
  call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #8
  %29 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adapter, align 8
  %call28 = call i32 @i2c_transfer(ptr noundef %30, ptr noundef nonnull %msg, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call28)
  %cmp = icmp eq i32 %call28, 2
  br i1 %cmp, label %if.then30, label %if.end34

if.then30:                                        ; preds = %if.end
  %31 = zext i8 %conv13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i8 %conv13, label %if.else8.i [
    i8 1, label %if.then.i
    i8 2, label %if.then6.i
  ]

if.then.i:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %2, align 1
  %conv2.i = zext i8 %33 to i32
  br label %m5mols_swap_byte.exit

if.then6.i:                                       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %2, align 2
  %conv7.i = zext i16 %35 to i32
  br label %m5mols_swap_byte.exit

if.else8.i:                                       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %2, align 4
  br label %m5mols_swap_byte.exit

m5mols_swap_byte.exit:                            ; preds = %if.else8.i, %if.then6.i, %if.then.i
  %retval.0.i = phi i32 [ %conv2.i, %if.then.i ], [ %conv7.i, %if.then6.i ], [ %37, %if.else8.i ]
  %38 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %retval.0.i, ptr %val, align 4
  br label %cleanup

if.end34:                                         ; preds = %if.end
  %isp_ready = getelementptr i8, ptr %sd, i32 800
  %39 = ptrtoint ptr %isp_ready to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load = load i8, ptr %isp_ready, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool35.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool35.not, label %if.end34.if.end41_crit_edge, label %do.end

if.end34.if.end41_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

do.end:                                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv38 = and i32 %shr, 255
  %conv39 = and i32 %shr2, 255
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name, i32 noundef %size, i32 noundef %conv38, i32 noundef %conv39, i32 noundef %call28) #11
  br label %if.end41

if.end41:                                         ; preds = %do.end, %if.end34.if.end41_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp42 = icmp slt i32 %call28, 0
  %spec.select = select i1 %cmp42, i32 %call28, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %m5mols_swap_byte.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %m5mols_swap_byte.exit ], [ %spec.select, %if.end41 ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %wbuf) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #8
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %rbuf) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @m5mols_read_u16(ptr noundef %sd, i32 noundef %reg, ptr nocapture noundef writeonly %val) local_unnamed_addr #0 align 64 {
entry:
  %val_32 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_32) #8
  %0 = ptrtoint ptr %val_32 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val_32, align 4, !annotation !161
  %and = and i32 %reg, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp.not = icmp eq i32 %and, 2
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @m5mols_read(ptr noundef %sd, i32 noundef 2, i32 noundef %reg, ptr noundef nonnull %val_32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %val_32 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val_32, align 4
  %conv = trunc i32 %2 to i16
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv, ptr %val, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end4 ], [ %call2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_32) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @m5mols_read_u32(ptr noundef %sd, i32 noundef %reg, ptr nocapture noundef writeonly %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %reg, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %cmp.not = icmp eq i32 %and, 4
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name) #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call fastcc i32 @m5mols_read(ptr noundef %sd, i32 noundef 4, i32 noundef %reg, ptr noundef %val)
  br label %return

return:                                           ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @m5mols_write(ptr noundef %sd, i32 noundef %reg, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  %wbuf = alloca [8 x i8], align 1
  %msg = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %val.addr.sroa.0.0.extract.shift = lshr i32 %val, 16
  %val.addr.sroa.0.sroa.0.0.extract.shift93 = lshr i32 %val, 24
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wbuf) #8
  %2 = getelementptr inbounds [8 x i8], ptr %wbuf, i32 0, i32 1
  %3 = getelementptr inbounds [8 x i8], ptr %wbuf, i32 0, i32 2
  %4 = getelementptr inbounds [8 x i8], ptr %wbuf, i32 0, i32 3
  %5 = getelementptr inbounds [8 x i8], ptr %wbuf, i32 0, i32 4
  %shr = lshr i32 %reg, 16
  %conv = trunc i32 %shr to i8
  %shr2 = lshr i32 %reg, 8
  %conv4 = trunc i32 %shr2 to i8
  %conv6 = trunc i32 %reg to i8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #8
  %6 = getelementptr inbounds i8, ptr %msg, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = zext i8 %conv6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.63)
  switch i8 %conv6, label %do.end [
    i8 1, label %if.end.if.end18_crit_edge
    i8 2, label %if.end.if.end18_crit_edge94
    i8 4, label %if.end.if.end18_crit_edge95
  ]

if.end.if.end18_crit_edge95:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.end.if.end18_crit_edge94:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name) #11
  br label %cleanup

if.end18:                                         ; preds = %if.end.if.end18_crit_edge, %if.end.if.end18_crit_edge94, %if.end.if.end18_crit_edge95
  %addr = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %addr, align 2
  %13 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags, align 2
  %15 = trunc i32 %reg to i16
  %16 = and i16 %15, 255
  %conv24 = add nuw nsw i16 %16, 4
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %17 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv24, ptr %len, align 4
  %buf28 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %18 = ptrtoint ptr %buf28 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %wbuf, ptr %buf28, align 4
  %conv31 = add nuw nsw i8 %conv6, 4
  %19 = ptrtoint ptr %wbuf to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv31, ptr %wbuf, align 1
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %2, align 1
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv, ptr %3, align 1
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv4, ptr %4, align 1
  %23 = zext i8 %conv6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.64)
  switch i8 %conv6, label %if.else8.i [
    i8 1, label %if.end18.m5mols_swap_byte.exit_crit_edge
    i8 2, label %if.then6.i
  ]

if.end18.m5mols_swap_byte.exit_crit_edge:         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %m5mols_swap_byte.exit

if.then6.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %val.addr.sroa.0.sroa.4.0.insert.ext = and i32 %val.addr.sroa.0.0.extract.shift, 255
  %val.addr.sroa.0.sroa.0.0.insert.shift = shl nuw nsw i32 %val.addr.sroa.0.sroa.0.0.extract.shift93, 8
  %val.addr.sroa.0.sroa.0.0.insert.insert = or i32 %val.addr.sroa.0.sroa.4.0.insert.ext, %val.addr.sroa.0.sroa.0.0.insert.shift
  br label %m5mols_swap_byte.exit

if.else8.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %m5mols_swap_byte.exit

m5mols_swap_byte.exit:                            ; preds = %if.else8.i, %if.then6.i, %if.end18.m5mols_swap_byte.exit_crit_edge
  %retval.0.i = phi i32 [ %val.addr.sroa.0.sroa.0.0.insert.insert, %if.then6.i ], [ %val, %if.else8.i ], [ %val.addr.sroa.0.sroa.0.0.extract.shift93, %if.end18.m5mols_swap_byte.exit_crit_edge ]
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %retval.0.i, ptr %5, align 4
  call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #8
  %25 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter, align 8
  %call39 = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %msg, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call39)
  %cmp40 = icmp eq i32 %call39, 1
  br i1 %cmp40, label %m5mols_swap_byte.exit.cleanup_crit_edge, label %if.end43

m5mols_swap_byte.exit.cleanup_crit_edge:          ; preds = %m5mols_swap_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end43:                                         ; preds = %m5mols_swap_byte.exit
  %isp_ready = getelementptr i8, ptr %sd, i32 800
  %27 = ptrtoint ptr %isp_ready to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load = load i8, ptr %isp_ready, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool44.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool44.not, label %if.end43.if.end55_crit_edge, label %do.end48

if.end43.if.end55_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

do.end48:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %name50 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv52 = and i32 %shr, 255
  %conv53 = and i32 %shr2, 255
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name50, i32 noundef %conv52, i32 noundef %conv53, i32 noundef %call39) #11
  br label %if.end55

if.end55:                                         ; preds = %do.end48, %if.end43.if.end55_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp56 = icmp slt i32 %call39, 0
  %spec.select = select i1 %cmp56, i32 %call39, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %m5mols_swap_byte.exit.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %spec.select, %if.end55 ], [ -19, %entry.cleanup_crit_edge ], [ 0, %m5mols_swap_byte.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wbuf) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @m5mols_busy_wait(ptr noundef %sd, i32 noundef %reg, i32 noundef %value, i32 noundef %mask, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  %val_32.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %cmp = icmp slt i32 %timeout, 0
  %spec.select = select i1 %cmp, i32 250, i32 %timeout
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %spec.select) #8
  %and.i = and i32 %reg, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 1
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %and = and i32 %mask, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %conv = and i32 %mask, 255
  %and7 = and i32 %value, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp12.not = icmp eq i32 %spec.select, 0
  %1 = add i32 %call2.i, %0
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_32.i) #8
  %2 = ptrtoint ptr %val_32.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val_32.i, align 4, !annotation !161
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i) #11
  br label %m5mols_read_u8.exit

if.end.i:                                         ; preds = %do.body
  %call2.i25 = call fastcc i32 @m5mols_read(ptr noundef %sd, i32 noundef 1, i32 noundef %reg, ptr noundef nonnull %val_32.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i25)
  %tobool.not.i = icmp eq i32 %call2.i25, 0
  br i1 %tobool.not.i, label %land.lhs.true4, label %if.end.i.m5mols_read_u8.exit_crit_edge

if.end.i.m5mols_read_u8.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %m5mols_read_u8.exit

m5mols_read_u8.exit:                              ; preds = %if.end.i.m5mols_read_u8.exit_crit_edge, %do.end.i
  %retval.0.i26 = phi i32 [ -22, %do.end.i ], [ %call2.i25, %if.end.i.m5mols_read_u8.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_32.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i26)
  %cmp2 = icmp slt i32 %retval.0.i26, 0
  %or.cond = and i1 %tobool.not, %cmp2
  br i1 %or.cond, label %m5mols_read_u8.exit.cleanup16_crit_edge, label %m5mols_read_u8.exit.do.cond_crit_edge

m5mols_read_u8.exit.do.cond_crit_edge:            ; preds = %m5mols_read_u8.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond

m5mols_read_u8.exit.cleanup16_crit_edge:          ; preds = %m5mols_read_u8.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup16

land.lhs.true4:                                   ; preds = %if.end.i
  %3 = ptrtoint ptr %val_32.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val_32.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_32.i) #8
  %and5 = and i32 %conv, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %and5, i32 %and7)
  %cmp8 = icmp eq i32 %and5, %and7
  br i1 %cmp8, label %land.lhs.true4.cleanup16_crit_edge, label %land.lhs.true4.do.cond_crit_edge

land.lhs.true4.do.cond_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond

land.lhs.true4.cleanup16_crit_edge:               ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup16

do.cond:                                          ; preds = %land.lhs.true4.do.cond_crit_edge, %m5mols_read_u8.exit.do.cond_crit_edge
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 250, i32 noundef 2) #8
  br i1 %cmp12.not, label %do.cond.cleanup16_crit_edge, label %land.rhs

do.cond.cleanup16_crit_edge:                      ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup16

land.rhs:                                         ; preds = %do.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %5, %1
  %cmp14 = icmp slt i32 %sub, 0
  br i1 %cmp14, label %land.rhs.do.body_crit_edge, label %land.rhs.cleanup16_crit_edge

land.rhs.cleanup16_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup16

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

cleanup16:                                        ; preds = %land.rhs.cleanup16_crit_edge, %do.cond.cleanup16_crit_edge, %land.lhs.true4.cleanup16_crit_edge, %m5mols_read_u8.exit.cleanup16_crit_edge
  %retval.2 = phi i32 [ -16, %do.cond.cleanup16_crit_edge ], [ -16, %land.rhs.cleanup16_crit_edge ], [ 0, %land.lhs.true4.cleanup16_crit_edge ], [ %retval.0.i26, %m5mols_read_u8.exit.cleanup16_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @m5mols_enable_interrupt(ptr noundef %sd, i8 noundef zeroext %reg) local_unnamed_addr #0 align 64 {
entry:
  %val_32.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %af = getelementptr i8, ptr %sd, i32 752
  %0 = ptrtoint ptr %af to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %af, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_32.i) #8
  %call2.i = call fastcc i32 @m5mols_read(ptr noundef %sd, i32 noundef 1, i32 noundef 4097, ptr noundef nonnull %val_32.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_32.i) #8
  br i1 %tobool.not.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %conv4 = zext i8 %reg to i32
  %neg = select i1 %tobool.not, i32 255, i32 253
  %and = and i32 %neg, %conv4
  %call6 = tail call i32 @m5mols_write(ptr noundef %sd, i32 noundef 4353, i32 noundef %and)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call6, %if.then ], [ %call2.i, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @m5mols_wait_interrupt(ptr noundef %sd, i8 noundef zeroext %irq_mask, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  %val_32.i.i = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %timeout) #8
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 344) #8
  %irq_done = getelementptr i8, ptr %sd, i32 280
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %irq_done, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !162
  tail call void @llvm.prefetch.p0(ptr %irq_done, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %irq_done, ptr %irq_done, i32 0, i32 -1, ptr elementtype(i32) %irq_done) #8, !srcloc !163
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %atomic_add_unless.exit, label %atomic_add_unless.exit.thread

atomic_add_unless.exit.thread:                    ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !164
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool6.not81 = icmp eq i32 %call2.i, 0
  br i1 %tobool6.not81, label %atomic_add_unless.exit.thread.if.end43_crit_edge, label %atomic_add_unless.exit.thread.if.end39_crit_edge

atomic_add_unless.exit.thread.if.end39_crit_edge: ; preds = %atomic_add_unless.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

atomic_add_unless.exit.thread.if.end43_crit_edge: ; preds = %atomic_add_unless.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

atomic_add_unless.exit:                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool8.not = icmp eq i32 %call2.i, 0
  br i1 %tobool8.not, label %atomic_add_unless.exit.if.then41.thread_crit_edge, label %if.then10

atomic_add_unless.exit.if.then41.thread_crit_edge: ; preds = %atomic_add_unless.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41.thread

if.then10:                                        ; preds = %atomic_add_unless.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %1 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  %call2.i70 = tail call i32 @__msecs_to_jiffies(i32 noundef %timeout) #8
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %irq_waitq = getelementptr i8, ptr %sd, i32 228
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then10
  %__ret11.0 = phi i32 [ %call2.i70, %if.then10 ], [ %call36, %cleanup ]
  %call13 = call i32 @prepare_to_wait_event(ptr noundef %irq_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %call.i.i74 = call zeroext i1 @__kasan_check_write(ptr noundef %irq_done, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !162
  call void @llvm.prefetch.p0(ptr %irq_done, i32 1, i32 3, i32 1) #8
  %2 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %irq_done, ptr %irq_done, i32 0, i32 -1, ptr elementtype(i32) %irq_done) #8, !srcloc !163
  %asmresult.i.i.i75 = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i75)
  %cmp.not.i.i.i76 = icmp eq i32 %asmresult.i.i.i75, 0
  br i1 %cmp.not.i.i.i76, label %atomic_add_unless.exit79, label %atomic_add_unless.exit79.thread

atomic_add_unless.exit79.thread:                  ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !164
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret11.0)
  %tobool20.not86 = icmp eq i32 %__ret11.0, 0
  %spec.store.select4887 = select i1 %tobool20.not86, i32 1, i32 %__ret11.0
  br label %for.end

atomic_add_unless.exit79:                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret11.0)
  %tobool26.not = icmp eq i32 %__ret11.0, 0
  br i1 %tobool26.not, label %atomic_add_unless.exit79.for.end_crit_edge, label %if.end32

atomic_add_unless.exit79.for.end_crit_edge:       ; preds = %atomic_add_unless.exit79
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end32:                                         ; preds = %atomic_add_unless.exit79
  %tobool33.not = icmp eq i32 %call13, 0
  br i1 %tobool33.not, label %cleanup, label %if.end32.__out_crit_edge

if.end32.__out_crit_edge:                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %__out

cleanup:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %call36 = call i32 @schedule_timeout(i32 noundef %__ret11.0) #8
  br label %for.cond

for.end:                                          ; preds = %atomic_add_unless.exit79.for.end_crit_edge, %atomic_add_unless.exit79.thread
  %__ret11.2.ph = phi i32 [ %spec.store.select4887, %atomic_add_unless.exit79.thread ], [ 0, %atomic_add_unless.exit79.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %irq_waitq, ptr noundef nonnull %__wq_entry) #8
  br label %__out

__out:                                            ; preds = %for.end, %if.end32.__out_crit_edge
  %__ret11.292 = phi i32 [ %__ret11.2.ph, %for.end ], [ %call13, %if.end32.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end39

if.end39:                                         ; preds = %__out, %atomic_add_unless.exit.thread.if.end39_crit_edge
  %__ret.1 = phi i32 [ %__ret11.292, %__out ], [ %call2.i, %atomic_add_unless.exit.thread.if.end39_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret.1)
  %cmp = icmp slt i32 %__ret.1, 1
  br i1 %cmp, label %if.then41, label %if.end39.if.end43_crit_edge

if.end39.if.end43_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %tobool42.not = icmp eq i32 %__ret.1, 0
  br i1 %tobool42.not, label %if.then41.if.then41.thread_crit_edge, label %if.then41.cleanup46_crit_edge

if.then41.cleanup46_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup46

if.then41.if.then41.thread_crit_edge:             ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41.thread

if.then41.thread:                                 ; preds = %if.then41.if.then41.thread_crit_edge, %atomic_add_unless.exit.if.then41.thread_crit_edge
  br label %cleanup46

if.end43:                                         ; preds = %if.end39.if.end43_crit_edge, %atomic_add_unless.exit.thread.if.end43_crit_edge
  %conv = zext i8 %irq_mask to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %.neg97 = sub i32 -25, %3
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_32.i.i) #8
  %4 = ptrtoint ptr %val_32.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val_32.i.i, align 4, !annotation !161
  %call2.i25.i = call fastcc i32 @m5mols_read(ptr noundef %sd, i32 noundef 1, i32 noundef 4097, ptr noundef nonnull %val_32.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i25.i)
  %tobool.not.i.i = icmp eq i32 %call2.i25.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true4.i, label %m5mols_read_u8.exit.i

m5mols_read_u8.exit.i:                            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_32.i.i) #8
  br label %do.cond.i

land.lhs.true4.i:                                 ; preds = %do.body.i
  %5 = ptrtoint ptr %val_32.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val_32.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_32.i.i) #8
  %and5.i = and i32 %6, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %and5.i, i32 %conv)
  %cmp8.i = icmp eq i32 %and5.i, %conv
  br i1 %cmp8.i, label %land.lhs.true4.i.cleanup46_crit_edge, label %land.lhs.true4.i.do.cond.i_crit_edge

land.lhs.true4.i.do.cond.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.i

land.lhs.true4.i.cleanup46_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup46

do.cond.i:                                        ; preds = %land.lhs.true4.i.do.cond.i_crit_edge, %m5mols_read_u8.exit.i
  call void @usleep_range_state(i32 noundef 100, i32 noundef 250, i32 noundef 2) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %.neg97, %7
  %cmp14.i = icmp slt i32 %sub.i, 0
  br i1 %cmp14.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.cleanup46_crit_edge

do.cond.i.cleanup46_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup46

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

cleanup46:                                        ; preds = %do.cond.i.cleanup46_crit_edge, %land.lhs.true4.i.cleanup46_crit_edge, %if.then41.thread, %if.then41.cleanup46_crit_edge
  %retval.0 = phi i32 [ -110, %if.then41.thread ], [ %__ret.1, %if.then41.cleanup46_crit_edge ], [ 0, %land.lhs.true4.i.cleanup46_crit_edge ], [ -16, %do.cond.i.cleanup46_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @m5mols_set_mode(ptr noundef %info, i8 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  %val_32.i.i.i75 = alloca i32, align 4
  %val_32.i.i.i = alloca i32, align 4
  %val_32.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sd1 = getelementptr inbounds %struct.m5mols_info, ptr %info, i32 0, i32 1
  %conv = zext i8 %mode to i32
  %0 = add i8 %mode, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %0)
  %1 = icmp ult i8 %0, -3
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_32.i) #8
  %2 = ptrtoint ptr %val_32.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val_32.i, align 4, !annotation !161
  %call2.i = call fastcc i32 @m5mols_read(ptr noundef %sd1, i32 noundef 1, i32 noundef 2817, ptr noundef nonnull %val_32.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false6, label %m5mols_read_u8.exit

m5mols_read_u8.exit:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_32.i) #8
  br label %cleanup

lor.lhs.false6:                                   ; preds = %if.end
  %3 = ptrtoint ptr %val_32.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val_32.i, align 4
  %conv.i = trunc i32 %4 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_32.i) #8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv.i, i8 %mode)
  %cmp9 = icmp eq i8 %conv.i, %mode
  br i1 %cmp9, label %lor.lhs.false6.cleanup_crit_edge, label %if.end12

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false6
  %5 = zext i8 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.65)
  switch i8 %conv.i, label %do.end [
    i8 1, label %sw.bb
    i8 2, label %sw.bb24
    i8 3, label %sw.bb32
  ]

sw.bb:                                            ; preds = %if.end12
  %call.i = tail call i32 @m5mols_write(ptr noundef %sd1, i32 noundef 2817, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.cleanup_crit_edge, label %if.end.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %.neg7.i = sub i32 -20, %6
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i.do.body.i.i_crit_edge, %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_32.i.i.i) #8
  %7 = ptrtoint ptr %val_32.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %val_32.i.i.i, align 4, !annotation !161
  %call2.i25.i.i = call fastcc i32 @m5mols_read(ptr noundef %sd1, i32 noundef 1, i32 noundef 2817, ptr noundef nonnull %val_32.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i25.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call2.i25.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true4.i.i, label %m5mols_read_u8.exit.i.i

m5mols_read_u8.exit.i.i:                          ; preds = %do.body.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_32.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i25.i.i)
  %cmp2.i.i = icmp slt i32 %call2.i25.i.i, 0
  br i1 %cmp2.i.i, label %m5mols_read_u8.exit.i.i.cleanup_crit_edge, label %m5mols_read_u8.exit.i.i.do.cond.i.i_crit_edge

m5mols_read_u8.exit.i.i.do.cond.i.i_crit_edge:    ; preds = %m5mols_read_u8.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.i.i

m5mols_read_u8.exit.i.i.cleanup_crit_edge:        ; preds = %m5mols_read_u8.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true4.i.i:                               ; preds = %do.body.i.i
  %8 = ptrtoint ptr %val_32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val_32.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_32.i.i.i) #8
  %and5.i.i = and i32 %9, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and5.i.i)
  %cmp8.i.i = icmp eq i32 %and5.i.i, 2
  br i1 %cmp8.i.i, label %m5mols_reg_mode.exit, label %land.lhs.true4.i.i.do.cond.i.i_crit_edge

land.lhs.true4.i.i.do.cond.i.i_crit_edge:         ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.i.i

do.cond.i.i:                                      ; preds = %land.lhs.true4.i.i.do.cond.i.i_crit_edge, %m5mols_read_u8.exit.i.i.do.cond.i.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 250, i32 noundef 2) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %.neg7.i, %10
  %cmp14.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp14.i.i, label %do.cond.i.i.do.body.i.i_crit_edge, label %do.cond.i.i.cleanup_crit_edge

do.cond.i.i.cleanup_crit_edge:                    ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond.i.i.do.body.i.i_crit_edge:                ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

m5mols_reg_mode.exit:                             ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %mode)
  %cmp16.not = icmp eq i8 %mode, 2
  br i1 %cmp16.not, label %m5mols_reg_mode.exit.if.then46_crit_edge, label %m5mols_reg_mode.exit.sw.epilog_crit_edge

m5mols_reg_mode.exit.sw.epilog_crit_edge:         ; preds = %m5mols_reg_mode.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

m5mols_reg_mode.exit.if.then46_crit_edge:         ; preds = %m5mols_reg_mode.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then46

sw.bb24:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %mode)
  %cmp26 = icmp eq i8 %mode, 1
  %. = select i1 %cmp26, i8 1, i8 3
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end12
  %call.i76 = tail call i32 @m5mols_write(ptr noundef %sd1, i32 noundef 2817, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %cmp.i77 = icmp slt i32 %call.i76, 0
  br i1 %cmp.i77, label %sw.bb32.cleanup_crit_edge, label %if.end.i79

sw.bb32.cleanup_crit_edge:                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i79:                                       ; preds = %sw.bb32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %.neg7.i78 = sub i32 -20, %11
  br label %do.body.i.i82

do.body.i.i82:                                    ; preds = %do.cond.i.i90.do.body.i.i82_crit_edge, %if.end.i79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_32.i.i.i75) #8
  %12 = ptrtoint ptr %val_32.i.i.i75 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %val_32.i.i.i75, align 4, !annotation !161
  %call2.i25.i.i80 = call fastcc i32 @m5mols_read(ptr noundef %sd1, i32 noundef 1, i32 noundef 2817, ptr noundef nonnull %val_32.i.i.i75) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i25.i.i80)
  %tobool.not.i.i.i81 = icmp eq i32 %call2.i25.i.i80, 0
  br i1 %tobool.not.i.i.i81, label %land.lhs.true4.i.i87, label %m5mols_read_u8.exit.i.i84

m5mols_read_u8.exit.i.i84:                        ; preds = %do.body.i.i82
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_32.i.i.i75) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i25.i.i80)
  %cmp2.i.i83 = icmp slt i32 %call2.i25.i.i80, 0
  br i1 %cmp2.i.i83, label %m5mols_read_u8.exit.i.i84.cleanup_crit_edge, label %m5mols_read_u8.exit.i.i84.do.cond.i.i90_crit_edge

m5mols_read_u8.exit.i.i84.do.cond.i.i90_crit_edge: ; preds = %m5mols_read_u8.exit.i.i84
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.i.i90

m5mols_read_u8.exit.i.i84.cleanup_crit_edge:      ; preds = %m5mols_read_u8.exit.i.i84
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true4.i.i87:                             ; preds = %do.body.i.i82
  %13 = ptrtoint ptr %val_32.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val_32.i.i.i75, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_32.i.i.i75) #8
  %and5.i.i85 = and i32 %14, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and5.i.i85)
  %cmp8.i.i86 = icmp eq i32 %and5.i.i85, 2
  br i1 %cmp8.i.i86, label %m5mols_reg_mode.exit92, label %land.lhs.true4.i.i87.do.cond.i.i90_crit_edge

land.lhs.true4.i.i87.do.cond.i.i90_crit_edge:     ; preds = %land.lhs.true4.i.i87
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.i.i90

do.cond.i.i90:                                    ; preds = %land.lhs.true4.i.i87.do.cond.i.i90_crit_edge, %m5mols_read_u8.exit.i.i84.do.cond.i.i90_crit_edge
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 250, i32 noundef 2) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i88 = add i32 %.neg7.i78, %15
  %cmp14.i.i89 = icmp slt i32 %sub.i.i88, 0
  br i1 %cmp14.i.i89, label %do.cond.i.i90.do.body.i.i82_crit_edge, label %do.cond.i.i90.cleanup_crit_edge

do.cond.i.i90.cleanup_crit_edge:                  ; preds = %do.cond.i.i90
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond.i.i90.do.body.i.i82_crit_edge:            ; preds = %do.cond.i.i90
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i82

m5mols_reg_mode.exit92:                           ; preds = %land.lhs.true4.i.i87
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %mode)
  %cmp35.not = icmp eq i8 %mode, 2
  br i1 %cmp35.not, label %m5mols_reg_mode.exit92.if.then46_crit_edge, label %m5mols_reg_mode.exit92.sw.epilog_crit_edge

m5mols_reg_mode.exit92.sw.epilog_crit_edge:       ; preds = %m5mols_reg_mode.exit92
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

m5mols_reg_mode.exit92.if.then46_crit_edge:       ; preds = %m5mols_reg_mode.exit92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then46

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.m5mols_info, ptr %info, i32 0, i32 1, i32 9
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name, i32 noundef %conv) #11
  br label %if.then46

sw.epilog:                                        ; preds = %m5mols_reg_mode.exit92.sw.epilog_crit_edge, %sw.bb24, %m5mols_reg_mode.exit.sw.epilog_crit_edge
  %.sink = phi i8 [ 3, %m5mols_reg_mode.exit.sw.epilog_crit_edge ], [ %., %sw.bb24 ], [ 1, %m5mols_reg_mode.exit92.sw.epilog_crit_edge ]
  %call41 = tail call fastcc i32 @m5mols_reg_mode(ptr noundef %sd1, i8 noundef zeroext %.sink)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool45.not = icmp eq i32 %call41, 0
  br i1 %tobool45.not, label %sw.epilog.if.then46_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog.if.then46_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then46

if.then46:                                        ; preds = %sw.epilog.if.then46_crit_edge, %do.end, %m5mols_reg_mode.exit92.if.then46_crit_edge, %m5mols_reg_mode.exit.if.then46_crit_edge
  %mode47 = getelementptr inbounds %struct.m5mols_info, ptr %info, i32 0, i32 24
  %16 = ptrtoint ptr %mode47 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %mode, ptr %mode47, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %sw.epilog.cleanup_crit_edge, %do.cond.i.i90.cleanup_crit_edge, %m5mols_read_u8.exit.i.i84.cleanup_crit_edge, %sw.bb32.cleanup_crit_edge, %do.cond.i.i.cleanup_crit_edge, %m5mols_read_u8.exit.i.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %m5mols_read_u8.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false6.cleanup_crit_edge ], [ %call2.i, %m5mols_read_u8.exit ], [ 0, %if.then46 ], [ %call41, %sw.epilog.cleanup_crit_edge ], [ %call.i, %sw.bb.cleanup_crit_edge ], [ %call.i76, %sw.bb32.cleanup_crit_edge ], [ %call2.i25.i.i, %m5mols_read_u8.exit.i.i.cleanup_crit_edge ], [ -16, %do.cond.i.i.cleanup_crit_edge ], [ %call2.i25.i.i80, %m5mols_read_u8.exit.i.i84.cleanup_crit_edge ], [ -16, %do.cond.i.i90.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @m5mols_reg_mode(ptr noundef %sd, i8 noundef zeroext %mode) unnamed_addr #0 align 64 {
entry:
  %val_32.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %mode to i32
  %call = tail call i32 @m5mols_write(ptr noundef %sd, i32 noundef 2817, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %.neg7 = sub i32 -20, %0
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_32.i.i) #8
  %1 = ptrtoint ptr %val_32.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val_32.i.i, align 4, !annotation !161
  %call2.i25.i = call fastcc i32 @m5mols_read(ptr noundef %sd, i32 noundef 1, i32 noundef 2817, ptr noundef nonnull %val_32.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i25.i)
  %tobool.not.i.i = icmp eq i32 %call2.i25.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true4.i, label %m5mols_read_u8.exit.i

m5mols_read_u8.exit.i:                            ; preds = %do.body.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_32.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i25.i)
  %cmp2.i = icmp slt i32 %call2.i25.i, 0
  br i1 %cmp2.i, label %m5mols_read_u8.exit.i.cleanup_crit_edge, label %m5mols_read_u8.exit.i.do.cond.i_crit_edge

m5mols_read_u8.exit.i.do.cond.i_crit_edge:        ; preds = %m5mols_read_u8.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.i

m5mols_read_u8.exit.i.cleanup_crit_edge:          ; preds = %m5mols_read_u8.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true4.i:                                 ; preds = %do.body.i
  %2 = ptrtoint ptr %val_32.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val_32.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_32.i.i) #8
  %and5.i = and i32 %3, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and5.i, i32 %conv)
  %cmp8.i = icmp eq i32 %and5.i, %conv
  br i1 %cmp8.i, label %land.lhs.true4.i.cleanup_crit_edge, label %land.lhs.true4.i.do.cond.i_crit_edge

land.lhs.true4.i.do.cond.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.i

land.lhs.true4.i.cleanup_crit_edge:               ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond.i:                                        ; preds = %land.lhs.true4.i.do.cond.i_crit_edge, %m5mols_read_u8.exit.i.do.cond.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 250, i32 noundef 2) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %.neg7, %4
  %cmp14.i = icmp slt i32 %sub.i, 0
  br i1 %cmp14.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.cleanup_crit_edge

do.cond.i.cleanup_crit_edge:                      ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

cleanup:                                          ; preds = %do.cond.i.cleanup_crit_edge, %land.lhs.true4.i.cleanup_crit_edge, %m5mols_read_u8.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call2.i25.i, %m5mols_read_u8.exit.i.cleanup_crit_edge ], [ 0, %land.lhs.true4.i.cleanup_crit_edge ], [ -16, %do.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @m5mols_restore_controls(ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_sync = getelementptr inbounds %struct.m5mols_info, ptr %info, i32 0, i32 22
  %0 = ptrtoint ptr %ctrl_sync to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %ctrl_sync, align 4
  %1 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @m5mols_do_scenemode(ptr noundef %info, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %handle = getelementptr inbounds %struct.m5mols_info, ptr %info, i32 0, i32 5
  %call4 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %handle) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  %2 = ptrtoint ptr %ctrl_sync to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load7 = load i8, ptr %ctrl_sync, align 4
  %bf.shl = select i1 %tobool5.not, i8 32, i8 0
  %bf.clear8 = and i8 %bf.load7, -33
  %bf.set = or i8 %bf.clear8, %bf.shl
  store i8 %bf.set, ptr %ctrl_sync, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @m5mols_do_scenemode(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @m5mols_update_fw(ptr noundef %sd, ptr noundef %set_power) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @m5mols_i2c_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @m5mols_i2c_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @m5mols_i2c_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @m5mols_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m5mols_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %3)
  %4 = icmp ult i32 %3, 2048
  br i1 %4, label %if.end7, label %do.end5

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %do.end11, label %if.end13

do.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #11
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 808, i32 noundef 3520) #8
  %tobool16.not = icmp eq ptr %call.i, null
  br i1 %tobool16.not, label %if.end13.cleanup_crit_edge, label %if.end18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %call.i, align 4
  %set_power = getelementptr inbounds %struct.m5mols_platform_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %set_power to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_power, align 4
  %set_power20 = getelementptr inbounds %struct.m5mols_info, ptr %call.i, i32 0, i32 16
  %10 = ptrtoint ptr %set_power20 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %set_power20, align 4
  %reset_polarity = getelementptr inbounds %struct.m5mols_platform_data, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %reset_polarity to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %reset_polarity, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool21.not = icmp eq i8 %12, 0
  %cond = select i1 %tobool21.not, i32 0, i32 2
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  %call24 = tail call i32 @devm_gpio_request_one(ptr noundef %dev, i32 noundef %14, i32 noundef %cond, ptr noundef nonnull @.str.24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end31, label %do.end29

do.end29:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %call24) #11
  br label %cleanup

if.end31:                                         ; preds = %if.end18
  %call33 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 6, ptr noundef nonnull @supplies) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end40, label %do.end38

do.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %call33) #11
  br label %cleanup

if.end40:                                         ; preds = %if.end31
  %sd41 = getelementptr inbounds %struct.m5mols_info, ptr %call.i, i32 0, i32 1
  tail call void @v4l2_i2c_subdev_init(ptr noundef %sd41, ptr noundef %client, ptr noundef nonnull @m5mols_ops) #8
  %name = getelementptr inbounds %struct.m5mols_info, ptr %call.i, i32 0, i32 1, i32 9
  %call42 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.13, i32 noundef 32) #8
  %flags = getelementptr inbounds %struct.m5mols_info, ptr %call.i, i32 0, i32 1, i32 4
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %or = or i32 %16, 4
  store i32 %or, ptr %flags, align 4
  %internal_ops = getelementptr inbounds %struct.m5mols_info, ptr %call.i, i32 0, i32 1, i32 7
  %17 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @m5mols_subdev_internal_ops, ptr %internal_ops, align 4
  %pad = getelementptr inbounds %struct.m5mols_info, ptr %call.i, i32 0, i32 2
  %flags43 = getelementptr inbounds %struct.m5mols_info, ptr %call.i, i32 0, i32 2, i32 4
  %18 = ptrtoint ptr %flags43 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %flags43, align 4
  %call45 = tail call i32 @media_entity_pads_init(ptr noundef %sd41, i16 noundef zeroext 1, ptr noundef %pad) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.end40.cleanup_crit_edge, label %if.end49

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end49:                                         ; preds = %if.end40
  %function = getelementptr inbounds %struct.m5mols_info, ptr %call.i, i32 0, i32 1, i32 0, i32 3
  %19 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 131073, ptr %function, align 4
  %irq_waitq = getelementptr inbounds %struct.m5mols_info, ptr %call.i, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %irq_waitq, ptr noundef nonnull @.str.31, ptr noundef nonnull @m5mols_probe.__key) #8
  %lock = getelementptr inbounds %struct.m5mols_info, ptr %call.i, i32 0, i32 17
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.33, ptr noundef nonnull @m5mols_probe.__key.32) #8
  %20 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq, align 4
  %call.i139 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %21, ptr noundef nonnull @m5mols_irq_handler, ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str.13, ptr noundef %sd41) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139)
  %tobool60.not = icmp eq i32 %call.i139, 0
  br i1 %tobool60.not, label %if.end66, label %do.end64

do.end64:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %call.i139) #11
  br label %cleanup

if.end66:                                         ; preds = %if.end49
  %res_type = getelementptr inbounds %struct.m5mols_info, ptr %call.i, i32 0, i32 19
  %22 = ptrtoint ptr %res_type to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %res_type, align 4
  %ffmt = getelementptr inbounds %struct.m5mols_info, ptr %call.i, i32 0, i32 18
  %23 = call ptr @memcpy(ptr %ffmt, ptr @m5mols_default_ffmt, i32 48)
  %arrayidx68 = getelementptr %struct.m5mols_info, ptr %call.i, i32 0, i32 18, i32 1
  %24 = call ptr @memcpy(ptr %arrayidx68, ptr getelementptr inbounds ([2 x %struct.v4l2_mbus_framefmt], ptr @m5mols_default_ffmt, i32 0, i32 1), i32 48)
  %call69 = tail call i32 @m5mols_sensor_power(ptr noundef nonnull %call.i, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end72:                                         ; preds = %if.end66
  %call73 = tail call fastcc i32 @m5mols_fw_start(ptr noundef %sd41)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.then75, label %if.end72.if.end77_crit_edge

if.end72.if.end77_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  %call76 = tail call i32 @m5mols_init_controls(ptr noundef %sd41) #8
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %if.end72.if.end77_crit_edge
  %dev_priv.i.i = getelementptr inbounds %struct.m5mols_info, ptr %call.i, i32 0, i32 1, i32 11
  %25 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_priv.i.i, align 4
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 4
  %power.i = getelementptr inbounds %struct.m5mols_info, ptr %call.i, i32 0, i32 22
  %29 = ptrtoint ptr %power.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i = load i8, ptr %power.i, align 4
  %30 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %if.end77.cleanup_crit_edge, label %if.end.i

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end77
  %call30.i = tail call i32 @regulator_bulk_disable(i32 noundef 6, ptr noundef nonnull @supplies) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end33.i:                                       ; preds = %if.end.i
  %32 = ptrtoint ptr %set_power20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_power20, align 4
  %tobool35.not.i = icmp eq ptr %33, null
  br i1 %tobool35.not.i, label %if.end33.i.if.end40.i_crit_edge, label %if.then36.i

if.end33.i.if.end40.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40.i

if.then36.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev38.i = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4
  %call39.i = tail call i32 %33(ptr noundef %dev38.i, i32 noundef 0) #8
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then36.i, %if.end33.i.if.end40.i_crit_edge
  %34 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %28, align 4
  %reset_polarity42.i = getelementptr inbounds %struct.m5mols_platform_data, ptr %28, i32 0, i32 1
  %36 = ptrtoint ptr %reset_polarity42.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %reset_polarity42.i, align 4
  %conv43.i = zext i8 %37 to i32
  %call.i80.i = tail call ptr @gpio_to_desc(i32 noundef %35) #8
  tail call void @gpiod_set_raw_value(ptr noundef %call.i80.i, i32 noundef %conv43.i) #8
  %38 = ptrtoint ptr %power.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load44.i = load i8, ptr %power.i, align 4
  %bf.clear49.i = and i8 %bf.load44.i, 63
  store i8 %bf.clear49.i, ptr %power.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end40.i, %if.end.i.cleanup_crit_edge, %if.end77.cleanup_crit_edge, %if.end66.cleanup_crit_edge, %do.end64, %if.end40.cleanup_crit_edge, %do.end38, %do.end29, %if.end13.cleanup_crit_edge, %do.end11, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call24, %do.end29 ], [ %call33, %do.end38 ], [ -22, %do.end11 ], [ -22, %do.end5 ], [ -12, %if.end13.cleanup_crit_edge ], [ %call45, %if.end40.cleanup_crit_edge ], [ %call.i139, %do.end64 ], [ %call69, %if.end66.cleanup_crit_edge ], [ %call30.i, %if.end.i.cleanup_crit_edge ], [ 0, %if.end40.i ], [ 0, %if.end77.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m5mols_remove(ptr nocapture noundef readonly %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #8
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_handler, align 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m5mols_irq_handler(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_done = getelementptr i8, ptr %data, i32 280
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %irq_done, i32 noundef 4) #8
  %0 = ptrtoint ptr %irq_done to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 1, ptr %irq_done, align 4
  %irq_waitq = getelementptr i8, ptr %data, i32 228
  tail call void @__wake_up(ptr noundef %irq_waitq, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m5mols_sensor_power(ptr nocapture noundef %info, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.m5mols_info, ptr %info, i32 0, i32 1, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %power = getelementptr inbounds %struct.m5mols_info, ptr %info, i32 0, i32 22
  %4 = ptrtoint ptr %power to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %power, align 4
  %5 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %6 = icmp eq i8 %5, 0
  %cmp = xor i1 %6, %enable
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %enable, label %if.then5, label %if.end29

if.then5:                                         ; preds = %if.end
  %set_power = getelementptr inbounds %struct.m5mols_info, ptr %info, i32 0, i32 16
  %7 = ptrtoint ptr %set_power to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_power, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %if.then5.if.end13_crit_edge, label %if.then7

if.then5.if.end13_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then7:                                         ; preds = %if.then5
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call9 = tail call i32 %8(ptr noundef %dev, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then7.if.end13_crit_edge, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.end13:                                         ; preds = %if.then7.if.end13_crit_edge, %if.then5.if.end13_crit_edge
  %call14 = tail call i32 @regulator_bulk_enable(i32 noundef 6, ptr noundef nonnull @supplies) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end24, label %if.then16

if.then16:                                        ; preds = %if.end13
  %9 = ptrtoint ptr %set_power to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_power, align 4
  %tobool18.not = icmp eq ptr %10, null
  br i1 %tobool18.not, label %if.then16.cleanup_crit_edge, label %if.then19

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %dev21 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call22 = tail call i32 %10(ptr noundef %dev21, i32 noundef 0) #8
  br label %cleanup

if.end24:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %3, align 4
  %reset_polarity = getelementptr inbounds %struct.m5mols_platform_data, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %reset_polarity to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %reset_polarity, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool25.not = icmp eq i8 %14, 0
  %lnot.ext = zext i1 %tobool25.not to i32
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %12) #8
  tail call void @gpiod_set_raw_value(ptr noundef %call.i, i32 noundef %lnot.ext) #8
  %15 = ptrtoint ptr %power to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load27 = load i8, ptr %power, align 4
  %bf.set = or i8 %bf.load27, 64
  store i8 %bf.set, ptr %power, align 4
  br label %cleanup

if.end29:                                         ; preds = %if.end
  %call30 = tail call i32 @regulator_bulk_disable(i32 noundef 6, ptr noundef nonnull @supplies) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %set_power34 = getelementptr inbounds %struct.m5mols_info, ptr %info, i32 0, i32 16
  %16 = ptrtoint ptr %set_power34 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_power34, align 4
  %tobool35.not = icmp eq ptr %17, null
  br i1 %tobool35.not, label %if.end33.if.end40_crit_edge, label %if.then36

if.end33.if.end40_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %dev38 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call39 = tail call i32 %17(ptr noundef %dev38, i32 noundef 0) #8
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %if.end33.if.end40_crit_edge
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %3, align 4
  %reset_polarity42 = getelementptr inbounds %struct.m5mols_platform_data, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %reset_polarity42 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %reset_polarity42, align 4
  %conv43 = zext i8 %21 to i32
  %call.i80 = tail call ptr @gpio_to_desc(i32 noundef %19) #8
  tail call void @gpiod_set_raw_value(ptr noundef %call.i80, i32 noundef %conv43) #8
  %22 = ptrtoint ptr %power to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load44 = load i8, ptr %power, align 4
  %bf.clear49 = and i8 %bf.load44, 63
  store i8 %bf.clear49, ptr %power, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.end29.cleanup_crit_edge, %if.end24, %if.then19, %if.then16.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ 0, %if.end40 ], [ 0, %entry.cleanup_crit_edge ], [ %call9, %if.then7.cleanup_crit_edge ], [ %call14, %if.then19 ], [ %call14, %if.then16.cleanup_crit_edge ], [ %call30, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @m5mols_fw_start(ptr noundef %sd) unnamed_addr #0 align 64 {
entry:
  %val_32.i.i49 = alloca i32, align 4
  %val_32.i190.i = alloca i32, align 4
  %val_32.i183.i = alloca i32, align 4
  %val_32.i176.i = alloca i32, align 4
  %val_32.i169.i = alloca i32, align 4
  %val_32.i162.i = alloca i32, align 4
  %val_32.i156.i = alloca i32, align 4
  %val_32.i149.i = alloca i32, align 4
  %val_32.i.i47 = alloca i32, align 4
  %val_32.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_done = getelementptr i8, ptr %sd, i32 280
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %irq_done, i32 noundef 4) #8
  %0 = ptrtoint ptr %irq_done to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %irq_done, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %.neg65 = sub i32 -25, %1
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_32.i.i) #8
  %2 = ptrtoint ptr %val_32.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val_32.i.i, align 4, !annotation !161
  %call2.i25.i = call fastcc i32 @m5mols_read(ptr noundef %sd, i32 noundef 1, i32 noundef 987649, ptr noundef nonnull %val_32.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i25.i)
  %tobool.not.i.i = icmp eq i32 %call2.i25.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true4.i, label %m5mols_read_u8.exit.i

m5mols_read_u8.exit.i:                            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_32.i.i) #8
  br label %do.cond.i

land.lhs.true4.i:                                 ; preds = %do.body.i
  %3 = ptrtoint ptr %val_32.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val_32.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_32.i.i) #8
  %and5.i = and i32 %4, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %cmp8.i = icmp eq i32 %and5.i, 0
  br i1 %cmp8.i, label %if.end, label %land.lhs.true4.i.do.cond.i_crit_edge

land.lhs.true4.i.do.cond.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.i

do.cond.i:                                        ; preds = %land.lhs.true4.i.do.cond.i_crit_edge, %m5mols_read_u8.exit.i
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 250, i32 noundef 2) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %.neg65, %5
  %cmp14.i = icmp slt i32 %sub.i, 0
  br i1 %cmp14.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.cleanup_crit_edge

do.cond.i.cleanup_crit_edge:                      ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.end:                                           ; preds = %land.lhs.true4.i
  %call2 = tail call i32 @m5mols_write(ptr noundef %sd, i32 noundef 987649, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 @m5mols_wait_interrupt(ptr noundef %sd, i8 noundef zeroext 1, i32 noundef 2000)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %ret.1 = phi i32 [ %call2, %if.end.if.end6_crit_edge ], [ %call5, %if.then4 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp = icmp slt i32 %ret.1, 0
  br i1 %cmp, label %if.end6.cleanup_crit_edge, label %if.end8

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end6
  %isp_ready = getelementptr i8, ptr %sd, i32 800
  %6 = ptrtoint ptr %isp_ready to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %isp_ready, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %isp_ready, align 4
  %ver1.i = getelementptr i8, ptr %sd, i32 720
  %str2.i = getelementptr i8, ptr %sd, i32 730
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_32.i.i47) #8
  %7 = ptrtoint ptr %val_32.i.i47 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %val_32.i.i47, align 4, !annotation !161
  %call2.i.i = call fastcc i32 @m5mols_read(ptr noundef %sd, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %val_32.i.i47) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i48 = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i48, label %if.then.i, label %if.end.thread.i

if.end.thread.i:                                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_32.i.i47) #8
  br label %cleanup

if.then.i:                                        ; preds = %if.end8
  %8 = ptrtoint ptr %val_32.i.i47 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val_32.i.i47, align 4
  %conv.i.i = trunc i32 %9 to i8
  %10 = ptrtoint ptr %ver1.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv.i.i, ptr %ver1.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_32.i.i47) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_32.i149.i) #8
  %11 = ptrtoint ptr %val_32.i149.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %val_32.i149.i, align 4, !annotation !161
  %call2.i150.i = call fastcc i32 @m5mols_read(ptr noundef %sd, i32 noundef 1, i32 noundef 257, ptr noundef nonnull %val_32.i149.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i150.i)
  %tobool.not.i151.i = icmp eq i32 %call2.i150.i, 0
  br i1 %tobool.not.i151.i, label %if.then6.i, label %if.end.i

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_32.i149.i) #8
  br label %cleanup

if.then6.i:                                       ; preds = %if.then.i
  %project.i = getelementptr i8, ptr %sd, i32 721
  %12 = ptrtoint ptr %val_32.i149.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val_32.i149.i, align 4
  %conv.i152.i = trunc i32 %13 to i8
  %14 = ptrtoint ptr %project.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i152.i, ptr %project.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_32.i149.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_32.i156.i) #8
  %15 = ptrtoint ptr %val_32.i156.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %val_32.i156.i, align 4, !annotation !161
  %call2.i157.i = call fastcc i32 @m5mols_read(ptr noundef %sd, i32 noundef 2, i32 noundef 514, ptr noundef nonnull %val_32.i156.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i157.i)
  %tobool.not.i158.i = icmp eq i32 %call2.i157.i, 0
  br i1 %tobool.not.i158.i, label %if.then10.i, label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_32.i156.i) #8
  br label %cleanup

if.then10.i:                                      ; preds = %if.then6.i
  %fw.i = getelementptr i8, ptr %sd, i32 722
  %16 = ptrtoint ptr %val_32.i156.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val_32.i156.i, align 4
  %conv.i159.i = trunc i32 %17 to i16
  %18 = ptrtoint ptr %fw.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i159.i, ptr %fw.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_32.i156.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_32.i162.i) #8
  %19 = ptrtoint ptr %val_32.i162.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %val_32.i162.i, align 4, !annotation !161
  %call2.i163.i = call fastcc i32 @m5mols_read(ptr noundef %sd, i32 noundef 2, i32 noundef 1026, ptr noundef nonnull %val_32.i162.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i163.i)
  %tobool.not.i164.i = icmp eq i32 %call2.i163.i, 0
  br i1 %tobool.not.i164.i, label %if.then14.i, label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_32.i162.i) #8
  br label %cleanup

if.then14.i:                                      ; preds = %if.then10.i
  %hw.i = getelementptr i8, ptr %sd, i32 724
  %20 = ptrtoint ptr %val_32.i162.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val_32.i162.i, align 4
  %conv.i165.i = trunc i32 %21 to i16
  %22 = ptrtoint ptr %hw.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv.i165.i, ptr %hw.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_32.i162.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_32.i169.i) #8
  %23 = ptrtoint ptr %val_32.i169.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %val_32.i169.i, align 4, !annotation !161
  %call2.i170.i = call fastcc i32 @m5mols_read(ptr noundef %sd, i32 noundef 2, i32 noundef 1538, ptr noundef nonnull %val_32.i169.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i170.i)
  %tobool.not.i171.i = icmp eq i32 %call2.i170.i, 0
  br i1 %tobool.not.i171.i, label %if.then18.i, label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_32.i169.i) #8
  br label %cleanup

if.then18.i:                                      ; preds = %if.then14.i
  %param.i = getelementptr i8, ptr %sd, i32 726
  %24 = ptrtoint ptr %val_32.i169.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val_32.i169.i, align 4
  %conv.i172.i = trunc i32 %25 to i16
  %26 = ptrtoint ptr %param.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i172.i, ptr %param.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_32.i169.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_32.i176.i) #8
  %27 = ptrtoint ptr %val_32.i176.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %val_32.i176.i, align 4, !annotation !161
  %call2.i177.i = call fastcc i32 @m5mols_read(ptr noundef %sd, i32 noundef 2, i32 noundef 2050, ptr noundef nonnull %val_32.i176.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i177.i)
  %tobool.not.i178.i = icmp eq i32 %call2.i177.i, 0
  br i1 %tobool.not.i178.i, label %if.then22.i, label %if.end20.i

if.end20.i:                                       ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_32.i176.i) #8
  br label %cleanup

if.then22.i:                                      ; preds = %if.then18.i
  %awb.i = getelementptr i8, ptr %sd, i32 728
  %28 = ptrtoint ptr %val_32.i176.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val_32.i176.i, align 4
  %conv.i179.i = trunc i32 %29 to i16
  %30 = ptrtoint ptr %awb.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i179.i, ptr %awb.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_32.i176.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_32.i183.i) #8
  %31 = ptrtoint ptr %val_32.i183.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %val_32.i183.i, align 4, !annotation !161
  %call2.i184.i = call fastcc i32 @m5mols_read(ptr noundef %sd, i32 noundef 1, i32 noundef 657921, ptr noundef nonnull %val_32.i183.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i184.i)
  %tobool.not.i185.i = icmp eq i32 %call2.i184.i, 0
  br i1 %tobool.not.i185.i, label %if.end24.i, label %if.end24.thread226.i

if.end24.thread226.i:                             ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_32.i183.i) #8
  br label %cleanup

if.end24.i:                                       ; preds = %if.then22.i
  %af.i = getelementptr i8, ptr %sd, i32 752
  %32 = ptrtoint ptr %val_32.i183.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val_32.i183.i, align 4
  %conv.i186.i = trunc i32 %33 to i8
  %34 = ptrtoint ptr %af.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv.i186.i, ptr %af.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_32.i183.i) #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end24.i
  %i.0233.i = phi i32 [ 0, %if.end24.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_32.i190.i) #8
  %35 = ptrtoint ptr %val_32.i190.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %val_32.i190.i, align 4, !annotation !161
  %call2.i191.i = call fastcc i32 @m5mols_read(ptr noundef %sd, i32 noundef 1, i32 noundef 2561, ptr noundef nonnull %val_32.i190.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i191.i)
  %tobool.not.i192.i = icmp eq i32 %call2.i191.i, 0
  br i1 %tobool.not.i192.i, label %for.inc.i, label %m5mols_read_u8.exit196.i

m5mols_read_u8.exit196.i:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_32.i190.i) #8
  br label %cleanup

for.inc.i:                                        ; preds = %for.body.i
  %arrayidx.i = getelementptr i8, ptr %str2.i, i32 %i.0233.i
  %36 = ptrtoint ptr %val_32.i190.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val_32.i190.i, align 4
  %conv.i193.i = trunc i32 %37 to i8
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv.i193.i, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_32.i190.i) #8
  %inc.i = add nuw nsw i32 %i.0233.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 22
  br i1 %exitcond.not.i, label %do.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

do.end.i:                                         ; preds = %for.inc.i
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %39 = ptrtoint ptr %str2.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %str2.i, align 2
  %41 = zext i8 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.66)
  switch i8 %40, label %do.end.i.cond.end78.i_crit_edge [
    i8 83, label %land.lhs.true.i
    i8 79, label %land.lhs.true53.i
    i8 84, label %land.rhs.i
  ]

do.end.i.cond.end78.i_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end78.i

land.lhs.true.i:                                  ; preds = %do.end.i
  %arrayidx41.i = getelementptr i8, ptr %sd, i32 731
  %42 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx41.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 69, i8 %43)
  %cmp44.i = icmp eq i8 %43, 69
  br i1 %cmp44.i, label %land.lhs.true.i.cond.end78.i_crit_edge, label %land.lhs.true.i.cond.false62.thread.i_crit_edge

land.lhs.true.i.cond.false62.thread.i_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false62.thread.i

land.lhs.true.i.cond.end78.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end78.i

land.lhs.true53.i:                                ; preds = %do.end.i
  %arrayidx56.i = getelementptr i8, ptr %sd, i32 731
  %44 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx56.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %45)
  %cmp59.i = icmp eq i8 %45, 80
  br i1 %cmp59.i, label %land.lhs.true53.i.cond.end78.i_crit_edge, label %land.lhs.true53.i.cond.false62.thread.i_crit_edge

land.lhs.true53.i.cond.false62.thread.i_crit_edge: ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false62.thread.i

land.lhs.true53.i.cond.end78.i_crit_edge:         ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end78.i

cond.false62.thread.i:                            ; preds = %land.lhs.true53.i.cond.false62.thread.i_crit_edge, %land.lhs.true.i.cond.false62.thread.i_crit_edge
  br label %cond.end78.i

land.rhs.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx72.i = getelementptr i8, ptr %sd, i32 731
  %46 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx72.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %47)
  %cmp75.i = icmp eq i8 %47, 66
  %phi.sel.i = select i1 %cmp75.i, ptr @.str.55, ptr @.str.56
  br label %cond.end78.i

cond.end78.i:                                     ; preds = %land.rhs.i, %cond.false62.thread.i, %land.lhs.true53.i.cond.end78.i_crit_edge, %land.lhs.true.i.cond.end78.i_crit_edge, %do.end.i.cond.end78.i_crit_edge
  %cond79.i = phi ptr [ @.str.52, %land.lhs.true.i.cond.end78.i_crit_edge ], [ @.str.54, %land.lhs.true53.i.cond.end78.i_crit_edge ], [ %phi.sel.i, %land.rhs.i ], [ @.str.56, %cond.false62.thread.i ], [ @.str.56, %do.end.i.cond.end78.i_crit_edge ]
  %call80.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name.i, ptr noundef nonnull %cond79.i) #11
  %48 = ptrtoint ptr %ver1.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ver1.i, align 4
  %conv89.i = zext i8 %49 to i32
  %50 = ptrtoint ptr %project.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %project.i, align 1
  %conv92.i = zext i8 %51 to i32
  %call93.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %name.i, i32 noundef %conv89.i, i32 noundef %conv92.i) #11
  %52 = ptrtoint ptr %af.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %af.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool96.not.i = icmp eq i8 %53, 0
  br i1 %tobool96.not.i, label %do.end100.i, label %cond.end78.i.if.end13_crit_edge

cond.end78.i.if.end13_crit_edge:                  ; preds = %cond.end78.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

do.end100.i:                                      ; preds = %cond.end78.i
  call void @__sanitizer_cov_trace_pc() #10
  %call104.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %name.i) #11
  br label %if.end13

if.end13:                                         ; preds = %do.end100.i, %cond.end78.i.if.end13_crit_edge
  %call12 = tail call i32 @m5mols_update_fw(ptr noundef %sd, ptr noundef nonnull @m5mols_sensor_power)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool14.not = icmp eq i32 %call12, 0
  br i1 %tobool14.not, label %do.body, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end13
  %54 = load i32, ptr @m5mols_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp17 = icmp sgt i32 %54, 0
  br i1 %cmp17, label %do.end, label %do.body.do.end23_crit_edge

do.body.do.end23_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %name.i) #11
  br label %do.end23

do.end23:                                         ; preds = %do.end, %do.body.do.end23_crit_edge
  %call24 = tail call i32 @m5mols_write(ptr noundef %sd, i32 noundef 65537, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then26, label %do.end23.cleanup_crit_edge

do.end23.cleanup_crit_edge:                       ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then26:                                        ; preds = %do.end23
  %55 = ptrtoint ptr %af.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %af.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_32.i.i49) #8
  %call2.i.i51 = call fastcc i32 @m5mols_read(ptr noundef %sd, i32 noundef 1, i32 noundef 4097, ptr noundef nonnull %val_32.i.i49) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i51)
  %tobool.not.i.i52 = icmp eq i32 %call2.i.i51, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_32.i.i49) #8
  br i1 %tobool.not.i.i52, label %if.then.i53, label %if.then26.cleanup_crit_edge

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i53:                                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i = icmp eq i8 %56, 0
  %neg.i = select i1 %tobool.not.i, i32 10, i32 8
  %call6.i = tail call i32 @m5mols_write(ptr noundef %sd, i32 noundef 4353, i32 noundef %neg.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i53, %if.then26.cleanup_crit_edge, %do.end23.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %m5mols_read_u8.exit196.i, %if.end24.thread226.i, %if.end20.i, %if.end16.i, %if.end12.i, %if.end8.i, %if.end.i, %if.end.thread.i, %if.end6.cleanup_crit_edge, %do.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.end6.cleanup_crit_edge ], [ %call12, %if.end13.cleanup_crit_edge ], [ %call24, %do.end23.cleanup_crit_edge ], [ %call6.i, %if.then.i53 ], [ %call2.i.i51, %if.then26.cleanup_crit_edge ], [ %call2.i150.i, %if.end.i ], [ %call2.i.i, %if.end.thread.i ], [ %call2.i157.i, %if.end8.i ], [ %call2.i163.i, %if.end12.i ], [ %call2.i170.i, %if.end16.i ], [ %call2.i177.i, %if.end20.i ], [ %call2.i184.i, %if.end24.thread226.i ], [ %call2.i191.i, %m5mols_read_u8.exit196.i ], [ -16, %do.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @m5mols_init_controls(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m5mols_log_status(ptr noundef %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handle = getelementptr i8, ptr %sd, i32 284
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  tail call void @v4l2_ctrl_handler_log_status(ptr noundef %handle, ptr noundef %name) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m5mols_s_power(ptr noundef %sd, i32 noundef %on) #0 align 64 {
entry:
  %val_32.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -4
  %lock = getelementptr i8, ptr %sd, i32 528
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @m5mols_sensor_power(ptr noundef %add.ptr.i, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.then.if.end27_crit_edge

if.then.if.end27_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call fastcc i32 @m5mols_fw_start(ptr noundef %sd)
  br label %if.end27

if.else:                                          ; preds = %entry
  %str = getelementptr i8, ptr %sd, i32 730
  %0 = ptrtoint ptr %str to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %str, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 84, i8 %1)
  %cmp = icmp eq i8 %1, 84
  br i1 %cmp, label %land.lhs.true, label %if.else.if.end25_crit_edge

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

land.lhs.true:                                    ; preds = %if.else
  %arrayidx9 = getelementptr i8, ptr %sd, i32 731
  %2 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %3)
  %cmp12 = icmp eq i8 %3, 66
  br i1 %cmp12, label %if.then14, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then14:                                        ; preds = %land.lhs.true
  %call15 = tail call i32 @m5mols_set_mode(ptr noundef %add.ptr.i, i8 noundef zeroext 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %if.then14.if.end19_crit_edge

if.then14.if.end19_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then17:                                        ; preds = %if.then14
  %call.i = tail call i32 @m5mols_write(ptr noundef %sd, i32 noundef 655873, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then17.if.end19_crit_edge

if.then17.if.end19_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.end.i:                                         ; preds = %if.then17
  %call2.i = tail call i32 @m5mols_write(ptr noundef %sd, i32 noundef 655617, i32 noundef 7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end.i.if.end19_crit_edge

if.end.i.if.end19_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then4.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %.neg14.i = sub i32 -25, %4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i.do.body.i.i_crit_edge, %if.then4.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_32.i.i.i) #8
  %5 = ptrtoint ptr %val_32.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %val_32.i.i.i, align 4, !annotation !161
  %call2.i25.i.i = call fastcc i32 @m5mols_read(ptr noundef %sd, i32 noundef 1, i32 noundef 3073, ptr noundef nonnull %val_32.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i25.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call2.i25.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true4.i.i, label %m5mols_read_u8.exit.i.i

m5mols_read_u8.exit.i.i:                          ; preds = %do.body.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_32.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i25.i.i)
  %cmp2.i.i = icmp slt i32 %call2.i25.i.i, 0
  br i1 %cmp2.i.i, label %m5mols_read_u8.exit.i.i.do.end_crit_edge, label %m5mols_read_u8.exit.i.i.do.cond.i.i_crit_edge

m5mols_read_u8.exit.i.i.do.cond.i.i_crit_edge:    ; preds = %m5mols_read_u8.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.i.i

m5mols_read_u8.exit.i.i.do.end_crit_edge:         ; preds = %m5mols_read_u8.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true4.i.i:                               ; preds = %do.body.i.i
  %6 = ptrtoint ptr %val_32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val_32.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_32.i.i.i) #8
  %and5.i.i = and i32 %7, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and5.i.i)
  %cmp8.i.i = icmp eq i32 %and5.i.i, 4
  br i1 %cmp8.i.i, label %land.lhs.true4.i.i.if.end25_crit_edge, label %land.lhs.true4.i.i.do.cond.i.i_crit_edge

land.lhs.true4.i.i.do.cond.i.i_crit_edge:         ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.i.i

land.lhs.true4.i.i.if.end25_crit_edge:            ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

do.cond.i.i:                                      ; preds = %land.lhs.true4.i.i.do.cond.i.i_crit_edge, %m5mols_read_u8.exit.i.i.do.cond.i.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 250, i32 noundef 2) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %.neg14.i, %8
  %cmp14.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp14.i.i, label %do.cond.i.i.do.body.i.i_crit_edge, label %do.cond.i.i.do.end_crit_edge

do.cond.i.i.do.end_crit_edge:                     ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.cond.i.i.do.body.i.i_crit_edge:                ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

if.end19:                                         ; preds = %if.end.i.if.end19_crit_edge, %if.then17.if.end19_crit_edge, %if.then14.if.end19_crit_edge
  %ret.0 = phi i32 [ %call15, %if.then14.if.end19_crit_edge ], [ %call2.i, %if.end.i.if.end19_crit_edge ], [ %call.i, %if.then17.if.end19_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp20 = icmp slt i32 %ret.0, 0
  br i1 %cmp20, label %if.end19.do.end_crit_edge, label %if.end19.if.end25_crit_edge

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.end19.do.end_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %if.end19.do.end_crit_edge, %do.cond.i.i.do.end_crit_edge, %m5mols_read_u8.exit.i.i.do.end_crit_edge
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name) #11
  br label %if.end25

if.end25:                                         ; preds = %do.end, %if.end19.if.end25_crit_edge, %land.lhs.true4.i.i.if.end25_crit_edge, %land.lhs.true.if.end25_crit_edge, %if.else.if.end25_crit_edge
  %dev_priv.i.i = getelementptr i8, ptr %sd, i32 152
  %9 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_priv.i.i, align 4
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 4
  %power.i = getelementptr i8, ptr %sd, i32 800
  %13 = ptrtoint ptr %power.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i = load i8, ptr %power.i, align 4
  %14 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %if.end25.m5mols_sensor_power.exit_crit_edge, label %if.end.i42

if.end25.m5mols_sensor_power.exit_crit_edge:      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %m5mols_sensor_power.exit

if.end.i42:                                       ; preds = %if.end25
  %call30.i = tail call i32 @regulator_bulk_disable(i32 noundef 6, ptr noundef nonnull @supplies) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %if.end.i42.m5mols_sensor_power.exit_crit_edge

if.end.i42.m5mols_sensor_power.exit_crit_edge:    ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #10
  br label %m5mols_sensor_power.exit

if.end33.i:                                       ; preds = %if.end.i42
  %set_power34.i = getelementptr i8, ptr %sd, i32 524
  %16 = ptrtoint ptr %set_power34.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_power34.i, align 4
  %tobool35.not.i = icmp eq ptr %17, null
  br i1 %tobool35.not.i, label %if.end33.i.if.end40.i_crit_edge, label %if.then36.i

if.end33.i.if.end40.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40.i

if.then36.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev38.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  %call39.i = tail call i32 %17(ptr noundef %dev38.i, i32 noundef 0) #8
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then36.i, %if.end33.i.if.end40.i_crit_edge
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %12, align 4
  %reset_polarity42.i = getelementptr inbounds %struct.m5mols_platform_data, ptr %12, i32 0, i32 1
  %20 = ptrtoint ptr %reset_polarity42.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %reset_polarity42.i, align 4
  %conv43.i = zext i8 %21 to i32
  %call.i80.i = tail call ptr @gpio_to_desc(i32 noundef %19) #8
  tail call void @gpiod_set_raw_value(ptr noundef %call.i80.i, i32 noundef %conv43.i) #8
  %22 = ptrtoint ptr %power.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load44.i = load i8, ptr %power.i, align 4
  %bf.clear49.i = and i8 %bf.load44.i, 63
  store i8 %bf.clear49.i, ptr %power.i, align 4
  br label %m5mols_sensor_power.exit

m5mols_sensor_power.exit:                         ; preds = %if.end40.i, %if.end.i42.m5mols_sensor_power.exit_crit_edge, %if.end25.m5mols_sensor_power.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end40.i ], [ 0, %if.end25.m5mols_sensor_power.exit_crit_edge ], [ %call30.i, %if.end.i42.m5mols_sensor_power.exit_crit_edge ]
  %23 = ptrtoint ptr %power.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load = load i8, ptr %power.i, align 4
  %bf.clear = and i8 %bf.load, -33
  store i8 %bf.clear, ptr %power.i, align 4
  br label %if.end27

if.end27:                                         ; preds = %m5mols_sensor_power.exit, %if.then3, %if.then.if.end27_crit_edge
  %ret.1 = phi i32 [ %call1, %if.then.if.end27_crit_edge ], [ %call4, %if.then3 ], [ %retval.0.i, %m5mols_sensor_power.exit ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_log_status(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m5mols_s_stream(ptr noundef %sd, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -4
  %lock = getelementptr i8, ptr %sd, i32 528
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.else9, label %if.then

if.then:                                          ; preds = %entry
  %res_type = getelementptr i8, ptr %sd, i32 716
  %0 = ptrtoint ptr %res_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %res_type, align 4
  %code1 = getelementptr %struct.m5mols_info, ptr %add.ptr.i, i32 0, i32 18, i32 %1, i32 2
  %2 = ptrtoint ptr %code1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code1, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %3, label %if.then.if.end11_crit_edge [
    i32 8199, label %if.then2
    i32 16385, label %if.then5
  ]

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then2:                                         ; preds = %if.then
  %call.i = tail call i32 @m5mols_set_mode(ptr noundef %add.ptr.i, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then2.if.end11_crit_edge

if.then2.if.end11_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end.i:                                         ; preds = %if.then2
  %resolution.i = getelementptr i8, ptr %sd, i32 801
  %5 = ptrtoint ptr %resolution.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %resolution.i, align 1
  %conv.i = zext i8 %6 to i32
  %call2.i = tail call i32 @m5mols_write(ptr noundef %sd, i32 noundef 65793, i32 noundef %conv.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end6.i, label %if.end.i.if.end11_crit_edge

if.end.i.if.end11_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end6.i:                                        ; preds = %if.end.i
  %call5.i = tail call i32 @m5mols_write(ptr noundef %sd, i32 noundef 66049, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool7.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool7.not.i, label %if.end10.i, label %if.end6.i.if.end11_crit_edge

if.end6.i.if.end11_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end10.i:                                       ; preds = %if.end6.i
  %call9.i = tail call i32 @m5mols_set_mode(ptr noundef %add.ptr.i, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool11.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end10.i.if.end11_crit_edge

if.end10.i.if.end11_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then12.i:                                      ; preds = %if.end10.i
  %ctrl_sync.i.i = getelementptr i8, ptr %sd, i32 800
  %7 = ptrtoint ptr %ctrl_sync.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i.i = load i8, ptr %ctrl_sync.i.i, align 4
  %8 = and i8 %bf.load.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then12.i.if.end11_crit_edge

if.then12.i.if.end11_crit_edge:                   ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end.i.i:                                       ; preds = %if.then12.i
  %call.i.i = tail call i32 @m5mols_do_scenemode(ptr noundef %add.ptr.i, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %if.end3.i.i, label %if.end.i.i.if.end11_crit_edge

if.end.i.i.if.end11_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %handle.i.i = getelementptr i8, ptr %sd, i32 284
  %call4.i.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %handle.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  %9 = ptrtoint ptr %ctrl_sync.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load7.i.i = load i8, ptr %ctrl_sync.i.i, align 4
  %bf.shl.i.i = select i1 %tobool5.not.i.i, i8 32, i8 0
  %bf.clear8.i.i = and i8 %bf.load7.i.i, -33
  %bf.set.i.i = or i8 %bf.clear8.i.i, %bf.shl.i.i
  store i8 %bf.set.i.i, ptr %ctrl_sync.i.i, align 4
  br label %if.end11

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 @m5mols_start_capture(ptr noundef %add.ptr.i) #8
  br label %if.end11

if.else9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 @m5mols_set_mode(ptr noundef %add.ptr.i, i8 noundef zeroext 1)
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.then5, %if.end3.i.i, %if.end.i.i.if.end11_crit_edge, %if.then12.i.if.end11_crit_edge, %if.end10.i.if.end11_crit_edge, %if.end6.i.if.end11_crit_edge, %if.end.i.if.end11_crit_edge, %if.then2.if.end11_crit_edge, %if.then.if.end11_crit_edge
  %ret.0 = phi i32 [ %call6, %if.then5 ], [ %call10, %if.else9 ], [ -22, %if.then.if.end11_crit_edge ], [ %call9.i, %if.end10.i.if.end11_crit_edge ], [ %call4.i.i, %if.end3.i.i ], [ 0, %if.then12.i.if.end11_crit_edge ], [ %call.i.i, %if.end.i.i.if.end11_crit_edge ], [ %call5.i, %if.end6.i.if.end11_crit_edge ], [ %call2.i, %if.end.i.if.end11_crit_edge ], [ %call.i, %if.then2.if.end11_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @m5mols_start_capture(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @m5mols_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr noundef %code) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %code, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %code2 = getelementptr [2 x %struct.v4l2_mbus_framefmt], ptr @m5mols_default_ffmt, i32 0, i32 %1, i32 2
  %2 = ptrtoint ptr %code2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code2, align 4
  %code3 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %4 = ptrtoint ptr %code3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %code3, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m5mols_get_fmt(ptr noundef %sd, ptr noundef readonly %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %sd, i32 528
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %tobool.not.i = icmp eq ptr %sd_state, null
  br i1 %tobool.not.i, label %if.then.i.if.end_crit_edge, label %cond.true.i

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

cond.true.i:                                      ; preds = %if.then.i
  %num_pads.i.i = getelementptr i8, ptr %sd, i32 32
  %2 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.i.i = icmp eq i16 %3, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %cond.true.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !165

cond.true.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %cond.true.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %4 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sd_state, align 4
  br label %__find_format.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -4
  %res_type = getelementptr i8, ptr %sd, i32 716
  %6 = ptrtoint ptr %res_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %res_type, align 4
  %arrayidx.i = getelementptr %struct.m5mols_info, ptr %add.ptr.i, i32 0, i32 18, i32 %7
  br label %__find_format.exit

__find_format.exit:                               ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i, %if.end.i ], [ %5, %v4l2_subdev_get_try_format.exit.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %__find_format.exit.if.end_crit_edge, label %if.then

__find_format.exit.if.end_crit_edge:              ; preds = %__find_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %__find_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  %format2 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %format2, ptr %retval.0.i, i32 48)
  br label %if.end

if.end:                                           ; preds = %if.then, %__find_format.exit.if.end_crit_edge, %if.then.i.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.then ], [ -22, %__find_format.exit.if.end_crit_edge ], [ -22, %if.then.i.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m5mols_set_fmt(ptr noundef %sd, ptr noundef readonly %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %1)
  %cond.i.i = icmp eq i32 %1, 16385
  %spec.select.i.i = zext i1 %cond.i.i to i32
  %height8.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end21.i.while.body.i_crit_edge, %entry
  %dec6.i = phi i32 [ 36, %entry ], [ %dec.i, %if.end21.i.while.body.i_crit_edge ]
  %fsize.04.i = phi ptr [ @m5mols_reg_res, %entry ], [ %incdec.ptr.i, %if.end21.i.while.body.i_crit_edge ]
  %min_err.03.i = phi i32 [ -1, %entry ], [ %min_err.1.i, %if.end21.i.while.body.i_crit_edge ]
  %match.02.i = phi ptr [ null, %entry ], [ %match.1.i, %if.end21.i.while.body.i_crit_edge ]
  %type1.i = getelementptr inbounds %struct.m5mols_resolution, ptr %fsize.04.i, i32 0, i32 1
  %2 = ptrtoint ptr %type1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %spec.select.i.i)
  %cmp.i = icmp eq i32 %3, %spec.select.i.i
  br i1 %cmp.i, label %if.then.i, label %while.body.i.if.end21.i_crit_edge

while.body.i.if.end21.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %width.i = getelementptr inbounds %struct.m5mols_resolution, ptr %fsize.04.i, i32 0, i32 2
  %4 = ptrtoint ptr %width.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %width.i, align 4
  %conv.i = zext i16 %5 to i32
  %6 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %format1, align 4
  %sub.i = sub i32 %conv.i, %7
  %8 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #8
  %height.i = getelementptr inbounds %struct.m5mols_resolution, ptr %fsize.04.i, i32 0, i32 3
  %9 = ptrtoint ptr %height.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %height.i, align 2
  %conv7.i = zext i16 %10 to i32
  %11 = ptrtoint ptr %height8.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height8.i, align 4
  %sub9.i = sub i32 %conv7.i, %12
  %13 = tail call i32 @llvm.abs.i32(i32 %sub9.i, i1 false) #8
  %add.i = add i32 %13, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %min_err.03.i)
  %cmp18.i = icmp ult i32 %add.i, %min_err.03.i
  %spec.select.i = select i1 %cmp18.i, ptr %fsize.04.i, ptr %match.02.i
  %14 = tail call i32 @llvm.umin.i32(i32 %add.i, i32 %min_err.03.i) #8
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then.i, %while.body.i.if.end21.i_crit_edge
  %match.1.i = phi ptr [ %match.02.i, %while.body.i.if.end21.i_crit_edge ], [ %spec.select.i, %if.then.i ]
  %min_err.1.i = phi i32 [ %min_err.03.i, %while.body.i.if.end21.i_crit_edge ], [ %14, %if.then.i ]
  %incdec.ptr.i = getelementptr %struct.m5mols_resolution, ptr %fsize.04.i, i32 1
  %dec.i = add nsw i32 %dec6.i, -1
  %tobool.not.i = icmp eq i32 %dec6.i, 0
  br i1 %tobool.not.i, label %while.end.i, label %if.end21.i.while.body.i_crit_edge

if.end21.i.while.body.i_crit_edge:                ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.i:                                      ; preds = %if.end21.i
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -4
  %tobool22.not.i = icmp eq ptr %match.1.i, null
  br i1 %tobool22.not.i, label %while.end.i.cleanup_crit_edge, label %if.end

while.end.i.cleanup_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %while.end.i
  %width24.i = getelementptr inbounds %struct.m5mols_resolution, ptr %match.1.i, i32 0, i32 2
  %15 = ptrtoint ptr %width24.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %width24.i, align 4
  %conv25.i = zext i16 %16 to i32
  %17 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv25.i, ptr %format1, align 4
  %height27.i = getelementptr inbounds %struct.m5mols_resolution, ptr %match.1.i, i32 0, i32 3
  %18 = ptrtoint ptr %height27.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %height27.i, align 2
  %conv28.i = zext i16 %19 to i32
  %20 = ptrtoint ptr %height8.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv28.i, ptr %height8.i, align 4
  %21 = ptrtoint ptr %match.1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %match.1.i, align 4
  %23 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i32 = icmp eq i32 %24, 0
  br i1 %cmp.i32, label %if.then.i34, label %if.end.i

if.then.i34:                                      ; preds = %if.end
  %tobool.not.i33 = icmp eq ptr %sd_state, null
  br i1 %tobool.not.i33, label %if.then.i34.cleanup_crit_edge, label %cond.true.i

if.then.i34.cleanup_crit_edge:                    ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.true.i:                                      ; preds = %if.then.i34
  %num_pads.i.i = getelementptr i8, ptr %sd, i32 32
  %25 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp.i.i = icmp eq i16 %26, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %cond.true.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !165

cond.true.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %cond.true.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %27 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sd_state, align 4
  br label %__find_format.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.m5mols_info, ptr %add.ptr.i, i32 0, i32 18, i32 %spec.select.i.i
  br label %__find_format.exit

__find_format.exit:                               ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i35 = phi ptr [ %arrayidx.i, %if.end.i ], [ %28, %v4l2_subdev_get_try_format.exit.i ]
  %tobool.not = icmp eq ptr %retval.0.i35, null
  br i1 %tobool.not, label %__find_format.exit.cleanup_crit_edge, label %if.end5

__find_format.exit.cleanup_crit_edge:             ; preds = %__find_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %__find_format.exit
  %lock = getelementptr i8, ptr %sd, i32 528
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %code = getelementptr [2 x %struct.v4l2_mbus_framefmt], ptr @m5mols_default_ffmt, i32 0, i32 %spec.select.i.i, i32 2
  %29 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %code, align 4
  %31 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %code.i, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %32 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 7, ptr %colorspace, align 4
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %33 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %field, align 4
  %34 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp8 = icmp eq i32 %35, 1
  br i1 %cmp8, label %if.then9, label %if.end5.if.end11_crit_edge

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %36 = call ptr @memcpy(ptr %retval.0.i35, ptr %format1, i32 48)
  %resolution10 = getelementptr i8, ptr %sd, i32 801
  %37 = ptrtoint ptr %resolution10 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %22, ptr %resolution10, align 1
  %res_type = getelementptr i8, ptr %sd, i32 716
  %38 = ptrtoint ptr %res_type to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %spec.select.i.i, ptr %res_type, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end5.if.end11_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %__find_format.exit.cleanup_crit_edge, %if.then.i34.cleanup_crit_edge, %while.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ 0, %__find_format.exit.cleanup_crit_edge ], [ -22, %while.end.i.cleanup_crit_edge ], [ 0, %if.then.i34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m5mols_get_frame_desc(ptr noundef %sd, i32 noundef %pad, ptr noundef writeonly %fd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pad)
  %cmp.not = icmp ne i32 %pad, 0
  %cmp1 = icmp eq ptr %fd, null
  %or.cond = or i1 %cmp.not, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr i8, ptr %sd, i32 528
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %buf_size = getelementptr i8, ptr %sd, i32 784
  %0 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buf_size, align 4
  %length = getelementptr inbounds %struct.v4l2_mbus_frame_desc_entry, ptr %fd, i32 0, i32 2
  %2 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %length, align 4
  %code = getelementptr i8, ptr %sd, i32 676
  %3 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %code, align 4
  %pixelcode = getelementptr inbounds %struct.v4l2_mbus_frame_desc_entry, ptr %fd, i32 0, i32 1
  %5 = ptrtoint ptr %pixelcode to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %pixelcode, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #8
  %6 = ptrtoint ptr %fd to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %fd, align 4
  %num_entries = getelementptr inbounds %struct.v4l2_mbus_frame_desc, ptr %fd, i32 0, i32 1
  %7 = ptrtoint ptr %num_entries to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %num_entries, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m5mols_set_frame_desc(ptr noundef %sd, i32 noundef %pad, ptr noundef %fd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pad)
  %cmp.not = icmp ne i32 %pad, 0
  %cmp1 = icmp eq ptr %fd, null
  %or.cond = or i1 %cmp.not, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr i8, ptr %sd, i32 668
  %0 = ptrtoint ptr %fd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %fd, align 4
  %num_entries = getelementptr inbounds %struct.v4l2_mbus_frame_desc, ptr %fd, i32 0, i32 1
  %1 = ptrtoint ptr %num_entries to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 1, ptr %num_entries, align 4
  %length = getelementptr inbounds %struct.v4l2_mbus_frame_desc_entry, ptr %fd, i32 0, i32 2
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length, align 4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %height = getelementptr i8, ptr %sd, i32 672
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  %mul = mul i32 %7, %5
  %8 = tail call i32 @llvm.umax.i32(i32 %3, i32 %mul)
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 5242880)
  %10 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %length, align 4
  %lock = getelementptr i8, ptr %sd, i32 528
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %11 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length, align 4
  %buf_size = getelementptr i8, ptr %sd, i32 784
  %13 = ptrtoint ptr %buf_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %buf_size, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m5mols_open(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %fh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %cmp.i = icmp eq i16 %3, 0
  br i1 %cmp.i, label %do.end.i, label %entry.v4l2_subdev_get_try_format.exit_crit_edge, !prof !165

entry.v4l2_subdev_get_try_format.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %entry.v4l2_subdev_get_try_format.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = call ptr @memcpy(ptr %5, ptr @m5mols_default_ffmt, i32 48)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33, !35, !37, !39, !41, !42, !44, !45, !47, !48, !49, !50, !52, !54, !56, !57, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !73, !74, !75, !77, !78, !79, !81, !82, !84, !85, !87, !88, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !112, !113, !114, !116, !118, !120, !122, !124, !126, !128, !129, !130, !131, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !144, !145, !146, !148, !149, !150}
!llvm.module.flags = !{!152, !153, !154, !155, !156, !157, !158, !159}
!llvm.ident = !{!160}

!0 = !{ptr @__param_m5mols_debug, !1, !"__param_m5mols_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 30, i32 1}
!2 = !{ptr @__UNIQUE_ID_m5mols_debugtype292, !1, !"__UNIQUE_ID_m5mols_debugtype292", i1 false, i1 false}
!3 = !{ptr @.str, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 191, i32 3}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @m5mols_read_u8._entry, !4, !"_entry", i1 false, i1 false}
!8 = !{ptr @m5mols_read_u8._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 209, i32 3}
!11 = !{ptr @m5mols_read_u16._entry, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @m5mols_read_u16._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 224, i32 3}
!15 = !{ptr @m5mols_read_u32._entry, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @m5mols_read_u32._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 255, i32 3}
!19 = !{ptr @m5mols_write._entry, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @m5mols_write._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 278, i32 3}
!23 = !{ptr @m5mols_write._entry.6, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @m5mols_write._entry_ptr.8, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 418, i32 3}
!27 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @m5mols_set_mode._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @m5mols_set_mode._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @__initcall__kmod_m5mols__297_1058_m5mols_i2c_driver_init6, !31, !"__initcall__kmod_m5mols__297_1058_m5mols_i2c_driver_init6", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 1058, i32 1}
!32 = !{ptr @__exitcall_m5mols_i2c_driver_exit, !31, !"__exitcall_m5mols_i2c_driver_exit", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_author298, !34, !"__UNIQUE_ID_author298", i1 false, i1 false}
!34 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 1060, i32 1}
!35 = !{ptr @__UNIQUE_ID_author299, !36, !"__UNIQUE_ID_author299", i1 false, i1 false}
!36 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 1061, i32 1}
!37 = !{ptr @__UNIQUE_ID_description300, !38, !"__UNIQUE_ID_description300", i1 false, i1 false}
!38 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 1062, i32 1}
!39 = !{ptr @__UNIQUE_ID_file301, !40, !"__UNIQUE_ID_file301", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 1063, i32 1}
!41 = !{ptr @__UNIQUE_ID_license302, !40, !"__UNIQUE_ID_license302", i1 false, i1 false}
!42 = !{ptr @m5mols_debug, !43, !"m5mols_debug", i1 false, i1 false}
!43 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 29, i32 5}
!44 = !{ptr @__param_str_m5mols_debug, !1, !"__param_str_m5mols_debug", i1 false, i1 false}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 179, i32 3}
!47 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @m5mols_read._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @m5mols_read._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 1051, i32 11}
!52 = !{ptr @m5mols_i2c_driver, !53, !"m5mols_i2c_driver", i1 false, i1 false}
!53 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 1049, i32 26}
!54 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 953, i32 3}
!56 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @m5mols_probe._entry, !55, !"_entry", i1 false, i1 false}
!60 = !{ptr @m5mols_probe._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 958, i32 3}
!63 = !{ptr @m5mols_probe._entry.18, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @m5mols_probe._entry_ptr.20, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 963, i32 3}
!67 = !{ptr @m5mols_probe._entry.21, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @m5mols_probe._entry_ptr.23, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 977, i32 9}
!71 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 979, i32 3}
!73 = !{ptr @m5mols_probe._entry.25, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @m5mols_probe._entry_ptr.27, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 986, i32 3}
!77 = !{ptr @m5mols_probe._entry.28, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @m5mols_probe._entry_ptr.30, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @m5mols_probe.__key, !80, !"__key", i1 false, i1 false}
!80 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 1003, i32 2}
!81 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @m5mols_probe.__key.32, !83, !"__key", i1 false, i1 false}
!83 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 1004, i32 2}
!84 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 1009, i32 3}
!87 = !{ptr @m5mols_probe._entry.34, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @m5mols_probe._entry_ptr.36, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 38, i32 13}
!91 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 40, i32 13}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 42, i32 13}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 44, i32 13}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 46, i32 13}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 48, i32 13}
!101 = !{ptr @supplies, !102, !"supplies", i1 false, i1 false}
!102 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 36, i32 35}
!103 = !{ptr @m5mols_ops, !104, !"m5mols_ops", i1 false, i1 false}
!104 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 927, i32 37}
!105 = !{ptr @m5mols_core_ops, !106, !"m5mols_core_ops", i1 false, i1 false}
!106 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 905, i32 42}
!107 = distinct !{null, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 880, i32 7}
!109 = !{ptr @.str.44, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 885, i32 5}
!111 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @m5mols_s_power._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @m5mols_s_power._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @m5mols_video_ops, !115, !"m5mols_video_ops", i1 false, i1 false}
!115 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 747, i32 43}
!116 = !{ptr @m5mols_pad_ops, !117, !"m5mols_pad_ops", i1 false, i1 false}
!117 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 665, i32 41}
!118 = !{ptr @.str.46, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!120 = !{ptr @m5mols_reg_res, !121, !"m5mols_reg_res", i1 false, i1 false}
!121 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 70, i32 39}
!122 = !{ptr @m5mols_subdev_internal_ops, !123, !"m5mols_subdev_internal_ops", i1 false, i1 false}
!123 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 923, i32 46}
!124 = !{ptr @m5mols_default_ffmt, !125, !"m5mols_default_ffmt", i1 false, i1 false}
!125 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 52, i32 34}
!126 = !{ptr @.str.47, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 835, i32 2}
!128 = !{ptr @.str.48, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @m5mols_fw_start._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @m5mols_fw_start._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.49, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 464, i32 2}
!133 = !{ptr @.str.50, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @m5mols_get_version._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @m5mols_get_version._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = distinct !{null, !132, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.52, !132, !"<string literal>", i1 false, i1 false}
!138 = distinct !{null, !132, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.54, !132, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.55, !132, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.56, !132, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.58, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 471, i32 2}
!144 = !{ptr @m5mols_get_version._entry.57, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @m5mols_get_version._entry_ptr.59, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.61, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 475, i32 3}
!148 = !{ptr @m5mols_get_version._entry.60, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @m5mols_get_version._entry_ptr.62, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @m5mols_id, !151, !"m5mols_id", i1 false, i1 false}
!151 = !{!"../drivers/media/i2c/m5mols/m5mols_core.c", i32 1043, i32 35}
!152 = !{i32 1, !"wchar_size", i32 2}
!153 = !{i32 1, !"min_enum_size", i32 4}
!154 = !{i32 8, !"branch-target-enforcement", i32 0}
!155 = !{i32 8, !"sign-return-address", i32 0}
!156 = !{i32 8, !"sign-return-address-all", i32 0}
!157 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!158 = !{i32 7, !"uwtable", i32 1}
!159 = !{i32 7, !"frame-pointer", i32 2}
!160 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!161 = !{!"auto-init"}
!162 = !{i64 2148367701}
!163 = !{i64 852524, i64 852549, i64 852571, i64 852587, i64 852599, i64 852619, i64 852643, i64 852659, i64 852671}
!164 = !{i64 2148367889}
!165 = !{!"branch_weights", i32 1, i32 2000}
