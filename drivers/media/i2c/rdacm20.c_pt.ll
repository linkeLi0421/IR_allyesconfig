; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/rdacm20.c_pt.bc'
source_filename = "../drivers/media/i2c/rdacm20.c"
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
%struct.ov10635_reg = type { i16, i8 }
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
%struct.rdacm20_device = type { ptr, %struct.max9271_device, ptr, %struct.v4l2_subdev, %struct.media_pad, %struct.v4l2_ctrl_handler, [2 x i32] }
%struct.max9271_device = type { ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }

@__initcall__kmod_rdacm20__295_686_rdacm20_i2c_driver_init6 = internal global ptr @rdacm20_i2c_driver_init, section ".initcall6.init", align 4
@rdacm20_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @rdacm20_remove, ptr @rdacm20_probe, ptr @rdacm20_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rdacm20_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_rdacm20_i2c_driver_exit = internal global ptr @rdacm20_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description296 = internal constant [51 x i8] c"rdacm20.description=GMSL Camera driver for RDACM20\00", section ".modinfo", align 1
@__UNIQUE_ID_author297 = internal constant [32 x i8] c"rdacm20.author=Vladimir Barinov\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [39 x i8] c"rdacm20.file=drivers/media/i2c/rdacm20\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [20 x i8] c"rdacm20.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rdacm20\00", [24 x i8] zeroinitializer }, align 32
@rdacm20_of_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"imi,rdacm20\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@rdacm20_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 582, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid DT reg property: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rdacm20_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/i2c/rdacm20.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rdacm20_probe._entry_ptr = internal global ptr @rdacm20_probe._entry, section ".printk_index", align 4
@rdacm20_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @rdacm20_video_ops, ptr null, ptr null, ptr null, ptr @rdacm20_subdev_pad_ops }, [32 x i8] zeroinitializer }, align 32
@rdacm20_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rdacm20:603:(&dev->ctrls)->_lock\00", [63 x i8] zeroinitializer }, align 32
@rdacm20_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 623, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to get endpoint in node %pOF\0A\00", [59 x i8] zeroinitializer }, align 32
@rdacm20_probe._entry_ptr.10 = internal global ptr @rdacm20_probe._entry.8, section ".printk_index", align 4
@rdacm20_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 644, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"probe failed\0A\00", [18 x i8] zeroinitializer }, align 32
@rdacm20_probe._entry_ptr.13 = internal global ptr @rdacm20_probe._entry.11, section ".printk_index", align 4
@rdacm20_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 519, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"OV10635 ID read failed (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rdacm20_initialize\00", [45 x i8] zeroinitializer }, align 32
@rdacm20_initialize._entry_ptr = internal global ptr @rdacm20_initialize._entry, section ".printk_index", align 4
@rdacm20_initialize._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.4, i32 528, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"OV10635 ID mismatch (0x%04x)\0A\00", [34 x i8] zeroinitializer }, align 32
@rdacm20_initialize._entry_ptr.18 = internal global ptr @rdacm20_initialize._entry.16, section ".printk_index", align 4
@rdacm20_initialize._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.4, i32 538, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"OV10635 I2C address change failed (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@rdacm20_initialize._entry_ptr.21 = internal global ptr @rdacm20_initialize._entry.19, section ".printk_index", align 4
@ov10635_regs_wizard = internal constant { [905 x %struct.ov10635_reg], [924 x i8] } { [905 x %struct.ov10635_reg] [%struct.ov10635_reg { i16 12315, i8 -1 }, %struct.ov10635_reg { i16 12316, i8 -1 }, %struct.ov10635_reg { i16 12314, i8 -1 }, %struct.ov10635_reg { i16 12305, i8 66 }, %struct.ov10635_reg { i16 26880, i8 12 }, %struct.ov10635_reg { i16 26881, i8 25 }, %struct.ov10635_reg { i16 13571, i8 16 }, %struct.ov10635_reg { i16 12325, i8 3 }, %struct.ov10635_reg { i16 12291, i8 22 }, %struct.ov10635_reg { i16 12292, i8 48 }, %struct.ov10635_reg { i16 12293, i8 64 }, %struct.ov10635_reg { i16 12294, i8 -111 }, %struct.ov10635_reg { i16 13824, i8 116 }, %struct.ov10635_reg { i16 13825, i8 43 }, %struct.ov10635_reg { i16 13842, i8 0 }, %struct.ov10635_reg { i16 13841, i8 103 }, %struct.ov10635_reg { i16 13875, i8 -54 }, %struct.ov10635_reg { i16 13826, i8 -81 }, %struct.ov10635_reg { i16 13827, i8 4 }, %struct.ov10635_reg { i16 13872, i8 40 }, %struct.ov10635_reg { i16 13873, i8 22 }, %struct.ov10635_reg { i16 14100, i8 16 }, %struct.ov10635_reg { i16 14109, i8 1 }, %struct.ov10635_reg { i16 17152, i8 58 }, %struct.ov10635_reg { i16 12295, i8 1 }, %struct.ov10635_reg { i16 12324, i8 3 }, %struct.ov10635_reg { i16 12320, i8 10 }, %struct.ov10635_reg { i16 14082, i8 13 }, %struct.ov10635_reg { i16 14083, i8 32 }, %struct.ov10635_reg { i16 14084, i8 21 }, %struct.ov10635_reg { i16 14089, i8 -88 }, %struct.ov10635_reg { i16 14092, i8 -57 }, %struct.ov10635_reg { i16 14093, i8 -128 }, %struct.ov10635_reg { i16 14098, i8 0 }, %struct.ov10635_reg { i16 14099, i8 32 }, %struct.ov10635_reg { i16 14101, i8 4 }, %struct.ov10635_reg { i16 14365, i8 64 }, %struct.ov10635_reg { i16 14364, i8 0 }, %struct.ov10635_reg { i16 14370, i8 80 }, %struct.ov10635_reg { i16 14372, i8 16 }, %struct.ov10635_reg { i16 14357, i8 -116 }, %struct.ov10635_reg { i16 14340, i8 5 }, %struct.ov10635_reg { i16 14341, i8 31 }, %struct.ov10635_reg { i16 14336, i8 0 }, %struct.ov10635_reg { i16 14337, i8 0 }, %struct.ov10635_reg { i16 14342, i8 3 }, %struct.ov10635_reg { i16 14343, i8 40 }, %struct.ov10635_reg { i16 14338, i8 0 }, %struct.ov10635_reg { i16 14339, i8 7 }, %struct.ov10635_reg { i16 14344, i8 5 }, %struct.ov10635_reg { i16 14345, i8 0 }, %struct.ov10635_reg { i16 14346, i8 3 }, %struct.ov10635_reg { i16 14347, i8 32 }, %struct.ov10635_reg { i16 14348, i8 6 }, %struct.ov10635_reg { i16 14349, i8 36 }, %struct.ov10635_reg { i16 14350, i8 3 }, %struct.ov10635_reg { i16 14351, i8 -91 }, %struct.ov10635_reg { i16 14355, i8 2 }, %struct.ov10635_reg { i16 14353, i8 8 }, %struct.ov10635_reg { i16 14367, i8 12 }, %struct.ov10635_reg { i16 14361, i8 4 }, %struct.ov10635_reg { i16 14340, i8 1 }, %struct.ov10635_reg { i16 14341, i8 0 }, %struct.ov10635_reg { i16 14376, i8 3 }, %struct.ov10635_reg { i16 14377, i8 16 }, %struct.ov10635_reg { i16 14378, i8 16 }, %struct.ov10635_reg { i16 13857, i8 99 }, %struct.ov10635_reg { i16 20485, i8 8 }, %struct.ov10635_reg { i16 22229, i8 0 }, %struct.ov10635_reg { i16 22230, i8 -128 }, %struct.ov10635_reg { i16 22231, i8 0 }, %struct.ov10635_reg { i16 22232, i8 0 }, %struct.ov10635_reg { i16 22233, i8 0 }, %struct.ov10635_reg { i16 22234, i8 -128 }, %struct.ov10635_reg { i16 22235, i8 0 }, %struct.ov10635_reg { i16 22236, i8 0 }, %struct.ov10635_reg { i16 22248, i8 0 }, %struct.ov10635_reg { i16 22249, i8 127 }, %struct.ov10635_reg { i16 22250, i8 0 }, %struct.ov10635_reg { i16 22251, i8 127 }, %struct.ov10635_reg { i16 20736, i8 0 }, %struct.ov10635_reg { i16 20737, i8 -128 }, %struct.ov10635_reg { i16 20738, i8 0 }, %struct.ov10635_reg { i16 20739, i8 -128 }, %struct.ov10635_reg { i16 20740, i8 0 }, %struct.ov10635_reg { i16 20741, i8 -128 }, %struct.ov10635_reg { i16 20742, i8 0 }, %struct.ov10635_reg { i16 20743, i8 -128 }, %struct.ov10635_reg { i16 20744, i8 0 }, %struct.ov10635_reg { i16 20745, i8 0 }, %struct.ov10635_reg { i16 20746, i8 0 }, %struct.ov10635_reg { i16 20747, i8 0 }, %struct.ov10635_reg { i16 20748, i8 0 }, %struct.ov10635_reg { i16 20749, i8 0 }, %struct.ov10635_reg { i16 20750, i8 0 }, %struct.ov10635_reg { i16 20751, i8 0 }, %struct.ov10635_reg { i16 20752, i8 0 }, %struct.ov10635_reg { i16 20753, i8 -128 }, %struct.ov10635_reg { i16 20754, i8 0 }, %struct.ov10635_reg { i16 20755, i8 -128 }, %struct.ov10635_reg { i16 20756, i8 0 }, %struct.ov10635_reg { i16 20757, i8 -128 }, %struct.ov10635_reg { i16 20758, i8 0 }, %struct.ov10635_reg { i16 20759, i8 -128 }, %struct.ov10635_reg { i16 20760, i8 0 }, %struct.ov10635_reg { i16 20761, i8 0 }, %struct.ov10635_reg { i16 20762, i8 0 }, %struct.ov10635_reg { i16 20763, i8 0 }, %struct.ov10635_reg { i16 20764, i8 0 }, %struct.ov10635_reg { i16 20765, i8 0 }, %struct.ov10635_reg { i16 20766, i8 0 }, %struct.ov10635_reg { i16 20767, i8 0 }, %struct.ov10635_reg { i16 22224, i8 0 }, %struct.ov10635_reg { i16 20486, i8 4 }, %struct.ov10635_reg { i16 22024, i8 5 }, %struct.ov10635_reg { i16 21207, i8 6 }, %struct.ov10635_reg { i16 21133, i8 8 }, %struct.ov10635_reg { i16 21139, i8 18 }, %struct.ov10635_reg { i16 21203, i8 18 }, %struct.ov10635_reg { i16 21128, i8 6 }, %struct.ov10635_reg { i16 21129, i8 32 }, %struct.ov10635_reg { i16 21192, i8 6 }, %struct.ov10635_reg { i16 21193, i8 32 }, %struct.ov10635_reg { i16 21197, i8 4 }, %struct.ov10635_reg { i16 21377, i8 0 }, %struct.ov10635_reg { i16 21378, i8 -1 }, %struct.ov10635_reg { i16 21897, i8 118 }, %struct.ov10635_reg { i16 21898, i8 71 }, %struct.ov10635_reg { i16 21899, i8 -17 }, %struct.ov10635_reg { i16 21900, i8 -55 }, %struct.ov10635_reg { i16 21901, i8 73 }, %struct.ov10635_reg { i16 21902, i8 48 }, %struct.ov10635_reg { i16 21903, i8 103 }, %struct.ov10635_reg { i16 21904, i8 63 }, %struct.ov10635_reg { i16 21905, i8 -16 }, %struct.ov10635_reg { i16 21906, i8 16 }, %struct.ov10635_reg { i16 21922, i8 109 }, %struct.ov10635_reg { i16 21923, i8 85 }, %struct.ov10635_reg { i16 21924, i8 -61 }, %struct.ov10635_reg { i16 21925, i8 -75 }, %struct.ov10635_reg { i16 21926, i8 67 }, %struct.ov10635_reg { i16 21927, i8 56 }, %struct.ov10635_reg { i16 21928, i8 95 }, %struct.ov10635_reg { i16 21929, i8 75 }, %struct.ov10635_reg { i16 21930, i8 -16 }, %struct.ov10635_reg { i16 21931, i8 16 }, %struct.ov10635_reg { i16 21889, i8 82 }, %struct.ov10635_reg { i16 21248, i8 1 }, %struct.ov10635_reg { i16 21249, i8 0 }, %struct.ov10635_reg { i16 21250, i8 0 }, %struct.ov10635_reg { i16 21251, i8 14 }, %struct.ov10635_reg { i16 21252, i8 0 }, %struct.ov10635_reg { i16 21253, i8 14 }, %struct.ov10635_reg { i16 21254, i8 0 }, %struct.ov10635_reg { i16 21255, i8 54 }, %struct.ov10635_reg { i16 21256, i8 0 }, %struct.ov10635_reg { i16 21257, i8 -39 }, %struct.ov10635_reg { i16 21258, i8 0 }, %struct.ov10635_reg { i16 21259, i8 15 }, %struct.ov10635_reg { i16 21260, i8 0 }, %struct.ov10635_reg { i16 21261, i8 44 }, %struct.ov10635_reg { i16 21262, i8 0 }, %struct.ov10635_reg { i16 21263, i8 89 }, %struct.ov10635_reg { i16 21264, i8 0 }, %struct.ov10635_reg { i16 21265, i8 123 }, %struct.ov10635_reg { i16 21266, i8 0 }, %struct.ov10635_reg { i16 21267, i8 34 }, %struct.ov10635_reg { i16 21268, i8 0 }, %struct.ov10635_reg { i16 21269, i8 -43 }, %struct.ov10635_reg { i16 21270, i8 0 }, %struct.ov10635_reg { i16 21271, i8 19 }, %struct.ov10635_reg { i16 21272, i8 0 }, %struct.ov10635_reg { i16 21273, i8 24 }, %struct.ov10635_reg { i16 21274, i8 0 }, %struct.ov10635_reg { i16 21275, i8 38 }, %struct.ov10635_reg { i16 21276, i8 0 }, %struct.ov10635_reg { i16 21277, i8 -36 }, %struct.ov10635_reg { i16 21278, i8 0 }, %struct.ov10635_reg { i16 21279, i8 2 }, %struct.ov10635_reg { i16 21280, i8 0 }, %struct.ov10635_reg { i16 21281, i8 36 }, %struct.ov10635_reg { i16 21282, i8 0 }, %struct.ov10635_reg { i16 21283, i8 86 }, %struct.ov10635_reg { i16 21284, i8 0 }, %struct.ov10635_reg { i16 21285, i8 -123 }, %struct.ov10635_reg { i16 21286, i8 0 }, %struct.ov10635_reg { i16 21287, i8 32 }, %struct.ov10635_reg { i16 22025, i8 1 }, %struct.ov10635_reg { i16 22026, i8 64 }, %struct.ov10635_reg { i16 22027, i8 1 }, %struct.ov10635_reg { i16 22028, i8 64 }, %struct.ov10635_reg { i16 22029, i8 0 }, %struct.ov10635_reg { i16 22030, i8 -6 }, %struct.ov10635_reg { i16 22031, i8 0 }, %struct.ov10635_reg { i16 22032, i8 -6 }, %struct.ov10635_reg { i16 22033, i8 2 }, %struct.ov10635_reg { i16 22034, i8 -128 }, %struct.ov10635_reg { i16 22035, i8 2 }, %struct.ov10635_reg { i16 22036, i8 -128 }, %struct.ov10635_reg { i16 22037, i8 1 }, %struct.ov10635_reg { i16 22038, i8 44 }, %struct.ov10635_reg { i16 22039, i8 1 }, %struct.ov10635_reg { i16 22040, i8 44 }, %struct.ov10635_reg { i16 22075, i8 1 }, %struct.ov10635_reg { i16 22076, i8 1 }, %struct.ov10635_reg { i16 22077, i8 1 }, %struct.ov10635_reg { i16 22078, i8 1 }, %struct.ov10635_reg { i16 22079, i8 3 }, %struct.ov10635_reg { i16 22080, i8 3 }, %struct.ov10635_reg { i16 22081, i8 3 }, %struct.ov10635_reg { i16 22082, i8 5 }, %struct.ov10635_reg { i16 22083, i8 9 }, %struct.ov10635_reg { i16 22084, i8 5 }, %struct.ov10635_reg { i16 22085, i8 5 }, %struct.ov10635_reg { i16 22086, i8 5 }, %struct.ov10635_reg { i16 22087, i8 5 }, %struct.ov10635_reg { i16 22097, i8 0 }, %struct.ov10635_reg { i16 22098, i8 -128 }, %struct.ov10635_reg { i16 21018, i8 1 }, %struct.ov10635_reg { i16 21019, i8 3 }, %struct.ov10635_reg { i16 21020, i8 6 }, %struct.ov10635_reg { i16 21021, i8 10 }, %struct.ov10635_reg { i16 21022, i8 14 }, %struct.ov10635_reg { i16 21023, i8 18 }, %struct.ov10635_reg { i16 21024, i8 22 }, %struct.ov10635_reg { i16 21027, i8 2 }, %struct.ov10635_reg { i16 21029, i8 4 }, %struct.ov10635_reg { i16 21031, i8 8 }, %struct.ov10635_reg { i16 21033, i8 12 }, %struct.ov10635_reg { i16 21035, i8 18 }, %struct.ov10635_reg { i16 21037, i8 24 }, %struct.ov10635_reg { i16 21039, i8 30 }, %struct.ov10635_reg { i16 21057, i8 4 }, %struct.ov10635_reg { i16 21058, i8 1 }, %struct.ov10635_reg { i16 21059, i8 3 }, %struct.ov10635_reg { i16 21060, i8 6 }, %struct.ov10635_reg { i16 21061, i8 10 }, %struct.ov10635_reg { i16 21062, i8 14 }, %struct.ov10635_reg { i16 21063, i8 18 }, %struct.ov10635_reg { i16 21064, i8 22 }, %struct.ov10635_reg { i16 21066, i8 3 }, %struct.ov10635_reg { i16 21068, i8 4 }, %struct.ov10635_reg { i16 21070, i8 8 }, %struct.ov10635_reg { i16 21072, i8 12 }, %struct.ov10635_reg { i16 21074, i8 18 }, %struct.ov10635_reg { i16 21076, i8 24 }, %struct.ov10635_reg { i16 21078, i8 30 }, %struct.ov10635_reg { i16 17926, i8 12 }, %struct.ov10635_reg { i16 17927, i8 72 }, %struct.ov10635_reg { i16 17930, i8 2 }, %struct.ov10635_reg { i16 17931, i8 72 }, %struct.ov10635_reg { i16 17932, i8 0 }, %struct.ov10635_reg { i16 17952, i8 14 }, %struct.ov10635_reg { i16 18176, i8 4 }, %struct.ov10635_reg { i16 18177, i8 0 }, %struct.ov10635_reg { i16 18178, i8 1 }, %struct.ov10635_reg { i16 16388, i8 4 }, %struct.ov10635_reg { i16 16389, i8 24 }, %struct.ov10635_reg { i16 16385, i8 6 }, %struct.ov10635_reg { i16 16464, i8 34 }, %struct.ov10635_reg { i16 16465, i8 36 }, %struct.ov10635_reg { i16 16466, i8 2 }, %struct.ov10635_reg { i16 16471, i8 -100 }, %struct.ov10635_reg { i16 16474, i8 0 }, %struct.ov10635_reg { i16 16898, i8 2 }, %struct.ov10635_reg { i16 12323, i8 16 }, %struct.ov10635_reg { i16 256, i8 1 }, %struct.ov10635_reg { i16 256, i8 1 }, %struct.ov10635_reg { i16 28432, i8 7 }, %struct.ov10635_reg { i16 28433, i8 -126 }, %struct.ov10635_reg { i16 28434, i8 4 }, %struct.ov10635_reg { i16 28435, i8 0 }, %struct.ov10635_reg { i16 -12288, i8 25 }, %struct.ov10635_reg { i16 -12287, i8 -96 }, %struct.ov10635_reg { i16 -12286, i8 0 }, %struct.ov10635_reg { i16 -12285, i8 1 }, %struct.ov10635_reg { i16 -12284, i8 -87 }, %struct.ov10635_reg { i16 -12283, i8 -83 }, %struct.ov10635_reg { i16 -12282, i8 16 }, %struct.ov10635_reg { i16 -12281, i8 64 }, %struct.ov10635_reg { i16 -12280, i8 68 }, %struct.ov10635_reg { i16 -12279, i8 0 }, %struct.ov10635_reg { i16 -12278, i8 104 }, %struct.ov10635_reg { i16 -12277, i8 0 }, %struct.ov10635_reg { i16 -12276, i8 21 }, %struct.ov10635_reg { i16 -12275, i8 0 }, %struct.ov10635_reg { i16 -12274, i8 0 }, %struct.ov10635_reg { i16 -12273, i8 0 }, %struct.ov10635_reg { i16 -12224, i8 -100 }, %struct.ov10635_reg { i16 -12223, i8 33 }, %struct.ov10635_reg { i16 -12222, i8 -1 }, %struct.ov10635_reg { i16 -12221, i8 -8 }, %struct.ov10635_reg { i16 -12220, i8 -44 }, %struct.ov10635_reg { i16 -12219, i8 1 }, %struct.ov10635_reg { i16 -12218, i8 72 }, %struct.ov10635_reg { i16 -12217, i8 0 }, %struct.ov10635_reg { i16 -12216, i8 -44 }, %struct.ov10635_reg { i16 -12215, i8 1 }, %struct.ov10635_reg { i16 -12214, i8 80 }, %struct.ov10635_reg { i16 -12213, i8 4 }, %struct.ov10635_reg { i16 -12212, i8 24 }, %struct.ov10635_reg { i16 -12211, i8 96 }, %struct.ov10635_reg { i16 -12210, i8 0 }, %struct.ov10635_reg { i16 -12209, i8 1 }, %struct.ov10635_reg { i16 -12208, i8 -88 }, %struct.ov10635_reg { i16 -12207, i8 99 }, %struct.ov10635_reg { i16 -12206, i8 2 }, %struct.ov10635_reg { i16 -12205, i8 -92 }, %struct.ov10635_reg { i16 -12204, i8 -123 }, %struct.ov10635_reg { i16 -12203, i8 67 }, %struct.ov10635_reg { i16 -12202, i8 0 }, %struct.ov10635_reg { i16 -12201, i8 0 }, %struct.ov10635_reg { i16 -12200, i8 24 }, %struct.ov10635_reg { i16 -12199, i8 96 }, %struct.ov10635_reg { i16 -12198, i8 0 }, %struct.ov10635_reg { i16 -12197, i8 1 }, %struct.ov10635_reg { i16 -12196, i8 -88 }, %struct.ov10635_reg { i16 -12195, i8 99 }, %struct.ov10635_reg { i16 -12194, i8 3 }, %struct.ov10635_reg { i16 -12193, i8 -16 }, %struct.ov10635_reg { i16 -12192, i8 -104 }, %struct.ov10635_reg { i16 -12191, i8 -93 }, %struct.ov10635_reg { i16 -12190, i8 0 }, %struct.ov10635_reg { i16 -12189, i8 0 }, %struct.ov10635_reg { i16 -12188, i8 -116 }, %struct.ov10635_reg { i16 -12187, i8 106 }, %struct.ov10635_reg { i16 -12186, i8 0 }, %struct.ov10635_reg { i16 -12185, i8 110 }, %struct.ov10635_reg { i16 -12184, i8 -27 }, %struct.ov10635_reg { i16 -12183, i8 -123 }, %struct.ov10635_reg { i16 -12182, i8 24 }, %struct.ov10635_reg { i16 -12181, i8 0 }, %struct.ov10635_reg { i16 -12180, i8 16 }, %struct.ov10635_reg { i16 -12179, i8 0 }, %struct.ov10635_reg { i16 -12178, i8 0 }, %struct.ov10635_reg { i16 -12177, i8 16 }, %struct.ov10635_reg { i16 -12176, i8 -100 }, %struct.ov10635_reg { i16 -12175, i8 -128 }, %struct.ov10635_reg { i16 -12174, i8 0 }, %struct.ov10635_reg { i16 -12173, i8 3 }, %struct.ov10635_reg { i16 -12172, i8 24 }, %struct.ov10635_reg { i16 -12171, i8 96 }, %struct.ov10635_reg { i16 -12170, i8 0 }, %struct.ov10635_reg { i16 -12169, i8 1 }, %struct.ov10635_reg { i16 -12168, i8 -88 }, %struct.ov10635_reg { i16 -12167, i8 99 }, %struct.ov10635_reg { i16 -12166, i8 7 }, %struct.ov10635_reg { i16 -12165, i8 -128 }, %struct.ov10635_reg { i16 -12164, i8 7 }, %struct.ov10635_reg { i16 -12163, i8 -1 }, %struct.ov10635_reg { i16 -12162, i8 -7 }, %struct.ov10635_reg { i16 -12161, i8 3 }, %struct.ov10635_reg { i16 -12160, i8 -116 }, %struct.ov10635_reg { i16 -12159, i8 99 }, %struct.ov10635_reg { i16 -12158, i8 0 }, %struct.ov10635_reg { i16 -12157, i8 0 }, %struct.ov10635_reg { i16 -12156, i8 -91 }, %struct.ov10635_reg { i16 -12155, i8 107 }, %struct.ov10635_reg { i16 -12154, i8 0 }, %struct.ov10635_reg { i16 -12153, i8 -1 }, %struct.ov10635_reg { i16 -12152, i8 24 }, %struct.ov10635_reg { i16 -12151, i8 -128 }, %struct.ov10635_reg { i16 -12150, i8 0 }, %struct.ov10635_reg { i16 -12149, i8 1 }, %struct.ov10635_reg { i16 -12148, i8 -88 }, %struct.ov10635_reg { i16 -12147, i8 -124 }, %struct.ov10635_reg { i16 -12146, i8 1 }, %struct.ov10635_reg { i16 -12145, i8 4 }, %struct.ov10635_reg { i16 -12144, i8 -31 }, %struct.ov10635_reg { i16 -12143, i8 107 }, %struct.ov10635_reg { i16 -12142, i8 88 }, %struct.ov10635_reg { i16 -12141, i8 0 }, %struct.ov10635_reg { i16 -12140, i8 -108 }, %struct.ov10635_reg { i16 -12139, i8 106 }, %struct.ov10635_reg { i16 -12138, i8 0 }, %struct.ov10635_reg { i16 -12137, i8 112 }, %struct.ov10635_reg { i16 -12136, i8 -31 }, %struct.ov10635_reg { i16 -12135, i8 107 }, %struct.ov10635_reg { i16 -12134, i8 32 }, %struct.ov10635_reg { i16 -12133, i8 0 }, %struct.ov10635_reg { i16 -12132, i8 -107 }, %struct.ov10635_reg { i16 -12131, i8 107 }, %struct.ov10635_reg { i16 -12130, i8 0 }, %struct.ov10635_reg { i16 -12129, i8 0 }, %struct.ov10635_reg { i16 -12128, i8 -28 }, %struct.ov10635_reg { i16 -12127, i8 -117 }, %struct.ov10635_reg { i16 -12126, i8 24 }, %struct.ov10635_reg { i16 -12125, i8 0 }, %struct.ov10635_reg { i16 -12124, i8 12 }, %struct.ov10635_reg { i16 -12123, i8 0 }, %struct.ov10635_reg { i16 -12122, i8 0 }, %struct.ov10635_reg { i16 -12121, i8 35 }, %struct.ov10635_reg { i16 -12120, i8 21 }, %struct.ov10635_reg { i16 -12119, i8 0 }, %struct.ov10635_reg { i16 -12118, i8 0 }, %struct.ov10635_reg { i16 -12117, i8 0 }, %struct.ov10635_reg { i16 -12116, i8 24 }, %struct.ov10635_reg { i16 -12115, i8 96 }, %struct.ov10635_reg { i16 -12114, i8 -128 }, %struct.ov10635_reg { i16 -12113, i8 6 }, %struct.ov10635_reg { i16 -12112, i8 -88 }, %struct.ov10635_reg { i16 -12111, i8 -125 }, %struct.ov10635_reg { i16 -12110, i8 64 }, %struct.ov10635_reg { i16 -12109, i8 8 }, %struct.ov10635_reg { i16 -12108, i8 -88 }, %struct.ov10635_reg { i16 -12107, i8 -29 }, %struct.ov10635_reg { i16 -12106, i8 56 }, %struct.ov10635_reg { i16 -12105, i8 42 }, %struct.ov10635_reg { i16 -12104, i8 -88 }, %struct.ov10635_reg { i16 -12103, i8 -61 }, %struct.ov10635_reg { i16 -12102, i8 64 }, %struct.ov10635_reg { i16 -12101, i8 9 }, %struct.ov10635_reg { i16 -12100, i8 -88 }, %struct.ov10635_reg { i16 -12099, i8 -93 }, %struct.ov10635_reg { i16 -12098, i8 56 }, %struct.ov10635_reg { i16 -12097, i8 41 }, %struct.ov10635_reg { i16 -12096, i8 -116 }, %struct.ov10635_reg { i16 -12095, i8 101 }, %struct.ov10635_reg { i16 -12094, i8 0 }, %struct.ov10635_reg { i16 -12093, i8 0 }, %struct.ov10635_reg { i16 -12092, i8 -40 }, %struct.ov10635_reg { i16 -12091, i8 4 }, %struct.ov10635_reg { i16 -12090, i8 24 }, %struct.ov10635_reg { i16 -12089, i8 0 }, %struct.ov10635_reg { i16 -12088, i8 -116 }, %struct.ov10635_reg { i16 -12087, i8 103 }, %struct.ov10635_reg { i16 -12086, i8 0 }, %struct.ov10635_reg { i16 -12085, i8 0 }, %struct.ov10635_reg { i16 -12084, i8 -40 }, %struct.ov10635_reg { i16 -12083, i8 6 }, %struct.ov10635_reg { i16 -12082, i8 24 }, %struct.ov10635_reg { i16 -12081, i8 0 }, %struct.ov10635_reg { i16 -12080, i8 24 }, %struct.ov10635_reg { i16 -12079, i8 96 }, %struct.ov10635_reg { i16 -12078, i8 -128 }, %struct.ov10635_reg { i16 -12077, i8 6 }, %struct.ov10635_reg { i16 -12076, i8 -88 }, %struct.ov10635_reg { i16 -12075, i8 -29 }, %struct.ov10635_reg { i16 -12074, i8 103 }, %struct.ov10635_reg { i16 -12073, i8 2 }, %struct.ov10635_reg { i16 -12072, i8 -87 }, %struct.ov10635_reg { i16 -12071, i8 3 }, %struct.ov10635_reg { i16 -12070, i8 103 }, %struct.ov10635_reg { i16 -12069, i8 3 }, %struct.ov10635_reg { i16 -12068, i8 -88 }, %struct.ov10635_reg { i16 -12067, i8 -61 }, %struct.ov10635_reg { i16 -12066, i8 61 }, %struct.ov10635_reg { i16 -12065, i8 5 }, %struct.ov10635_reg { i16 -12064, i8 -116 }, %struct.ov10635_reg { i16 -12063, i8 102 }, %struct.ov10635_reg { i16 -12062, i8 0 }, %struct.ov10635_reg { i16 -12061, i8 0 }, %struct.ov10635_reg { i16 -12060, i8 -72 }, %struct.ov10635_reg { i16 -12059, i8 99 }, %struct.ov10635_reg { i16 -12058, i8 0 }, %struct.ov10635_reg { i16 -12057, i8 24 }, %struct.ov10635_reg { i16 -12056, i8 -72 }, %struct.ov10635_reg { i16 -12055, i8 99 }, %struct.ov10635_reg { i16 -12054, i8 0 }, %struct.ov10635_reg { i16 -12053, i8 -104 }, %struct.ov10635_reg { i16 -12052, i8 -68 }, %struct.ov10635_reg { i16 -12051, i8 3 }, %struct.ov10635_reg { i16 -12050, i8 0 }, %struct.ov10635_reg { i16 -12049, i8 0 }, %struct.ov10635_reg { i16 -12048, i8 16 }, %struct.ov10635_reg { i16 -12047, i8 0 }, %struct.ov10635_reg { i16 -12046, i8 0 }, %struct.ov10635_reg { i16 -12045, i8 22 }, %struct.ov10635_reg { i16 -12044, i8 -72 }, %struct.ov10635_reg { i16 -12043, i8 -125 }, %struct.ov10635_reg { i16 -12042, i8 0 }, %struct.ov10635_reg { i16 -12041, i8 25 }, %struct.ov10635_reg { i16 -12040, i8 -116 }, %struct.ov10635_reg { i16 -12039, i8 103 }, %struct.ov10635_reg { i16 -12038, i8 0 }, %struct.ov10635_reg { i16 -12037, i8 0 }, %struct.ov10635_reg { i16 -12036, i8 -72 }, %struct.ov10635_reg { i16 -12035, i8 -92 }, %struct.ov10635_reg { i16 -12034, i8 0 }, %struct.ov10635_reg { i16 -12033, i8 -104 }, %struct.ov10635_reg { i16 -12032, i8 -72 }, %struct.ov10635_reg { i16 -12031, i8 -125 }, %struct.ov10635_reg { i16 -12030, i8 0 }, %struct.ov10635_reg { i16 -12029, i8 8 }, %struct.ov10635_reg { i16 -12028, i8 -116 }, %struct.ov10635_reg { i16 -12027, i8 104 }, %struct.ov10635_reg { i16 -12026, i8 0 }, %struct.ov10635_reg { i16 -12025, i8 0 }, %struct.ov10635_reg { i16 -12024, i8 -32 }, %struct.ov10635_reg { i16 -12023, i8 99 }, %struct.ov10635_reg { i16 -12022, i8 32 }, %struct.ov10635_reg { i16 -12021, i8 4 }, %struct.ov10635_reg { i16 -12020, i8 -32 }, %struct.ov10635_reg { i16 -12019, i8 101 }, %struct.ov10635_reg { i16 -12018, i8 24 }, %struct.ov10635_reg { i16 -12017, i8 0 }, %struct.ov10635_reg { i16 -12016, i8 -92 }, %struct.ov10635_reg { i16 -12015, i8 -125 }, %struct.ov10635_reg { i16 -12014, i8 -1 }, %struct.ov10635_reg { i16 -12013, i8 -1 }, %struct.ov10635_reg { i16 -12012, i8 -72 }, %struct.ov10635_reg { i16 -12011, i8 100 }, %struct.ov10635_reg { i16 -12010, i8 0 }, %struct.ov10635_reg { i16 -12009, i8 72 }, %struct.ov10635_reg { i16 -12008, i8 -40 }, %struct.ov10635_reg { i16 -12007, i8 7 }, %struct.ov10635_reg { i16 -12006, i8 24 }, %struct.ov10635_reg { i16 -12005, i8 0 }, %struct.ov10635_reg { i16 -12004, i8 -40 }, %struct.ov10635_reg { i16 -12003, i8 8 }, %struct.ov10635_reg { i16 -12002, i8 32 }, %struct.ov10635_reg { i16 -12001, i8 0 }, %struct.ov10635_reg { i16 -12000, i8 -100 }, %struct.ov10635_reg { i16 -11999, i8 96 }, %struct.ov10635_reg { i16 -11998, i8 0 }, %struct.ov10635_reg { i16 -11997, i8 0 }, %struct.ov10635_reg { i16 -11996, i8 -40 }, %struct.ov10635_reg { i16 -11995, i8 6 }, %struct.ov10635_reg { i16 -11994, i8 24 }, %struct.ov10635_reg { i16 -11993, i8 0 }, %struct.ov10635_reg { i16 -11992, i8 0 }, %struct.ov10635_reg { i16 -11991, i8 0 }, %struct.ov10635_reg { i16 -11990, i8 0 }, %struct.ov10635_reg { i16 -11989, i8 8 }, %struct.ov10635_reg { i16 -11988, i8 21 }, %struct.ov10635_reg { i16 -11987, i8 0 }, %struct.ov10635_reg { i16 -11986, i8 0 }, %struct.ov10635_reg { i16 -11985, i8 0 }, %struct.ov10635_reg { i16 -11984, i8 -116 }, %struct.ov10635_reg { i16 -11983, i8 106 }, %struct.ov10635_reg { i16 -11982, i8 0 }, %struct.ov10635_reg { i16 -11981, i8 118 }, %struct.ov10635_reg { i16 -11980, i8 -68 }, %struct.ov10635_reg { i16 -11979, i8 35 }, %struct.ov10635_reg { i16 -11978, i8 0 }, %struct.ov10635_reg { i16 -11977, i8 0 }, %struct.ov10635_reg { i16 -11976, i8 19 }, %struct.ov10635_reg { i16 -11975, i8 -1 }, %struct.ov10635_reg { i16 -11974, i8 -1 }, %struct.ov10635_reg { i16 -11973, i8 -26 }, %struct.ov10635_reg { i16 -11972, i8 24 }, %struct.ov10635_reg { i16 -11971, i8 96 }, %struct.ov10635_reg { i16 -11970, i8 -128 }, %struct.ov10635_reg { i16 -11969, i8 6 }, %struct.ov10635_reg { i16 -11968, i8 3 }, %struct.ov10635_reg { i16 -11967, i8 -1 }, %struct.ov10635_reg { i16 -11966, i8 -1 }, %struct.ov10635_reg { i16 -11965, i8 -35 }, %struct.ov10635_reg { i16 -11964, i8 -88 }, %struct.ov10635_reg { i16 -11963, i8 -125 }, %struct.ov10635_reg { i16 -11962, i8 64 }, %struct.ov10635_reg { i16 -11961, i8 8 }, %struct.ov10635_reg { i16 -11960, i8 -123 }, %struct.ov10635_reg { i16 -11959, i8 33 }, %struct.ov10635_reg { i16 -11958, i8 0 }, %struct.ov10635_reg { i16 -11957, i8 0 }, %struct.ov10635_reg { i16 -11956, i8 -123 }, %struct.ov10635_reg { i16 -11955, i8 65 }, %struct.ov10635_reg { i16 -11954, i8 0 }, %struct.ov10635_reg { i16 -11953, i8 4 }, %struct.ov10635_reg { i16 -11952, i8 68 }, %struct.ov10635_reg { i16 -11951, i8 0 }, %struct.ov10635_reg { i16 -11950, i8 72 }, %struct.ov10635_reg { i16 -11949, i8 0 }, %struct.ov10635_reg { i16 -11948, i8 -100 }, %struct.ov10635_reg { i16 -11947, i8 33 }, %struct.ov10635_reg { i16 -11946, i8 0 }, %struct.ov10635_reg { i16 -11945, i8 8 }, %struct.ov10635_reg { i16 28430, i8 3 }, %struct.ov10635_reg { i16 28431, i8 0 }, %struct.ov10635_reg { i16 17934, i8 8 }, %struct.ov10635_reg { i16 17935, i8 1 }, %struct.ov10635_reg { i16 17936, i8 0 }, %struct.ov10635_reg { i16 17937, i8 1 }, %struct.ov10635_reg { i16 17938, i8 0 }, %struct.ov10635_reg { i16 17939, i8 1 }, %struct.ov10635_reg { i16 17925, i8 8 }, %struct.ov10635_reg { i16 18185, i8 16 }, %struct.ov10635_reg { i16 17928, i8 0 }, %struct.ov10635_reg { i16 17929, i8 8 }, %struct.ov10635_reg { i16 26628, i8 0 }, %struct.ov10635_reg { i16 26629, i8 6 }, %struct.ov10635_reg { i16 26630, i8 0 }, %struct.ov10635_reg { i16 20768, i8 0 }, %struct.ov10635_reg { i16 13584, i8 0 }, %struct.ov10635_reg { i16 13572, i8 0 }, %struct.ov10635_reg { i16 26624, i8 0 }, %struct.ov10635_reg { i16 28429, i8 1 }, %struct.ov10635_reg { i16 18184, i8 1 }, %struct.ov10635_reg { i16 20480, i8 -1 }, %struct.ov10635_reg { i16 20481, i8 -65 }, %struct.ov10635_reg { i16 20482, i8 126 }, %struct.ov10635_reg { i16 20541, i8 0 }, %struct.ov10635_reg { i16 -15280, i8 1 }, %struct.ov10635_reg { i16 -15278, i8 4 }, %struct.ov10635_reg { i16 -15277, i8 0 }, %struct.ov10635_reg { i16 -15276, i8 0 }, %struct.ov10635_reg { i16 -15275, i8 1 }, %struct.ov10635_reg { i16 -15274, i8 1 }, %struct.ov10635_reg { i16 -15273, i8 0 }, %struct.ov10635_reg { i16 -15272, i8 0 }, %struct.ov10635_reg { i16 -15271, i8 0 }, %struct.ov10635_reg { i16 -15269, i8 0 }, %struct.ov10635_reg { i16 -15268, i8 1 }, %struct.ov10635_reg { i16 -15267, i8 0 }, %struct.ov10635_reg { i16 -15266, i8 0 }, %struct.ov10635_reg { i16 -15265, i8 0 }, %struct.ov10635_reg { i16 -15264, i8 0 }, %struct.ov10635_reg { i16 -15263, i8 1 }, %struct.ov10635_reg { i16 -15262, i8 1 }, %struct.ov10635_reg { i16 -15260, i8 3 }, %struct.ov10635_reg { i16 -15259, i8 0 }, %struct.ov10635_reg { i16 -15258, i8 -118 }, %struct.ov10635_reg { i16 -15257, i8 0 }, %struct.ov10635_reg { i16 -15256, i8 -122 }, %struct.ov10635_reg { i16 -15255, i8 0 }, %struct.ov10635_reg { i16 -15254, i8 64 }, %struct.ov10635_reg { i16 -15253, i8 80 }, %struct.ov10635_reg { i16 -15252, i8 48 }, %struct.ov10635_reg { i16 -15251, i8 40 }, %struct.ov10635_reg { i16 -15250, i8 96 }, %struct.ov10635_reg { i16 -15249, i8 64 }, %struct.ov10635_reg { i16 -15236, i8 1 }, %struct.ov10635_reg { i16 -15235, i8 56 }, %struct.ov10635_reg { i16 -15234, i8 0 }, %struct.ov10635_reg { i16 -15233, i8 0 }, %struct.ov10635_reg { i16 -15232, i8 0 }, %struct.ov10635_reg { i16 -15231, i8 -1 }, %struct.ov10635_reg { i16 -15230, i8 0 }, %struct.ov10635_reg { i16 -15229, i8 64 }, %struct.ov10635_reg { i16 -15228, i8 0 }, %struct.ov10635_reg { i16 -15227, i8 24 }, %struct.ov10635_reg { i16 -15226, i8 0 }, %struct.ov10635_reg { i16 -15225, i8 24 }, %struct.ov10635_reg { i16 -15224, i8 57 }, %struct.ov10635_reg { i16 -15223, i8 -48 }, %struct.ov10635_reg { i16 -15222, i8 57 }, %struct.ov10635_reg { i16 -15221, i8 -48 }, %struct.ov10635_reg { i16 -15220, i8 0 }, %struct.ov10635_reg { i16 -15219, i8 4 }, %struct.ov10635_reg { i16 -15218, i8 0 }, %struct.ov10635_reg { i16 -15217, i8 4 }, %struct.ov10635_reg { i16 -15216, i8 3 }, %struct.ov10635_reg { i16 -15214, i8 32 }, %struct.ov10635_reg { i16 -15213, i8 8 }, %struct.ov10635_reg { i16 -15208, i8 2 }, %struct.ov10635_reg { i16 -15207, i8 0 }, %struct.ov10635_reg { i16 -15206, i8 2 }, %struct.ov10635_reg { i16 -15205, i8 0 }, %struct.ov10635_reg { i16 -15204, i8 2 }, %struct.ov10635_reg { i16 -15203, i8 0 }, %struct.ov10635_reg { i16 -15202, i8 2 }, %struct.ov10635_reg { i16 -15201, i8 96 }, %struct.ov10635_reg { i16 -15200, i8 3 }, %struct.ov10635_reg { i16 -15199, i8 0 }, %struct.ov10635_reg { i16 -15198, i8 4 }, %struct.ov10635_reg { i16 -15197, i8 0 }, %struct.ov10635_reg { i16 -15196, i8 0 }, %struct.ov10635_reg { i16 -15195, i8 16 }, %struct.ov10635_reg { i16 -15194, i8 0 }, %struct.ov10635_reg { i16 -15193, i8 64 }, %struct.ov10635_reg { i16 -15192, i8 0 }, %struct.ov10635_reg { i16 -15191, i8 -128 }, %struct.ov10635_reg { i16 -15190, i8 13 }, %struct.ov10635_reg { i16 -15189, i8 0 }, %struct.ov10635_reg { i16 -15188, i8 15 }, %struct.ov10635_reg { i16 -15187, i8 -64 }, %struct.ov10635_reg { i16 -15180, i8 1 }, %struct.ov10635_reg { i16 -15179, i8 1 }, %struct.ov10635_reg { i16 -15178, i8 0 }, %struct.ov10635_reg { i16 -15177, i8 1 }, %struct.ov10635_reg { i16 -15176, i8 0 }, %struct.ov10635_reg { i16 -15175, i8 1 }, %struct.ov10635_reg { i16 -15174, i8 1 }, %struct.ov10635_reg { i16 -15173, i8 0 }, %struct.ov10635_reg { i16 -15172, i8 1 }, %struct.ov10635_reg { i16 -15171, i8 96 }, %struct.ov10635_reg { i16 -15170, i8 2 }, %struct.ov10635_reg { i16 -15169, i8 51 }, %struct.ov10635_reg { i16 -15160, i8 3 }, %struct.ov10635_reg { i16 -15159, i8 -48 }, %struct.ov10635_reg { i16 -15158, i8 14 }, %struct.ov10635_reg { i16 -15157, i8 0 }, %struct.ov10635_reg { i16 -15156, i8 14 }, %struct.ov10635_reg { i16 -15155, i8 81 }, %struct.ov10635_reg { i16 -15154, i8 14 }, %struct.ov10635_reg { i16 -15153, i8 81 }, %struct.ov10635_reg { i16 -15152, i8 4 }, %struct.ov10635_reg { i16 -15151, i8 -128 }, %struct.ov10635_reg { i16 -15136, i8 4 }, %struct.ov10635_reg { i16 -15135, i8 2 }, %struct.ov10635_reg { i16 -15134, i8 1 }, %struct.ov10635_reg { i16 -15132, i8 16 }, %struct.ov10635_reg { i16 -15131, i8 32 }, %struct.ov10635_reg { i16 -15130, i8 48 }, %struct.ov10635_reg { i16 -15129, i8 64 }, %struct.ov10635_reg { i16 -15128, i8 80 }, %struct.ov10635_reg { i16 -15127, i8 96 }, %struct.ov10635_reg { i16 -15126, i8 112 }, %struct.ov10635_reg { i16 -15125, i8 -128 }, %struct.ov10635_reg { i16 -15124, i8 -112 }, %struct.ov10635_reg { i16 -15123, i8 -96 }, %struct.ov10635_reg { i16 -15122, i8 -80 }, %struct.ov10635_reg { i16 -15121, i8 -64 }, %struct.ov10635_reg { i16 -15120, i8 -48 }, %struct.ov10635_reg { i16 -15119, i8 -32 }, %struct.ov10635_reg { i16 -15118, i8 -16 }, %struct.ov10635_reg { i16 -15117, i8 -128 }, %struct.ov10635_reg { i16 -15116, i8 0 }, %struct.ov10635_reg { i16 -15115, i8 32 }, %struct.ov10635_reg { i16 -15114, i8 2 }, %struct.ov10635_reg { i16 -15113, i8 0 }, %struct.ov10635_reg { i16 -15112, i8 0 }, %struct.ov10635_reg { i16 -15111, i8 0 }, %struct.ov10635_reg { i16 -15110, i8 0 }, %struct.ov10635_reg { i16 -15109, i8 1 }, %struct.ov10635_reg { i16 -15108, i8 1 }, %struct.ov10635_reg { i16 -15107, i8 0 }, %struct.ov10635_reg { i16 -15106, i8 4 }, %struct.ov10635_reg { i16 -15105, i8 2 }, %struct.ov10635_reg { i16 -15104, i8 72 }, %struct.ov10635_reg { i16 -15103, i8 116 }, %struct.ov10635_reg { i16 -15102, i8 88 }, %struct.ov10635_reg { i16 -15101, i8 -128 }, %struct.ov10635_reg { i16 -15100, i8 5 }, %struct.ov10635_reg { i16 -15099, i8 -128 }, %struct.ov10635_reg { i16 -15098, i8 3 }, %struct.ov10635_reg { i16 -15097, i8 -128 }, %struct.ov10635_reg { i16 -15096, i8 1 }, %struct.ov10635_reg { i16 -15095, i8 -64 }, %struct.ov10635_reg { i16 -15094, i8 1 }, %struct.ov10635_reg { i16 -15093, i8 -96 }, %struct.ov10635_reg { i16 -15092, i8 1 }, %struct.ov10635_reg { i16 -15091, i8 44 }, %struct.ov10635_reg { i16 -15090, i8 1 }, %struct.ov10635_reg { i16 -15089, i8 10 }, %struct.ov10635_reg { i16 -15088, i8 0 }, %struct.ov10635_reg { i16 -15087, i8 0 }, %struct.ov10635_reg { i16 -15086, i8 -27 }, %struct.ov10635_reg { i16 -15085, i8 20 }, %struct.ov10635_reg { i16 -15084, i8 4 }, %struct.ov10635_reg { i16 -15083, i8 0 }, %struct.ov10635_reg { i16 -15080, i8 3 }, %struct.ov10635_reg { i16 -15079, i8 -91 }, %struct.ov10635_reg { i16 -15078, i8 6 }, %struct.ov10635_reg { i16 -15077, i8 36 }, %struct.ov10635_reg { i16 -15648, i8 0 }, %struct.ov10635_reg { i16 -15647, i8 81 }, %struct.ov10635_reg { i16 -15646, i8 0 }, %struct.ov10635_reg { i16 -15645, i8 -42 }, %struct.ov10635_reg { i16 -15644, i8 1 }, %struct.ov10635_reg { i16 -15643, i8 94 }, %struct.ov10635_reg { i16 -15639, i8 1 }, %struct.ov10635_reg { i16 -15638, i8 122 }, %struct.ov10635_reg { i16 -15637, i8 -112 }, %struct.ov10635_reg { i16 -15635, i8 0 }, %struct.ov10635_reg { i16 -15634, i8 122 }, %struct.ov10635_reg { i16 -15633, i8 100 }, %struct.ov10635_reg { i16 -15608, i8 0 }, %struct.ov10635_reg { i16 -15607, i8 0 }, %struct.ov10635_reg { i16 -15606, i8 0 }, %struct.ov10635_reg { i16 -15604, i8 0 }, %struct.ov10635_reg { i16 -15603, i8 1 }, %struct.ov10635_reg { i16 -15602, i8 0 }, %struct.ov10635_reg { i16 -15601, i8 0 }, %struct.ov10635_reg { i16 -15600, i8 1 }, %struct.ov10635_reg { i16 -15599, i8 96 }, %struct.ov10635_reg { i16 -15598, i8 -1 }, %struct.ov10635_reg { i16 -15597, i8 8 }, %struct.ov10635_reg { i16 -15596, i8 1 }, %struct.ov10635_reg { i16 -15595, i8 0 }, %struct.ov10635_reg { i16 -15594, i8 -1 }, %struct.ov10635_reg { i16 -15593, i8 11 }, %struct.ov10635_reg { i16 -15592, i8 0 }, %struct.ov10635_reg { i16 -15591, i8 12 }, %struct.ov10635_reg { i16 -15590, i8 0 }, %struct.ov10635_reg { i16 -15589, i8 -32 }, %struct.ov10635_reg { i16 -15588, i8 0 }, %struct.ov10635_reg { i16 -15587, i8 20 }, %struct.ov10635_reg { i16 -15586, i8 0 }, %struct.ov10635_reg { i16 -15585, i8 -59 }, %struct.ov10635_reg { i16 -15584, i8 -1 }, %struct.ov10635_reg { i16 -15583, i8 75 }, %struct.ov10635_reg { i16 -15582, i8 -1 }, %struct.ov10635_reg { i16 -15581, i8 -16 }, %struct.ov10635_reg { i16 -15580, i8 -1 }, %struct.ov10635_reg { i16 -15579, i8 -24 }, %struct.ov10635_reg { i16 -15578, i8 0 }, %struct.ov10635_reg { i16 -15577, i8 70 }, %struct.ov10635_reg { i16 -15576, i8 -1 }, %struct.ov10635_reg { i16 -15575, i8 -46 }, %struct.ov10635_reg { i16 -15574, i8 -1 }, %struct.ov10635_reg { i16 -15573, i8 -28 }, %struct.ov10635_reg { i16 -15572, i8 -1 }, %struct.ov10635_reg { i16 -15571, i8 -69 }, %struct.ov10635_reg { i16 -15570, i8 0 }, %struct.ov10635_reg { i16 -15569, i8 97 }, %struct.ov10635_reg { i16 -15568, i8 -1 }, %struct.ov10635_reg { i16 -15567, i8 -7 }, %struct.ov10635_reg { i16 -15566, i8 0 }, %struct.ov10635_reg { i16 -15565, i8 -39 }, %struct.ov10635_reg { i16 -15564, i8 0 }, %struct.ov10635_reg { i16 -15563, i8 46 }, %struct.ov10635_reg { i16 -15562, i8 0 }, %struct.ov10635_reg { i16 -15561, i8 -79 }, %struct.ov10635_reg { i16 -15560, i8 -1 }, %struct.ov10635_reg { i16 -15559, i8 100 }, %struct.ov10635_reg { i16 -15558, i8 -1 }, %struct.ov10635_reg { i16 -15557, i8 -21 }, %struct.ov10635_reg { i16 -15556, i8 -1 }, %struct.ov10635_reg { i16 -15555, i8 -24 }, %struct.ov10635_reg { i16 -15554, i8 0 }, %struct.ov10635_reg { i16 -15553, i8 72 }, %struct.ov10635_reg { i16 -15552, i8 -1 }, %struct.ov10635_reg { i16 -15551, i8 -48 }, %struct.ov10635_reg { i16 -15550, i8 -1 }, %struct.ov10635_reg { i16 -15549, i8 -19 }, %struct.ov10635_reg { i16 -15548, i8 -1 }, %struct.ov10635_reg { i16 -15547, i8 -83 }, %struct.ov10635_reg { i16 -15546, i8 0 }, %struct.ov10635_reg { i16 -15545, i8 102 }, %struct.ov10635_reg { i16 -15544, i8 1 }, %struct.ov10635_reg { i16 -15543, i8 0 }, %struct.ov10635_reg { i16 26368, i8 4 }, %struct.ov10635_reg { i16 26369, i8 123 }, %struct.ov10635_reg { i16 26370, i8 -3 }, %struct.ov10635_reg { i16 26371, i8 -7 }, %struct.ov10635_reg { i16 26372, i8 61 }, %struct.ov10635_reg { i16 26373, i8 113 }, %struct.ov10635_reg { i16 26374, i8 120 }, %struct.ov10635_reg { i16 26376, i8 5 }, %struct.ov10635_reg { i16 28422, i8 111 }, %struct.ov10635_reg { i16 28423, i8 0 }, %struct.ov10635_reg { i16 28426, i8 111 }, %struct.ov10635_reg { i16 28427, i8 0 }, %struct.ov10635_reg { i16 28416, i8 3 }, %struct.ov10635_reg { i16 -15540, i8 1 }, %struct.ov10635_reg { i16 -15539, i8 0 }, %struct.ov10635_reg { i16 -15538, i8 70 }, %struct.ov10635_reg { i16 -15537, i8 85 }, %struct.ov10635_reg { i16 -15536, i8 0 }, %struct.ov10635_reg { i16 -15535, i8 64 }, %struct.ov10635_reg { i16 -15534, i8 0 }, %struct.ov10635_reg { i16 -15533, i8 -1 }, %struct.ov10635_reg { i16 -15532, i8 4 }, %struct.ov10635_reg { i16 -15531, i8 8 }, %struct.ov10635_reg { i16 -15530, i8 1 }, %struct.ov10635_reg { i16 -15529, i8 -17 }, %struct.ov10635_reg { i16 -15528, i8 48 }, %struct.ov10635_reg { i16 -15527, i8 1 }, %struct.ov10635_reg { i16 -15526, i8 100 }, %struct.ov10635_reg { i16 -15525, i8 70 }, %struct.ov10635_reg { i16 -15524, i8 0 }, %struct.ov10635_reg { i16 12354, i8 -16 }, %struct.ov10635_reg { i16 12354, i8 -16 }, %struct.ov10635_reg { i16 12354, i8 -16 }, %struct.ov10635_reg { i16 12354, i8 -16 }, %struct.ov10635_reg { i16 12354, i8 -16 }, %struct.ov10635_reg { i16 12354, i8 -16 }, %struct.ov10635_reg { i16 12354, i8 -16 }, %struct.ov10635_reg { i16 12354, i8 -16 }, %struct.ov10635_reg { i16 12354, i8 -16 }, %struct.ov10635_reg { i16 12354, i8 -16 }, %struct.ov10635_reg { i16 12354, i8 -16 }, %struct.ov10635_reg { i16 12354, i8 -16 }, %struct.ov10635_reg { i16 12354, i8 -16 }, %struct.ov10635_reg { i16 12354, i8 -16 }, %struct.ov10635_reg { i16 12354, i8 -16 }, %struct.ov10635_reg { i16 12354, i8 -16 }, %struct.ov10635_reg { i16 12354, i8 -16 }, %struct.ov10635_reg { i16 12354, i8 -16 }, %struct.ov10635_reg { i16 12354, i8 -16 }, %struct.ov10635_reg { i16 12354, i8 -16 }, %struct.ov10635_reg { i16 12354, i8 -16 }, %struct.ov10635_reg { i16 12354, i8 -16 }, %struct.ov10635_reg { i16 12354, i8 -16 }, %struct.ov10635_reg { i16 12354, i8 -16 }, %struct.ov10635_reg { i16 12354, i8 -16 }, %struct.ov10635_reg { i16 12354, i8 -16 }, %struct.ov10635_reg { i16 -15775, i8 1 }, %struct.ov10635_reg { i16 12315, i8 -16 }, %struct.ov10635_reg { i16 12316, i8 -16 }, %struct.ov10635_reg { i16 12314, i8 -16 }, %struct.ov10635_reg { i16 28416, i8 -61 }, %struct.ov10635_reg { i16 -15254, i8 48 }, %struct.ov10635_reg { i16 -15251, i8 32 }, %struct.ov10635_reg { i16 -15260, i8 -124 }, %struct.ov10635_reg { i16 -15259, i8 0 }, %struct.ov10635_reg { i16 28416, i8 3 }, %struct.ov10635_reg { i16 28416, i8 67 }, %struct.ov10635_reg { i16 14364, i8 0 }, %struct.ov10635_reg { i16 14365, i8 64 }, %struct.ov10635_reg { i16 -15276, i8 1 }, %struct.ov10635_reg { i16 28416, i8 -61 }, %struct.ov10635_reg { i16 -15276, i8 0 }, %struct.ov10635_reg { i16 -15183, i8 2 }, %struct.ov10635_reg { i16 -15182, i8 1 }, %struct.ov10635_reg { i16 -15181, i8 3 }, %struct.ov10635_reg { i16 28416, i8 3 }, %struct.ov10635_reg { i16 28416, i8 67 }, %struct.ov10635_reg { i16 14386, i8 0 }, %struct.ov10635_reg { i16 14387, i8 -120 }, %struct.ov10635_reg { i16 14388, i8 3 }, %struct.ov10635_reg { i16 14389, i8 -91 }, %struct.ov10635_reg { i16 12334, i8 1 }], [924 x i8] zeroinitializer }, align 32
@rdacm20_initialize._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.15, ptr @.str.4, i32 550, ptr @.str.24, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Identified RDACM20 camera module\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rdacm20_initialize._entry_ptr.25 = internal global ptr @rdacm20_initialize._entry.22, section ".printk_index", align 4
@ov10635_read16.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.4, ptr @.str.27, i8 0, i8 85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ov10635_read16\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: register 0x%04x write failed (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@ov10635_read16.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.4, ptr @.str.28, i8 0, i8 87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: register 0x%04x read failed (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@ov10635_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.29, ptr @.str.4, i32 373, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ov10635_write\00", [18 x i8] zeroinitializer }, align 32
@ov10635_write._entry_ptr = internal global ptr @ov10635_write._entry, section ".printk_index", align 4
@__ov10635_write.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.4, ptr @.str.31, i8 0, i8 90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__ov10635_write\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s(0x%04x, 0x%02x)\0A\00", [44 x i8] zeroinitializer }, align 32
@ov10635_set_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 390, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: register %u (0x%04x) write failed (%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ov10635_set_regs\00", [47 x i8] zeroinitializer }, align 32
@ov10635_set_regs._entry_ptr = internal global ptr @ov10635_set_regs._entry, section ".printk_index", align 4
@rdacm20_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rdacm20_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@rdacm20_subdev_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @rdacm20_enum_mbus_code, ptr null, ptr null, ptr @rdacm20_get_fmt, ptr @rdacm20_get_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@___asan_gen_.34 = private unnamed_addr constant [19 x i8] c"rdacm20_i2c_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 676, i32 26 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 678, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [15 x i8] c"rdacm20_of_ids\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 670, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 579, i32 56 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 582, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [19 x i8] c"rdacm20_subdev_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 448, i32 37 }
@___asan_gen_.67 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 603, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 621, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 644, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 518, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 527, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 537, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [20 x i8] c"ov10635_regs_wizard\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 65, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 550, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 340, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 347, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 372, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 360, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 388, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant [18 x i8] c"rdacm20_video_ops\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 438, i32 43 }
@___asan_gen_.151 = private unnamed_addr constant [23 x i8] c"rdacm20_subdev_pad_ops\00", align 1
@___asan_gen_.152 = private constant [31 x i8] c"../drivers/media/i2c/rdacm20.c\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 442, i32 41 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__exitcall_rdacm20_i2c_driver_exit, ptr @__initcall__kmod_rdacm20__295_686_rdacm20_i2c_driver_init6, ptr @ov10635_set_regs._entry, ptr @ov10635_set_regs._entry_ptr, ptr @ov10635_write._entry, ptr @ov10635_write._entry_ptr, ptr @rdacm20_i2c_driver_exit, ptr @rdacm20_initialize._entry, ptr @rdacm20_initialize._entry.16, ptr @rdacm20_initialize._entry.19, ptr @rdacm20_initialize._entry.22, ptr @rdacm20_initialize._entry_ptr, ptr @rdacm20_initialize._entry_ptr.18, ptr @rdacm20_initialize._entry_ptr.21, ptr @rdacm20_initialize._entry_ptr.25, ptr @rdacm20_probe._entry, ptr @rdacm20_probe._entry.11, ptr @rdacm20_probe._entry.8, ptr @rdacm20_probe._entry_ptr, ptr @rdacm20_probe._entry_ptr.10, ptr @rdacm20_probe._entry_ptr.13, ptr @rdacm20_i2c_driver, ptr @.str, ptr @rdacm20_of_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @rdacm20_subdev_ops, ptr @rdacm20_probe._key, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @ov10635_regs_wizard, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @rdacm20_video_ops, ptr @rdacm20_subdev_pad_ops], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdacm20_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdacm20_of_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdacm20_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdacm20_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdacm20_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdacm20_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdacm20_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdacm20_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdacm20_initialize._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdacm20_initialize._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov10635_regs_wizard to i32), i32 3620, i32 4544, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdacm20_initialize._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov10635_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov10635_set_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdacm20_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdacm20_subdev_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rdacm20_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @rdacm20_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rdacm20_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @rdacm20_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rdacm20_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fwnode = getelementptr i8, ptr %1, i32 168
  %2 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fwnode, align 4
  tail call void @fwnode_handle_put(ptr noundef %3) #7
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #7
  %ctrls = getelementptr i8, ptr %1, i32 228
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls) #7
  %sensor = getelementptr i8, ptr %1, i32 -4
  %4 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sensor, align 4
  tail call void @i2c_unregister_device(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rdacm20_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 432, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 4
  %serializer = getelementptr inbounds %struct.rdacm20_device, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %serializer to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %client, ptr %serializer, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %addrs = getelementptr inbounds %struct.rdacm20_device, ptr %call.i, i32 0, i32 6
  %call.i118 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef %addrs, i32 noundef 2, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118)
  %cmp = icmp slt i32 %call.i118, 0
  br i1 %cmp, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2, i32 noundef %call.i118) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 8
  %call10 = tail call ptr @i2c_new_dummy_device(ptr noundef %7, i16 noundef zeroext 48) #7
  %sensor = getelementptr inbounds %struct.rdacm20_device, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %sensor to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call10, ptr %sensor, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call10 to i32
  br label %error61

if.end16:                                         ; preds = %if.end9
  tail call void @max9271_wake_up(ptr noundef %serializer) #7
  %call.i119 = tail call i32 @max9271_set_serial_link(ptr noundef %serializer, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %tobool.not.i = icmp eq i32 %call.i119, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end16.rdacm20_initialize.exit_crit_edge

if.end16.rdacm20_initialize.exit_crit_edge:       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %rdacm20_initialize.exit

if.end.i:                                         ; preds = %if.end16
  %call3.i = tail call i32 @max9271_configure_i2c(ptr noundef %serializer, i8 noundef zeroext 46) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.rdacm20_initialize.exit_crit_edge

if.end.i.rdacm20_initialize.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rdacm20_initialize.exit

if.end6.i:                                        ; preds = %if.end.i
  %call8.i = tail call i32 @max9271_enable_gpios(ptr noundef %serializer, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end6.i.rdacm20_initialize.exit_crit_edge

if.end6.i.rdacm20_initialize.exit_crit_edge:      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rdacm20_initialize.exit

if.end11.i:                                       ; preds = %if.end6.i
  %call13.i = tail call i32 @max9271_clear_gpios(ptr noundef %serializer, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end11.i.rdacm20_initialize.exit_crit_edge

if.end11.i.rdacm20_initialize.exit_crit_edge:     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rdacm20_initialize.exit

if.end16.i:                                       ; preds = %if.end11.i
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 500, i32 noundef 2) #7
  %call18.i = tail call i32 @max9271_configure_gmsl_link(ptr noundef %serializer) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.end16.i.rdacm20_initialize.exit_crit_edge

if.end16.i.rdacm20_initialize.exit_crit_edge:     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rdacm20_initialize.exit

if.end21.i:                                       ; preds = %if.end16.i
  %call23.i = tail call i32 @max9271_verify_id(ptr noundef %serializer) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp.i120 = icmp slt i32 %call23.i, 0
  br i1 %cmp.i120, label %if.end21.i.error61thread-pre-split_crit_edge, label %if.end25.i

if.end21.i.error61thread-pre-split_crit_edge:     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error61thread-pre-split

if.end25.i:                                       ; preds = %if.end21.i
  %10 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addrs, align 4
  %conv.i = trunc i32 %11 to i8
  %call27.i = tail call i32 @max9271_set_address(ptr noundef %serializer, i8 noundef zeroext %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %cmp28.i = icmp slt i32 %call27.i, 0
  br i1 %cmp28.i, label %if.end25.i.error61thread-pre-split_crit_edge, label %if.end31.i

if.end25.i.error61thread-pre-split_crit_edge:     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error61thread-pre-split

if.end31.i:                                       ; preds = %if.end25.i
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
  %call37.i = tail call i32 @max9271_set_gpios(ptr noundef %serializer, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.end40.i, label %if.end31.i.rdacm20_initialize.exit_crit_edge

if.end31.i.rdacm20_initialize.exit_crit_edge:     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rdacm20_initialize.exit

if.end40.i:                                       ; preds = %if.end31.i
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 500, i32 noundef 2) #7
  br label %again.i

again.i:                                          ; preds = %again.backedge.i, %if.end40.i
  %retry.0.i = phi i32 [ 3, %if.end40.i ], [ %retry.0.be.i, %again.backedge.i ]
  %call41.i = tail call fastcc i32 @ov10635_read16(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %cmp42.i = icmp slt i32 %call41.i, 0
  br i1 %cmp42.i, label %if.then44.i, label %if.end49.i

if.then44.i:                                      ; preds = %again.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retry.0.i)
  %tobool45.not.i = icmp eq i32 %retry.0.i, 0
  br i1 %tobool45.not.i, label %do.end.i, label %if.then44.i.again.backedge.i_crit_edge

if.then44.i.again.backedge.i_crit_edge:           ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %again.backedge.i

again.backedge.i:                                 ; preds = %if.then52.i.again.backedge.i_crit_edge, %if.then44.i.again.backedge.i_crit_edge
  %retry.0.be.i = add i32 %retry.0.i, -1
  br label %again.i

do.end.i:                                         ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.14, i32 noundef %call41.i) #10
  br label %error61thread-pre-split

if.end49.i:                                       ; preds = %again.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 42549, i32 %call41.i)
  %cmp50.not.i = icmp eq i32 %call41.i, 42549
  br i1 %cmp50.not.i, label %if.end61.i, label %if.then52.i

if.then52.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retry.0.i)
  %tobool54.not.i = icmp eq i32 %retry.0.i, 0
  br i1 %tobool54.not.i, label %do.end59.i, label %if.then52.i.again.backedge.i_crit_edge

if.then52.i.again.backedge.i_crit_edge:           ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %again.backedge.i

do.end59.i:                                       ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.17, i32 noundef %call41.i) #10
  br label %error61thread-pre-split

if.end61.i:                                       ; preds = %if.end49.i
  %arrayidx63.i = getelementptr %struct.rdacm20_device, ptr %call.i, i32 0, i32 6, i32 1
  %21 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx63.i, align 4
  %.tr.i = trunc i32 %22 to i8
  %23 = shl i8 %.tr.i, 1
  %conv64.i = or i8 %23, 1
  %call65.i = tail call fastcc i32 @ov10635_write(ptr noundef nonnull %call.i, i8 noundef zeroext %conv64.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %cmp66.i = icmp slt i32 %call65.i, 0
  br i1 %cmp66.i, label %do.end71.i, label %if.end73.i

do.end71.i:                                       ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.20, i32 noundef %call65.i) #10
  br label %error61thread-pre-split

if.end73.i:                                       ; preds = %if.end61.i
  %26 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx63.i, align 4
  %conv76.i = trunc i32 %27 to i16
  %28 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sensor, align 4
  %addr77.i = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %addr77.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv76.i, ptr %addr77.i, align 2
  tail call void @usleep_range_state(i32 noundef 3500, i32 noundef 5000, i32 noundef 2) #7
  %call78.i = tail call fastcc i32 @ov10635_set_regs(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78.i)
  %tobool79.not.i = icmp eq i32 %call78.i, 0
  br i1 %tobool79.not.i, label %do.end84.i, label %if.end73.i.rdacm20_initialize.exit_crit_edge

if.end73.i.rdacm20_initialize.exit_crit_edge:     ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rdacm20_initialize.exit

do.end84.i:                                       ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.23) #10
  %call87.i = tail call i32 @max9271_set_high_threshold(ptr noundef %serializer, i1 noundef zeroext true) #7
  br label %rdacm20_initialize.exit

rdacm20_initialize.exit:                          ; preds = %do.end84.i, %if.end73.i.rdacm20_initialize.exit_crit_edge, %if.end31.i.rdacm20_initialize.exit_crit_edge, %if.end16.i.rdacm20_initialize.exit_crit_edge, %if.end11.i.rdacm20_initialize.exit_crit_edge, %if.end6.i.rdacm20_initialize.exit_crit_edge, %if.end.i.rdacm20_initialize.exit_crit_edge, %if.end16.rdacm20_initialize.exit_crit_edge
  %retval.0.i = phi i32 [ %call87.i, %do.end84.i ], [ %call.i119, %if.end16.rdacm20_initialize.exit_crit_edge ], [ %call3.i, %if.end.i.rdacm20_initialize.exit_crit_edge ], [ %call8.i, %if.end6.i.rdacm20_initialize.exit_crit_edge ], [ %call13.i, %if.end11.i.rdacm20_initialize.exit_crit_edge ], [ %call18.i, %if.end16.i.rdacm20_initialize.exit_crit_edge ], [ %call37.i, %if.end31.i.rdacm20_initialize.exit_crit_edge ], [ %call78.i, %if.end73.i.rdacm20_initialize.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp18 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp18, label %rdacm20_initialize.exit.error61thread-pre-split_crit_edge, label %if.end20

rdacm20_initialize.exit.error61thread-pre-split_crit_edge: ; preds = %rdacm20_initialize.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %error61thread-pre-split

if.end20:                                         ; preds = %rdacm20_initialize.exit
  %sd = getelementptr inbounds %struct.rdacm20_device, ptr %call.i, i32 0, i32 3
  tail call void @v4l2_i2c_subdev_init(ptr noundef %sd, ptr noundef %client, ptr noundef nonnull @rdacm20_subdev_ops) #7
  %flags = getelementptr inbounds %struct.rdacm20_device, ptr %call.i, i32 0, i32 3, i32 4
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags, align 4
  %or = or i32 %34, 4
  store i32 %or, ptr %flags, align 4
  %ctrls = getelementptr inbounds %struct.rdacm20_device, ptr %call.i, i32 0, i32 5
  %call22 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrls, i32 noundef 1, ptr noundef nonnull @rdacm20_probe._key, ptr noundef nonnull @.str.7) #7
  %call24 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef null, i32 noundef 10422530, i64 noundef 44000000, i64 noundef 44000000, i64 noundef 1, i64 noundef 44000000) #7
  %ctrl_handler = getelementptr inbounds %struct.rdacm20_device, ptr %call.i, i32 0, i32 3, i32 8
  %35 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %ctrls, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.rdacm20_device, ptr %call.i, i32 0, i32 5, i32 9
  %36 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool28.not = icmp eq i32 %37, 0
  br i1 %tobool28.not, label %if.end30, label %if.end20.error_free_ctrls_crit_edge

if.end20.error_free_ctrls_crit_edge:              ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_free_ctrls

if.end30:                                         ; preds = %if.end20
  %pad = getelementptr inbounds %struct.rdacm20_device, ptr %call.i, i32 0, i32 4
  %flags31 = getelementptr inbounds %struct.rdacm20_device, ptr %call.i, i32 0, i32 4, i32 4
  %38 = ptrtoint ptr %flags31 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2, ptr %flags31, align 4
  %flags33 = getelementptr inbounds %struct.rdacm20_device, ptr %call.i, i32 0, i32 3, i32 0, i32 4
  %39 = ptrtoint ptr %flags33 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags33, align 4
  %or34 = or i32 %40, 131073
  store i32 %or34, ptr %flags33, align 4
  %call38 = tail call i32 @media_entity_pads_init(ptr noundef %sd, i16 noundef zeroext 1, ptr noundef %pad) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.end30.error_free_ctrls_crit_edge, label %if.end41

if.end30.error_free_ctrls_crit_edge:              ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_free_ctrls

if.end41:                                         ; preds = %if.end30
  %call43 = tail call ptr @dev_fwnode(ptr noundef %dev1) #7
  %call44 = tail call ptr @fwnode_graph_get_next_endpoint(ptr noundef %call43, ptr noundef null) #7
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %do.end49, label %if.end53

do.end49:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %of_node, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, ptr noundef %42) #10
  br label %error_free_ctrls

if.end53:                                         ; preds = %if.end41
  %fwnode = getelementptr inbounds %struct.rdacm20_device, ptr %call.i, i32 0, i32 3, i32 15
  %43 = ptrtoint ptr %fwnode to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call44, ptr %fwnode, align 4
  %call56 = tail call i32 @v4l2_async_register_subdev(ptr noundef %sd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end53.cleanup_crit_edge, label %error_put_node

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

error_put_node:                                   ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @fwnode_handle_put(ptr noundef nonnull %call44) #7
  br label %error_free_ctrls

error_free_ctrls:                                 ; preds = %error_put_node, %do.end49, %if.end30.error_free_ctrls_crit_edge, %if.end20.error_free_ctrls_crit_edge
  %ret.0 = phi i32 [ %37, %if.end20.error_free_ctrls_crit_edge ], [ %call38, %if.end30.error_free_ctrls_crit_edge ], [ %call56, %error_put_node ], [ -2, %do.end49 ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls) #7
  br label %error61thread-pre-split

error61thread-pre-split:                          ; preds = %error_free_ctrls, %rdacm20_initialize.exit.error61thread-pre-split_crit_edge, %do.end71.i, %do.end59.i, %do.end.i, %if.end25.i.error61thread-pre-split_crit_edge, %if.end21.i.error61thread-pre-split_crit_edge
  %ret.1.ph = phi i32 [ %ret.0, %error_free_ctrls ], [ %retval.0.i, %rdacm20_initialize.exit.error61thread-pre-split_crit_edge ], [ %call27.i, %if.end25.i.error61thread-pre-split_crit_edge ], [ %call23.i, %if.end21.i.error61thread-pre-split_crit_edge ], [ %call65.i, %do.end71.i ], [ -6, %do.end59.i ], [ -6, %do.end.i ]
  %44 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pr = load ptr, ptr %sensor, align 4
  br label %error61

error61:                                          ; preds = %error61thread-pre-split, %if.then13
  %45 = phi ptr [ %.pr, %error61thread-pre-split ], [ %call10, %if.then13 ]
  %ret.1 = phi i32 [ %ret.1.ph, %error61thread-pre-split ], [ %9, %if.then13 ]
  %tobool65.not = icmp eq ptr %45, null
  br i1 %tobool65.not, label %error61.do.end71_crit_edge, label %if.then66

error61.do.end71_crit_edge:                       ; preds = %error61
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end71

if.then66:                                        ; preds = %error61
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_unregister_device(ptr noundef nonnull %45) #7
  br label %do.end71

do.end71:                                         ; preds = %if.then66, %error61.do.end71_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end71, %if.end53.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.1, %do.end71 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end53.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rdacm20_shutdown(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %serializer.i = getelementptr i8, ptr %1, i32 -8
  %call1.i = tail call i32 @max9271_set_serial_link(ptr noundef %serializer.i, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

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
declare dso_local i32 @max9271_enable_gpios(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max9271_clear_gpios(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max9271_configure_gmsl_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max9271_verify_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max9271_set_address(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max9271_set_gpios(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov10635_read16(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #7
  %0 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 48, ptr %buf, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 10, ptr %0, align 1
  %sensor = getelementptr inbounds %struct.rdacm20_device, ptr %dev, i32 0, i32 2
  %3 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sensor, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %4, ptr noundef nonnull %buf, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 2
  br i1 %cmp.not, label %if.end11, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov10635_read16.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov10635_read16, %if.then8)) #7
          to label %cleanup [label %if.then8], !srcloc !92

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov10635_read16.__UNIQUE_ID_ddebug292, ptr noundef %6, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, i32 noundef 12298, i32 noundef %call.i) #7
  br label %cleanup

if.end11:                                         ; preds = %entry
  %7 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sensor, align 4
  %call.i4 = call i32 @i2c_transfer_buffer_flags(ptr noundef %8, ptr noundef nonnull %buf, i32 noundef 2, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4)
  %cmp15 = icmp slt i32 %call.i4, 0
  br i1 %cmp15, label %do.body18, label %if.end36

do.body18:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov10635_read16.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov10635_read16, %if.then30)) #7
          to label %cleanup [label %if.then30], !srcloc !92

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov10635_read16.__UNIQUE_ID_ddebug293, ptr noundef %10, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.26, i32 noundef 12298, i32 noundef %call.i4) #7
  br label %cleanup

if.end36:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %buf, align 1
  %conv37 = zext i8 %12 to i32
  %shl = shl nuw nsw i32 %conv37, 8
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %0, align 1
  %conv39 = zext i8 %14 to i32
  %or = or i32 %shl, %conv39
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then30, %do.body18, %if.then8, %do.body
  %retval.0 = phi i32 [ %or, %if.end36 ], [ %call.i, %if.then8 ], [ %call.i4, %if.then30 ], [ %call.i, %do.body ], [ %call.i4, %do.body18 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov10635_write(ptr nocapture noundef readonly %dev, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #7
  %0 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %2 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 48, ptr %buf.i, align 1
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 12, ptr %0, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %val, ptr %1, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ov10635_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov10635_write, %if.then.i)) #7
          to label %__ov10635_write.exit [label %if.then.i], !srcloc !92

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %conv9.i = zext i8 %val to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__ov10635_write.__UNIQUE_ID_ddebug294, ptr noundef %6, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30, i32 noundef 12300, i32 noundef %conv9.i) #7
  br label %__ov10635_write.exit

__ov10635_write.exit:                             ; preds = %if.then.i, %entry
  %sensor.i = getelementptr inbounds %struct.rdacm20_device, ptr %dev, i32 0, i32 2
  %7 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sensor.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %8, ptr noundef nonnull %buf.i, i32 noundef 3, i16 noundef zeroext 0) #7
  %9 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end, label %__ov10635_write.exit.if.end_crit_edge

__ov10635_write.exit.if.end_crit_edge:            ; preds = %__ov10635_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %__ov10635_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.29, i32 noundef 12300, i32 noundef %9) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %__ov10635_write.exit.if.end_crit_edge
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov10635_set_regs(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %sensor.i = getelementptr inbounds %struct.rdacm20_device, ptr %dev, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.02 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ov10635_reg, ptr @ov10635_regs_wizard, i32 %i.02
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %val = getelementptr %struct.ov10635_reg, ptr @ov10635_regs_wizard, i32 %i.02, i32 1
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %val, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #7
  %6 = lshr i16 %3, 8
  %conv1.i = trunc i16 %6 to i8
  %7 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv1.i, ptr %buf.i, align 1
  %conv3.i = trunc i16 %3 to i8
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv3.i, ptr %0, align 1
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %5, ptr %1, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ov10635_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov10635_set_regs, %if.then.i)) #7
          to label %__ov10635_write.exit [label %if.then.i], !srcloc !92

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i16 %3 to i32
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %conv9.i = zext i8 %5 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__ov10635_write.__UNIQUE_ID_ddebug294, ptr noundef %11, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30, i32 noundef %conv.i, i32 noundef %conv9.i) #7
  br label %__ov10635_write.exit

__ov10635_write.exit:                             ; preds = %if.then.i, %for.body
  %12 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sensor.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %13, ptr noundef nonnull %buf.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %for.inc, label %do.end

do.end:                                           ; preds = %__ov10635_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %conv = zext i16 %3 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef %i.02, i32 noundef %conv, i32 noundef %call.i.i) #10
  br label %cleanup

for.inc:                                          ; preds = %__ov10635_write.exit
  %inc = add nuw nsw i32 %i.02, 1
  %exitcond.not = icmp eq i32 %inc, 905
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max9271_set_high_threshold(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rdacm20_s_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %serializer = getelementptr i8, ptr %sd, i32 -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool = icmp ne i32 %enable, 0
  %call1 = tail call i32 @max9271_set_serial_link(ptr noundef %serializer, i1 noundef zeroext %tobool) #7
  ret i32 %call1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rdacm20_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #5 align 64 {
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

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rdacm20_get_fmt(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %format) #5 align 64 {
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
  %2 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1280, ptr %format1, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 800, ptr %height, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8198, ptr %code, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %5 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 11, ptr %colorspace, align 4
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %field, align 4
  %7 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 5
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %7, align 4
  %quantization = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 6
  %9 = ptrtoint ptr %quantization to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %quantization, align 2
  %xfer_func = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 7
  %10 = ptrtoint ptr %xfer_func to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 5, ptr %xfer_func, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !73, !75, !77, !79, !81}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__initcall__kmod_rdacm20__295_686_rdacm20_i2c_driver_init6, !1, !"__initcall__kmod_rdacm20__295_686_rdacm20_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/rdacm20.c", i32 686, i32 1}
!2 = !{ptr @__exitcall_rdacm20_i2c_driver_exit, !1, !"__exitcall_rdacm20_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description296, !4, !"__UNIQUE_ID_description296", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/rdacm20.c", i32 688, i32 1}
!5 = !{ptr @__UNIQUE_ID_author297, !6, !"__UNIQUE_ID_author297", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/rdacm20.c", i32 689, i32 1}
!7 = !{ptr @__UNIQUE_ID_file298, !8, !"__UNIQUE_ID_file298", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/rdacm20.c", i32 690, i32 1}
!9 = !{ptr @__UNIQUE_ID_license299, !8, !"__UNIQUE_ID_license299", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/rdacm20.c", i32 678, i32 11}
!12 = !{ptr @rdacm20_i2c_driver, !13, !"rdacm20_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/rdacm20.c", i32 676, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/rdacm20.c", i32 579, i32 56}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/rdacm20.c", i32 582, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @rdacm20_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @rdacm20_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @rdacm20_probe._key, !25, !"_key", i1 false, i1 false}
!25 = !{!"../drivers/media/i2c/rdacm20.c", i32 603, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/i2c/rdacm20.c", i32 621, i32 3}
!29 = !{ptr @rdacm20_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @rdacm20_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/i2c/rdacm20.c", i32 644, i32 2}
!33 = !{ptr @rdacm20_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @rdacm20_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/i2c/rdacm20.c", i32 518, i32 3}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @rdacm20_initialize._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @rdacm20_initialize._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/i2c/rdacm20.c", i32 527, i32 3}
!42 = !{ptr @rdacm20_initialize._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @rdacm20_initialize._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/i2c/rdacm20.c", i32 537, i32 3}
!46 = !{ptr @rdacm20_initialize._entry.19, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @rdacm20_initialize._entry_ptr.21, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/i2c/rdacm20.c", i32 550, i32 2}
!50 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @rdacm20_initialize._entry.22, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @rdacm20_initialize._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/i2c/rdacm20.c", i32 340, i32 3}
!55 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @ov10635_read16.__UNIQUE_ID_ddebug292, !54, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/i2c/rdacm20.c", i32 347, i32 3}
!59 = !{ptr @ov10635_read16.__UNIQUE_ID_ddebug293, !58, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/i2c/rdacm20.c", i32 372, i32 3}
!62 = !{ptr @ov10635_write._entry, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @ov10635_write._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/i2c/rdacm20.c", i32 360, i32 2}
!66 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @__ov10635_write.__UNIQUE_ID_ddebug294, !65, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/i2c/rdacm20.c", i32 388, i32 4}
!70 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @ov10635_set_regs._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @ov10635_set_regs._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @ov10635_regs_wizard, !74, !"ov10635_regs_wizard", i1 false, i1 false}
!74 = !{!"../drivers/media/i2c/rdacm20.c", i32 65, i32 3}
!75 = !{ptr @rdacm20_subdev_ops, !76, !"rdacm20_subdev_ops", i1 false, i1 false}
!76 = !{!"../drivers/media/i2c/rdacm20.c", i32 448, i32 37}
!77 = !{ptr @rdacm20_video_ops, !78, !"rdacm20_video_ops", i1 false, i1 false}
!78 = !{!"../drivers/media/i2c/rdacm20.c", i32 438, i32 43}
!79 = !{ptr @rdacm20_subdev_pad_ops, !80, !"rdacm20_subdev_pad_ops", i1 false, i1 false}
!80 = !{!"../drivers/media/i2c/rdacm20.c", i32 442, i32 41}
!81 = !{ptr @rdacm20_of_ids, !82, !"rdacm20_of_ids", i1 false, i1 false}
!82 = !{!"../drivers/media/i2c/rdacm20.c", i32 670, i32 34}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{i64 2148782692, i64 2148782697, i64 2148782710, i64 2148782754, i64 2148782788, i64 2148782809}
