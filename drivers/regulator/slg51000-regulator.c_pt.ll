; ModuleID = '/llk/IR_all_yes/drivers/regulator/slg51000-regulator.c_pt.bc'
source_filename = "../drivers/regulator/slg51000-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.slg51000 = type { ptr, ptr, [7 x ptr], [7 x ptr], ptr, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_slg51000_regulator__292_511_slg51000_regulator_driver_init6 = internal global ptr @slg51000_regulator_driver_init, section ".initcall6.init", align 4
@slg51000_regulator_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @slg51000_i2c_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @slg51000_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_slg51000_regulator_driver_exit = internal global ptr @slg51000_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author293 = internal constant [73 x i8] c"slg51000_regulator.author=Eric Jeong <eric.jeong.opensource@diasemi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [57 x i8] c"slg51000_regulator.description=SLG51000 regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [61 x i8] c"slg51000_regulator.file=drivers/regulator/slg51000-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [31 x i8] c"slg51000_regulator.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"slg51000-regulator\00", [45 x i8] zeroinitializer }, align 32
@slg51000_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"slg51000\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dlg,cs\00", [25 x i8] zeroinitializer }, align 32
@slg51000_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 456, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Found chip selector property\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"slg51000_i2c_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/regulator/slg51000-regulator.c\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@slg51000_i2c_probe._entry_ptr = internal global ptr @slg51000_i2c_probe._entry, section ".printk_index", align 4
@slg51000_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@slg51000_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 32768, ptr @slg51000_writeable_table, ptr @slg51000_readable_table, ptr @slg51000_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"slg51000_regulator:463:(&slg51000_regmap_config)->lock\00", [41 x i8] zeroinitializer }, align 32
@slg51000_i2c_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 467, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@slg51000_i2c_probe._entry_ptr.11 = internal global ptr @slg51000_i2c_probe._entry.8, section ".printk_index", align 4
@slg51000_i2c_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 473, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to init regulator(%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@slg51000_i2c_probe._entry_ptr.14 = internal global ptr @slg51000_i2c_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"slg51000-irq\00", [19 x i8] zeroinitializer }, align 32
@slg51000_i2c_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 487, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@slg51000_i2c_probe._entry_ptr.18 = internal global ptr @slg51000_i2c_probe._entry.16, section ".printk_index", align 4
@slg51000_i2c_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 491, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"No IRQ configured\0A\00", [45 x i8] zeroinitializer }, align 32
@slg51000_i2c_probe._entry_ptr.21 = internal global ptr @slg51000_i2c_probe._entry.19, section ".printk_index", align 4
@slg51000_writeable_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @slg51000_writeable_ranges, i32 23, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@slg51000_readable_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @slg51000_readable_ranges, i32 43, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@slg51000_volatile_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @slg51000_volatile_ranges, i32 10, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@slg51000_writeable_ranges = internal constant { [23 x %struct.regmap_range], [40 x i8] } { [23 x %struct.regmap_range] [%struct.regmap_range { i32 4365, i32 4365 }, %struct.regmap_range { i32 8192, i32 8192 }, %struct.regmap_range { i32 8288, i32 8289 }, %struct.regmap_range { i32 8386, i32 8386 }, %struct.regmap_range { i32 8704, i32 8704 }, %struct.regmap_range { i32 8800, i32 8801 }, %struct.regmap_range { i32 8898, i32 8898 }, %struct.regmap_range { i32 8960, i32 8960 }, %struct.regmap_range { i32 9056, i32 9057 }, %struct.regmap_range { i32 9154, i32 9154 }, %struct.regmap_range { i32 9472, i32 9472 }, %struct.regmap_range { i32 9568, i32 9569 }, %struct.regmap_range { i32 9666, i32 9666 }, %struct.regmap_range { i32 9984, i32 9984 }, %struct.regmap_range { i32 10080, i32 10081 }, %struct.regmap_range { i32 10178, i32 10178 }, %struct.regmap_range { i32 10496, i32 10496 }, %struct.regmap_range { i32 10592, i32 10593 }, %struct.regmap_range { i32 10690, i32 10690 }, %struct.regmap_range { i32 12544, i32 12544 }, %struct.regmap_range { i32 12640, i32 12641 }, %struct.regmap_range { i32 12738, i32 12738 }, %struct.regmap_range { i32 30765, i32 30765 }], [40 x i8] zeroinitializer }, align 32
@slg51000_readable_ranges = internal constant { [43 x %struct.regmap_range], [72 x i8] } { [43 x %struct.regmap_range] [%struct.regmap_range { i32 4357, i32 4359 }, %struct.regmap_range { i32 4361, i32 4361 }, %struct.regmap_range { i32 4364, i32 4366 }, %struct.regmap_range { i32 4369, i32 4370 }, %struct.regmap_range { i32 4373, i32 4376 }, %struct.regmap_range { i32 5376, i32 5382 }, %struct.regmap_range { i32 5632, i32 5643 }, %struct.regmap_range { i32 5888, i32 5951 }, %struct.regmap_range { i32 6400, i32 6422 }, %struct.regmap_range { i32 8192, i32 8192 }, %struct.regmap_range { i32 8288, i32 8289 }, %struct.regmap_range { i32 8292, i32 8293 }, %struct.regmap_range { i32 8384, i32 8386 }, %struct.regmap_range { i32 8704, i32 8704 }, %struct.regmap_range { i32 8800, i32 8801 }, %struct.regmap_range { i32 8804, i32 8805 }, %struct.regmap_range { i32 8896, i32 8898 }, %struct.regmap_range { i32 8960, i32 8960 }, %struct.regmap_range { i32 9056, i32 9057 }, %struct.regmap_range { i32 9060, i32 9062 }, %struct.regmap_range { i32 9152, i32 9154 }, %struct.regmap_range { i32 9472, i32 9472 }, %struct.regmap_range { i32 9568, i32 9569 }, %struct.regmap_range { i32 9572, i32 9574 }, %struct.regmap_range { i32 9664, i32 9666 }, %struct.regmap_range { i32 9984, i32 9984 }, %struct.regmap_range { i32 10080, i32 10081 }, %struct.regmap_range { i32 10083, i32 10083 }, %struct.regmap_range { i32 10085, i32 10087 }, %struct.regmap_range { i32 10176, i32 10178 }, %struct.regmap_range { i32 10496, i32 10496 }, %struct.regmap_range { i32 10592, i32 10593 }, %struct.regmap_range { i32 10595, i32 10595 }, %struct.regmap_range { i32 10597, i32 10599 }, %struct.regmap_range { i32 10688, i32 10690 }, %struct.regmap_range { i32 12544, i32 12544 }, %struct.regmap_range { i32 12640, i32 12641 }, %struct.regmap_range { i32 12644, i32 12646 }, %struct.regmap_range { i32 12736, i32 12738 }, %struct.regmap_range { i32 30763, i32 30763 }, %struct.regmap_range { i32 30765, i32 30765 }, %struct.regmap_range { i32 30974, i32 30975 }, %struct.regmap_range { i32 32768, i32 32768 }], [72 x i8] zeroinitializer }, align 32
@slg51000_volatile_ranges = internal constant { [10 x %struct.regmap_range], [48 x i8] } { [10 x %struct.regmap_range] [%struct.regmap_range { i32 4373, i32 4375 }, %struct.regmap_range { i32 5382, i32 5382 }, %struct.regmap_range { i32 8384, i32 8385 }, %struct.regmap_range { i32 8896, i32 8897 }, %struct.regmap_range { i32 9152, i32 9153 }, %struct.regmap_range { i32 9664, i32 9665 }, %struct.regmap_range { i32 10176, i32 10177 }, %struct.regmap_range { i32 10688, i32 10689 }, %struct.regmap_range { i32 12736, i32 12737 }, %struct.regmap_range { i32 30763, i32 30763 }], [48 x i8] zeroinitializer }, align 32
@__const.slg51000_regulator_init.min_regs = private unnamed_addr constant [7 x i32] [i32 8288, i32 8800, i32 9056, i32 9568, i32 10080, i32 10592, i32 12640], align 4
@regls_desc = internal global { [7 x %struct.regulator_desc], [436 x i8] } { [7 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.33, ptr null, ptr @.str.33, i8 0, ptr @.str.34, ptr @slg51000_of_parse_cb, i32 0, i8 0, i32 256, i32 0, ptr @slg51000_regl_ops, i32 0, i32 0, ptr null, i32 2400000, i32 5000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 8192, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4365, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.35, ptr null, ptr @.str.35, i8 0, ptr @.str.34, ptr @slg51000_of_parse_cb, i32 1, i8 0, i32 256, i32 0, ptr @slg51000_regl_ops, i32 0, i32 0, ptr null, i32 2400000, i32 5000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 8704, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4365, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.36, ptr @.str.37, ptr @.str.36, i8 0, ptr @.str.34, ptr @slg51000_of_parse_cb, i32 2, i8 0, i32 256, i32 0, ptr @slg51000_regl_ops, i32 0, i32 0, ptr null, i32 1200000, i32 10000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 8960, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4365, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.38, ptr @.str.39, ptr @.str.38, i8 0, ptr @.str.34, ptr @slg51000_of_parse_cb, i32 3, i8 0, i32 256, i32 0, ptr @slg51000_regl_ops, i32 0, i32 0, ptr null, i32 1200000, i32 10000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 9472, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4365, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.40, ptr @.str.41, ptr @.str.40, i8 0, ptr @.str.34, ptr @slg51000_of_parse_cb, i32 4, i8 0, i32 256, i32 0, ptr @slg51000_regl_ops, i32 0, i32 0, ptr null, i32 400000, i32 5000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 9984, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4365, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.42, ptr @.str.43, ptr @.str.42, i8 0, ptr @.str.34, ptr @slg51000_of_parse_cb, i32 5, i8 0, i32 256, i32 0, ptr @slg51000_regl_ops, i32 0, i32 0, ptr null, i32 400000, i32 5000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 10496, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4365, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.44, ptr @.str.45, ptr @.str.44, i8 0, ptr @.str.34, ptr @slg51000_of_parse_cb, i32 6, i8 0, i32 256, i32 0, ptr @slg51000_regl_ops, i32 0, i32 0, ptr null, i32 1200000, i32 10000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 12544, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4365, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [436 x i8] zeroinitializer }, align 32
@slg51000_regulator_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 268, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to read the MIN register\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"slg51000_regulator_init\00", [40 x i8] zeroinitializer }, align 32
@slg51000_regulator_init._entry_ptr = internal global ptr @slg51000_regulator_init._entry, section ".printk_index", align 4
@slg51000_regulator_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.4, i32 284, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to read voltage range of ldo%d\0A\00", [57 x i8] zeroinitializer }, align 32
@slg51000_regulator_init._entry_ptr.26 = internal global ptr @slg51000_regulator_init._entry.24, section ".printk_index", align 4
@slg51000_regulator_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.4, i32 310, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to read LDO mode register\0A\00", [62 x i8] zeroinitializer }, align 32
@slg51000_regulator_init._entry_ptr.29 = internal global ptr @slg51000_regulator_init._entry.27, section ".printk_index", align 4
@slg51000_switch_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@slg51000_regulator_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str.4, i32 338, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to register regulator(%s):%d\0A\00", [59 x i8] zeroinitializer }, align 32
@slg51000_regulator_init._entry_ptr.32 = internal global ptr @slg51000_regulator_init._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo1\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@slg51000_regl_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo2\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo3\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vin3\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo4\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vin4\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo5\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vin5\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo6\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vin6\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo7\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vin7\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio-en-ldo\00", [20 x i8] zeroinitializer }, align 32
@slg51000_clear_fault_log._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.4, i32 424, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read Fault log register\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"slg51000_clear_fault_log\00", [39 x i8] zeroinitializer }, align 32
@slg51000_clear_fault_log._entry_ptr = internal global ptr @slg51000_clear_fault_log._entry, section ".printk_index", align 4
@slg51000_clear_fault_log.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.49, ptr @.str.4, ptr @.str.51, i8 0, i8 107, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"slg51000_regulator\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Fault log: FLT_OVER_TEMP\0A\00", [38 x i8] zeroinitializer }, align 32
@slg51000_clear_fault_log.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.49, ptr @.str.4, ptr @.str.52, i8 0, i8 107, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Fault log: FLT_POWER_SEQ_CRASH_REQ\0A\00", [60 x i8] zeroinitializer }, align 32
@slg51000_clear_fault_log.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.49, ptr @.str.4, ptr @.str.53, i8 0, i8 108, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Fault log: FLT_RST\0A\00", [44 x i8] zeroinitializer }, align 32
@slg51000_clear_fault_log.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.49, ptr @.str.4, ptr @.str.54, i8 0, i8 108, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Fault log: FLT_POR\0A\00", [44 x i8] zeroinitializer }, align 32
@slg51000_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.4, i32 360, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to read event registers(%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"slg51000_irq_handler\00", [43 x i8] zeroinitializer }, align 32
@slg51000_irq_handler._entry_ptr = internal global ptr @slg51000_irq_handler._entry, section ".printk_index", align 4
@slg51000_irq_handler._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.4, i32 368, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to read otp event registers(%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@slg51000_irq_handler._entry_ptr.59 = internal global ptr @slg51000_irq_handler._entry.57, section ".printk_index", align 4
@slg51000_irq_handler._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str.4, i32 375, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to read otp mask register(%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@slg51000_irq_handler._entry_ptr.62 = internal global ptr @slg51000_irq_handler._entry.60, section ".printk_index", align 4
@slg51000_irq_handler._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.56, ptr @.str.4, i32 382, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"OTP has been read or OTP crc is not zero\0A\00", [54 x i8] zeroinitializer }, align 32
@slg51000_irq_handler._entry_ptr.65 = internal global ptr @slg51000_irq_handler._entry.63, section ".printk_index", align 4
@slg51000_irq_handler._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.56, ptr @.str.4, i32 394, ptr @.str.68, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Over-current limit(ldo%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@slg51000_irq_handler._entry_ptr.69 = internal global ptr @slg51000_irq_handler._entry.66, section ".printk_index", align 4
@slg51000_irq_handler._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.56, ptr @.str.4, i32 411, ptr @.str.68, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"High temperature warning!\0A\00", [37 x i8] zeroinitializer }, align 32
@slg51000_irq_handler._entry_ptr.72 = internal global ptr @slg51000_irq_handler._entry.70, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 4, i64 5]
@___asan_gen_.73 = private unnamed_addr constant [26 x i8] c"slg51000_regulator_driver\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 503, i32 26 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 505, i32 11 }
@___asan_gen_.79 = private unnamed_addr constant [16 x i8] c"slg51000_i2c_id\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 497, i32 35 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 449, i32 42 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 456, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [23 x i8] c"slg51000_regmap_config\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 172, i32 35 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 463, i32 17 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 466, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 473, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 484, i32 7 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 486, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 491, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [25 x i8] c"slg51000_writeable_table\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 157, i32 41 }
@___asan_gen_.145 = private unnamed_addr constant [24 x i8] c"slg51000_readable_table\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 162, i32 41 }
@___asan_gen_.148 = private unnamed_addr constant [24 x i8] c"slg51000_volatile_table\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 167, i32 41 }
@___asan_gen_.151 = private unnamed_addr constant [26 x i8] c"slg51000_writeable_ranges\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 63, i32 34 }
@___asan_gen_.154 = private unnamed_addr constant [25 x i8] c"slg51000_readable_ranges\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 90, i32 34 }
@___asan_gen_.157 = private unnamed_addr constant [25 x i8] c"slg51000_volatile_ranges\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 144, i32 34 }
@___asan_gen_.160 = private unnamed_addr constant [11 x i8] c"regls_desc\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 234, i32 30 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 267, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 282, i32 5 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 309, i32 5 }
@___asan_gen_.184 = private unnamed_addr constant [20 x i8] c"slg51000_switch_ops\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 191, i32 35 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 336, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 235, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant [18 x i8] c"slg51000_regl_ops\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 181, i32 35 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 236, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 237, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 238, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 239, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 240, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 241, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 203, i32 59 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 206, i32 9 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 424, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 429, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 431, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 433, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 435, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 359, i32 4 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 367, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 374, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 381, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 393, i32 5 }
@___asan_gen_.301 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.304 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.305 = private constant [42 x i8] c"../drivers/regulator/slg51000-regulator.c\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 411, i32 4 }
@llvm.compiler.used = appending global [101 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_slg51000_regulator_driver_exit, ptr @__initcall__kmod_slg51000_regulator__292_511_slg51000_regulator_driver_init6, ptr @slg51000_clear_fault_log._entry, ptr @slg51000_clear_fault_log._entry_ptr, ptr @slg51000_i2c_probe._entry, ptr @slg51000_i2c_probe._entry.12, ptr @slg51000_i2c_probe._entry.16, ptr @slg51000_i2c_probe._entry.19, ptr @slg51000_i2c_probe._entry.8, ptr @slg51000_i2c_probe._entry_ptr, ptr @slg51000_i2c_probe._entry_ptr.11, ptr @slg51000_i2c_probe._entry_ptr.14, ptr @slg51000_i2c_probe._entry_ptr.18, ptr @slg51000_i2c_probe._entry_ptr.21, ptr @slg51000_irq_handler._entry, ptr @slg51000_irq_handler._entry.57, ptr @slg51000_irq_handler._entry.60, ptr @slg51000_irq_handler._entry.63, ptr @slg51000_irq_handler._entry.66, ptr @slg51000_irq_handler._entry.70, ptr @slg51000_irq_handler._entry_ptr, ptr @slg51000_irq_handler._entry_ptr.59, ptr @slg51000_irq_handler._entry_ptr.62, ptr @slg51000_irq_handler._entry_ptr.65, ptr @slg51000_irq_handler._entry_ptr.69, ptr @slg51000_irq_handler._entry_ptr.72, ptr @slg51000_regulator_driver_exit, ptr @slg51000_regulator_init._entry, ptr @slg51000_regulator_init._entry.24, ptr @slg51000_regulator_init._entry.27, ptr @slg51000_regulator_init._entry.30, ptr @slg51000_regulator_init._entry_ptr, ptr @slg51000_regulator_init._entry_ptr.26, ptr @slg51000_regulator_init._entry_ptr.29, ptr @slg51000_regulator_init._entry_ptr.32, ptr @slg51000_regulator_driver, ptr @.str, ptr @slg51000_i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @slg51000_i2c_probe._key, ptr @slg51000_regmap_config, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @slg51000_writeable_table, ptr @slg51000_readable_table, ptr @slg51000_volatile_table, ptr @slg51000_writeable_ranges, ptr @slg51000_readable_ranges, ptr @slg51000_volatile_ranges, ptr @regls_desc, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @slg51000_switch_ops, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @slg51000_regl_ops, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.68, ptr @.str.71], section "llvm.metadata"
@0 = internal global [78 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slg51000_regulator_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slg51000_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slg51000_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slg51000_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slg51000_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slg51000_i2c_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slg51000_i2c_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slg51000_i2c_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slg51000_i2c_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slg51000_writeable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slg51000_readable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slg51000_volatile_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slg51000_writeable_ranges to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slg51000_readable_ranges to i32), i32 344, i32 416, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slg51000_volatile_ranges to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regls_desc to i32), i32 1708, i32 2144, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slg51000_regulator_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slg51000_regulator_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slg51000_regulator_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slg51000_switch_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slg51000_regulator_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slg51000_regl_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slg51000_clear_fault_log._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slg51000_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slg51000_irq_handler._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slg51000_irq_handler._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slg51000_irq_handler._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slg51000_irq_handler._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slg51000_irq_handler._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @slg51000_regulator_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @slg51000_regulator_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @slg51000_regulator_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @slg51000_regulator_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @slg51000_i2c_probe(ptr noundef %client) #2 align 64 {
entry:
  %config.i = alloca %struct.regulator_config, align 4
  %val.i = alloca i32, align 4
  %vsel_range.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 72, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef 23) #5
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %tobool7.not = icmp eq ptr %call2, null
  br i1 %tobool7.not, label %if.end6.if.end10_crit_edge, label %do.end

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  %cs_gpiod9 = getelementptr inbounds %struct.slg51000, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %cs_gpiod9 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %cs_gpiod9, align 4
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.end6.if.end10_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  %chip_irq = getelementptr inbounds %struct.slg51000, ptr %call.i, i32 0, i32 5
  %5 = ptrtoint ptr %chip_irq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %chip_irq, align 4
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev1, ptr %call.i, align 4
  %call12 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @slg51000_regmap_config, ptr noundef nonnull @slg51000_i2c_probe._key, ptr noundef nonnull @.str.7) #5
  %regmap = getelementptr inbounds %struct.slg51000, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call12, ptr %regmap, align 4
  %cmp.i82 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i82, label %if.then15, label %if.end21

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %call12 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %8) #8
  br label %cleanup

if.end21:                                         ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config.i) #5
  %9 = getelementptr inbounds i8, ptr %config.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %val.i, align 4, !annotation !164
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vsel_range.i) #5
  %12 = ptrtoint ptr %vsel_range.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %vsel_range.i, align 1, !annotation !164
  %13 = getelementptr inbounds [2 x i8], ptr %vsel_range.i, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %13, align 1, !annotation !164
  %regmap5.i = getelementptr inbounds %struct.regulator_config, ptr %config.i, i32 0, i32 4
  %driver_data.i = getelementptr inbounds %struct.regulator_config, ptr %config.i, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end21
  %id.0164.i = phi i32 [ 0, %if.end21 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [7 x %struct.regulator_desc], ptr @regls_desc, i32 0, i32 %id.0164.i
  %arrayidx2.i = getelementptr %struct.slg51000, ptr %call.i, i32 0, i32 2, i32 %id.0164.i
  %15 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx.i, ptr %arrayidx2.i, align 4
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %18 = ptrtoint ptr %regmap5.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %regmap5.i, align 4
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 4
  %21 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %config.i, align 4
  %22 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %driver_data.i, align 4
  %arrayidx8.i = getelementptr [7 x i32], ptr @__const.slg51000_regulator_init.min_regs, i32 0, i32 %id.0164.i
  %23 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx8.i, align 4
  %call.i83 = call i32 @regmap_bulk_read(ptr noundef %17, i32 noundef %24, ptr noundef nonnull %vsel_range.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %cmp9.i = icmp slt i32 %call.i83, 0
  br i1 %cmp9.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.22) #8
  br label %slg51000_regulator_init.exit.thread

if.end.i:                                         ; preds = %for.body.i
  %27 = zext i32 %id.0164.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i32 %id.0164.i, label %if.end.i.sw.default.i_crit_edge [
    i32 1, label %if.else.i
    i32 0, label %if.end.i.if.end13.i_crit_edge
    i32 4, label %if.end.i.if.end44.i_crit_edge
    i32 5, label %if.else43.i
  ]

if.end.i.if.end44.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44.i

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i

if.end.i.sw.default.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else.i, %if.end.i.if.end13.i_crit_edge
  %reg.0.i = phi i32 [ 8804, %if.else.i ], [ 8292, %if.end.i.if.end13.i_crit_edge ]
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %call15.i = call i32 @regmap_read(ptr noundef %29, i32 noundef %reg.0.i, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp slt i32 %call15.i, 0
  br i1 %cmp16.i, label %do.end20.i, label %if.end22.i

do.end20.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 4
  %add.i = add nuw nsw i32 %id.0164.i, 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.25, i32 noundef %add.i) #8
  br label %slg51000_regulator_init.exit.thread

if.end22.i:                                       ; preds = %if.end13.i
  %32 = ptrtoint ptr %vsel_range.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %vsel_range.i, align 1
  %conv.i = zext i8 %33 to i32
  %linear_min_sel.i = getelementptr [7 x %struct.regulator_desc], ptr @regls_desc, i32 0, i32 %id.0164.i, i32 16
  %34 = ptrtoint ptr %linear_min_sel.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv.i, ptr %linear_min_sel.i, align 4
  %35 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %13, align 1
  %conv25.i = zext i8 %36 to i32
  %add26.i = add nuw nsw i32 %conv25.i, 1
  %n_voltages.i = getelementptr [7 x %struct.regulator_desc], ptr @regls_desc, i32 0, i32 %id.0164.i, i32 8
  %37 = ptrtoint ptr %n_voltages.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add26.i, ptr %n_voltages.i, align 4
  %38 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val.i, align 4
  %and.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %uV_step34.i = getelementptr [7 x %struct.regulator_desc], ptr @regls_desc, i32 0, i32 %id.0164.i, i32 15
  %40 = ptrtoint ptr %uV_step34.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %uV_step34.i, align 4
  %mul35.i = mul i32 %41, %conv.i
  br i1 %tobool.not.i, label %if.else31.i, label %if.then27.i

if.then27.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  %add30.i = add i32 %mul35.i, 2400000
  %min_uV.i = getelementptr [7 x %struct.regulator_desc], ptr @regls_desc, i32 0, i32 %id.0164.i, i32 14
  %42 = ptrtoint ptr %min_uV.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add30.i, ptr %min_uV.i, align 4
  br label %sw.epilog.i

if.else31.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  %add36.i = add i32 %mul35.i, 1200000
  %min_uV37.i = getelementptr [7 x %struct.regulator_desc], ptr @regls_desc, i32 0, i32 %id.0164.i, i32 14
  %43 = ptrtoint ptr %min_uV37.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add36.i, ptr %min_uV37.i, align 4
  br label %sw.epilog.i

if.else43.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.else43.i, %if.end.i.if.end44.i_crit_edge
  %reg.1.i = phi i32 [ 10595, %if.else43.i ], [ 10083, %if.end.i.if.end44.i_crit_edge ]
  %44 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap, align 4
  %call46.i = call i32 @regmap_read(ptr noundef %45, i32 noundef %reg.1.i, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %cmp47.i = icmp slt i32 %call46.i, 0
  br i1 %cmp47.i, label %do.end52.i, label %if.end54.i

do.end52.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.28) #8
  br label %slg51000_regulator_init.exit.thread

if.end54.i:                                       ; preds = %if.end44.i
  %48 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %val.i, align 4
  %and55.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  br i1 %tobool56.not.i, label %if.end54.i.sw.default.i_crit_edge, label %if.then57.i

if.end54.i.sw.default.i_crit_edge:                ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default.i

if.then57.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #7
  %ops.i = getelementptr [7 x %struct.regulator_desc], ptr @regls_desc, i32 0, i32 %id.0164.i, i32 10
  %50 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @slg51000_switch_ops, ptr %ops.i, align 4
  %n_voltages58.i = getelementptr [7 x %struct.regulator_desc], ptr @regls_desc, i32 0, i32 %id.0164.i, i32 8
  %51 = ptrtoint ptr %n_voltages58.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %n_voltages58.i, align 4
  %min_uV59.i = getelementptr [7 x %struct.regulator_desc], ptr @regls_desc, i32 0, i32 %id.0164.i, i32 14
  %52 = ptrtoint ptr %min_uV59.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %min_uV59.i, align 4
  %uV_step60.i = getelementptr [7 x %struct.regulator_desc], ptr @regls_desc, i32 0, i32 %id.0164.i, i32 15
  %53 = ptrtoint ptr %uV_step60.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %uV_step60.i, align 4
  %linear_min_sel61.i = getelementptr [7 x %struct.regulator_desc], ptr @regls_desc, i32 0, i32 %id.0164.i, i32 16
  %54 = ptrtoint ptr %linear_min_sel61.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %linear_min_sel61.i, align 4
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end54.i.sw.default.i_crit_edge, %if.end.i.sw.default.i_crit_edge
  %55 = ptrtoint ptr %vsel_range.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %vsel_range.i, align 1
  %conv64.i = zext i8 %56 to i32
  %linear_min_sel65.i = getelementptr [7 x %struct.regulator_desc], ptr @regls_desc, i32 0, i32 %id.0164.i, i32 16
  %57 = ptrtoint ptr %linear_min_sel65.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv64.i, ptr %linear_min_sel65.i, align 4
  %58 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %13, align 1
  %conv67.i = zext i8 %59 to i32
  %add68.i = add nuw nsw i32 %conv67.i, 1
  %n_voltages69.i = getelementptr [7 x %struct.regulator_desc], ptr @regls_desc, i32 0, i32 %id.0164.i, i32 8
  %60 = ptrtoint ptr %n_voltages69.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add68.i, ptr %n_voltages69.i, align 4
  %min_uV70.i = getelementptr [7 x %struct.regulator_desc], ptr @regls_desc, i32 0, i32 %id.0164.i, i32 14
  %61 = ptrtoint ptr %min_uV70.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %min_uV70.i, align 4
  %uV_step73.i = getelementptr [7 x %struct.regulator_desc], ptr @regls_desc, i32 0, i32 %id.0164.i, i32 15
  %63 = ptrtoint ptr %uV_step73.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %uV_step73.i, align 4
  %mul74.i = mul i32 %64, %conv64.i
  %add75.i = add i32 %mul74.i, %62
  store i32 %add75.i, ptr %min_uV70.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %if.then57.i, %if.else31.i, %if.then27.i
  %65 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %call.i, align 4
  %call78.i = call ptr @devm_regulator_register(ptr noundef %66, ptr noundef %arrayidx.i, ptr noundef nonnull %config.i) #5
  %arrayidx79.i = getelementptr %struct.slg51000, ptr %call.i, i32 0, i32 3, i32 %id.0164.i
  %67 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call78.i, ptr %arrayidx79.i, align 4
  %cmp.i.i = icmp ugt ptr %call78.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %slg51000_regulator_init.exit, label %for.inc.i

for.inc.i:                                        ; preds = %sw.epilog.i
  %inc.i = add nuw nsw i32 %id.0164.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 7
  br i1 %exitcond.not.i, label %slg51000_regulator_init.exit.thread87, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

slg51000_regulator_init.exit.thread87:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vsel_range.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config.i) #5
  br label %if.end28

slg51000_regulator_init.exit.thread:              ; preds = %do.end52.i, %do.end20.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %call15.i, %do.end20.i ], [ %call46.i, %do.end52.i ], [ %call.i83, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vsel_range.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config.i) #5
  br label %do.end26

slg51000_regulator_init.exit:                     ; preds = %sw.epilog.i
  %68 = ptrtoint ptr %call78.i to i32
  %69 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %call.i, align 4
  %71 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx2.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.31, ptr noundef %74, i32 noundef %68) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vsel_range.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config.i) #5
  %cmp = icmp slt ptr %call78.i, null
  br i1 %cmp, label %slg51000_regulator_init.exit.do.end26_crit_edge, label %slg51000_regulator_init.exit.if.end28_crit_edge

slg51000_regulator_init.exit.if.end28_crit_edge:  ; preds = %slg51000_regulator_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

slg51000_regulator_init.exit.do.end26_crit_edge:  ; preds = %slg51000_regulator_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end26

do.end26:                                         ; preds = %slg51000_regulator_init.exit.do.end26_crit_edge, %slg51000_regulator_init.exit.thread
  %retval.0.i86 = phi i32 [ %retval.0.i.ph, %slg51000_regulator_init.exit.thread ], [ %68, %slg51000_regulator_init.exit.do.end26_crit_edge ]
  %75 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.13, i32 noundef %retval.0.i86) #8
  br label %cleanup

if.end28:                                         ; preds = %slg51000_regulator_init.exit.if.end28_crit_edge, %slg51000_regulator_init.exit.thread87
  %retval.0.i90 = phi i32 [ 0, %slg51000_regulator_init.exit.thread87 ], [ %68, %slg51000_regulator_init.exit.if.end28_crit_edge ]
  call fastcc void @slg51000_clear_fault_log(ptr noundef nonnull %call.i)
  %77 = ptrtoint ptr %chip_irq to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %chip_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool30.not = icmp eq i32 %78, 0
  br i1 %tobool30.not, label %do.end43, label %if.then31

if.then31:                                        ; preds = %if.end28
  %call33 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %78, ptr noundef null, ptr noundef nonnull @slg51000_irq_handler, i32 noundef 8196, ptr noundef nonnull @.str.15, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34.not = icmp eq i32 %call33, 0
  br i1 %cmp34.not, label %if.then31.cleanup_crit_edge, label %do.end38

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end38:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  %79 = ptrtoint ptr %chip_irq to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %chip_irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %80) #8
  br label %cleanup

do.end43:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.20) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end43, %do.end38, %if.then31.cleanup_crit_edge, %do.end26, %if.then15, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.then4 ], [ %8, %if.then15 ], [ %retval.0.i86, %do.end26 ], [ %call33, %do.end38 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then31.cleanup_crit_edge ], [ %retval.0.i90, %do.end43 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @slg51000_clear_fault_log(ptr nocapture noundef readonly %chip) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %regmap = getelementptr inbounds %struct.slg51000, ptr %chip, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 4373, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.48) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end13_crit_edge, label %do.body2

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

do.body2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @slg51000_clear_fault_log.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@slg51000_clear_fault_log, %if.end13)) #5
          to label %if.then8 [label %if.end13], !srcloc !165

if.then8:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @slg51000_clear_fault_log.__UNIQUE_ID_ddebug288, ptr noundef %8, ptr noundef nonnull @.str.51) #5
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %do.body2, %if.end.if.end13_crit_edge
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and14 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end36_crit_edge, label %do.body17

if.end13.if.end36_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

do.body17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @slg51000_clear_fault_log.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@slg51000_clear_fault_log, %if.end36)) #5
          to label %if.then31 [label %if.end36], !srcloc !165

if.then31:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @slg51000_clear_fault_log.__UNIQUE_ID_ddebug289, ptr noundef %12, ptr noundef nonnull @.str.52) #5
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %do.body17, %if.end13.if.end36_crit_edge
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %and37 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end59_crit_edge, label %do.body40

if.end36.if.end59_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

do.body40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @slg51000_clear_fault_log.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@slg51000_clear_fault_log, %if.end59)) #5
          to label %if.then54 [label %if.end59], !srcloc !165

if.then54:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @slg51000_clear_fault_log.__UNIQUE_ID_ddebug290, ptr noundef %16, ptr noundef nonnull @.str.53) #5
  br label %if.end59

if.end59:                                         ; preds = %if.then54, %do.body40, %if.end36.if.end59_crit_edge
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %and60 = and i32 %18, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end59.cleanup_crit_edge, label %do.body63

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body63:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @slg51000_clear_fault_log.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@slg51000_clear_fault_log, %cleanup)) #5
          to label %if.then77 [label %cleanup], !srcloc !165

if.then77:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @slg51000_clear_fault_log.__UNIQUE_ID_ddebug291, ptr noundef %20, ptr noundef nonnull @.str.54) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then77, %do.body63, %if.end59.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @slg51000_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %evt = alloca [8 x [3 x i8]], align 1
  %evt_otp = alloca i32, align 4
  %mask_otp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.slg51000, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %evt) #5
  %2 = getelementptr inbounds [3 x i8], ptr %evt, i32 0, i32 1
  %3 = getelementptr inbounds [8 x [3 x i8]], ptr %evt, i32 0, i32 1, i32 1
  %4 = getelementptr inbounds [8 x [3 x i8]], ptr %evt, i32 0, i32 2
  %5 = getelementptr inbounds [8 x [3 x i8]], ptr %evt, i32 0, i32 2, i32 1
  %6 = getelementptr inbounds [8 x [3 x i8]], ptr %evt, i32 0, i32 3
  %7 = getelementptr inbounds [8 x [3 x i8]], ptr %evt, i32 0, i32 3, i32 1
  %8 = getelementptr inbounds [8 x [3 x i8]], ptr %evt, i32 0, i32 4
  %9 = getelementptr inbounds [8 x [3 x i8]], ptr %evt, i32 0, i32 4, i32 1
  %10 = getelementptr inbounds [8 x [3 x i8]], ptr %evt, i32 0, i32 5
  %11 = getelementptr inbounds [8 x [3 x i8]], ptr %evt, i32 0, i32 5, i32 1
  %12 = getelementptr inbounds [8 x [3 x i8]], ptr %evt, i32 0, i32 6
  %13 = getelementptr inbounds [8 x [3 x i8]], ptr %evt, i32 0, i32 6, i32 1
  %14 = getelementptr inbounds [8 x [3 x i8]], ptr %evt, i32 0, i32 7
  %15 = getelementptr inbounds [8 x [3 x i8]], ptr %evt, i32 0, i32 7, i32 1
  %16 = getelementptr inbounds [8 x [3 x i8]], ptr %evt, i32 0, i32 7, i32 2
  %17 = call ptr @memset(ptr %evt, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %evt_otp) #5
  %18 = ptrtoint ptr %evt_otp to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %evt_otp, align 4, !annotation !164
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask_otp) #5
  %19 = ptrtoint ptr %mask_otp to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %mask_otp, align 4, !annotation !164
  %call = call i32 @regmap_bulk_read(ptr noundef %1, i32 noundef 8384, ptr noundef nonnull %evt, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %entry.do.end_crit_edge, label %for.cond

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.cond:                                         ; preds = %entry
  %20 = getelementptr inbounds [8 x [3 x i8]], ptr %evt, i32 0, i32 1
  %call.1 = call i32 @regmap_bulk_read(ptr noundef %1, i32 noundef 8896, ptr noundef %20, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp3.1 = icmp slt i32 %call.1, 0
  br i1 %cmp3.1, label %for.cond.do.end_crit_edge, label %for.cond.1

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.cond.1:                                       ; preds = %for.cond
  %call.2 = call i32 @regmap_bulk_read(ptr noundef %1, i32 noundef 9152, ptr noundef %4, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp3.2 = icmp slt i32 %call.2, 0
  br i1 %cmp3.2, label %for.cond.1.do.end_crit_edge, label %for.cond.2

for.cond.1.do.end_crit_edge:                      ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.cond.2:                                       ; preds = %for.cond.1
  %call.3 = call i32 @regmap_bulk_read(ptr noundef %1, i32 noundef 9664, ptr noundef %6, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %cmp3.3 = icmp slt i32 %call.3, 0
  br i1 %cmp3.3, label %for.cond.2.do.end_crit_edge, label %for.cond.3

for.cond.2.do.end_crit_edge:                      ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.cond.3:                                       ; preds = %for.cond.2
  %call.4 = call i32 @regmap_bulk_read(ptr noundef %1, i32 noundef 10176, ptr noundef %8, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %cmp3.4 = icmp slt i32 %call.4, 0
  br i1 %cmp3.4, label %for.cond.3.do.end_crit_edge, label %for.cond.4

for.cond.3.do.end_crit_edge:                      ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.cond.4:                                       ; preds = %for.cond.3
  %call.5 = call i32 @regmap_bulk_read(ptr noundef %1, i32 noundef 10688, ptr noundef %10, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %cmp3.5 = icmp slt i32 %call.5, 0
  br i1 %cmp3.5, label %for.cond.4.do.end_crit_edge, label %for.cond.5

for.cond.4.do.end_crit_edge:                      ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.cond.5:                                       ; preds = %for.cond.4
  %call.6 = call i32 @regmap_bulk_read(ptr noundef %1, i32 noundef 12736, ptr noundef %12, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %cmp3.6 = icmp slt i32 %call.6, 0
  br i1 %cmp3.6, label %for.cond.5.do.end_crit_edge, label %for.cond.6

for.cond.5.do.end_crit_edge:                      ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.cond.6:                                       ; preds = %for.cond.5
  %call.7 = call i32 @regmap_bulk_read(ptr noundef %1, i32 noundef 4374, ptr noundef %14, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7)
  %cmp3.7 = icmp slt i32 %call.7, 0
  br i1 %cmp3.7, label %for.cond.6.do.end_crit_edge, label %for.cond.7

for.cond.6.do.end_crit_edge:                      ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.cond.7:                                       ; preds = %for.cond.6
  %call4 = call i32 @regmap_read(ptr noundef %1, i32 noundef 30763, ptr noundef nonnull %evt_otp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end9, label %if.end11

do.end:                                           ; preds = %for.cond.6.do.end_crit_edge, %for.cond.5.do.end_crit_edge, %for.cond.4.do.end_crit_edge, %for.cond.3.do.end_crit_edge, %for.cond.2.do.end_crit_edge, %for.cond.1.do.end_crit_edge, %for.cond.do.end_crit_edge, %entry.do.end_crit_edge
  %call.lcssa = phi i32 [ %call, %entry.do.end_crit_edge ], [ %call.1, %for.cond.do.end_crit_edge ], [ %call.2, %for.cond.1.do.end_crit_edge ], [ %call.3, %for.cond.2.do.end_crit_edge ], [ %call.4, %for.cond.3.do.end_crit_edge ], [ %call.5, %for.cond.4.do.end_crit_edge ], [ %call.6, %for.cond.5.do.end_crit_edge ], [ %call.7, %for.cond.6.do.end_crit_edge ]
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.55, i32 noundef %call.lcssa) #8
  br label %cleanup

do.end9:                                          ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.58, i32 noundef %call4) #8
  br label %cleanup

if.end11:                                         ; preds = %for.cond.7
  %call12 = call i32 @regmap_read(ptr noundef %1, i32 noundef 30765, ptr noundef nonnull %mask_otp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.end17, label %if.end19

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.61, i32 noundef %call12) #8
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  %27 = ptrtoint ptr %evt_otp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %evt_otp, align 4
  %and = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end19.for.body30.preheader_crit_edge, label %land.lhs.true

if.end19.for.body30.preheader_crit_edge:          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body30.preheader

land.lhs.true:                                    ; preds = %if.end19
  %29 = ptrtoint ptr %mask_otp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mask_otp, align 4
  %and20 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.end25, label %land.lhs.true.for.body30.preheader_crit_edge

land.lhs.true.for.body30.preheader_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body30.preheader

do.end25:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.64) #8
  br label %for.body30.preheader

for.body30.preheader:                             ; preds = %do.end25, %land.lhs.true.for.body30.preheader_crit_edge, %if.end19.for.body30.preheader_crit_edge
  %handled.1146.ph = phi i32 [ 0, %if.end19.for.body30.preheader_crit_edge ], [ 1, %do.end25 ], [ 0, %land.lhs.true.for.body30.preheader_crit_edge ]
  br label %for.body30

for.body30:                                       ; preds = %for.inc56.for.body30_crit_edge, %for.body30.preheader
  %handled.1146 = phi i32 [ %handled.2, %for.inc56.for.body30_crit_edge ], [ %handled.1146.ph, %for.body30.preheader ]
  %i.1144 = phi i32 [ %inc57, %for.inc56.for.body30_crit_edge ], [ 0, %for.body30.preheader ]
  %arrayidx32 = getelementptr [8 x [3 x i8]], ptr %evt, i32 0, i32 %i.1144, i32 2
  %33 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx32, align 1
  %35 = and i8 %34, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool34.not = icmp eq i8 %35, 0
  br i1 %tobool34.not, label %land.lhs.true35, label %for.body30.for.inc56_crit_edge

for.body30.for.inc56_crit_edge:                   ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc56

land.lhs.true35:                                  ; preds = %for.body30
  %arrayidx31 = getelementptr [8 x [3 x i8]], ptr %evt, i32 0, i32 %i.1144
  %36 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx31, align 1
  %38 = and i8 %37, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool40.not = icmp eq i8 %38, 0
  br i1 %tobool40.not, label %land.lhs.true35.for.inc56_crit_edge, label %if.then41

land.lhs.true35.for.inc56_crit_edge:              ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc56

if.then41:                                        ; preds = %land.lhs.true35
  %arrayidx42 = getelementptr %struct.slg51000, ptr %data, i32 0, i32 3, i32 %i.1144
  %39 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx42, align 4
  %call43 = call i32 @regulator_notifier_call_chain(ptr noundef %40, i32 noundef 2, ptr noundef null) #5
  %arrayidx45 = getelementptr [8 x [3 x i8]], ptr %evt, i32 0, i32 %i.1144, i32 1
  %41 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx45, align 1
  %43 = and i8 %42, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool48.not = icmp eq i8 %43, 0
  br i1 %tobool48.not, label %if.then41.for.inc56_crit_edge, label %do.end52

if.then41.for.inc56_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc56

do.end52:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data, align 4
  %add = add nuw nsw i32 %i.1144, 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %45, ptr noundef nonnull @.str.67, i32 noundef %add) #8
  br label %for.inc56

for.inc56:                                        ; preds = %do.end52, %if.then41.for.inc56_crit_edge, %land.lhs.true35.for.inc56_crit_edge, %for.body30.for.inc56_crit_edge
  %handled.2 = phi i32 [ %handled.1146, %for.body30.for.inc56_crit_edge ], [ %handled.1146, %land.lhs.true35.for.inc56_crit_edge ], [ 1, %do.end52 ], [ 1, %if.then41.for.inc56_crit_edge ]
  %inc57 = add nuw nsw i32 %i.1144, 1
  %exitcond.not = icmp eq i32 %inc57, 7
  br i1 %exitcond.not, label %for.end58, label %for.inc56.for.body30_crit_edge

for.inc56.for.body30_crit_edge:                   ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body30

for.end58:                                        ; preds = %for.inc56
  %46 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %16, align 1
  %48 = and i8 %47, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool63.not = icmp eq i8 %48, 0
  br i1 %tobool63.not, label %land.lhs.true64, label %for.end58.cleanup_crit_edge

for.end58.cleanup_crit_edge:                      ; preds = %for.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true64:                                  ; preds = %for.end58
  %49 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %14, align 1
  %51 = and i8 %50, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool69.not = icmp eq i8 %51, 0
  br i1 %tobool69.not, label %land.lhs.true64.cleanup_crit_edge, label %for.body74.preheader

land.lhs.true64.cleanup_crit_edge:                ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body74.preheader:                             ; preds = %land.lhs.true64
  %52 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %2, align 1
  %54 = and i8 %53, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %54)
  %.not = icmp eq i8 %54, 2
  br i1 %.not, label %if.then86, label %for.body74.preheader.for.inc91_crit_edge

for.body74.preheader.for.inc91_crit_edge:         ; preds = %for.body74.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc91

if.then86:                                        ; preds = %for.body74.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx88 = getelementptr %struct.slg51000, ptr %data, i32 0, i32 3, i32 0
  %55 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx88, align 4
  %call89 = call i32 @regulator_notifier_call_chain(ptr noundef %56, i32 noundef 16, ptr noundef null) #5
  br label %for.inc91

for.inc91:                                        ; preds = %if.then86, %for.body74.preheader.for.inc91_crit_edge
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %3, align 1
  %59 = and i8 %58, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %59)
  %.not.1 = icmp eq i8 %59, 2
  br i1 %.not.1, label %if.then86.1, label %for.inc91.for.inc91.1_crit_edge

for.inc91.for.inc91.1_crit_edge:                  ; preds = %for.inc91
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc91.1

if.then86.1:                                      ; preds = %for.inc91
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx88.1 = getelementptr %struct.slg51000, ptr %data, i32 0, i32 3, i32 1
  %60 = ptrtoint ptr %arrayidx88.1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx88.1, align 4
  %call89.1 = call i32 @regulator_notifier_call_chain(ptr noundef %61, i32 noundef 16, ptr noundef null) #5
  br label %for.inc91.1

for.inc91.1:                                      ; preds = %if.then86.1, %for.inc91.for.inc91.1_crit_edge
  %62 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %5, align 1
  %64 = and i8 %63, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %64)
  %.not.2 = icmp eq i8 %64, 2
  br i1 %.not.2, label %if.then86.2, label %for.inc91.1.for.inc91.2_crit_edge

for.inc91.1.for.inc91.2_crit_edge:                ; preds = %for.inc91.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc91.2

if.then86.2:                                      ; preds = %for.inc91.1
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx88.2 = getelementptr %struct.slg51000, ptr %data, i32 0, i32 3, i32 2
  %65 = ptrtoint ptr %arrayidx88.2 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx88.2, align 4
  %call89.2 = call i32 @regulator_notifier_call_chain(ptr noundef %66, i32 noundef 16, ptr noundef null) #5
  br label %for.inc91.2

for.inc91.2:                                      ; preds = %if.then86.2, %for.inc91.1.for.inc91.2_crit_edge
  %67 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %7, align 1
  %69 = and i8 %68, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %69)
  %.not.3 = icmp eq i8 %69, 2
  br i1 %.not.3, label %if.then86.3, label %for.inc91.2.for.inc91.3_crit_edge

for.inc91.2.for.inc91.3_crit_edge:                ; preds = %for.inc91.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc91.3

if.then86.3:                                      ; preds = %for.inc91.2
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx88.3 = getelementptr %struct.slg51000, ptr %data, i32 0, i32 3, i32 3
  %70 = ptrtoint ptr %arrayidx88.3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx88.3, align 4
  %call89.3 = call i32 @regulator_notifier_call_chain(ptr noundef %71, i32 noundef 16, ptr noundef null) #5
  br label %for.inc91.3

for.inc91.3:                                      ; preds = %if.then86.3, %for.inc91.2.for.inc91.3_crit_edge
  %72 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %9, align 1
  %74 = and i8 %73, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %74)
  %.not.4 = icmp eq i8 %74, 2
  br i1 %.not.4, label %if.then86.4, label %for.inc91.3.for.inc91.4_crit_edge

for.inc91.3.for.inc91.4_crit_edge:                ; preds = %for.inc91.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc91.4

if.then86.4:                                      ; preds = %for.inc91.3
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx88.4 = getelementptr %struct.slg51000, ptr %data, i32 0, i32 3, i32 4
  %75 = ptrtoint ptr %arrayidx88.4 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx88.4, align 4
  %call89.4 = call i32 @regulator_notifier_call_chain(ptr noundef %76, i32 noundef 16, ptr noundef null) #5
  br label %for.inc91.4

for.inc91.4:                                      ; preds = %if.then86.4, %for.inc91.3.for.inc91.4_crit_edge
  %77 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %11, align 1
  %79 = and i8 %78, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %79)
  %.not.5 = icmp eq i8 %79, 2
  br i1 %.not.5, label %if.then86.5, label %for.inc91.4.for.inc91.5_crit_edge

for.inc91.4.for.inc91.5_crit_edge:                ; preds = %for.inc91.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc91.5

if.then86.5:                                      ; preds = %for.inc91.4
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx88.5 = getelementptr %struct.slg51000, ptr %data, i32 0, i32 3, i32 5
  %80 = ptrtoint ptr %arrayidx88.5 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx88.5, align 4
  %call89.5 = call i32 @regulator_notifier_call_chain(ptr noundef %81, i32 noundef 16, ptr noundef null) #5
  br label %for.inc91.5

for.inc91.5:                                      ; preds = %if.then86.5, %for.inc91.4.for.inc91.5_crit_edge
  %82 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %13, align 1
  %84 = and i8 %83, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %84)
  %.not.6 = icmp eq i8 %84, 2
  br i1 %.not.6, label %if.then86.6, label %for.inc91.5.for.inc91.6_crit_edge

for.inc91.5.for.inc91.6_crit_edge:                ; preds = %for.inc91.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc91.6

if.then86.6:                                      ; preds = %for.inc91.5
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx88.6 = getelementptr %struct.slg51000, ptr %data, i32 0, i32 3, i32 6
  %85 = ptrtoint ptr %arrayidx88.6 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx88.6, align 4
  %call89.6 = call i32 @regulator_notifier_call_chain(ptr noundef %86, i32 noundef 16, ptr noundef null) #5
  br label %for.inc91.6

for.inc91.6:                                      ; preds = %if.then86.6, %for.inc91.5.for.inc91.6_crit_edge
  %87 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %15, align 1
  %89 = and i8 %88, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool98.not = icmp eq i8 %89, 0
  br i1 %tobool98.not, label %for.inc91.6.cleanup_crit_edge, label %do.end102

for.inc91.6.cleanup_crit_edge:                    ; preds = %for.inc91.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end102:                                        ; preds = %for.inc91.6
  call void @__sanitizer_cov_trace_pc() #7
  %90 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %91, ptr noundef nonnull @.str.71) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end102, %for.inc91.6.cleanup_crit_edge, %land.lhs.true64.cleanup_crit_edge, %for.end58.cleanup_crit_edge, %do.end17, %do.end9, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.end9 ], [ 0, %do.end17 ], [ %handled.2, %for.end58.cleanup_crit_edge ], [ 1, %do.end102 ], [ 1, %for.inc91.6.cleanup_crit_edge ], [ %handled.2, %land.lhs.true64.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask_otp) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %evt_otp) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %evt) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @slg51000_of_parse_cb(ptr noundef %np, ptr nocapture noundef readnone %desc, ptr nocapture noundef writeonly %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %np, null
  %fwnode = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 3
  %spec.select = select i1 %tobool.not, ptr null, ptr %fwnode
  %call = tail call ptr @fwnode_gpiod_get_index(ptr noundef %spec.select, ptr noundef nonnull @.str.46, i32 noundef 0, i32 noundef 19, ptr noundef nonnull @.str.47) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ena_gpiod2 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 5
  %0 = ptrtoint ptr %ena_gpiod2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %ena_gpiod2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !40, !41, !42, !44, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !101, !103, !105, !107, !109, !110, !111, !112, !114, !115, !116, !118, !119, !121, !122, !124, !125, !127, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !147, !149, !150, !151, !153}
!llvm.module.flags = !{!155, !156, !157, !158, !159, !160, !161, !162}
!llvm.ident = !{!163}

!0 = !{ptr @__initcall__kmod_slg51000_regulator__292_511_slg51000_regulator_driver_init6, !1, !"__initcall__kmod_slg51000_regulator__292_511_slg51000_regulator_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/slg51000-regulator.c", i32 511, i32 1}
!2 = !{ptr @__exitcall_slg51000_regulator_driver_exit, !1, !"__exitcall_slg51000_regulator_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author293, !4, !"__UNIQUE_ID_author293", i1 false, i1 false}
!4 = !{!"../drivers/regulator/slg51000-regulator.c", i32 513, i32 1}
!5 = !{ptr @__UNIQUE_ID_description294, !6, !"__UNIQUE_ID_description294", i1 false, i1 false}
!6 = !{!"../drivers/regulator/slg51000-regulator.c", i32 514, i32 1}
!7 = !{ptr @__UNIQUE_ID_file295, !8, !"__UNIQUE_ID_file295", i1 false, i1 false}
!8 = !{!"../drivers/regulator/slg51000-regulator.c", i32 515, i32 1}
!9 = !{ptr @__UNIQUE_ID_license296, !8, !"__UNIQUE_ID_license296", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/regulator/slg51000-regulator.c", i32 505, i32 11}
!12 = !{ptr @slg51000_regulator_driver, !13, !"slg51000_regulator_driver", i1 false, i1 false}
!13 = !{!"../drivers/regulator/slg51000-regulator.c", i32 503, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/regulator/slg51000-regulator.c", i32 449, i32 42}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/regulator/slg51000-regulator.c", i32 456, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @slg51000_i2c_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @slg51000_i2c_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @slg51000_i2c_probe._key, !25, !"_key", i1 false, i1 false}
!25 = !{!"../drivers/regulator/slg51000-regulator.c", i32 463, i32 17}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/regulator/slg51000-regulator.c", i32 466, i32 3}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @slg51000_i2c_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @slg51000_i2c_probe._entry_ptr.11, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/regulator/slg51000-regulator.c", i32 473, i32 3}
!34 = !{ptr @slg51000_i2c_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @slg51000_i2c_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/regulator/slg51000-regulator.c", i32 484, i32 7}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/regulator/slg51000-regulator.c", i32 486, i32 4}
!40 = !{ptr @slg51000_i2c_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @slg51000_i2c_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/regulator/slg51000-regulator.c", i32 491, i32 3}
!44 = !{ptr @slg51000_i2c_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @slg51000_i2c_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @slg51000_regmap_config, !47, !"slg51000_regmap_config", i1 false, i1 false}
!47 = !{!"../drivers/regulator/slg51000-regulator.c", i32 172, i32 35}
!48 = !{ptr @slg51000_writeable_table, !49, !"slg51000_writeable_table", i1 false, i1 false}
!49 = !{!"../drivers/regulator/slg51000-regulator.c", i32 157, i32 41}
!50 = !{ptr @slg51000_writeable_ranges, !51, !"slg51000_writeable_ranges", i1 false, i1 false}
!51 = !{!"../drivers/regulator/slg51000-regulator.c", i32 63, i32 34}
!52 = !{ptr @slg51000_readable_table, !53, !"slg51000_readable_table", i1 false, i1 false}
!53 = !{!"../drivers/regulator/slg51000-regulator.c", i32 162, i32 41}
!54 = !{ptr @slg51000_readable_ranges, !55, !"slg51000_readable_ranges", i1 false, i1 false}
!55 = !{!"../drivers/regulator/slg51000-regulator.c", i32 90, i32 34}
!56 = !{ptr @slg51000_volatile_table, !57, !"slg51000_volatile_table", i1 false, i1 false}
!57 = !{!"../drivers/regulator/slg51000-regulator.c", i32 167, i32 41}
!58 = !{ptr @slg51000_volatile_ranges, !59, !"slg51000_volatile_ranges", i1 false, i1 false}
!59 = !{!"../drivers/regulator/slg51000-regulator.c", i32 144, i32 34}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/regulator/slg51000-regulator.c", i32 267, i32 4}
!62 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @slg51000_regulator_init._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @slg51000_regulator_init._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/regulator/slg51000-regulator.c", i32 282, i32 5}
!67 = !{ptr @slg51000_regulator_init._entry.24, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @slg51000_regulator_init._entry_ptr.26, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/regulator/slg51000-regulator.c", i32 309, i32 5}
!71 = !{ptr @slg51000_regulator_init._entry.27, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @slg51000_regulator_init._entry_ptr.29, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/regulator/slg51000-regulator.c", i32 336, i32 4}
!75 = !{ptr @slg51000_regulator_init._entry.30, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @slg51000_regulator_init._entry_ptr.32, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/regulator/slg51000-regulator.c", i32 235, i32 2}
!79 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/regulator/slg51000-regulator.c", i32 236, i32 2}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/regulator/slg51000-regulator.c", i32 237, i32 2}
!84 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/regulator/slg51000-regulator.c", i32 238, i32 2}
!87 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/regulator/slg51000-regulator.c", i32 239, i32 2}
!90 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/regulator/slg51000-regulator.c", i32 240, i32 2}
!93 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/regulator/slg51000-regulator.c", i32 241, i32 2}
!96 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @regls_desc, !98, !"regls_desc", i1 false, i1 false}
!98 = !{!"../drivers/regulator/slg51000-regulator.c", i32 234, i32 30}
!99 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/regulator/slg51000-regulator.c", i32 203, i32 59}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/regulator/slg51000-regulator.c", i32 206, i32 9}
!103 = !{ptr @slg51000_regl_ops, !104, !"slg51000_regl_ops", i1 false, i1 false}
!104 = !{!"../drivers/regulator/slg51000-regulator.c", i32 181, i32 35}
!105 = !{ptr @slg51000_switch_ops, !106, !"slg51000_switch_ops", i1 false, i1 false}
!106 = !{!"../drivers/regulator/slg51000-regulator.c", i32 191, i32 35}
!107 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/regulator/slg51000-regulator.c", i32 424, i32 3}
!109 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @slg51000_clear_fault_log._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @slg51000_clear_fault_log._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/regulator/slg51000-regulator.c", i32 429, i32 3}
!114 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @slg51000_clear_fault_log.__UNIQUE_ID_ddebug288, !113, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!116 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/regulator/slg51000-regulator.c", i32 431, i32 3}
!118 = !{ptr @slg51000_clear_fault_log.__UNIQUE_ID_ddebug289, !117, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/regulator/slg51000-regulator.c", i32 433, i32 3}
!121 = !{ptr @slg51000_clear_fault_log.__UNIQUE_ID_ddebug290, !120, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!122 = !{ptr @.str.54, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/regulator/slg51000-regulator.c", i32 435, i32 3}
!124 = !{ptr @slg51000_clear_fault_log.__UNIQUE_ID_ddebug291, !123, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!125 = !{ptr @.str.55, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/regulator/slg51000-regulator.c", i32 359, i32 4}
!127 = !{ptr @.str.56, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @slg51000_irq_handler._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @slg51000_irq_handler._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.58, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/regulator/slg51000-regulator.c", i32 367, i32 3}
!132 = !{ptr @slg51000_irq_handler._entry.57, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @slg51000_irq_handler._entry_ptr.59, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.61, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/regulator/slg51000-regulator.c", i32 374, i32 3}
!136 = !{ptr @slg51000_irq_handler._entry.60, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @slg51000_irq_handler._entry_ptr.62, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/regulator/slg51000-regulator.c", i32 381, i32 3}
!140 = !{ptr @slg51000_irq_handler._entry.63, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @slg51000_irq_handler._entry_ptr.65, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.67, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/regulator/slg51000-regulator.c", i32 393, i32 5}
!144 = !{ptr @.str.68, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @slg51000_irq_handler._entry.66, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @slg51000_irq_handler._entry_ptr.69, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.71, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/regulator/slg51000-regulator.c", i32 411, i32 4}
!149 = !{ptr @slg51000_irq_handler._entry.70, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @slg51000_irq_handler._entry_ptr.72, !148, !"_entry_ptr", i1 false, i1 false}
!151 = distinct !{null, !152, !"es_reg", i1 false, i1 false}
!152 = !{!"../drivers/regulator/slg51000-regulator.c", i32 52, i32 38}
!153 = !{ptr @slg51000_i2c_id, !154, !"slg51000_i2c_id", i1 false, i1 false}
!154 = !{!"../drivers/regulator/slg51000-regulator.c", i32 497, i32 35}
!155 = !{i32 1, !"wchar_size", i32 2}
!156 = !{i32 1, !"min_enum_size", i32 4}
!157 = !{i32 8, !"branch-target-enforcement", i32 0}
!158 = !{i32 8, !"sign-return-address", i32 0}
!159 = !{i32 8, !"sign-return-address-all", i32 0}
!160 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!161 = !{i32 7, !"uwtable", i32 1}
!162 = !{i32 7, !"frame-pointer", i32 2}
!163 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!164 = !{!"auto-init"}
!165 = !{i64 2148193423, i64 2148193428, i64 2148193441, i64 2148193485, i64 2148193519, i64 2148193540}
