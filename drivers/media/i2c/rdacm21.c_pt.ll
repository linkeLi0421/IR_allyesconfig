; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/rdacm21.c_pt.bc'
source_filename = "../drivers/media/i2c/rdacm21.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ov490_reg = type { i16, i8 }
%struct.atomic_t = type { i32 }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.rdacm21_device = type { ptr, %struct.max9271_device, ptr, %struct.v4l2_subdev, %struct.media_pad, %struct.v4l2_mbus_framefmt, %struct.v4l2_ctrl_handler, [2 x i32], i16 }
%struct.max9271_device = type { ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }

@__initcall__kmod_rdacm21__296_644_rdacm21_i2c_driver_init6 = internal global ptr @rdacm21_i2c_driver_init, section ".initcall6.init", align 4
@rdacm21_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @rdacm21_remove, ptr @rdacm21_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rdacm21_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_rdacm21_i2c_driver_exit = internal global ptr @rdacm21_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description297 = internal constant [51 x i8] c"rdacm21.description=GMSL Camera driver for RDACM21\00", section ".modinfo", align 1
@__UNIQUE_ID_author298 = internal constant [28 x i8] c"rdacm21.author=Jacopo Mondi\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [39 x i8] c"rdacm21.file=drivers/media/i2c/rdacm21\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [23 x i8] c"rdacm21.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rdacm21\00", [24 x i8] zeroinitializer }, align 32
@rdacm21_of_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"imi,rdacm21\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@rdacm21_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 558, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid DT reg property: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rdacm21_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/i2c/rdacm21.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rdacm21_probe._entry_ptr = internal global ptr @rdacm21_probe._entry, section ".printk_index", align 4
@rdacm21_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @rdacm21_video_ops, ptr null, ptr null, ptr null, ptr @rdacm21_subdev_pad_ops }, [32 x i8] zeroinitializer }, align 32
@rdacm21_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rdacm21:575:(&dev->ctrls)->_lock\00", [63 x i8] zeroinitializer }, align 32
@rdacm21_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 595, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to get endpoint in node %pOF\0A\00", [59 x i8] zeroinitializer }, align 32
@rdacm21_probe._entry_ptr.10 = internal global ptr @rdacm21_probe._entry.8, section ".printk_index", align 4
@ov490_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 406, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"OV490 PID read failed (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ov490_initialize\00", [47 x i8] zeroinitializer }, align 32
@ov490_initialize._entry_ptr = internal global ptr @ov490_initialize._entry, section ".printk_index", align 4
@ov490_initialize._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.4, i32 416, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"OV490 ID mismatch (0x%04x)\0A\00", [36 x i8] zeroinitializer }, align 32
@ov490_initialize._entry_ptr.15 = internal global ptr @ov490_initialize._entry.13, section ".printk_index", align 4
@ov490_initialize._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.4, i32 428, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Timeout waiting for firmware boot\0A\00", [61 x i8] zeroinitializer }, align 32
@ov490_initialize._entry_ptr.18 = internal global ptr @ov490_initialize._entry.16, section ".printk_index", align 4
@ov490_regs_wizard = internal constant { [57 x %struct.ov490_reg], [60 x i8] } { [57 x %struct.ov490_reg] [%struct.ov490_reg { i16 -3, i8 -128 }, %struct.ov490_reg { i16 -2, i8 -126 }, %struct.ov490_reg { i16 113, i8 17 }, %struct.ov490_reg { i16 117, i8 17 }, %struct.ov490_reg { i16 -2, i8 41 }, %struct.ov490_reg { i16 24592, i8 1 }, %struct.ov490_reg { i16 -8192, i8 20 }, %struct.ov490_reg { i16 -2, i8 40 }, %struct.ov490_reg { i16 24576, i8 4 }, %struct.ov490_reg { i16 24580, i8 0 }, %struct.ov490_reg { i16 24584, i8 0 }, %struct.ov490_reg { i16 -2, i8 -128 }, %struct.ov490_reg { i16 145, i8 0 }, %struct.ov490_reg { i16 187, i8 29 }, %struct.ov490_reg { i16 -2, i8 -123 }, %struct.ov490_reg { i16 8, i8 0 }, %struct.ov490_reg { i16 9, i8 1 }, %struct.ov490_reg { i16 10, i8 5 }, %struct.ov490_reg { i16 11, i8 0 }, %struct.ov490_reg { i16 48, i8 2 }, %struct.ov490_reg { i16 49, i8 0 }, %struct.ov490_reg { i16 50, i8 0 }, %struct.ov490_reg { i16 51, i8 0 }, %struct.ov490_reg { i16 56, i8 2 }, %struct.ov490_reg { i16 57, i8 0 }, %struct.ov490_reg { i16 58, i8 0 }, %struct.ov490_reg { i16 59, i8 0 }, %struct.ov490_reg { i16 112, i8 44 }, %struct.ov490_reg { i16 113, i8 1 }, %struct.ov490_reg { i16 114, i8 0 }, %struct.ov490_reg { i16 115, i8 0 }, %struct.ov490_reg { i16 116, i8 100 }, %struct.ov490_reg { i16 117, i8 0 }, %struct.ov490_reg { i16 118, i8 0 }, %struct.ov490_reg { i16 119, i8 0 }, %struct.ov490_reg { i16 0, i8 20 }, %struct.ov490_reg { i16 1, i8 0 }, %struct.ov490_reg { i16 2, i8 0 }, %struct.ov490_reg { i16 3, i8 0 }, %struct.ov490_reg { i16 4, i8 50 }, %struct.ov490_reg { i16 5, i8 0 }, %struct.ov490_reg { i16 6, i8 0 }, %struct.ov490_reg { i16 7, i8 0 }, %struct.ov490_reg { i16 -2, i8 -128 }, %struct.ov490_reg { i16 129, i8 0 }, %struct.ov490_reg { i16 -2, i8 25 }, %struct.ov490_reg { i16 20480, i8 0 }, %struct.ov490_reg { i16 20481, i8 48 }, %struct.ov490_reg { i16 20482, i8 -116 }, %struct.ov490_reg { i16 20483, i8 -78 }, %struct.ov490_reg { i16 -2, i8 -128 }, %struct.ov490_reg { i16 192, i8 -63 }, %struct.ov490_reg { i16 -2, i8 25 }, %struct.ov490_reg { i16 20480, i8 1 }, %struct.ov490_reg { i16 20481, i8 0 }, %struct.ov490_reg { i16 -2, i8 -128 }, %struct.ov490_reg { i16 192, i8 -36 }], [60 x i8] zeroinitializer }, align 32
@ov490_initialize._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.4, i32 443, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: register %u (0x%04x) write failed (%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@ov490_initialize._entry_ptr.21 = internal global ptr @ov490_initialize._entry.19, section ".printk_index", align 4
@ov490_initialize._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.12, ptr @.str.4, i32 468, ptr @.str.24, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Identified RDACM21 camera module\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ov490_initialize._entry_ptr.25 = internal global ptr @ov490_initialize._entry.22, section ".printk_index", align 4
@ov490_read_reg.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.4, ptr @.str.27, i8 0, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ov490_read_reg\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: 0x%08x = 0x%02x\0A\00", [43 x i8] zeroinitializer }, align 32
@ov490_read.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.4, ptr @.str.29, i8 0, i8 47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ov490_read\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: register 0x%04x read failed (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@ov10640_check_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 378, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"OV10640 ID mismatch: (0x%02x)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ov10640_check_id\00", [47 x i8] zeroinitializer }, align 32
@ov10640_check_id._entry_ptr = internal global ptr @ov10640_check_id._entry, section ".printk_index", align 4
@ov10640_check_id.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.32, i8 0, i8 95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"OV10640 ID = 0x%2x\0A\00", [44 x i8] zeroinitializer }, align 32
@ov490_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 205, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: register 0x%04x write failed (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ov490_write\00", [20 x i8] zeroinitializer }, align 32
@ov490_write._entry_ptr = internal global ptr @ov490_write._entry, section ".printk_index", align 4
@ov490_write_reg.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.4, ptr @.str.27, i8 0, i8 67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ov490_write_reg\00", [16 x i8] zeroinitializer }, align 32
@rdacm21_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rdacm21_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@rdacm21_subdev_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @rdacm21_enum_mbus_code, ptr null, ptr null, ptr @rdacm21_get_fmt, ptr @rdacm21_get_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@___asan_gen_.36 = private unnamed_addr constant [19 x i8] c"rdacm21_i2c_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 635, i32 26 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 637, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant [15 x i8] c"rdacm21_of_ids\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 629, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 555, i32 56 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 558, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [19 x i8] c"rdacm21_subdev_ops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 328, i32 37 }
@___asan_gen_.69 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 575, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 593, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 406, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 415, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 428, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [18 x i8] c"ov490_regs_wizard\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 97, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 441, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 468, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 251, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 189, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 378, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 382, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 204, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 268, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant [18 x i8] c"rdacm21_video_ops\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 318, i32 43 }
@___asan_gen_.159 = private unnamed_addr constant [23 x i8] c"rdacm21_subdev_pad_ops\00", align 1
@___asan_gen_.160 = private constant [31 x i8] c"../drivers/media/i2c/rdacm21.c\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 322, i32 41 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_rdacm21_i2c_driver_exit, ptr @__initcall__kmod_rdacm21__296_644_rdacm21_i2c_driver_init6, ptr @ov10640_check_id._entry, ptr @ov10640_check_id._entry_ptr, ptr @ov490_initialize._entry, ptr @ov490_initialize._entry.13, ptr @ov490_initialize._entry.16, ptr @ov490_initialize._entry.19, ptr @ov490_initialize._entry.22, ptr @ov490_initialize._entry_ptr, ptr @ov490_initialize._entry_ptr.15, ptr @ov490_initialize._entry_ptr.18, ptr @ov490_initialize._entry_ptr.21, ptr @ov490_initialize._entry_ptr.25, ptr @ov490_write._entry, ptr @ov490_write._entry_ptr, ptr @rdacm21_i2c_driver_exit, ptr @rdacm21_probe._entry, ptr @rdacm21_probe._entry.8, ptr @rdacm21_probe._entry_ptr, ptr @rdacm21_probe._entry_ptr.10, ptr @rdacm21_i2c_driver, ptr @.str, ptr @rdacm21_of_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @rdacm21_subdev_ops, ptr @rdacm21_probe._key, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @ov490_regs_wizard, ptr @.str.20, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @rdacm21_video_ops, ptr @rdacm21_subdev_pad_ops], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdacm21_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdacm21_of_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdacm21_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdacm21_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdacm21_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdacm21_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov490_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov490_initialize._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov490_initialize._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov490_regs_wizard to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov490_initialize._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov490_initialize._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov10640_check_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov490_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdacm21_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdacm21_subdev_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rdacm21_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @rdacm21_i2c_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rdacm21_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @rdacm21_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rdacm21_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #6
  %ctrls = getelementptr i8, ptr %1, i32 276
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls) #6
  %isp = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %isp, align 4
  tail call void @i2c_unregister_device(ptr noundef %3) #6
  %fwnode = getelementptr i8, ptr %1, i32 168
  %4 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fwnode, align 4
  tail call void @fwnode_handle_put(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rdacm21_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 484, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 4
  %serializer = getelementptr inbounds %struct.rdacm21_device, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %serializer to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %client, ptr %serializer, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %addrs = getelementptr inbounds %struct.rdacm21_device, ptr %call.i, i32 0, i32 7
  %call.i106 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef %addrs, i32 noundef 2, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %cmp = icmp slt i32 %call.i106, 0
  br i1 %cmp, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2, i32 noundef %call.i106) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 8
  %call10 = tail call ptr @i2c_new_dummy_device(ptr noundef %7, i16 noundef zeroext 36) #6
  %isp = getelementptr inbounds %struct.rdacm21_device, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %isp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call10, ptr %isp, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  tail call void @max9271_wake_up(ptr noundef %serializer) #6
  %call.i107 = tail call i32 @max9271_set_serial_link(ptr noundef %serializer, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %tobool.not.i = icmp eq i32 %call.i107, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end16.rdacm21_initialize.exit_crit_edge

if.end16.rdacm21_initialize.exit_crit_edge:       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %rdacm21_initialize.exit

if.end.i:                                         ; preds = %if.end16
  %call3.i = tail call i32 @max9271_configure_i2c(ptr noundef %serializer, i8 noundef zeroext 46) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.rdacm21_initialize.exit_crit_edge

if.end.i.rdacm21_initialize.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rdacm21_initialize.exit

if.end6.i:                                        ; preds = %if.end.i
  %call8.i = tail call i32 @max9271_verify_id(ptr noundef %serializer) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end6.i.rdacm21_initialize.exit_crit_edge

if.end6.i.rdacm21_initialize.exit_crit_edge:      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rdacm21_initialize.exit

if.end11.i:                                       ; preds = %if.end6.i
  %call13.i = tail call i32 @max9271_enable_gpios(ptr noundef %serializer, i8 noundef zeroext 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end11.i.rdacm21_initialize.exit_crit_edge

if.end11.i.rdacm21_initialize.exit_crit_edge:     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rdacm21_initialize.exit

if.end16.i:                                       ; preds = %if.end11.i
  %call18.i = tail call i32 @max9271_clear_gpios(ptr noundef %serializer, i8 noundef zeroext 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.end16.i.rdacm21_initialize.exit_crit_edge

if.end16.i.rdacm21_initialize.exit_crit_edge:     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rdacm21_initialize.exit

if.end21.i:                                       ; preds = %if.end16.i
  tail call void @usleep_range_state(i32 noundef 250, i32 noundef 500, i32 noundef 2) #6
  %call23.i = tail call i32 @max9271_configure_gmsl_link(ptr noundef %serializer) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %if.end21.i.rdacm21_initialize.exit_crit_edge

if.end21.i.rdacm21_initialize.exit_crit_edge:     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rdacm21_initialize.exit

if.end26.i:                                       ; preds = %if.end21.i
  %10 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addrs, align 4
  %conv.i = trunc i32 %11 to i8
  %call28.i = tail call i32 @max9271_set_address(ptr noundef %serializer, i8 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.end31.i, label %if.end26.i.rdacm21_initialize.exit_crit_edge

if.end26.i.rdacm21_initialize.exit_crit_edge:     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rdacm21_initialize.exit

if.end31.i:                                       ; preds = %if.end26.i
  %12 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addrs, align 4
  %conv34.i = trunc i32 %13 to i16
  %14 = ptrtoint ptr %serializer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %serializer, align 4
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %addr.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv34.i, ptr %addr.i, align 2
  %arrayidx38.i = getelementptr %struct.rdacm21_device, ptr %call.i, i32 0, i32 7, i32 1
  %17 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx38.i, align 4
  %conv39.i = trunc i32 %18 to i8
  %call40.i = tail call i32 @max9271_set_translation(ptr noundef %serializer, i8 noundef zeroext %conv39.i, i8 noundef zeroext 36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %if.end43.i, label %if.end31.i.rdacm21_initialize.exit_crit_edge

if.end31.i.rdacm21_initialize.exit_crit_edge:     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rdacm21_initialize.exit

if.end43.i:                                       ; preds = %if.end31.i
  %19 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx38.i, align 4
  %conv46.i = trunc i32 %20 to i16
  %21 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %isp, align 4
  %addr47.i = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %addr47.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv46.i, ptr %addr47.i, align 2
  %call49.i = tail call i32 @max9271_set_gpios(ptr noundef %serializer, i8 noundef zeroext 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %if.end52.i, label %if.end43.i.rdacm21_initialize.exit_crit_edge

if.end43.i.rdacm21_initialize.exit_crit_edge:     ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rdacm21_initialize.exit

if.end52.i:                                       ; preds = %if.end43.i
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 5000, i32 noundef 2) #6
  %call53.i = tail call fastcc i32 @ov490_initialize(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %if.end56.i, label %if.end52.i.rdacm21_initialize.exit_crit_edge

if.end52.i.rdacm21_initialize.exit_crit_edge:     ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rdacm21_initialize.exit

if.end56.i:                                       ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #8
  %call58.i = tail call i32 @max9271_set_high_threshold(ptr noundef %serializer, i1 noundef zeroext true) #6
  br label %rdacm21_initialize.exit

rdacm21_initialize.exit:                          ; preds = %if.end56.i, %if.end52.i.rdacm21_initialize.exit_crit_edge, %if.end43.i.rdacm21_initialize.exit_crit_edge, %if.end31.i.rdacm21_initialize.exit_crit_edge, %if.end26.i.rdacm21_initialize.exit_crit_edge, %if.end21.i.rdacm21_initialize.exit_crit_edge, %if.end16.i.rdacm21_initialize.exit_crit_edge, %if.end11.i.rdacm21_initialize.exit_crit_edge, %if.end6.i.rdacm21_initialize.exit_crit_edge, %if.end.i.rdacm21_initialize.exit_crit_edge, %if.end16.rdacm21_initialize.exit_crit_edge
  %retval.0.i = phi i32 [ %call58.i, %if.end56.i ], [ %call.i107, %if.end16.rdacm21_initialize.exit_crit_edge ], [ %call3.i, %if.end.i.rdacm21_initialize.exit_crit_edge ], [ %call8.i, %if.end6.i.rdacm21_initialize.exit_crit_edge ], [ %call13.i, %if.end11.i.rdacm21_initialize.exit_crit_edge ], [ %call18.i, %if.end16.i.rdacm21_initialize.exit_crit_edge ], [ %call23.i, %if.end21.i.rdacm21_initialize.exit_crit_edge ], [ %call28.i, %if.end26.i.rdacm21_initialize.exit_crit_edge ], [ %call40.i, %if.end31.i.rdacm21_initialize.exit_crit_edge ], [ %call49.i, %if.end43.i.rdacm21_initialize.exit_crit_edge ], [ %call53.i, %if.end52.i.rdacm21_initialize.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp18 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp18, label %rdacm21_initialize.exit.error63_crit_edge, label %if.end20

rdacm21_initialize.exit.error63_crit_edge:        ; preds = %rdacm21_initialize.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %error63

if.end20:                                         ; preds = %rdacm21_initialize.exit
  %sd = getelementptr inbounds %struct.rdacm21_device, ptr %call.i, i32 0, i32 3
  tail call void @v4l2_i2c_subdev_init(ptr noundef %sd, ptr noundef %client, ptr noundef nonnull @rdacm21_subdev_ops) #6
  %flags = getelementptr inbounds %struct.rdacm21_device, ptr %call.i, i32 0, i32 3, i32 4
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  %or = or i32 %25, 4
  store i32 %or, ptr %flags, align 4
  %ctrls = getelementptr inbounds %struct.rdacm21_device, ptr %call.i, i32 0, i32 6
  %call22 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrls, i32 noundef 1, ptr noundef nonnull @rdacm21_probe._key, ptr noundef nonnull @.str.7) #6
  %call24 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef null, i32 noundef 10422530, i64 noundef 55000000, i64 noundef 55000000, i64 noundef 1, i64 noundef 55000000) #6
  %ctrl_handler = getelementptr inbounds %struct.rdacm21_device, ptr %call.i, i32 0, i32 3, i32 8
  %26 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %ctrls, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.rdacm21_device, ptr %call.i, i32 0, i32 6, i32 9
  %27 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool28.not = icmp eq i32 %28, 0
  br i1 %tobool28.not, label %if.end30, label %if.end20.error_free_ctrls_crit_edge

if.end20.error_free_ctrls_crit_edge:              ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_free_ctrls

if.end30:                                         ; preds = %if.end20
  %pad = getelementptr inbounds %struct.rdacm21_device, ptr %call.i, i32 0, i32 4
  %flags31 = getelementptr inbounds %struct.rdacm21_device, ptr %call.i, i32 0, i32 4, i32 4
  %29 = ptrtoint ptr %flags31 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %flags31, align 4
  %flags33 = getelementptr inbounds %struct.rdacm21_device, ptr %call.i, i32 0, i32 3, i32 0, i32 4
  %30 = ptrtoint ptr %flags33 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags33, align 4
  %or34 = or i32 %31, 131073
  store i32 %or34, ptr %flags33, align 4
  %call38 = tail call i32 @media_entity_pads_init(ptr noundef %sd, i16 noundef zeroext 1, ptr noundef %pad) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.end30.error_free_ctrls_crit_edge, label %if.end41

if.end30.error_free_ctrls_crit_edge:              ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_free_ctrls

if.end41:                                         ; preds = %if.end30
  %call43 = tail call ptr @dev_fwnode(ptr noundef %dev1) #6
  %call44 = tail call ptr @fwnode_graph_get_next_endpoint(ptr noundef %call43, ptr noundef null) #6
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %do.end49, label %if.end53

do.end49:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %of_node, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, ptr noundef %33) #9
  br label %error_free_ctrls

if.end53:                                         ; preds = %if.end41
  %fwnode = getelementptr inbounds %struct.rdacm21_device, ptr %call.i, i32 0, i32 3, i32 15
  %34 = ptrtoint ptr %fwnode to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call44, ptr %fwnode, align 4
  %call56 = tail call i32 @v4l2_async_register_subdev(ptr noundef %sd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end53.cleanup_crit_edge, label %error_put_node

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

error_put_node:                                   ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fwnode, align 4
  tail call void @fwnode_handle_put(ptr noundef %36) #6
  br label %error_free_ctrls

error_free_ctrls:                                 ; preds = %error_put_node, %do.end49, %if.end30.error_free_ctrls_crit_edge, %if.end20.error_free_ctrls_crit_edge
  %ret.0 = phi i32 [ %28, %if.end20.error_free_ctrls_crit_edge ], [ %call38, %if.end30.error_free_ctrls_crit_edge ], [ %call56, %error_put_node ], [ -2, %do.end49 ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls) #6
  br label %error63

error63:                                          ; preds = %error_free_ctrls, %rdacm21_initialize.exit.error63_crit_edge
  %ret.1 = phi i32 [ %retval.0.i, %rdacm21_initialize.exit.error63_crit_edge ], [ %ret.0, %error_free_ctrls ]
  %37 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %isp, align 4
  tail call void @i2c_unregister_device(ptr noundef %38) #6
  br label %cleanup

cleanup:                                          ; preds = %error63, %if.end53.cleanup_crit_edge, %if.then13, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %9, %if.then13 ], [ %ret.1, %error63 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end53.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @max9271_wake_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max9271_set_serial_link(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max9271_configure_i2c(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max9271_verify_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max9271_enable_gpios(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max9271_clear_gpios(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max9271_configure_gmsl_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max9271_set_address(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max9271_set_translation(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max9271_set_gpios(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov490_initialize(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca [3 x i8], align 1
  %pid = alloca i8, align 1
  %ver = alloca i8, align 1
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pid) #6
  %0 = ptrtoint ptr %pid to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %pid, align 1, !annotation !96
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver) #6
  %1 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %ver, align 1, !annotation !96
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !96
  tail call fastcc void @ov490_write_reg(ptr noundef %dev, i32 noundef -2139094960, i8 noundef zeroext 1) #6
  tail call fastcc void @ov490_write_reg(ptr noundef %dev, i32 noundef -2139094959, i8 noundef zeroext 1) #6
  tail call fastcc void @ov490_write_reg(ptr noundef %dev, i32 noundef -2139094956, i8 noundef zeroext 1) #6
  tail call fastcc void @ov490_write_reg(ptr noundef %dev, i32 noundef -2139094955, i8 noundef zeroext 1) #6
  tail call fastcc void @ov490_write_reg(ptr noundef %dev, i32 noundef -2139094951, i8 noundef zeroext 1) #6
  tail call void @usleep_range_state(i32 noundef 1500, i32 noundef 3000, i32 noundef 2) #6
  tail call fastcc void @ov490_write_reg(ptr noundef %dev, i32 noundef -2139094952, i8 noundef zeroext 0) #6
  tail call void @usleep_range_state(i32 noundef 1500, i32 noundef 3000, i32 noundef 2) #6
  tail call fastcc void @ov490_write_reg(ptr noundef %dev, i32 noundef -2139094952, i8 noundef zeroext 1) #6
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 5000, i32 noundef 2) #6
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.0149 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %call = call fastcc i32 @ov490_read_reg(ptr noundef %dev, i32 noundef -2139082742, ptr noundef nonnull %pid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.end5, label %if.end

if.end:                                           ; preds = %for.body
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %inc = add nuw nsw i32 %i.0149, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %do.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.11, i32 noundef %call) #9
  br label %cleanup

if.end5:                                          ; preds = %for.body
  %call6 = call fastcc i32 @ov490_read_reg(ptr noundef %dev, i32 noundef -2139082741, ptr noundef nonnull %ver)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %5 = ptrtoint ptr %pid to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pid, align 1
  %conv = zext i8 %6 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %7 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ver, align 1
  %conv10 = zext i8 %8 to i32
  %or = or i32 %shl, %conv10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1168, i32 %or)
  %cmp12.not = icmp eq i32 %or, 1168
  br i1 %cmp12.not, label %if.end9.for.body29_crit_edge, label %do.end17

if.end9.for.body29_crit_edge:                     ; preds = %if.end9
  br label %for.body29

do.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.14, i32 noundef %or) #9
  br label %cleanup

for.body29:                                       ; preds = %if.end35.for.body29_crit_edge, %if.end9.for.body29_crit_edge
  %i.1150 = phi i32 [ %inc37, %if.end35.for.body29_crit_edge ], [ 0, %if.end9.for.body29_crit_edge ]
  %call30 = call fastcc i32 @ov490_read_reg(ptr noundef %dev, i32 noundef -2144743424, ptr noundef nonnull %val)
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %12)
  %cmp32 = icmp eq i8 %12, 12
  br i1 %cmp32, label %if.end46, label %if.end35

if.end35:                                         ; preds = %for.body29
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %inc37 = add nuw nsw i32 %i.1150, 1
  %exitcond156.not = icmp eq i32 %inc37, 300
  br i1 %exitcond156.not, label %do.end44, label %if.end35.for.body29_crit_edge

if.end35.for.body29_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body29

do.end44:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.17) #9
  br label %cleanup

if.end46:                                         ; preds = %for.body29
  %call47 = call fastcc i32 @ov10640_check_id(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool.not = icmp eq i32 %call47, 0
  br i1 %tobool.not, label %for.cond50.preheader, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond50.preheader:                             ; preds = %if.end46
  %15 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %16 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %isp.i = getelementptr inbounds %struct.rdacm21_device, ptr %dev, i32 0, i32 2
  br label %for.body53

for.body53:                                       ; preds = %if.end67.for.body53_crit_edge, %for.cond50.preheader
  %i.2151 = phi i32 [ 0, %for.cond50.preheader ], [ %inc69, %if.end67.for.body53_crit_edge ]
  %arrayidx = getelementptr [57 x %struct.ov490_reg], ptr @ov490_regs_wizard, i32 0, i32 %i.2151
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx, align 2
  %val55 = getelementptr [57 x %struct.ov490_reg], ptr @ov490_regs_wizard, i32 0, i32 %i.2151, i32 1
  %19 = ptrtoint ptr %val55 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %val55, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #6
  %21 = lshr i16 %18, 8
  %conv1.i = trunc i16 %21 to i8
  %22 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv1.i, ptr %buf.i, align 1
  %conv2.i = trunc i16 %18 to i8
  %23 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv2.i, ptr %15, align 1
  %24 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %20, ptr %16, align 1
  %25 = ptrtoint ptr %isp.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %isp.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %26, ptr noundef nonnull %buf.i, i32 noundef 3, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end62, label %if.end67

do.end62:                                         ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = zext i16 %18 to i32
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %conv.i, i32 noundef %call.i.i) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #6
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.12, i32 noundef %i.2151, i32 noundef %conv.i, i32 noundef %call.i.i) #9
  br label %cleanup

if.end67:                                         ; preds = %for.body53
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #6
  call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #6
  %inc69 = add nuw nsw i32 %i.2151, 1
  %exitcond157.not = icmp eq i32 %inc69, 57
  br i1 %exitcond157.not, label %for.end70, label %if.end67.for.body53_crit_edge

if.end67.for.body53_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body53

for.end70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  %call71 = call fastcc i32 @ov490_read_reg(ptr noundef %dev, i32 noundef -2138963871, ptr noundef nonnull %val)
  %31 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %val, align 1
  %33 = and i8 %32, 15
  %and73 = zext i8 %33 to i32
  %shl74 = shl nuw nsw i32 %and73, 8
  %fmt = getelementptr inbounds %struct.rdacm21_device, ptr %dev, i32 0, i32 5
  %34 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %shl74, ptr %fmt, align 4
  %call75 = call fastcc i32 @ov490_read_reg(ptr noundef %dev, i32 noundef -2138963872, ptr noundef nonnull %val)
  %35 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %val, align 1
  %conv76 = zext i8 %36 to i32
  %37 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fmt, align 4
  %or80 = or i32 %38, %conv76
  store i32 %or80, ptr %fmt, align 4
  %call81 = call fastcc i32 @ov490_read_reg(ptr noundef %dev, i32 noundef -2138963869, ptr noundef nonnull %val)
  %39 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %val, align 1
  %41 = and i8 %40, 15
  %and83 = zext i8 %41 to i32
  %shl84 = shl nuw nsw i32 %and83, 8
  %height = getelementptr inbounds %struct.rdacm21_device, ptr %dev, i32 0, i32 5, i32 1
  %42 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %shl84, ptr %height, align 4
  %call86 = call fastcc i32 @ov490_read_reg(ptr noundef %dev, i32 noundef -2138963870, ptr noundef nonnull %val)
  %43 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %val, align 1
  %conv87 = zext i8 %44 to i32
  %45 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %height, align 4
  %or91 = or i32 %46, %conv87
  store i32 %or91, ptr %height, align 4
  call fastcc void @ov490_write_reg(ptr noundef %dev, i32 noundef -2144837623, i8 noundef zeroext 16)
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %48, ptr noundef nonnull @.str.23) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end70, %do.end62, %if.end46.cleanup_crit_edge, %do.end44, %do.end17, %if.end5.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ -19, %do.end17 ], [ -19, %do.end44 ], [ -5, %do.end62 ], [ 0, %for.end70 ], [ %call6, %if.end5.cleanup_crit_edge ], [ %call47, %if.end46.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pid) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max9271_set_high_threshold(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov490_read_reg(ptr nocapture noundef %dev, i32 noundef %reg, ptr noundef %val) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %reg, 16
  %conv = trunc i32 %shr to i16
  %call = tail call fastcc i32 @ov490_set_page(ptr noundef %dev, i16 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %0 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %conv.i = and i32 %reg, 65535
  %1 = lshr i32 %reg, 8
  %conv1.i = trunc i32 %1 to i8
  %2 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv1.i, ptr %buf.i, align 1
  %conv2.i = trunc i32 %reg to i8
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv2.i, ptr %0, align 1
  %isp.i = getelementptr inbounds %struct.rdacm21_device, ptr %dev, i32 0, i32 2
  %4 = ptrtoint ptr %isp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %isp.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.i, label %if.then.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %isp.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %isp.i, align 4
  %call.i25.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %7, ptr noundef %val, i32 noundef 1, i16 noundef zeroext 1) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %ret.0.i = phi i32 [ %call.i25.i, %if.then.i ], [ %call.i.i, %if.end.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp6.i = icmp slt i32 %ret.0.i, 0
  br i1 %cmp6.i, label %do.body.i, label %do.body

do.body.i:                                        ; preds = %if.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov490_read.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov490_read_reg, %if.then12.i)) #6
          to label %ov490_read.exit [label %if.then12.i], !srcloc !97

if.then12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov490_read.__UNIQUE_ID_ddebug292, ptr noundef %9, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i32 noundef %conv.i, i32 noundef %ret.0.i) #6
  br label %ov490_read.exit

ov490_read.exit:                                  ; preds = %if.then12.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  br label %cleanup

do.body:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov490_read_reg.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov490_read_reg, %if.then10)) #6
          to label %cleanup [label %if.then10], !srcloc !97

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %val, align 1
  %conv12 = zext i8 %13 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov490_read_reg.__UNIQUE_ID_ddebug293, ptr noundef %11, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, i32 noundef %reg, i32 noundef %conv12) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %do.body, %ov490_read.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %ret.0.i, %ov490_read.exit ], [ 0, %if.then10 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov10640_check_id(ptr nocapture noundef %dev) unnamed_addr #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !96
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.035 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  call fastcc void @ov490_write_reg(ptr noundef %dev, i32 noundef -2145824768, i8 noundef zeroext 1)
  call fastcc void @ov490_write_reg(ptr noundef %dev, i32 noundef -2145824767, i8 noundef zeroext 48)
  call fastcc void @ov490_write_reg(ptr noundef %dev, i32 noundef -2145824766, i8 noundef zeroext 10)
  call fastcc void @ov490_write_reg(ptr noundef %dev, i32 noundef -2139094848, i8 noundef zeroext -63)
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #6
  %call4 = call fastcc i32 @ov490_read_reg(ptr noundef %dev, i32 noundef -2145824768, ptr noundef nonnull %val)
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -90, i8 %2)
  %cmp5 = icmp eq i8 %2, -90
  br i1 %cmp5, label %do.body13, label %if.end

if.end:                                           ; preds = %for.body
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #6
  %inc = add nuw nsw i32 %i.035, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %do.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val, align 1
  %conv11 = zext i8 %6 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.30, i32 noundef %conv11) #9
  br label %cleanup

do.body13:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov10640_check_id.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov10640_check_id, %if.then17)) #6
          to label %cleanup [label %if.then17], !srcloc !97

if.then17:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %val, align 1
  %conv19 = zext i8 %10 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov10640_check_id.__UNIQUE_ID_ddebug295, ptr noundef %8, ptr noundef nonnull @.str.32, i32 noundef %conv19) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %do.body13, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %if.then17 ], [ 0, %do.body13 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ov490_write_reg(ptr nocapture noundef %dev, i32 noundef %reg, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %reg, 16
  %conv = trunc i32 %shr to i16
  %call = tail call fastcc i32 @ov490_set_page(ptr noundef %dev, i16 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #6
  %0 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %2 = lshr i32 %reg, 8
  %conv1.i = trunc i32 %2 to i8
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv1.i, ptr %buf.i, align 1
  %conv2.i = trunc i32 %reg to i8
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv2.i, ptr %0, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %val, ptr %1, align 1
  %isp.i = getelementptr inbounds %struct.rdacm21_device, ptr %dev, i32 0, i32 2
  %6 = ptrtoint ptr %isp.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %isp.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %7, ptr noundef nonnull %buf.i, i32 noundef 3, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %ov490_write.exit, label %do.body

ov490_write.exit:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = and i32 %reg, 65535
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %conv.i, i32 noundef %call.i.i) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #6
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov490_write_reg.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov490_write_reg, %if.then10)) #6
          to label %cleanup [label %if.then10], !srcloc !97

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %conv12 = zext i8 %val to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov490_write_reg.__UNIQUE_ID_ddebug294, ptr noundef %11, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.35, i32 noundef %reg, i32 noundef %conv12) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %do.body, %ov490_write.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov490_set_page(ptr nocapture noundef %dev, i16 noundef zeroext %page) unnamed_addr #2 align 64 {
entry:
  %buf.i44 = alloca [3 x i8], align 1
  %buf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv2 = trunc i16 %page to i8
  %last_page = getelementptr inbounds %struct.rdacm21_device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %last_page to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %last_page, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %page)
  %cmp = icmp eq i16 %1, %page
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %.mask = and i16 %1, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %.mask)
  %cmp10.not = icmp eq i16 %.mask, -32768
  br i1 %cmp10.not, label %if.end.if.end15_crit_edge, label %if.then12

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then12:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #6
  %2 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %buf.i, align 1
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -3, ptr %2, align 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -128, ptr %3, align 1
  %isp.i = getelementptr inbounds %struct.rdacm21_device, ptr %dev, i32 0, i32 2
  %7 = ptrtoint ptr %isp.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %isp.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %8, ptr noundef nonnull %buf.i, i32 noundef 3, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %ov490_write.exit, label %ov490_write.exit.thread

ov490_write.exit.thread:                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #6
  br label %if.end15

ov490_write.exit:                                 ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef 65533, i32 noundef %call.i.i) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #6
  br label %cleanup

if.end15:                                         ; preds = %ov490_write.exit.thread, %if.end.if.end15_crit_edge
  %11 = ptrtoint ptr %last_page to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %last_page, align 4
  %13 = xor i16 %12, %page
  %14 = and i16 %13, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp20.not = icmp eq i16 %14, 0
  br i1 %cmp20.not, label %if.end15.if.end27_crit_edge, label %if.then22

if.end15.if.end27_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then22:                                        ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i44) #6
  %15 = getelementptr inbounds [3 x i8], ptr %buf.i44, i32 0, i32 1
  %16 = getelementptr inbounds [3 x i8], ptr %buf.i44, i32 0, i32 2
  %17 = ptrtoint ptr %buf.i44 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %buf.i44, align 1
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -2, ptr %15, align 1
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv2, ptr %16, align 1
  %isp.i45 = getelementptr inbounds %struct.rdacm21_device, ptr %dev, i32 0, i32 2
  %20 = ptrtoint ptr %isp.i45 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %isp.i45, align 4
  %call.i.i46 = call i32 @i2c_transfer_buffer_flags(ptr noundef %21, ptr noundef nonnull %buf.i44, i32 noundef 3, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i46)
  %cmp.i47 = icmp slt i32 %call.i.i46, 0
  br i1 %cmp.i47, label %ov490_write.exit50, label %ov490_write.exit50.thread

ov490_write.exit50.thread:                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i44) #6
  br label %if.end27

ov490_write.exit50:                               ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef 65534, i32 noundef %call.i.i46) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i44) #6
  br label %cleanup

if.end27:                                         ; preds = %ov490_write.exit50.thread, %if.end15.if.end27_crit_edge
  %24 = ptrtoint ptr %last_page to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %page, ptr %last_page, align 4
  call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %ov490_write.exit50, %ov490_write.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end27 ], [ 0, %entry.cleanup_crit_edge ], [ %call.i.i, %ov490_write.exit ], [ %call.i.i46, %ov490_write.exit50 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rdacm21_s_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %serializer = getelementptr i8, ptr %sd, i32 -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool = icmp ne i32 %enable, 0
  %call1 = tail call i32 @max9271_set_serial_link(ptr noundef %serializer, i1 noundef zeroext %tobool) #6
  ret i32 %call1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rdacm21_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %code1 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %4 = ptrtoint ptr %code1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8209, ptr %code1, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rdacm21_get_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %format) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %fmt = getelementptr i8, ptr %sd, i32 228
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fmt, align 4
  %4 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %format1, align 4
  %height = getelementptr i8, ptr %sd, i32 232
  %5 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %height, align 4
  %height4 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %height4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %height4, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8209, ptr %code, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %9 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8, ptr %colorspace, align 4
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %field, align 4
  %11 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 5
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %11, align 4
  %quantization = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 6
  %13 = ptrtoint ptr %quantization to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %quantization, align 2
  %xfer_func = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 7
  %14 = ptrtoint ptr %xfer_func to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 5, ptr %xfer_func, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !71, !72, !73, !74, !76, !78, !79, !81, !83, !85}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @__initcall__kmod_rdacm21__296_644_rdacm21_i2c_driver_init6, !1, !"__initcall__kmod_rdacm21__296_644_rdacm21_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/rdacm21.c", i32 644, i32 1}
!2 = !{ptr @__exitcall_rdacm21_i2c_driver_exit, !1, !"__exitcall_rdacm21_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description297, !4, !"__UNIQUE_ID_description297", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/rdacm21.c", i32 646, i32 1}
!5 = !{ptr @__UNIQUE_ID_author298, !6, !"__UNIQUE_ID_author298", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/rdacm21.c", i32 647, i32 1}
!7 = !{ptr @__UNIQUE_ID_file299, !8, !"__UNIQUE_ID_file299", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/rdacm21.c", i32 648, i32 1}
!9 = !{ptr @__UNIQUE_ID_license300, !8, !"__UNIQUE_ID_license300", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/rdacm21.c", i32 637, i32 11}
!12 = !{ptr @rdacm21_i2c_driver, !13, !"rdacm21_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/rdacm21.c", i32 635, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/rdacm21.c", i32 555, i32 56}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/rdacm21.c", i32 558, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @rdacm21_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @rdacm21_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @rdacm21_probe._key, !25, !"_key", i1 false, i1 false}
!25 = !{!"../drivers/media/i2c/rdacm21.c", i32 575, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/i2c/rdacm21.c", i32 593, i32 3}
!29 = !{ptr @rdacm21_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @rdacm21_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/i2c/rdacm21.c", i32 406, i32 3}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ov490_initialize._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @ov490_initialize._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/i2c/rdacm21.c", i32 415, i32 3}
!38 = !{ptr @ov490_initialize._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @ov490_initialize._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/i2c/rdacm21.c", i32 428, i32 3}
!42 = !{ptr @ov490_initialize._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @ov490_initialize._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/i2c/rdacm21.c", i32 441, i32 4}
!46 = !{ptr @ov490_initialize._entry.19, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @ov490_initialize._entry_ptr.21, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/i2c/rdacm21.c", i32 468, i32 2}
!50 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ov490_initialize._entry.22, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @ov490_initialize._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/i2c/rdacm21.c", i32 251, i32 2}
!55 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @ov490_read_reg.__UNIQUE_ID_ddebug293, !54, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/i2c/rdacm21.c", i32 189, i32 3}
!59 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @ov490_read.__UNIQUE_ID_ddebug292, !58, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/i2c/rdacm21.c", i32 378, i32 3}
!63 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @ov10640_check_id._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @ov10640_check_id._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/i2c/rdacm21.c", i32 382, i32 2}
!68 = !{ptr @ov10640_check_id.__UNIQUE_ID_ddebug295, !67, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/i2c/rdacm21.c", i32 204, i32 3}
!71 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @ov490_write._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @ov490_write._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @ov490_regs_wizard, !75, !"ov490_regs_wizard", i1 false, i1 false}
!75 = !{!"../drivers/media/i2c/rdacm21.c", i32 97, i32 3}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/i2c/rdacm21.c", i32 268, i32 2}
!78 = !{ptr @ov490_write_reg.__UNIQUE_ID_ddebug294, !77, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!79 = !{ptr @rdacm21_subdev_ops, !80, !"rdacm21_subdev_ops", i1 false, i1 false}
!80 = !{!"../drivers/media/i2c/rdacm21.c", i32 328, i32 37}
!81 = !{ptr @rdacm21_video_ops, !82, !"rdacm21_video_ops", i1 false, i1 false}
!82 = !{!"../drivers/media/i2c/rdacm21.c", i32 318, i32 43}
!83 = !{ptr @rdacm21_subdev_pad_ops, !84, !"rdacm21_subdev_pad_ops", i1 false, i1 false}
!84 = !{!"../drivers/media/i2c/rdacm21.c", i32 322, i32 41}
!85 = !{ptr @rdacm21_of_ids, !86, !"rdacm21_of_ids", i1 false, i1 false}
!86 = !{!"../drivers/media/i2c/rdacm21.c", i32 629, i32 34}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{!"auto-init"}
!97 = !{i64 2148770134, i64 2148770139, i64 2148770152, i64 2148770196, i64 2148770230, i64 2148770251}
