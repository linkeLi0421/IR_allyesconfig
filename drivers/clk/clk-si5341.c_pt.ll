; ModuleID = '/llk/IR_all_yes/drivers/clk/clk-si5341.c_pt.bc'
source_filename = "../drivers/clk/clk-si5341.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.si5341_reg_default = type { i16, i8 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range_cfg = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.atomic_t = type { i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_si5341_output_config = type { i8, i8, i8, i8, i8 }
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
%struct.clk_si5341 = type { %struct.clk_hw, ptr, ptr, [5 x %struct.clk_si5341_synth], [10 x %struct.clk_si5341_output], [4 x ptr], [4 x ptr], ptr, ptr, i64, i8, i8, i16, i8, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_si5341_synth = type { %struct.clk_hw, ptr, i8 }
%struct.clk_si5341_output = type { %struct.clk_hw, ptr, ptr, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_clk_si5341__291_1842_si5341_driver_init6 = internal global ptr @si5341_driver_init, section ".initcall6.init", align 4
@si5341_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @si5341_probe, ptr @si5341_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @clk_si5341_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @si5341_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_si5341_driver_exit = internal global ptr @si5341_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author292 = internal constant [59 x i8] c"clk_si5341.author=Mike Looijmans <mike.looijmans@topic.nl>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [37 x i8] c"clk_si5341.description=Si5341 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [39 x i8] c"clk_si5341.file=drivers/clk/clk-si5341\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [23 x i8] c"clk_si5341.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"si5341\00", [25 x i8] zeroinitializer }, align 32
@clk_si5341_of_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"silabs,si5340\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"silabs,si5341\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"silabs,si5342\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"silabs,si5344\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"silabs,si5345\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@si5341_id = internal constant { [6 x %struct.i2c_device_id], [48 x i8] } { [6 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"si5340\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"si5341\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"si5342\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"si5344\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"si5345\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vddo%d\00", [25 x i8] zeroinitializer }, align 32
@si5341_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1602, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to enable %s regulator: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"si5341_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/clk/clk-si5341.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@si5341_probe._entry_ptr = internal global ptr @si5341_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@si5341_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@si5341_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 3071, ptr null, ptr null, ptr @si5341_regmap_volatile, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr @si5341_regmap_ranges, i32 1, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"clk_si5341:1618:(&si5341_regmap_config)->lock\00", [50 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"silabs,reprogram\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"silabs,xaxb-ext-clk\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"silabs,iovdd-33\00", [16 x i8] zeroinitializer }, align 32
@si5341_reg_defaults = internal constant { [137 x %struct.si5341_reg_default], [156 x i8] } { [137 x %struct.si5341_reg_default] [%struct.si5341_reg_default { i16 23, i8 58 }, %struct.si5341_reg_default { i16 24, i8 -1 }, %struct.si5341_reg_default { i16 33, i8 15 }, %struct.si5341_reg_default { i16 34, i8 0 }, %struct.si5341_reg_default { i16 43, i8 2 }, %struct.si5341_reg_default { i16 44, i8 32 }, %struct.si5341_reg_default { i16 45, i8 0 }, %struct.si5341_reg_default { i16 46, i8 0 }, %struct.si5341_reg_default { i16 47, i8 0 }, %struct.si5341_reg_default { i16 48, i8 0 }, %struct.si5341_reg_default { i16 49, i8 0 }, %struct.si5341_reg_default { i16 50, i8 0 }, %struct.si5341_reg_default { i16 51, i8 0 }, %struct.si5341_reg_default { i16 52, i8 0 }, %struct.si5341_reg_default { i16 53, i8 0 }, %struct.si5341_reg_default { i16 54, i8 0 }, %struct.si5341_reg_default { i16 55, i8 0 }, %struct.si5341_reg_default { i16 56, i8 0 }, %struct.si5341_reg_default { i16 57, i8 0 }, %struct.si5341_reg_default { i16 58, i8 0 }, %struct.si5341_reg_default { i16 59, i8 0 }, %struct.si5341_reg_default { i16 60, i8 0 }, %struct.si5341_reg_default { i16 61, i8 0 }, %struct.si5341_reg_default { i16 65, i8 0 }, %struct.si5341_reg_default { i16 66, i8 0 }, %struct.si5341_reg_default { i16 67, i8 0 }, %struct.si5341_reg_default { i16 68, i8 0 }, %struct.si5341_reg_default { i16 158, i8 0 }, %struct.si5341_reg_default { i16 258, i8 1 }, %struct.si5341_reg_default { i16 319, i8 0 }, %struct.si5341_reg_default { i16 320, i8 0 }, %struct.si5341_reg_default { i16 321, i8 64 }, %struct.si5341_reg_default { i16 514, i8 0 }, %struct.si5341_reg_default { i16 515, i8 0 }, %struct.si5341_reg_default { i16 516, i8 0 }, %struct.si5341_reg_default { i16 517, i8 0 }, %struct.si5341_reg_default { i16 518, i8 0 }, %struct.si5341_reg_default { i16 520, i8 0 }, %struct.si5341_reg_default { i16 521, i8 0 }, %struct.si5341_reg_default { i16 522, i8 0 }, %struct.si5341_reg_default { i16 523, i8 0 }, %struct.si5341_reg_default { i16 524, i8 0 }, %struct.si5341_reg_default { i16 525, i8 0 }, %struct.si5341_reg_default { i16 526, i8 0 }, %struct.si5341_reg_default { i16 527, i8 0 }, %struct.si5341_reg_default { i16 528, i8 0 }, %struct.si5341_reg_default { i16 529, i8 0 }, %struct.si5341_reg_default { i16 530, i8 0 }, %struct.si5341_reg_default { i16 531, i8 0 }, %struct.si5341_reg_default { i16 532, i8 0 }, %struct.si5341_reg_default { i16 533, i8 0 }, %struct.si5341_reg_default { i16 534, i8 0 }, %struct.si5341_reg_default { i16 535, i8 0 }, %struct.si5341_reg_default { i16 536, i8 0 }, %struct.si5341_reg_default { i16 537, i8 0 }, %struct.si5341_reg_default { i16 538, i8 0 }, %struct.si5341_reg_default { i16 539, i8 0 }, %struct.si5341_reg_default { i16 540, i8 0 }, %struct.si5341_reg_default { i16 541, i8 0 }, %struct.si5341_reg_default { i16 542, i8 0 }, %struct.si5341_reg_default { i16 543, i8 0 }, %struct.si5341_reg_default { i16 544, i8 0 }, %struct.si5341_reg_default { i16 545, i8 0 }, %struct.si5341_reg_default { i16 546, i8 0 }, %struct.si5341_reg_default { i16 547, i8 0 }, %struct.si5341_reg_default { i16 548, i8 0 }, %struct.si5341_reg_default { i16 549, i8 0 }, %struct.si5341_reg_default { i16 550, i8 0 }, %struct.si5341_reg_default { i16 551, i8 0 }, %struct.si5341_reg_default { i16 552, i8 0 }, %struct.si5341_reg_default { i16 553, i8 0 }, %struct.si5341_reg_default { i16 554, i8 0 }, %struct.si5341_reg_default { i16 555, i8 0 }, %struct.si5341_reg_default { i16 556, i8 0 }, %struct.si5341_reg_default { i16 557, i8 0 }, %struct.si5341_reg_default { i16 558, i8 0 }, %struct.si5341_reg_default { i16 559, i8 0 }, %struct.si5341_reg_default { i16 619, i8 0 }, %struct.si5341_reg_default { i16 620, i8 0 }, %struct.si5341_reg_default { i16 621, i8 0 }, %struct.si5341_reg_default { i16 622, i8 0 }, %struct.si5341_reg_default { i16 623, i8 0 }, %struct.si5341_reg_default { i16 624, i8 0 }, %struct.si5341_reg_default { i16 625, i8 0 }, %struct.si5341_reg_default { i16 626, i8 0 }, %struct.si5341_reg_default { i16 825, i8 31 }, %struct.si5341_reg_default { i16 827, i8 0 }, %struct.si5341_reg_default { i16 828, i8 0 }, %struct.si5341_reg_default { i16 829, i8 0 }, %struct.si5341_reg_default { i16 830, i8 0 }, %struct.si5341_reg_default { i16 831, i8 0 }, %struct.si5341_reg_default { i16 832, i8 0 }, %struct.si5341_reg_default { i16 833, i8 0 }, %struct.si5341_reg_default { i16 834, i8 0 }, %struct.si5341_reg_default { i16 835, i8 0 }, %struct.si5341_reg_default { i16 836, i8 0 }, %struct.si5341_reg_default { i16 837, i8 0 }, %struct.si5341_reg_default { i16 838, i8 0 }, %struct.si5341_reg_default { i16 839, i8 0 }, %struct.si5341_reg_default { i16 840, i8 0 }, %struct.si5341_reg_default { i16 841, i8 0 }, %struct.si5341_reg_default { i16 842, i8 0 }, %struct.si5341_reg_default { i16 843, i8 0 }, %struct.si5341_reg_default { i16 844, i8 0 }, %struct.si5341_reg_default { i16 845, i8 0 }, %struct.si5341_reg_default { i16 846, i8 0 }, %struct.si5341_reg_default { i16 847, i8 0 }, %struct.si5341_reg_default { i16 848, i8 0 }, %struct.si5341_reg_default { i16 849, i8 0 }, %struct.si5341_reg_default { i16 850, i8 0 }, %struct.si5341_reg_default { i16 851, i8 0 }, %struct.si5341_reg_default { i16 852, i8 0 }, %struct.si5341_reg_default { i16 853, i8 0 }, %struct.si5341_reg_default { i16 854, i8 0 }, %struct.si5341_reg_default { i16 855, i8 0 }, %struct.si5341_reg_default { i16 856, i8 0 }, %struct.si5341_reg_default { i16 857, i8 0 }, %struct.si5341_reg_default { i16 858, i8 0 }, %struct.si5341_reg_default { i16 859, i8 0 }, %struct.si5341_reg_default { i16 860, i8 0 }, %struct.si5341_reg_default { i16 861, i8 0 }, %struct.si5341_reg_default { i16 862, i8 0 }, %struct.si5341_reg_default { i16 863, i8 0 }, %struct.si5341_reg_default { i16 864, i8 0 }, %struct.si5341_reg_default { i16 865, i8 0 }, %struct.si5341_reg_default { i16 866, i8 0 }, %struct.si5341_reg_default { i16 2050, i8 0 }, %struct.si5341_reg_default { i16 2051, i8 0 }, %struct.si5341_reg_default { i16 2052, i8 0 }, %struct.si5341_reg_default { i16 2318, i8 2 }, %struct.si5341_reg_default { i16 2332, i8 4 }, %struct.si5341_reg_default { i16 2377, i8 0 }, %struct.si5341_reg_default { i16 2378, i8 0 }, %struct.si5341_reg_default { i16 2562, i8 0 }, %struct.si5341_reg_default { i16 2884, i8 15 }, %struct.si5341_reg_default { i16 2903, i8 16 }, %struct.si5341_reg_default { i16 2904, i8 5 }], [156 x i8] zeroinitializer }, align 32
@si5341_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @si5341_clk_recalc_rate, ptr null, ptr null, ptr @si5341_clk_set_parent, ptr @si5341_clk_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@si5341_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 1689, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"clock registration failed\0A\00", [37 x i8] zeroinitializer }, align 32
@si5341_probe._entry_ptr.14 = internal global ptr @si5341_probe._entry.12, section ".printk_index", align 4
@si5341_synth_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @si5341_synth_clk_prepare, ptr @si5341_synth_clk_unprepare, ptr @si5341_synth_clk_is_on, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @si5341_synth_clk_recalc_rate, ptr @si5341_synth_clk_round_rate, ptr null, ptr null, ptr null, ptr @si5341_synth_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s.N%u\00", [25 x i8] zeroinitializer }, align 32
@si5341_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 1706, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"synth N%u registration failed\0A\00", [33 x i8] zeroinitializer }, align 32
@si5341_probe._entry_ptr.18 = internal global ptr @si5341_probe._entry.16, section ".printk_index", align 4
@si5341_output_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @si5341_output_clk_prepare, ptr @si5341_output_clk_unprepare, ptr @si5341_output_clk_is_on, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @si5341_output_clk_recalc_rate, ptr @si5341_output_clk_round_rate, ptr null, ptr @si5341_output_set_parent, ptr @si5341_output_get_parent, ptr @si5341_output_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s.%d\00", [26 x i8] zeroinitializer }, align 32
@si5341_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 1736, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"output %u registration failed\0A\00", [33 x i8] zeroinitializer }, align 32
@si5341_probe._entry_ptr.22 = internal global ptr @si5341_probe._entry.20, section ".printk_index", align 4
@si5341_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 1746, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unable to add clk provider\0A\00", [36 x i8] zeroinitializer }, align 32
@si5341_probe._entry_ptr.25 = internal global ptr @si5341_probe._entry.23, section ".printk_index", align 4
@si5341_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.3, ptr @.str.4, i32 1767, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Error waiting for input clock or PLL lock\0A\00", [53 x i8] zeroinitializer }, align 32
@si5341_probe._entry_ptr.28 = internal global ptr @si5341_probe._entry.26, section ".printk_index", align 4
@si5341_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.3, ptr @.str.4, i32 1774, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unable to clear sticky status\0A\00", [33 x i8] zeroinitializer }, align 32
@si5341_probe._entry_ptr.31 = internal global ptr @si5341_probe._entry.29, section ".printk_index", align 4
@si5341_attributes = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @dev_attr_input_present, ptr @dev_attr_input_present_sticky, ptr @dev_attr_pll_locked, ptr @dev_attr_pll_locked_sticky, ptr @dev_attr_clear_sticky, ptr null], [40 x i8] zeroinitializer }, align 32
@si5341_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.3, ptr @.str.4, i32 1780, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to create sysfs files\0A\00", [34 x i8] zeroinitializer }, align 32
@si5341_probe._entry_ptr.34 = internal global ptr @si5341_probe._entry.32, section ".printk_index", align 4
@si5341_wait_device_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.4, i32 1251, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"timeout waiting for DEVICE_READY\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"si5341_wait_device_ready\00", [39 x i8] zeroinitializer }, align 32
@si5341_wait_device_ready._entry_ptr = internal global ptr @si5341_wait_device_ready._entry, section ".printk_index", align 4
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"in0\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"in1\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"in2\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xtal\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@si5341_dt_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.4, i32 1279, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"missing reg property of %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"si5341_dt_parse_dt\00", [45 x i8] zeroinitializer }, align 32
@si5341_dt_parse_dt._entry_ptr = internal global ptr @si5341_dt_parse_dt._entry, section ".printk_index", align 4
@si5341_dt_parse_dt._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.4, i32 1284, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"invalid clkout %d\0A\00", [45 x i8] zeroinitializer }, align 32
@si5341_dt_parse_dt._entry_ptr.46 = internal global ptr @si5341_dt_parse_dt._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"silabs,format\00", [18 x i8] zeroinitializer }, align 32
@si5341_dt_parse_dt._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.43, ptr @.str.4, i32 1305, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"invalid silabs,format %u for %u\0A\00", [63 x i8] zeroinitializer }, align 32
@si5341_dt_parse_dt._entry_ptr.50 = internal global ptr @si5341_dt_parse_dt._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"silabs,common-mode\00", [45 x i8] zeroinitializer }, align 32
@si5341_dt_parse_dt._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.43, ptr @.str.4, i32 1318, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid silabs,common-mode %u\0A\00", [33 x i8] zeroinitializer }, align 32
@si5341_dt_parse_dt._entry_ptr.54 = internal global ptr @si5341_dt_parse_dt._entry.52, section ".printk_index", align 4
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"silabs,amplitude\00", [47 x i8] zeroinitializer }, align 32
@si5341_dt_parse_dt._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.43, ptr @.str.4, i32 1329, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid silabs,amplitude %u\0A\00", [35 x i8] zeroinitializer }, align 32
@si5341_dt_parse_dt._entry_ptr.58 = internal global ptr @si5341_dt_parse_dt._entry.56, section ".printk_index", align 4
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"silabs,disable-high\00", [44 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"silabs,synth-master\00", [44 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"always-on\00", [22 x i8] zeroinitializer }, align 32
@si5341_dt_parse_dt._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.43, ptr @.str.4, i32 1362, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unsupported vddo voltage %d for %s\0A\00", [60 x i8] zeroinitializer }, align 32
@si5341_dt_parse_dt._entry_ptr.64 = internal global ptr @si5341_dt_parse_dt._entry.62, section ".printk_index", align 4
@si5341_dt_parse_dt._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.43, ptr @.str.4, i32 1369, ptr @.str.67, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"no regulator set, defaulting vdd_sel to 2.5V for %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@si5341_dt_parse_dt._entry_ptr.68 = internal global ptr @si5341_dt_parse_dt._entry.65, section ".printk_index", align 4
@si5341_regmap_volatile = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @si5341_regmap_volatile_range, i32 9, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@si5341_regmap_ranges = internal constant { [1 x %struct.regmap_range_cfg], [32 x i8] } { [1 x %struct.regmap_range_cfg] [%struct.regmap_range_cfg { ptr null, i32 0, i32 3071, i32 1, i32 255, i32 0, i32 0, i32 256 }], [32 x i8] zeroinitializer }, align 32
@si5341_regmap_volatile_range = internal constant { [9 x %struct.regmap_range], [56 x i8] } { [9 x %struct.regmap_range] [%struct.regmap_range { i32 12, i32 18 }, %struct.regmap_range { i32 28, i32 30 }, %struct.regmap_range { i32 226, i32 254 }, %struct.regmap_range { i32 560, i32 560 }, %struct.regmap_range { i32 780, i32 780 }, %struct.regmap_range { i32 791, i32 791 }, %struct.regmap_range { i32 802, i32 802 }, %struct.regmap_range { i32 813, i32 813 }, %struct.regmap_range { i32 824, i32 824 }], [56 x i8] zeroinitializer }, align 32
@si5341_probe_chip_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.4, i32 1000, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to read chip ID\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"si5341_probe_chip_id\00", [43 x i8] zeroinitializer }, align 32
@si5341_probe_chip_id._entry_ptr = internal global ptr @si5341_probe_chip_id._entry, section ".printk_index", align 4
@si5341_probe_chip_id._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.4, i32 1007, ptr @.str.73, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Chip: %x Grade: %u Rev: %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@si5341_probe_chip_id._entry_ptr.74 = internal global ptr @si5341_probe_chip_id._entry.71, section ".printk_index", align 4
@si5340_reg_output_offset = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 274, i16 279, i16 294, i16 299], [24 x i8] zeroinitializer }, align 32
@si5340_reg_rdiv_offset = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 592, i16 595, i16 604, i16 607], [24 x i8] zeroinitializer }, align 32
@si5341_reg_output_offset = internal constant { [10 x i16], [44 x i8] } { [10 x i16] [i16 264, i16 269, i16 274, i16 279, i16 284, i16 289, i16 294, i16 299, i16 304, i16 314], [44 x i8] zeroinitializer }, align 32
@si5341_reg_rdiv_offset = internal constant { [10 x i16], [44 x i8] } { [10 x i16] [i16 586, i16 589, i16 592, i16 595, i16 598, i16 601, i16 604, i16 607, i16 610, i16 616], [44 x i8] zeroinitializer }, align 32
@si5341_probe_chip_id._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.70, ptr @.str.4, i32 1042, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Model '%x' not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@si5341_probe_chip_id._entry_ptr.77 = internal global ptr @si5341_probe_chip_id._entry.75, section ".printk_index", align 4
@si5341_write_multiple._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.4, i32 1106, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to write %#x:%#x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"si5341_write_multiple\00", [42 x i8] zeroinitializer }, align 32
@si5341_write_multiple._entry_ptr = internal global ptr @si5341_write_multiple._entry, section ".printk_index", align 4
@si5341_clk_select_active_input.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.80, ptr @.str.81, ptr @.str.4, ptr @.str.82, i8 1, i8 102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_si5341\00", [21 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"si5341_clk_select_active_input\00", [33 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Input %d not connected, rerouting\0A\00", [61 x i8] zeroinitializer }, align 32
@si5341_clk_select_active_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.4, i32 1443, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No clock input available\0A\00", [38 x i8] zeroinitializer }, align 32
@si5341_clk_select_active_input._entry_ptr = internal global ptr @si5341_clk_select_active_input._entry, section ".printk_index", align 4
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"silabs,pll-m-num\00", [47 x i8] zeroinitializer }, align 32
@si5341_initialize_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.4, i32 1398, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"PLL configuration requires silabs,pll-m-num\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"si5341_initialize_pll\00", [42 x i8] zeroinitializer }, align 32
@si5341_initialize_pll._entry_ptr = internal global ptr @si5341_initialize_pll._entry, section ".printk_index", align 4
@.str.87 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"silabs,pll-m-den\00", [47 x i8] zeroinitializer }, align 32
@si5341_initialize_pll._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.86, ptr @.str.4, i32 1402, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"PLL configuration requires silabs,pll-m-den\0A\00", [51 x i8] zeroinitializer }, align 32
@si5341_initialize_pll._entry_ptr.90 = internal global ptr @si5341_initialize_pll._entry.88, section ".printk_index", align 4
@si5341_initialize_pll._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.86, ptr @.str.4, i32 1407, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"PLL configuration invalid, assume 14GHz\0A\00", [55 x i8] zeroinitializer }, align 32
@si5341_initialize_pll._entry_ptr.93 = internal global ptr @si5341_initialize_pll._entry.91, section ".printk_index", align 4
@si5341_synth_clk_set_rate.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.80, ptr @.str.94, ptr @.str.4, ptr @.str.95, i8 0, i8 -73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"si5341_synth_clk_set_rate\00", [38 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s(%u): n=0x%llx d=0x%x %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"frac\00", [27 x i8] zeroinitializer }, align 32
@of_clk_si5341_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.4, i32 967, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid output index %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"of_clk_si5341_get\00", [46 x i8] zeroinitializer }, align 32
@of_clk_si5341_get._entry_ptr = internal global ptr @of_clk_si5341_get._entry, section ".printk_index", align 4
@of_clk_si5341_get._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.4, i32 974, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid synthesizer index %u\0A\00", [34 x i8] zeroinitializer }, align 32
@of_clk_si5341_get._entry_ptr.102 = internal global ptr @of_clk_si5341_get._entry.100, section ".printk_index", align 4
@of_clk_si5341_get._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.99, ptr @.str.4, i32 981, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid PLL index %u\0A\00", [42 x i8] zeroinitializer }, align 32
@of_clk_si5341_get._entry_ptr.105 = internal global ptr @of_clk_si5341_get._entry.103, section ".printk_index", align 4
@of_clk_si5341_get._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.99, ptr @.str.4, i32 986, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"invalid group %u\0A\00", [46 x i8] zeroinitializer }, align 32
@of_clk_si5341_get._entry_ptr.108 = internal global ptr @of_clk_si5341_get._entry.106, section ".printk_index", align 4
@si5341_finalize_defaults.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.80, ptr @.str.109, ptr @.str.4, ptr @.str.110, i8 1, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"si5341_finalize_defaults\00", [39 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s rev=%u\0A\00", [21 x i8] zeroinitializer }, align 32
@dev_attr_input_present = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.111, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @input_present_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_input_present_sticky = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.113, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @input_present_sticky_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pll_locked = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.114, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pll_locked_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pll_locked_sticky = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.115, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pll_locked_sticky_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_clear_sticky = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.116, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @clear_sticky_store }, [36 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"input_present\00", [18 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"input_present_sticky\00", [43 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_locked\00", [21 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pll_locked_sticky\00", [46 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clear_sticky\00", [19 x i8] zeroinitializer }, align 32
@switch.table.si5341_probe_chip_id = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\04\0A\02\04\04\0A", [26 x i8] zeroinitializer }, align 32
@switch.table.si5341_probe_chip_id.117 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\04\05\02\04\04\05", [26 x i8] zeroinitializer }, align 32
@switch.table.si5341_probe_chip_id.118 = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @si5340_reg_output_offset, ptr @si5341_reg_output_offset, ptr @si5340_reg_output_offset, ptr @si5340_reg_output_offset, ptr @si5340_reg_output_offset, ptr @si5341_reg_output_offset], [40 x i8] zeroinitializer }, align 32
@switch.table.si5341_probe_chip_id.119 = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @si5340_reg_rdiv_offset, ptr @si5341_reg_rdiv_offset, ptr @si5340_reg_rdiv_offset, ptr @si5340_reg_rdiv_offset, ptr @si5340_reg_rdiv_offset, ptr @si5341_reg_rdiv_offset], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.120 = internal global [5 x i64] [i64 3, i64 32, i64 1800000, i64 2500000, i64 3300000]
@__sancov_gen_cov_switch_values.121 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.122 = private unnamed_addr constant [14 x i8] c"si5341_driver\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1833, i32 26 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1835, i32 11 }
@___asan_gen_.128 = private unnamed_addr constant [20 x i8] c"clk_si5341_of_match\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1823, i32 34 }
@___asan_gen_.131 = private unnamed_addr constant [10 x i8] c"si5341_id\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1813, i32 35 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1588, i32 40 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1600, i32 5 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1613, i32 51 }
@___asan_gen_.158 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [21 x i8] c"si5341_regmap_config\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1255, i32 35 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1618, i32 17 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1630, i32 49 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1640, i32 10 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1642, i32 13 }
@___asan_gen_.176 = private unnamed_addr constant [20 x i8] c"si5341_reg_defaults\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 224, i32 40 }
@___asan_gen_.179 = private unnamed_addr constant [15 x i8] c"si5341_clk_ops\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 553, i32 29 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1689, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant [21 x i8] c"si5341_synth_clk_ops\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 738, i32 29 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1698, i32 5 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1705, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant [22 x i8] c"si5341_output_clk_ops\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 925, i32 29 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1714, i32 37 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1735, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1746, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1767, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1774, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant [18 x i8] c"si5341_attributes\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1539, i32 32 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1780, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1251, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 172, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 172, i32 9 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 172, i32 16 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 172, i32 23 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1277, i32 35 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1278, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1284, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1288, i32 36 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1303, i32 5 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1314, i32 36 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1316, i32 5 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1325, i32 36 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1327, i32 5 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1336, i32 36 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1340, i32 33 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1343, i32 33 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1360, i32 5 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1367, i32 4 }
@___asan_gen_.329 = private unnamed_addr constant [23 x i8] c"si5341_regmap_volatile\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1211, i32 41 }
@___asan_gen_.332 = private unnamed_addr constant [21 x i8] c"si5341_regmap_ranges\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1217, i32 38 }
@___asan_gen_.335 = private unnamed_addr constant [29 x i8] c"si5341_regmap_volatile_range\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1198, i32 34 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1000, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1006, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant [25 x i8] c"si5340_reg_output_offset\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 191, i32 18 }
@___asan_gen_.359 = private unnamed_addr constant [23 x i8] c"si5340_reg_rdiv_offset\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 211, i32 18 }
@___asan_gen_.362 = private unnamed_addr constant [25 x i8] c"si5341_reg_output_offset\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 177, i32 18 }
@___asan_gen_.365 = private unnamed_addr constant [23 x i8] c"si5341_reg_rdiv_offset\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 199, i32 18 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1041, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1104, i32 4 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1432, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1442, i32 4 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1396, i32 31 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1397, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1400, i32 31 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1401, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1406, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 730, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 966, i32 4 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 973, i32 4 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 980, i32 4 }
@___asan_gen_.458 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 986, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1173, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant [23 x i8] c"dev_attr_input_present\00", align 1
@___asan_gen_.473 = private unnamed_addr constant [30 x i8] c"dev_attr_input_present_sticky\00", align 1
@___asan_gen_.476 = private unnamed_addr constant [20 x i8] c"dev_attr_pll_locked\00", align 1
@___asan_gen_.479 = private unnamed_addr constant [27 x i8] c"dev_attr_pll_locked_sticky\00", align 1
@___asan_gen_.482 = private unnamed_addr constant [22 x i8] c"dev_attr_clear_sticky\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1473, i32 8 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1471, i32 34 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1488, i32 8 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1503, i32 8 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1518, i32 8 }
@___asan_gen_.500 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.501 = private constant [28 x i8] c"../drivers/clk/clk-si5341.c\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1537, i32 8 }
@___asan_gen_.503 = private unnamed_addr constant [34 x i8] c"switch.table.si5341_probe_chip_id\00", align 1
@___asan_gen_.504 = private unnamed_addr constant [38 x i8] c"switch.table.si5341_probe_chip_id.117\00", align 1
@___asan_gen_.505 = private unnamed_addr constant [38 x i8] c"switch.table.si5341_probe_chip_id.118\00", align 1
@___asan_gen_.506 = private unnamed_addr constant [38 x i8] c"switch.table.si5341_probe_chip_id.119\00", align 1
@llvm.compiler.used = appending global [166 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_si5341_driver_exit, ptr @__initcall__kmod_clk_si5341__291_1842_si5341_driver_init6, ptr @of_clk_si5341_get._entry, ptr @of_clk_si5341_get._entry.100, ptr @of_clk_si5341_get._entry.103, ptr @of_clk_si5341_get._entry.106, ptr @of_clk_si5341_get._entry_ptr, ptr @of_clk_si5341_get._entry_ptr.102, ptr @of_clk_si5341_get._entry_ptr.105, ptr @of_clk_si5341_get._entry_ptr.108, ptr @si5341_clk_select_active_input._entry, ptr @si5341_clk_select_active_input._entry_ptr, ptr @si5341_driver_exit, ptr @si5341_dt_parse_dt._entry, ptr @si5341_dt_parse_dt._entry.44, ptr @si5341_dt_parse_dt._entry.48, ptr @si5341_dt_parse_dt._entry.52, ptr @si5341_dt_parse_dt._entry.56, ptr @si5341_dt_parse_dt._entry.62, ptr @si5341_dt_parse_dt._entry.65, ptr @si5341_dt_parse_dt._entry_ptr, ptr @si5341_dt_parse_dt._entry_ptr.46, ptr @si5341_dt_parse_dt._entry_ptr.50, ptr @si5341_dt_parse_dt._entry_ptr.54, ptr @si5341_dt_parse_dt._entry_ptr.58, ptr @si5341_dt_parse_dt._entry_ptr.64, ptr @si5341_dt_parse_dt._entry_ptr.68, ptr @si5341_initialize_pll._entry, ptr @si5341_initialize_pll._entry.88, ptr @si5341_initialize_pll._entry.91, ptr @si5341_initialize_pll._entry_ptr, ptr @si5341_initialize_pll._entry_ptr.90, ptr @si5341_initialize_pll._entry_ptr.93, ptr @si5341_probe._entry, ptr @si5341_probe._entry.12, ptr @si5341_probe._entry.16, ptr @si5341_probe._entry.20, ptr @si5341_probe._entry.23, ptr @si5341_probe._entry.26, ptr @si5341_probe._entry.29, ptr @si5341_probe._entry.32, ptr @si5341_probe._entry_ptr, ptr @si5341_probe._entry_ptr.14, ptr @si5341_probe._entry_ptr.18, ptr @si5341_probe._entry_ptr.22, ptr @si5341_probe._entry_ptr.25, ptr @si5341_probe._entry_ptr.28, ptr @si5341_probe._entry_ptr.31, ptr @si5341_probe._entry_ptr.34, ptr @si5341_probe_chip_id._entry, ptr @si5341_probe_chip_id._entry.71, ptr @si5341_probe_chip_id._entry.75, ptr @si5341_probe_chip_id._entry_ptr, ptr @si5341_probe_chip_id._entry_ptr.74, ptr @si5341_probe_chip_id._entry_ptr.77, ptr @si5341_wait_device_ready._entry, ptr @si5341_wait_device_ready._entry_ptr, ptr @si5341_write_multiple._entry, ptr @si5341_write_multiple._entry_ptr, ptr @si5341_driver, ptr @.str, ptr @clk_si5341_of_match, ptr @si5341_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @si5341_probe._key, ptr @si5341_regmap_config, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @si5341_reg_defaults, ptr @si5341_clk_ops, ptr @.str.13, ptr @si5341_synth_clk_ops, ptr @.str.15, ptr @.str.17, ptr @si5341_output_clk_ops, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @si5341_attributes, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.66, ptr @.str.67, ptr @si5341_regmap_volatile, ptr @si5341_regmap_ranges, ptr @si5341_regmap_volatile_range, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @si5340_reg_output_offset, ptr @si5340_reg_rdiv_offset, ptr @si5341_reg_output_offset, ptr @si5341_reg_rdiv_offset, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @.str.92, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.109, ptr @.str.110, ptr @dev_attr_input_present, ptr @dev_attr_input_present_sticky, ptr @dev_attr_pll_locked, ptr @dev_attr_pll_locked_sticky, ptr @dev_attr_clear_sticky, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @switch.table.si5341_probe_chip_id, ptr @switch.table.si5341_probe_chip_id.117, ptr @switch.table.si5341_probe_chip_id.118, ptr @switch.table.si5341_probe_chip_id.119], section "llvm.metadata"
@0 = internal global [131 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5341_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_si5341_of_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5341_id to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5341_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5341_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5341_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5341_reg_defaults to i32), i32 548, i32 704, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5341_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5341_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5341_synth_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5341_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5341_output_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5341_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5341_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5341_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5341_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5341_attributes to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5341_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5341_wait_device_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5341_dt_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5341_dt_parse_dt._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5341_dt_parse_dt._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5341_dt_parse_dt._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5341_dt_parse_dt._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5341_dt_parse_dt._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5341_dt_parse_dt._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5341_regmap_volatile to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5341_regmap_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5341_regmap_volatile_range to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5341_probe_chip_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5341_probe_chip_id._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5340_reg_output_offset to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5340_reg_rdiv_offset to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5341_reg_output_offset to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5341_reg_rdiv_offset to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5341_probe_chip_id._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5341_write_multiple._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5341_clk_select_active_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5341_initialize_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5341_initialize_pll._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5341_initialize_pll._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_clk_si5341_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_clk_si5341_get._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_clk_si5341_get._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_clk_si5341_get._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_input_present to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_input_present_sticky to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pll_locked to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pll_locked_sticky to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_clear_sticky to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.si5341_probe_chip_id to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.si5341_probe_chip_id.117 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.si5341_probe_chip_id.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.si5341_probe_chip_id.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @si5341_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @si5341_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @si5341_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @si5341_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si5341_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %num.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  %init = alloca %struct.clk_init_data, align 4
  %root_clock_name = alloca ptr, align 4
  %synth_clock_names = alloca [5 x ptr], align 4
  %config = alloca [10 x %struct.clk_si5341_output_config], align 1
  %status = alloca i32, align 4
  %reg_name = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #9
  %0 = call ptr @memset(ptr %init, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %root_clock_name) #9
  %1 = ptrtoint ptr %root_clock_name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %root_clock_name, align 4, !annotation !258
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %synth_clock_names) #9
  %2 = call ptr @memset(ptr %synth_clock_names, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %config) #9
  %3 = call ptr @memset(ptr %config, i32 255, i32 50)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #9
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %status, align 4, !annotation !258
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 416, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup411_crit_edge, label %if.end

entry.cleanup411_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup411

if.end:                                           ; preds = %entry
  %i2c_client = getelementptr inbounds %struct.clk_si5341, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %i2c_client to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %client, ptr %i2c_client, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end
  %count.012.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %call.i599 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i599)
  %cmp1.i = icmp slt i32 %call.i599, 0
  br i1 %cmp1.i, label %for.body.i.cleanup411_crit_edge, label %if.end.i

for.body.i.cleanup411_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup411

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call.i599)
  %cmp2.i = icmp eq i32 %call.i599, 15
  br i1 %cmp2.i, label %for.body.preheader, label %for.inc.i

for.body.preheader:                               ; preds = %if.end.i
  %call6 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.37) #9
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.else

for.inc.i:                                        ; preds = %if.end.i
  tail call void @msleep(i32 noundef 20) #9
  %inc.i = add nuw nsw i32 %count.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 15
  br i1 %exitcond.not.i, label %do.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

do.end.i:                                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35) #12
  br label %cleanup411

if.then8:                                         ; preds = %for.body.preheader
  %cmp10 = icmp eq ptr %call6, inttoptr (i32 -517 to ptr)
  br i1 %cmp10, label %if.then8.cleanup411_crit_edge, label %if.then8.for.inc_crit_edge

if.then8.for.inc_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then8.cleanup411_crit_edge:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup411

if.else:                                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx15 = getelementptr %struct.clk_si5341, ptr %call.i, i32 0, i32 5, i32 0
  %6 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call6, ptr %arrayidx15, align 4
  %call16 = tail call ptr @__clk_get_name(ptr noundef %call6) #9
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then8.for.inc_crit_edge
  %.str.37.sink = phi ptr [ %call16, %if.else ], [ @.str.37, %if.then8.for.inc_crit_edge ]
  %arrayidx14 = getelementptr %struct.clk_si5341, ptr %call.i, i32 0, i32 6, i32 0
  %7 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %.str.37.sink, ptr %arrayidx14, align 4
  %call6.1 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.38) #9
  %cmp.i.1 = icmp ugt ptr %call6.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %if.then8.1, label %if.else.1

if.else.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx15.1 = getelementptr %struct.clk_si5341, ptr %call.i, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call6.1, ptr %arrayidx15.1, align 4
  %call16.1 = tail call ptr @__clk_get_name(ptr noundef %call6.1) #9
  br label %for.inc.1

if.then8.1:                                       ; preds = %for.inc
  %cmp10.1 = icmp eq ptr %call6.1, inttoptr (i32 -517 to ptr)
  br i1 %cmp10.1, label %if.then8.1.cleanup411_crit_edge, label %if.then8.1.for.inc.1_crit_edge

if.then8.1.for.inc.1_crit_edge:                   ; preds = %if.then8.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.then8.1.cleanup411_crit_edge:                  ; preds = %if.then8.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup411

for.inc.1:                                        ; preds = %if.then8.1.for.inc.1_crit_edge, %if.else.1
  %.str.38.sink = phi ptr [ %call16.1, %if.else.1 ], [ @.str.38, %if.then8.1.for.inc.1_crit_edge ]
  %arrayidx14.1 = getelementptr %struct.clk_si5341, ptr %call.i, i32 0, i32 6, i32 1
  %9 = ptrtoint ptr %arrayidx14.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %.str.38.sink, ptr %arrayidx14.1, align 4
  %call6.2 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.39) #9
  %cmp.i.2 = icmp ugt ptr %call6.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2, label %if.then8.2, label %if.else.2

if.else.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx15.2 = getelementptr %struct.clk_si5341, ptr %call.i, i32 0, i32 5, i32 2
  %10 = ptrtoint ptr %arrayidx15.2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call6.2, ptr %arrayidx15.2, align 4
  %call16.2 = tail call ptr @__clk_get_name(ptr noundef %call6.2) #9
  br label %for.inc.2

if.then8.2:                                       ; preds = %for.inc.1
  %cmp10.2 = icmp eq ptr %call6.2, inttoptr (i32 -517 to ptr)
  br i1 %cmp10.2, label %if.then8.2.cleanup411_crit_edge, label %if.then8.2.for.inc.2_crit_edge

if.then8.2.for.inc.2_crit_edge:                   ; preds = %if.then8.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.then8.2.cleanup411_crit_edge:                  ; preds = %if.then8.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup411

for.inc.2:                                        ; preds = %if.then8.2.for.inc.2_crit_edge, %if.else.2
  %.str.39.sink = phi ptr [ %call16.2, %if.else.2 ], [ @.str.39, %if.then8.2.for.inc.2_crit_edge ]
  %arrayidx14.2 = getelementptr %struct.clk_si5341, ptr %call.i, i32 0, i32 6, i32 2
  %11 = ptrtoint ptr %arrayidx14.2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %.str.39.sink, ptr %arrayidx14.2, align 4
  %call6.3 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.40) #9
  %cmp.i.3 = icmp ugt ptr %call6.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3, label %if.then8.3, label %if.else.3

if.else.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx15.3 = getelementptr %struct.clk_si5341, ptr %call.i, i32 0, i32 5, i32 3
  %12 = ptrtoint ptr %arrayidx15.3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call6.3, ptr %arrayidx15.3, align 4
  %call16.3 = tail call ptr @__clk_get_name(ptr noundef %call6.3) #9
  br label %for.inc.3

if.then8.3:                                       ; preds = %for.inc.2
  %cmp10.3 = icmp eq ptr %call6.3, inttoptr (i32 -517 to ptr)
  br i1 %cmp10.3, label %if.then8.3.cleanup411_crit_edge, label %if.then8.3.for.inc.3_crit_edge

if.then8.3.for.inc.3_crit_edge:                   ; preds = %if.then8.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

if.then8.3.cleanup411_crit_edge:                  ; preds = %if.then8.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup411

for.inc.3:                                        ; preds = %if.then8.3.for.inc.3_crit_edge, %if.else.3
  %.str.40.sink = phi ptr [ %call16.3, %if.else.3 ], [ @.str.40, %if.then8.3.for.inc.3_crit_edge ]
  %arrayidx14.3 = getelementptr %struct.clk_si5341, ptr %call.i, i32 0, i32 6, i32 3
  %13 = ptrtoint ptr %arrayidx14.3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %.str.40.sink, ptr %arrayidx14.3, align 4
  br label %for.body22

for.body22:                                       ; preds = %for.inc57.for.body22_crit_edge, %for.inc.3
  %i.1660 = phi i32 [ 0, %for.inc.3 ], [ %inc58, %for.inc57.for.body22_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %reg_name) #9
  %14 = call ptr @memset(ptr %reg_name, i32 255, i32 10)
  %call23 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %reg_name, i32 noundef 10, ptr noundef nonnull @.str.1, i32 noundef %i.1660)
  %call26 = call ptr @devm_regulator_get_optional(ptr noundef %dev, ptr noundef nonnull %reg_name) #9
  %vddo_reg = getelementptr %struct.clk_si5341, ptr %call.i, i32 0, i32 4, i32 %i.1660, i32 2
  %15 = ptrtoint ptr %vddo_reg to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call26, ptr %vddo_reg, align 8
  %cmp.i600 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i600, label %if.then32, label %if.else43

if.then32:                                        ; preds = %for.body22
  %16 = ptrtoint ptr %vddo_reg to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %vddo_reg, align 8
  %cmp40 = icmp eq ptr %call26, inttoptr (i32 -19 to ptr)
  br i1 %cmp40, label %if.then32.for.inc57_crit_edge, label %cleanup.loopexit

if.then32.for.inc57_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc57

if.else43:                                        ; preds = %for.body22
  %call47 = call i32 @regulator_enable(ptr noundef %call26) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.else43.for.inc57_crit_edge, label %do.end

if.else43.for.inc57_crit_edge:                    ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc57

do.end:                                           ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull %reg_name, i32 noundef %call47) #12
  %17 = ptrtoint ptr %vddo_reg to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %vddo_reg, align 8
  br label %cleanup

cleanup.loopexit:                                 ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %call26 to i32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %do.end
  %err.0 = phi i32 [ %call47, %do.end ], [ %18, %cleanup.loopexit ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %reg_name) #9
  br label %cleanup393

for.inc57:                                        ; preds = %if.else43.for.inc57_crit_edge, %if.then32.for.inc57_crit_edge
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %reg_name) #9
  %inc58 = add nuw nsw i32 %i.1660, 1
  %exitcond.not = icmp eq i32 %inc58, 10
  br i1 %exitcond.not, label %for.end59, label %for.inc57.for.body22_crit_edge

for.inc57.for.body22_crit_edge:                   ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body22

for.end59:                                        ; preds = %for.inc57
  %19 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_client, align 8
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4, i32 27
  %21 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num.i) #9
  %23 = ptrtoint ptr %num.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %num.i, align 4, !annotation !258
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %24 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %val.i, align 4, !annotation !258
  %25 = call ptr @memset(ptr %config, i32 0, i32 50)
  %call.i601 = call ptr @of_get_next_child(ptr noundef %22, ptr noundef null) #9
  %cmp.not223.i = icmp eq ptr %call.i601, null
  br i1 %cmp.not223.i, label %for.end59.if.end64_crit_edge, label %for.end59.for.body.i602_crit_edge

for.end59.for.body.i602_crit_edge:                ; preds = %for.end59
  br label %for.body.i602

for.end59.if.end64_crit_edge:                     ; preds = %for.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

for.body.i602:                                    ; preds = %for.inc.i605.for.body.i602_crit_edge, %for.end59.for.body.i602_crit_edge
  %child.0224.i = phi ptr [ %call151.i, %for.inc.i605.for.body.i602_crit_edge ], [ %call.i601, %for.end59.for.body.i602_crit_edge ]
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0224.i, ptr noundef nonnull @.str.41, ptr noundef nonnull %num.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.end.i604, label %do.end.i603

do.end.i603:                                      ; preds = %for.body.i602
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i2c_client, align 8
  %dev3.i = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %child.0224.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %child.0224.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i, ptr noundef nonnull @.str.42, ptr noundef %29) #12
  br label %si5341_dt_parse_dt.exit

if.end.i604:                                      ; preds = %for.body.i602
  %30 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %31)
  %cmp4.i = icmp ugt i32 %31, 9
  br i1 %cmp4.i, label %do.end8.i, label %if.end11.i

do.end8.i:                                        ; preds = %if.end.i604
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i2c_client, align 8
  %dev10.i = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i, ptr noundef nonnull @.str.45, i32 noundef %31) #12
  br label %si5341_dt_parse_dt.exit

if.end11.i:                                       ; preds = %if.end.i604
  %call.i.i201.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0224.i, ptr noundef nonnull @.str.47, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i201.i)
  %tobool13.not.i = icmp sgt i32 %call.i.i201.i, -1
  br i1 %tobool13.not.i, label %if.then14.i, label %if.end11.i.if.end43.i_crit_edge

if.end11.i.if.end43.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i

if.then14.i:                                      ; preds = %if.end11.i
  %34 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val.i, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i32 %35, label %do.end25.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb15.i
    i32 4, label %sw.bb18.i
  ]

sw.bb.i:                                          ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num.i, align 4
  %out_cm_ampl_bits.i = getelementptr %struct.clk_si5341_output_config, ptr %config, i32 %38, i32 1
  %39 = ptrtoint ptr %out_cm_ampl_bits.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 51, ptr %out_cm_ampl_bits.i, align 1
  br label %sw.epilog.i

sw.bb15.i:                                        ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num.i, align 4
  %out_cm_ampl_bits17.i = getelementptr %struct.clk_si5341_output_config, ptr %config, i32 %41, i32 1
  %42 = ptrtoint ptr %out_cm_ampl_bits17.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 19, ptr %out_cm_ampl_bits17.i, align 1
  br label %sw.epilog.i

sw.bb18.i:                                        ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num.i, align 4
  %out_cm_ampl_bits20.i = getelementptr %struct.clk_si5341_output_config, ptr %config, i32 %44, i32 1
  %45 = ptrtoint ptr %out_cm_ampl_bits20.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 51, ptr %out_cm_ampl_bits20.i, align 1
  %arrayidx21.i = getelementptr %struct.clk_si5341_output_config, ptr %config, i32 %44
  %46 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx21.i, align 1
  %48 = or i8 %47, -64
  store i8 %48, ptr %arrayidx21.i, align 1
  br label %sw.epilog.i

do.end25.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i2c_client, align 8
  %dev27.i = getelementptr inbounds %struct.i2c_client, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27.i, ptr noundef nonnull @.str.49, i32 noundef %35, i32 noundef %52) #12
  br label %si5341_dt_parse_dt.exit

sw.epilog.i:                                      ; preds = %sw.bb18.i, %sw.bb15.i, %sw.bb.i
  %53 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num.i, align 4
  %arrayidx28.i = getelementptr %struct.clk_si5341_output_config, ptr %config, i32 %54
  %55 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx28.i, align 1
  %57 = and i8 %56, -16
  %58 = trunc i32 %35 to i8
  %conv37.i = or i8 %57, %58
  %59 = or i8 %conv37.i, 8
  store i8 %59, ptr %arrayidx28.i, align 1
  br label %if.end43.i

if.end43.i:                                       ; preds = %sw.epilog.i, %if.end11.i.if.end43.i_crit_edge
  %call.i.i202.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0224.i, ptr noundef nonnull @.str.51, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i202.i)
  %tobool45.not.i = icmp sgt i32 %call.i.i202.i, -1
  br i1 %tobool45.not.i, label %if.then46.i, label %if.end43.i.if.end67.i_crit_edge

if.end43.i.if.end67.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67.i

if.then46.i:                                      ; preds = %if.end43.i
  %60 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %61)
  %cmp47.i = icmp ugt i32 %61, 15
  br i1 %cmp47.i, label %do.end52.i, label %if.end55.i

do.end52.i:                                       ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %i2c_client, align 8
  %dev54.i = getelementptr inbounds %struct.i2c_client, ptr %63, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev54.i, ptr noundef nonnull @.str.53, i32 noundef %61) #12
  br label %si5341_dt_parse_dt.exit

if.end55.i:                                       ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num.i, align 4
  %out_cm_ampl_bits57.i = getelementptr %struct.clk_si5341_output_config, ptr %config, i32 %65, i32 1
  %66 = ptrtoint ptr %out_cm_ampl_bits57.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %out_cm_ampl_bits57.i, align 1
  %68 = and i8 %67, -16
  %69 = trunc i32 %61 to i8
  %conv66.i = or i8 %68, %69
  store i8 %conv66.i, ptr %out_cm_ampl_bits57.i, align 1
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.end55.i, %if.end43.i.if.end67.i_crit_edge
  %call.i.i203.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0224.i, ptr noundef nonnull @.str.55, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i203.i)
  %tobool69.not.i = icmp sgt i32 %call.i.i203.i, -1
  br i1 %tobool69.not.i, label %if.then70.i, label %if.end67.i.if.end91.i_crit_edge

if.end67.i.if.end91.i_crit_edge:                  ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91.i

if.then70.i:                                      ; preds = %if.end67.i
  %70 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %71)
  %cmp71.i = icmp ugt i32 %71, 15
  br i1 %cmp71.i, label %do.end76.i, label %if.end79.i

do.end76.i:                                       ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %i2c_client, align 8
  %dev78.i = getelementptr inbounds %struct.i2c_client, ptr %73, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev78.i, ptr noundef nonnull @.str.57, i32 noundef %71) #12
  br label %si5341_dt_parse_dt.exit

if.end79.i:                                       ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %num.i, align 4
  %out_cm_ampl_bits81.i = getelementptr %struct.clk_si5341_output_config, ptr %config, i32 %75, i32 1
  %76 = ptrtoint ptr %out_cm_ampl_bits81.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %out_cm_ampl_bits81.i, align 1
  %78 = and i8 %77, 15
  %.tr.i = trunc i32 %71 to i8
  %79 = shl nuw i8 %.tr.i, 4
  %conv90.i = or i8 %78, %79
  store i8 %conv90.i, ptr %out_cm_ampl_bits81.i, align 1
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.end79.i, %if.end67.i.if.end91.i_crit_edge
  %call.i.i = call ptr @of_find_property(ptr noundef nonnull %child.0224.i, ptr noundef nonnull @.str.59, ptr noundef null) #9
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.i.not.i, label %if.end91.i.if.end99.i_crit_edge, label %if.then93.i

if.end91.i.if.end99.i_crit_edge:                  ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99.i

if.then93.i:                                      ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %num.i, align 4
  %arrayidx94.i = getelementptr %struct.clk_si5341_output_config, ptr %config, i32 %81
  %82 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx94.i, align 1
  %84 = or i8 %83, 16
  store i8 %84, ptr %arrayidx94.i, align 1
  br label %if.end99.i

if.end99.i:                                       ; preds = %if.then93.i, %if.end91.i.if.end99.i_crit_edge
  %call.i204.i = call ptr @of_find_property(ptr noundef nonnull %child.0224.i, ptr noundef nonnull @.str.60, ptr noundef null) #9
  %tobool.i205.i = icmp ne ptr %call.i204.i, null
  %85 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %num.i, align 4
  %synth_master.i = getelementptr %struct.clk_si5341_output_config, ptr %config, i32 %86, i32 3
  %frombool.i = zext i1 %tobool.i205.i to i8
  %87 = ptrtoint ptr %synth_master.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %frombool.i, ptr %synth_master.i, align 1
  %call.i206.i = call ptr @of_find_property(ptr noundef nonnull %child.0224.i, ptr noundef nonnull @.str.61, ptr noundef null) #9
  %tobool.i207.i = icmp ne ptr %call.i206.i, null
  %88 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %num.i, align 4
  %always_on.i = getelementptr %struct.clk_si5341_output_config, ptr %config, i32 %89, i32 4
  %frombool104.i = zext i1 %tobool.i207.i to i8
  %90 = ptrtoint ptr %always_on.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %frombool104.i, ptr %always_on.i, align 1
  %vdd_sel_bits.i = getelementptr %struct.clk_si5341_output_config, ptr %config, i32 %89, i32 2
  %91 = ptrtoint ptr %vdd_sel_bits.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 8, ptr %vdd_sel_bits.i, align 1
  %vddo_reg.i = getelementptr %struct.clk_si5341, ptr %call.i, i32 0, i32 4, i32 %89, i32 2
  %92 = ptrtoint ptr %vddo_reg.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %vddo_reg.i, align 8
  %tobool107.not.i = icmp eq ptr %93, null
  br i1 %tobool107.not.i, label %do.end141.i, label %if.then108.i

if.then108.i:                                     ; preds = %if.end99.i
  %call112.i = call i32 @regulator_get_voltage(ptr noundef nonnull %93) #9
  %94 = zext i32 %call112.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %call112.i, label %cleanup.i [
    i32 3300000, label %if.then108.i.for.inc.i605_crit_edge
    i32 1800000, label %if.then108.i.for.inc.sink.split.i_crit_edge
    i32 2500000, label %sw.bb125.i
  ]

if.then108.i.for.inc.sink.split.i_crit_edge:      ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split.i

if.then108.i.for.inc.i605_crit_edge:              ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i605

sw.bb125.i:                                       ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split.i

cleanup.i:                                        ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %i2c_client, align 8
  %dev136.i = getelementptr inbounds %struct.i2c_client, ptr %96, i32 0, i32 4
  %97 = ptrtoint ptr %child.0224.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %child.0224.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev136.i, ptr noundef nonnull @.str.63, i32 noundef %call112.i, ptr noundef %98) #12
  br label %si5341_dt_parse_dt.exit

do.end141.i:                                      ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #11
  %99 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %i2c_client, align 8
  %dev143.i = getelementptr inbounds %struct.i2c_client, ptr %100, i32 0, i32 4
  %101 = ptrtoint ptr %child.0224.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %child.0224.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev143.i, ptr noundef nonnull @.str.66, ptr noundef %102) #12
  br label %for.inc.sink.split.i

for.inc.sink.split.i:                             ; preds = %do.end141.i, %sw.bb125.i, %if.then108.i.for.inc.sink.split.i_crit_edge
  %.sink257.i = phi i8 [ 32, %sw.bb125.i ], [ 32, %do.end141.i ], [ 16, %if.then108.i.for.inc.sink.split.i_crit_edge ]
  %103 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %.sink.i = load i32, ptr %num.i, align 4
  %vdd_sel_bits146.i = getelementptr %struct.clk_si5341_output_config, ptr %config, i32 %.sink.i, i32 2
  %104 = ptrtoint ptr %vdd_sel_bits146.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %vdd_sel_bits146.i, align 1
  %106 = or i8 %105, %.sink257.i
  store i8 %106, ptr %vdd_sel_bits146.i, align 1
  br label %for.inc.i605

for.inc.i605:                                     ; preds = %for.inc.sink.split.i, %if.then108.i.for.inc.i605_crit_edge
  %call151.i = call ptr @of_get_next_child(ptr noundef %22, ptr noundef nonnull %child.0224.i) #9
  %cmp.not.i = icmp eq ptr %call151.i, null
  br i1 %cmp.not.i, label %for.inc.i605.if.end64_crit_edge, label %for.inc.i605.for.body.i602_crit_edge

for.inc.i605.for.body.i602_crit_edge:             ; preds = %for.inc.i605
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i602

for.inc.i605.if.end64_crit_edge:                  ; preds = %for.inc.i605
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

si5341_dt_parse_dt.exit:                          ; preds = %cleanup.i, %do.end76.i, %do.end52.i, %do.end25.i, %do.end8.i, %do.end.i603
  call void @of_node_put(ptr noundef nonnull %child.0224.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num.i) #9
  br label %cleanup393

if.end64:                                         ; preds = %for.inc.i605.if.end64_crit_edge, %for.end59.if.end64_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num.i) #9
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %107 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %of_node, align 8
  %call66 = call i32 @of_property_read_string(ptr noundef %108, ptr noundef nonnull @.str.7, ptr noundef nonnull %init) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end64.if.end73_crit_edge, label %if.then68

if.end64.if.end73_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

if.then68:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  %109 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %of_node, align 8
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %110, align 4
  %113 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %112, ptr %init, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then68, %if.end64.if.end73_crit_edge
  %114 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %init, align 4
  %116 = ptrtoint ptr %root_clock_name to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %115, ptr %root_clock_name, align 4
  %call75 = call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @si5341_regmap_config, ptr noundef nonnull @si5341_probe._key, ptr noundef nonnull @.str.8) #9
  %regmap = getelementptr inbounds %struct.clk_si5341, ptr %call.i, i32 0, i32 1
  %117 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call75, ptr %regmap, align 4
  %cmp.i606 = icmp ugt ptr %call75, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i606, label %if.then78, label %if.end81

if.then78:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  %118 = ptrtoint ptr %call75 to i32
  br label %cleanup393

if.end81:                                         ; preds = %if.end73
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %119 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call82 = call fastcc i32 @si5341_probe_chip_id(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %if.end81.cleanup393_crit_edge, label %if.end85

if.end81.cleanup393_crit_edge:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup393

if.end85:                                         ; preds = %if.end81
  %120 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %of_node, align 8
  %call.i607 = call ptr @of_find_property(ptr noundef %121, ptr noundef nonnull @.str.9, ptr noundef null) #9
  %tobool.i.not = icmp eq ptr %call.i607, null
  br i1 %tobool.i.not, label %if.else90, label %if.end85.if.end96_crit_edge

if.end85.if.end96_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end96

if.else90:                                        ; preds = %if.end85
  %call91 = call fastcc i32 @si5341_is_programmed_already(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %cmp92 = icmp slt i32 %call91, 0
  br i1 %cmp92, label %if.else90.cleanup393_crit_edge, label %if.end94

if.else90.cleanup393_crit_edge:                   ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup393

if.end94:                                         ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool95.not = icmp eq i32 %call91, 0
  br label %if.end96

if.end96:                                         ; preds = %if.end94, %if.end85.if.end96_crit_edge
  %initialization_required.0.off0 = phi i1 [ %tobool95.not, %if.end94 ], [ true, %if.end85.if.end96_crit_edge ]
  %122 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %of_node, align 8
  %call.i608 = call ptr @of_find_property(ptr noundef %123, ptr noundef nonnull @.str.10, ptr noundef null) #9
  %tobool.i609 = icmp ne ptr %call.i608, null
  %xaxb_ext_clk = getelementptr inbounds %struct.clk_si5341, ptr %call.i, i32 0, i32 13
  %frombool100 = zext i1 %tobool.i609 to i8
  %124 = ptrtoint ptr %xaxb_ext_clk to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %frombool100, ptr %xaxb_ext_clk, align 4
  %125 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %of_node, align 8
  %call.i610 = call ptr @of_find_property(ptr noundef %126, ptr noundef nonnull @.str.11, ptr noundef null) #9
  %tobool.i611 = icmp ne ptr %call.i610, null
  %iovdd_33 = getelementptr inbounds %struct.clk_si5341, ptr %call.i, i32 0, i32 14
  %frombool104 = zext i1 %tobool.i611 to i8
  %127 = ptrtoint ptr %iovdd_33 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %frombool104, ptr %iovdd_33, align 1
  br i1 %initialization_required.0.off0, label %if.then106, label %if.end120.thread

if.then106:                                       ; preds = %if.end96
  %call107 = call fastcc i32 @si5341_read_settings(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %cmp108 = icmp slt i32 %call107, 0
  br i1 %cmp108, label %if.then106.cleanup393_crit_edge, label %if.end110

if.then106.cleanup393_crit_edge:                  ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup393

if.end110:                                        ; preds = %if.then106
  %call111 = call fastcc i32 @si5341_send_preamble(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %cmp112 = icmp slt i32 %call111, 0
  br i1 %cmp112, label %if.end110.cleanup393_crit_edge, label %if.end114

if.end110.cleanup393_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup393

if.end114:                                        ; preds = %if.end110
  %128 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %regmap, align 4
  call void @regcache_cache_only(ptr noundef %129, i1 noundef zeroext true) #9
  %call116 = call fastcc i32 @si5341_write_multiple(ptr noundef nonnull %call.i, ptr noundef nonnull @si5341_reg_defaults, i32 noundef 137)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %cmp117 = icmp slt i32 %call116, 0
  br i1 %cmp117, label %if.end114.cleanup393_crit_edge, label %if.end120

if.end114.cleanup393_crit_edge:                   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup393

if.end120:                                        ; preds = %if.end114
  %call121 = call fastcc i32 @si5341_clk_select_active_input(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %cmp122 = icmp slt i32 %call121, 0
  br i1 %cmp122, label %if.end120.cleanup393_crit_edge, label %if.then126.critedge

if.end120.cleanup393_crit_edge:                   ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup393

if.end120.thread:                                 ; preds = %if.end96
  %call121621 = call fastcc i32 @si5341_clk_select_active_input(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121621)
  %cmp122622 = icmp slt i32 %call121621, 0
  br i1 %cmp122622, label %if.end120.thread.cleanup393_crit_edge, label %if.end120.thread.if.end131_crit_edge

if.end120.thread.if.end131_crit_edge:             ; preds = %if.end120.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end131

if.end120.thread.cleanup393_crit_edge:            ; preds = %if.end120.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup393

if.then126.critedge:                              ; preds = %if.end120
  %call127 = call fastcc i32 @si5341_initialize_pll(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %cmp128 = icmp slt i32 %call127, 0
  br i1 %cmp128, label %if.then126.critedge.cleanup393_crit_edge, label %if.then126.critedge.if.end131_crit_edge

if.then126.critedge.if.end131_crit_edge:          ; preds = %if.then126.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end131

if.then126.critedge.cleanup393_crit_edge:         ; preds = %if.then126.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup393

if.end131:                                        ; preds = %if.then126.critedge.if.end131_crit_edge, %if.end120.thread.if.end131_crit_edge
  %input_clk_name132 = getelementptr inbounds %struct.clk_si5341, ptr %call.i, i32 0, i32 6
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %130 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %input_clk_name132, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %131 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 4, ptr %num_parents, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %132 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @si5341_clk_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %133 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %flags, align 4
  %init134 = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 2
  %134 = ptrtoint ptr %init134 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %init, ptr %init134, align 8
  %call137 = call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %if.end144, label %do.end142

do.end142:                                        ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #12
  br label %cleanup393

if.end144:                                        ; preds = %if.end131
  %135 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 1, ptr %num_parents, align 4
  %136 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %root_clock_name, ptr %parent_names, align 4
  %137 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr @si5341_synth_clk_ops, ptr %ops, align 4
  %num_synth = getelementptr inbounds %struct.clk_si5341, ptr %call.i, i32 0, i32 11
  %138 = ptrtoint ptr %num_synth to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %num_synth, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %cmp149662.not = icmp eq i8 %139, 0
  br i1 %cmp149662.not, label %if.end144.for.end183_crit_edge, label %if.end144.for.body151_crit_edge

if.end144.for.body151_crit_edge:                  ; preds = %if.end144
  br label %for.body151

if.end144.for.end183_crit_edge:                   ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end183

for.body151:                                      ; preds = %for.inc181.for.body151_crit_edge, %if.end144.for.body151_crit_edge
  %i.2663 = phi i32 [ %inc182, %for.inc181.for.body151_crit_edge ], [ 0, %if.end144.for.body151_crit_edge ]
  %140 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %of_node, align 8
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %141, align 4
  %call156 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.15, ptr noundef %143, i32 noundef %i.2663) #9
  %arrayidx157 = getelementptr [5 x ptr], ptr %synth_clock_names, i32 0, i32 %i.2663
  %144 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %call156, ptr %arrayidx157, align 4
  %145 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %call156, ptr %init, align 4
  %conv160 = trunc i32 %i.2663 to i8
  %arrayidx161 = getelementptr %struct.clk_si5341, ptr %call.i, i32 0, i32 3, i32 %i.2663
  %index = getelementptr %struct.clk_si5341, ptr %call.i, i32 0, i32 3, i32 %i.2663, i32 2
  %146 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %conv160, ptr %index, align 4
  %data164 = getelementptr %struct.clk_si5341, ptr %call.i, i32 0, i32 3, i32 %i.2663, i32 1
  %147 = ptrtoint ptr %data164 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %call.i, ptr %data164, align 4
  %init168 = getelementptr inbounds %struct.clk_hw, ptr %arrayidx161, i32 0, i32 2
  %148 = ptrtoint ptr %init168 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %init, ptr %init168, align 4
  %call173 = call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef %arrayidx161) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173)
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %for.body151.for.inc181_crit_edge, label %do.end178

for.body151.for.inc181_crit_edge:                 ; preds = %for.body151
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc181

do.end178:                                        ; preds = %for.body151
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %i.2663) #12
  br label %for.inc181

for.inc181:                                       ; preds = %do.end178, %for.body151.for.inc181_crit_edge
  %inc182 = add nuw nsw i32 %i.2663, 1
  %149 = ptrtoint ptr %num_synth to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %num_synth, align 1
  %conv = zext i8 %150 to i32
  %cmp149 = icmp ult i32 %inc182, %conv
  br i1 %cmp149, label %for.inc181.for.body151_crit_edge, label %for.inc181.for.end183_crit_edge

for.inc181.for.end183_crit_edge:                  ; preds = %for.inc181
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end183

for.inc181.for.body151_crit_edge:                 ; preds = %for.inc181
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body151

for.end183:                                       ; preds = %for.inc181.for.end183_crit_edge, %if.end144.for.end183_crit_edge
  %.lcssa = phi i8 [ 0, %if.end144.for.end183_crit_edge ], [ %150, %for.inc181.for.end183_crit_edge ]
  %151 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %.lcssa, ptr %num_parents, align 4
  %152 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %synth_clock_names, ptr %parent_names, align 4
  %153 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr @si5341_output_clk_ops, ptr %ops, align 4
  %num_outputs = getelementptr inbounds %struct.clk_si5341, ptr %call.i, i32 0, i32 10
  %154 = ptrtoint ptr %num_outputs to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %num_outputs, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %cmp191666.not = icmp eq i8 %155, 0
  br i1 %cmp191666.not, label %for.end183.for.end286_crit_edge, label %for.body193.lr.ph

for.end183.for.end286_crit_edge:                  ; preds = %for.end183
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end286

for.body193.lr.ph:                                ; preds = %for.end183
  %reg_output_offset = getelementptr inbounds %struct.clk_si5341, ptr %call.i, i32 0, i32 7
  br label %for.body193

for.body193:                                      ; preds = %for.inc284.for.body193_crit_edge, %for.body193.lr.ph
  %i.3667 = phi i32 [ 0, %for.body193.lr.ph ], [ %inc285, %for.inc284.for.body193_crit_edge ]
  %156 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %of_node, align 8
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %157, align 4
  %call197 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.19, ptr noundef %159, i32 noundef %i.3667) #9
  %160 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %call197, ptr %init, align 4
  %arrayidx199 = getelementptr [10 x %struct.clk_si5341_output_config], ptr %config, i32 0, i32 %i.3667
  %synth_master = getelementptr [10 x %struct.clk_si5341_output_config], ptr %config, i32 0, i32 %i.3667, i32 3
  %161 = ptrtoint ptr %synth_master to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %synth_master, align 1, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool200.not = icmp eq i8 %162, 0
  %cond = select i1 %tobool200.not, i32 0, i32 4
  %163 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %cond, ptr %flags, align 4
  %conv203 = trunc i32 %i.3667 to i8
  %arrayidx205 = getelementptr %struct.clk_si5341, ptr %call.i, i32 0, i32 4, i32 %i.3667
  %index206 = getelementptr %struct.clk_si5341, ptr %call.i, i32 0, i32 4, i32 %i.3667, i32 3
  %164 = ptrtoint ptr %index206 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %conv203, ptr %index206, align 4
  %data209 = getelementptr %struct.clk_si5341, ptr %call.i, i32 0, i32 4, i32 %i.3667, i32 1
  %165 = ptrtoint ptr %data209 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %call.i, ptr %data209, align 4
  %init213 = getelementptr inbounds %struct.clk_hw, ptr %arrayidx205, i32 0, i32 2
  %166 = ptrtoint ptr %init213 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %init, ptr %init213, align 8
  %167 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %arrayidx199, align 1
  %conv215 = zext i8 %168 to i32
  %and = and i32 %conv215, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool216.not = icmp eq i32 %and, 0
  br i1 %tobool216.not, label %for.body193.if.end261_crit_edge, label %if.then217

for.body193.if.end261_crit_edge:                  ; preds = %for.body193
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end261

if.then217:                                       ; preds = %for.body193
  call void @__sanitizer_cov_trace_pc() #11
  %169 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %regmap, align 4
  %171 = ptrtoint ptr %reg_output_offset to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %reg_output_offset, align 8
  %arrayidx225 = getelementptr i16, ptr %172, i32 %i.3667
  %173 = ptrtoint ptr %arrayidx225 to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %arrayidx225, align 2
  %conv226 = zext i16 %174 to i32
  %add = add nuw nsw i32 %conv226, 1
  %call230 = call i32 @regmap_write(ptr noundef %170, i32 noundef %add, i32 noundef %conv215) #9
  %175 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %regmap, align 4
  %177 = ptrtoint ptr %data209 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %data209, align 4
  %reg_output_offset235 = getelementptr inbounds %struct.clk_si5341, ptr %178, i32 0, i32 7
  %179 = ptrtoint ptr %reg_output_offset235 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %reg_output_offset235, align 8
  %181 = ptrtoint ptr %index206 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %index206, align 4
  %idxprom239 = zext i8 %182 to i32
  %arrayidx240 = getelementptr i16, ptr %180, i32 %idxprom239
  %183 = ptrtoint ptr %arrayidx240 to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %arrayidx240, align 2
  %conv241 = zext i16 %184 to i32
  %add242 = add nuw nsw i32 %conv241, 2
  %out_cm_ampl_bits = getelementptr [10 x %struct.clk_si5341_output_config], ptr %config, i32 0, i32 %i.3667, i32 1
  %185 = ptrtoint ptr %out_cm_ampl_bits to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %out_cm_ampl_bits, align 1
  %conv244 = zext i8 %186 to i32
  %call245 = call i32 @regmap_write(ptr noundef %176, i32 noundef %add242, i32 noundef %conv244) #9
  %187 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %regmap, align 4
  %189 = ptrtoint ptr %data209 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %data209, align 4
  %reg_output_offset250 = getelementptr inbounds %struct.clk_si5341, ptr %190, i32 0, i32 7
  %191 = ptrtoint ptr %reg_output_offset250 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %reg_output_offset250, align 8
  %193 = ptrtoint ptr %index206 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %index206, align 4
  %idxprom254 = zext i8 %194 to i32
  %arrayidx255 = getelementptr i16, ptr %192, i32 %idxprom254
  %195 = ptrtoint ptr %arrayidx255 to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %arrayidx255, align 2
  %conv256 = zext i16 %196 to i32
  %add257 = add nuw nsw i32 %conv256, 3
  %vdd_sel_bits = getelementptr [10 x %struct.clk_si5341_output_config], ptr %config, i32 0, i32 %i.3667, i32 2
  %197 = ptrtoint ptr %vdd_sel_bits to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %vdd_sel_bits, align 1
  %conv259 = zext i8 %198 to i32
  %call.i612 = call i32 @regmap_update_bits_base(ptr noundef %188, i32 noundef %add257, i32 noundef 56, i32 noundef %conv259, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end261

if.end261:                                        ; preds = %if.then217, %for.body193.if.end261_crit_edge
  %call266 = call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef %arrayidx205) #9
  %199 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %init, align 4
  call void @kfree(ptr noundef %200) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call266)
  %tobool268.not = icmp eq i32 %call266, 0
  br i1 %tobool268.not, label %if.end274, label %do.end272

do.end272:                                        ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %i.3667) #12
  br label %cleanup393

if.end274:                                        ; preds = %if.end261
  %always_on = getelementptr [10 x %struct.clk_si5341_output_config], ptr %config, i32 0, i32 %i.3667, i32 4
  %201 = ptrtoint ptr %always_on to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %always_on, align 1, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %202)
  %tobool276.not = icmp eq i8 %202, 0
  br i1 %tobool276.not, label %if.end274.for.inc284_crit_edge, label %if.then277

if.end274.for.inc284_crit_edge:                   ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc284

if.then277:                                       ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #11
  %clk281 = getelementptr inbounds %struct.clk_hw, ptr %arrayidx205, i32 0, i32 1
  %203 = ptrtoint ptr %clk281 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %clk281, align 4
  %call282 = call i32 @clk_prepare(ptr noundef %204) #9
  br label %for.inc284

for.inc284:                                       ; preds = %if.then277, %if.end274.for.inc284_crit_edge
  %inc285 = add nuw nsw i32 %i.3667, 1
  %205 = ptrtoint ptr %num_outputs to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %num_outputs, align 8
  %conv190 = zext i8 %206 to i32
  %cmp191 = icmp ult i32 %inc285, %conv190
  br i1 %cmp191, label %for.inc284.for.body193_crit_edge, label %for.inc284.for.end286_crit_edge

for.inc284.for.end286_crit_edge:                  ; preds = %for.inc284
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end286

for.inc284.for.body193_crit_edge:                 ; preds = %for.inc284
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body193

for.end286:                                       ; preds = %for.inc284.for.end286_crit_edge, %for.end183.for.end286_crit_edge
  %call288 = call i32 @devm_of_clk_add_hw_provider(ptr noundef %dev, ptr noundef nonnull @of_clk_si5341_get, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call288)
  %tobool289.not = icmp eq i32 %call288, 0
  br i1 %tobool289.not, label %if.end295, label %do.end293

do.end293:                                        ; preds = %for.end286
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #12
  br label %cleanup393

if.end295:                                        ; preds = %for.end286
  br i1 %initialization_required.0.off0, label %if.then297, label %if.end295.if.end310_crit_edge

if.end295.if.end310_crit_edge:                    ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end310

if.then297:                                       ; preds = %if.end295
  %207 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %regmap, align 4
  call void @regcache_cache_only(ptr noundef %208, i1 noundef zeroext false) #9
  %209 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %regmap, align 4
  %call300 = call i32 @regcache_sync(ptr noundef %210) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call300)
  %cmp301 = icmp slt i32 %call300, 0
  br i1 %cmp301, label %if.then297.cleanup393_crit_edge, label %if.end304

if.then297.cleanup393_crit_edge:                  ; preds = %if.then297
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup393

if.end304:                                        ; preds = %if.then297
  %call305 = call fastcc i32 @si5341_finalize_defaults(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call305)
  %cmp306 = icmp slt i32 %call305, 0
  br i1 %cmp306, label %if.end304.cleanup393_crit_edge, label %if.end304.if.end310_crit_edge

if.end304.if.end310_crit_edge:                    ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end310

if.end304.cleanup393_crit_edge:                   ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup393

if.end310:                                        ; preds = %if.end304.if.end310_crit_edge, %if.end295.if.end310_crit_edge
  %call311 = call i64 @ktime_get() #9
  %add.i = add i64 %call311, 250000000
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 1765) #9
  %211 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %regmap, align 4
  %call328668 = call i32 @regmap_read(ptr noundef %212, i32 noundef 12, ptr noundef nonnull %status) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call328668)
  %tobool329.not669 = icmp eq i32 %call328668, 0
  br i1 %tobool329.not669, label %if.end310.lor.lhs.false_crit_edge, label %if.end310.do.end361_crit_edge

if.end310.do.end361_crit_edge:                    ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end361

if.end310.lor.lhs.false_crit_edge:                ; preds = %if.end310
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then344.lor.lhs.false_crit_edge, %if.end310.lor.lhs.false_crit_edge
  %213 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %status, align 4
  %and330 = and i32 %214, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and330)
  %tobool331.not = icmp eq i32 %and330, 0
  br i1 %tobool331.not, label %lor.lhs.false.lor.rhs_crit_edge, label %land.lhs.true

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call335 = call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call335, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call335, %add.i
  br i1 %cmp3.i, label %for.end347, label %if.then344

if.then344:                                       ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #9
  %215 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %regmap, align 4
  %call328 = call i32 @regmap_read(ptr noundef %216, i32 noundef 12, ptr noundef nonnull %status) #9
  %tobool329.not = icmp eq i32 %call328, 0
  br i1 %tobool329.not, label %if.then344.lor.lhs.false_crit_edge, label %if.then344.do.end361_crit_edge

if.then344.do.end361_crit_edge:                   ; preds = %if.then344
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end361

if.then344.lor.lhs.false_crit_edge:               ; preds = %if.then344
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

for.end347:                                       ; preds = %land.lhs.true
  %217 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %regmap, align 4
  %call341 = call i32 @regmap_read(ptr noundef %218, i32 noundef 12, ptr noundef nonnull %status) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call341)
  %tobool349.not = icmp eq i32 %call341, 0
  br i1 %tobool349.not, label %for.end347.lor.rhs_crit_edge, label %for.end347.do.end361_crit_edge

for.end347.do.end361_crit_edge:                   ; preds = %for.end347
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end361

for.end347.lor.rhs_crit_edge:                     ; preds = %for.end347
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end347.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %219 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %status, align 4
  %and350 = and i32 %220, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and350)
  %tobool351.not = icmp eq i32 %and350, 0
  br i1 %tobool351.not, label %if.end363, label %lor.rhs.do.end361_crit_edge

lor.rhs.do.end361_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end361

do.end361:                                        ; preds = %lor.rhs.do.end361_crit_edge, %for.end347.do.end361_crit_edge, %if.then344.do.end361_crit_edge, %if.end310.do.end361_crit_edge
  %tobool349.not627.ph = phi i32 [ %call328668, %if.end310.do.end361_crit_edge ], [ -110, %lor.rhs.do.end361_crit_edge ], [ %call341, %for.end347.do.end361_crit_edge ], [ %call328, %if.then344.do.end361_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #12
  br label %cleanup393

if.end363:                                        ; preds = %lor.rhs
  %221 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %regmap, align 4
  %call365 = call i32 @regmap_write(ptr noundef %222, i32 noundef 17, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call365)
  %tobool366.not = icmp eq i32 %call365, 0
  br i1 %tobool366.not, label %if.end372, label %do.end370

do.end370:                                        ; preds = %if.end363
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #12
  br label %cleanup393

if.end372:                                        ; preds = %if.end363
  %call374 = call i32 @sysfs_create_files(ptr noundef %dev, ptr noundef nonnull @si5341_attributes) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call374)
  %tobool375.not = icmp eq i32 %call374, 0
  br i1 %tobool375.not, label %for.cond382.preheader, label %do.end379

for.cond382.preheader:                            ; preds = %if.end372
  %223 = ptrtoint ptr %num_synth to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %num_synth, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %224)
  %cmp385672.not = icmp eq i8 %224, 0
  br i1 %cmp385672.not, label %for.cond382.preheader.cleanup411_crit_edge, label %for.cond382.preheader.for.body387_crit_edge

for.cond382.preheader.for.body387_crit_edge:      ; preds = %for.cond382.preheader
  br label %for.body387

for.cond382.preheader.cleanup411_crit_edge:       ; preds = %for.cond382.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup411

do.end379:                                        ; preds = %if.end372
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #12
  br label %cleanup393

for.body387:                                      ; preds = %for.body387.for.body387_crit_edge, %for.cond382.preheader.for.body387_crit_edge
  %i.4673 = phi i32 [ %inc391, %for.body387.for.body387_crit_edge ], [ 0, %for.cond382.preheader.for.body387_crit_edge ]
  %arrayidx389 = getelementptr [5 x ptr], ptr %synth_clock_names, i32 0, i32 %i.4673
  %225 = ptrtoint ptr %arrayidx389 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %arrayidx389, align 4
  call void @devm_kfree(ptr noundef %dev, ptr noundef %226) #9
  %inc391 = add nuw nsw i32 %i.4673, 1
  %227 = ptrtoint ptr %num_synth to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %num_synth, align 1
  %conv384 = zext i8 %228 to i32
  %cmp385 = icmp ult i32 %inc391, %conv384
  br i1 %cmp385, label %for.body387.for.body387_crit_edge, label %for.body387.cleanup411_crit_edge

for.body387.cleanup411_crit_edge:                 ; preds = %for.body387
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup411

for.body387.for.body387_crit_edge:                ; preds = %for.body387
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body387

cleanup393:                                       ; preds = %do.end379, %do.end370, %do.end361, %if.end304.cleanup393_crit_edge, %if.then297.cleanup393_crit_edge, %do.end293, %do.end272, %do.end142, %if.then126.critedge.cleanup393_crit_edge, %if.end120.thread.cleanup393_crit_edge, %if.end120.cleanup393_crit_edge, %if.end114.cleanup393_crit_edge, %if.end110.cleanup393_crit_edge, %if.then106.cleanup393_crit_edge, %if.else90.cleanup393_crit_edge, %if.end81.cleanup393_crit_edge, %if.then78, %si5341_dt_parse_dt.exit, %cleanup
  %err.1 = phi i32 [ %err.0, %cleanup ], [ -22, %si5341_dt_parse_dt.exit ], [ %118, %if.then78 ], [ %call82, %if.end81.cleanup393_crit_edge ], [ %call107, %if.then106.cleanup393_crit_edge ], [ %call111, %if.end110.cleanup393_crit_edge ], [ %call116, %if.end114.cleanup393_crit_edge ], [ %call121, %if.end120.cleanup393_crit_edge ], [ %call127, %if.then126.critedge.cleanup393_crit_edge ], [ %call137, %do.end142 ], [ %call266, %do.end272 ], [ %call288, %do.end293 ], [ %call300, %if.then297.cleanup393_crit_edge ], [ %call305, %if.end304.cleanup393_crit_edge ], [ %tobool349.not627.ph, %do.end361 ], [ %call365, %do.end370 ], [ %call374, %do.end379 ], [ %call91, %if.else90.cleanup393_crit_edge ], [ %call121621, %if.end120.thread.cleanup393_crit_edge ]
  %vddo_reg400 = getelementptr %struct.clk_si5341, ptr %call.i, i32 0, i32 4, i32 0, i32 2
  %229 = ptrtoint ptr %vddo_reg400 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %vddo_reg400, align 8
  %tobool401.not = icmp eq ptr %230, null
  br i1 %tobool401.not, label %cleanup393.for.inc408_crit_edge, label %if.then402

cleanup393.for.inc408_crit_edge:                  ; preds = %cleanup393
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc408

if.then402:                                       ; preds = %cleanup393
  call void @__sanitizer_cov_trace_pc() #11
  %call406 = call i32 @regulator_disable(ptr noundef nonnull %230) #9
  br label %for.inc408

for.inc408:                                       ; preds = %if.then402, %cleanup393.for.inc408_crit_edge
  %vddo_reg400.1 = getelementptr %struct.clk_si5341, ptr %call.i, i32 0, i32 4, i32 1, i32 2
  %231 = ptrtoint ptr %vddo_reg400.1 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %vddo_reg400.1, align 8
  %tobool401.not.1 = icmp eq ptr %232, null
  br i1 %tobool401.not.1, label %for.inc408.for.inc408.1_crit_edge, label %if.then402.1

for.inc408.for.inc408.1_crit_edge:                ; preds = %for.inc408
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc408.1

if.then402.1:                                     ; preds = %for.inc408
  call void @__sanitizer_cov_trace_pc() #11
  %call406.1 = call i32 @regulator_disable(ptr noundef nonnull %232) #9
  br label %for.inc408.1

for.inc408.1:                                     ; preds = %if.then402.1, %for.inc408.for.inc408.1_crit_edge
  %vddo_reg400.2 = getelementptr %struct.clk_si5341, ptr %call.i, i32 0, i32 4, i32 2, i32 2
  %233 = ptrtoint ptr %vddo_reg400.2 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %vddo_reg400.2, align 8
  %tobool401.not.2 = icmp eq ptr %234, null
  br i1 %tobool401.not.2, label %for.inc408.1.for.inc408.2_crit_edge, label %if.then402.2

for.inc408.1.for.inc408.2_crit_edge:              ; preds = %for.inc408.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc408.2

if.then402.2:                                     ; preds = %for.inc408.1
  call void @__sanitizer_cov_trace_pc() #11
  %call406.2 = call i32 @regulator_disable(ptr noundef nonnull %234) #9
  br label %for.inc408.2

for.inc408.2:                                     ; preds = %if.then402.2, %for.inc408.1.for.inc408.2_crit_edge
  %vddo_reg400.3 = getelementptr %struct.clk_si5341, ptr %call.i, i32 0, i32 4, i32 3, i32 2
  %235 = ptrtoint ptr %vddo_reg400.3 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %vddo_reg400.3, align 8
  %tobool401.not.3 = icmp eq ptr %236, null
  br i1 %tobool401.not.3, label %for.inc408.2.for.inc408.3_crit_edge, label %if.then402.3

for.inc408.2.for.inc408.3_crit_edge:              ; preds = %for.inc408.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc408.3

if.then402.3:                                     ; preds = %for.inc408.2
  call void @__sanitizer_cov_trace_pc() #11
  %call406.3 = call i32 @regulator_disable(ptr noundef nonnull %236) #9
  br label %for.inc408.3

for.inc408.3:                                     ; preds = %if.then402.3, %for.inc408.2.for.inc408.3_crit_edge
  %vddo_reg400.4 = getelementptr %struct.clk_si5341, ptr %call.i, i32 0, i32 4, i32 4, i32 2
  %237 = ptrtoint ptr %vddo_reg400.4 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %vddo_reg400.4, align 8
  %tobool401.not.4 = icmp eq ptr %238, null
  br i1 %tobool401.not.4, label %for.inc408.3.for.inc408.4_crit_edge, label %if.then402.4

for.inc408.3.for.inc408.4_crit_edge:              ; preds = %for.inc408.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc408.4

if.then402.4:                                     ; preds = %for.inc408.3
  call void @__sanitizer_cov_trace_pc() #11
  %call406.4 = call i32 @regulator_disable(ptr noundef nonnull %238) #9
  br label %for.inc408.4

for.inc408.4:                                     ; preds = %if.then402.4, %for.inc408.3.for.inc408.4_crit_edge
  %vddo_reg400.5 = getelementptr %struct.clk_si5341, ptr %call.i, i32 0, i32 4, i32 5, i32 2
  %239 = ptrtoint ptr %vddo_reg400.5 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %vddo_reg400.5, align 8
  %tobool401.not.5 = icmp eq ptr %240, null
  br i1 %tobool401.not.5, label %for.inc408.4.for.inc408.5_crit_edge, label %if.then402.5

for.inc408.4.for.inc408.5_crit_edge:              ; preds = %for.inc408.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc408.5

if.then402.5:                                     ; preds = %for.inc408.4
  call void @__sanitizer_cov_trace_pc() #11
  %call406.5 = call i32 @regulator_disable(ptr noundef nonnull %240) #9
  br label %for.inc408.5

for.inc408.5:                                     ; preds = %if.then402.5, %for.inc408.4.for.inc408.5_crit_edge
  %vddo_reg400.6 = getelementptr %struct.clk_si5341, ptr %call.i, i32 0, i32 4, i32 6, i32 2
  %241 = ptrtoint ptr %vddo_reg400.6 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %vddo_reg400.6, align 8
  %tobool401.not.6 = icmp eq ptr %242, null
  br i1 %tobool401.not.6, label %for.inc408.5.for.inc408.6_crit_edge, label %if.then402.6

for.inc408.5.for.inc408.6_crit_edge:              ; preds = %for.inc408.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc408.6

if.then402.6:                                     ; preds = %for.inc408.5
  call void @__sanitizer_cov_trace_pc() #11
  %call406.6 = call i32 @regulator_disable(ptr noundef nonnull %242) #9
  br label %for.inc408.6

for.inc408.6:                                     ; preds = %if.then402.6, %for.inc408.5.for.inc408.6_crit_edge
  %vddo_reg400.7 = getelementptr %struct.clk_si5341, ptr %call.i, i32 0, i32 4, i32 7, i32 2
  %243 = ptrtoint ptr %vddo_reg400.7 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %vddo_reg400.7, align 8
  %tobool401.not.7 = icmp eq ptr %244, null
  br i1 %tobool401.not.7, label %for.inc408.6.for.inc408.7_crit_edge, label %if.then402.7

for.inc408.6.for.inc408.7_crit_edge:              ; preds = %for.inc408.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc408.7

if.then402.7:                                     ; preds = %for.inc408.6
  call void @__sanitizer_cov_trace_pc() #11
  %call406.7 = call i32 @regulator_disable(ptr noundef nonnull %244) #9
  br label %for.inc408.7

for.inc408.7:                                     ; preds = %if.then402.7, %for.inc408.6.for.inc408.7_crit_edge
  %vddo_reg400.8 = getelementptr %struct.clk_si5341, ptr %call.i, i32 0, i32 4, i32 8, i32 2
  %245 = ptrtoint ptr %vddo_reg400.8 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %vddo_reg400.8, align 8
  %tobool401.not.8 = icmp eq ptr %246, null
  br i1 %tobool401.not.8, label %for.inc408.7.for.inc408.8_crit_edge, label %if.then402.8

for.inc408.7.for.inc408.8_crit_edge:              ; preds = %for.inc408.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc408.8

if.then402.8:                                     ; preds = %for.inc408.7
  call void @__sanitizer_cov_trace_pc() #11
  %call406.8 = call i32 @regulator_disable(ptr noundef nonnull %246) #9
  br label %for.inc408.8

for.inc408.8:                                     ; preds = %if.then402.8, %for.inc408.7.for.inc408.8_crit_edge
  %vddo_reg400.9 = getelementptr %struct.clk_si5341, ptr %call.i, i32 0, i32 4, i32 9, i32 2
  %247 = ptrtoint ptr %vddo_reg400.9 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %vddo_reg400.9, align 8
  %tobool401.not.9 = icmp eq ptr %248, null
  br i1 %tobool401.not.9, label %for.inc408.8.cleanup411_crit_edge, label %if.then402.9

for.inc408.8.cleanup411_crit_edge:                ; preds = %for.inc408.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup411

if.then402.9:                                     ; preds = %for.inc408.8
  call void @__sanitizer_cov_trace_pc() #11
  %call406.9 = call i32 @regulator_disable(ptr noundef nonnull %248) #9
  br label %cleanup411

cleanup411:                                       ; preds = %if.then402.9, %for.inc408.8.cleanup411_crit_edge, %for.body387.cleanup411_crit_edge, %for.cond382.preheader.cleanup411_crit_edge, %if.then8.3.cleanup411_crit_edge, %if.then8.2.cleanup411_crit_edge, %if.then8.1.cleanup411_crit_edge, %if.then8.cleanup411_crit_edge, %do.end.i, %for.body.i.cleanup411_crit_edge, %entry.cleanup411_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup411_crit_edge ], [ -5, %do.end.i ], [ 0, %for.cond382.preheader.cleanup411_crit_edge ], [ %err.1, %if.then402.9 ], [ %err.1, %for.inc408.8.cleanup411_crit_edge ], [ -517, %if.then8.3.cleanup411_crit_edge ], [ -517, %if.then8.2.cleanup411_crit_edge ], [ -517, %if.then8.1.cleanup411_crit_edge ], [ -517, %if.then8.cleanup411_crit_edge ], [ 0, %for.body387.cleanup411_crit_edge ], [ %call.i599, %for.body.i.cleanup411_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #9
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %config) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %synth_clock_names) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %root_clock_name) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si5341_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @sysfs_remove_files(ptr noundef %dev, ptr noundef nonnull @si5341_attributes) #9
  %vddo_reg = getelementptr %struct.clk_si5341, ptr %1, i32 0, i32 4, i32 0, i32 2
  %2 = ptrtoint ptr %vddo_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vddo_reg, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 @regulator_disable(ptr noundef nonnull %3) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %vddo_reg.1 = getelementptr %struct.clk_si5341, ptr %1, i32 0, i32 4, i32 1, i32 2
  %4 = ptrtoint ptr %vddo_reg.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vddo_reg.1, align 8
  %tobool.not.1 = icmp eq ptr %5, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %call4.1 = tail call i32 @regulator_disable(ptr noundef nonnull %5) #9
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %vddo_reg.2 = getelementptr %struct.clk_si5341, ptr %1, i32 0, i32 4, i32 2, i32 2
  %6 = ptrtoint ptr %vddo_reg.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vddo_reg.2, align 8
  %tobool.not.2 = icmp eq ptr %7, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  %call4.2 = tail call i32 @regulator_disable(ptr noundef nonnull %7) #9
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %vddo_reg.3 = getelementptr %struct.clk_si5341, ptr %1, i32 0, i32 4, i32 3, i32 2
  %8 = ptrtoint ptr %vddo_reg.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vddo_reg.3, align 8
  %tobool.not.3 = icmp eq ptr %9, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  %call4.3 = tail call i32 @regulator_disable(ptr noundef nonnull %9) #9
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %vddo_reg.4 = getelementptr %struct.clk_si5341, ptr %1, i32 0, i32 4, i32 4, i32 2
  %10 = ptrtoint ptr %vddo_reg.4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vddo_reg.4, align 8
  %tobool.not.4 = icmp eq ptr %11, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  %call4.4 = tail call i32 @regulator_disable(ptr noundef nonnull %11) #9
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %vddo_reg.5 = getelementptr %struct.clk_si5341, ptr %1, i32 0, i32 4, i32 5, i32 2
  %12 = ptrtoint ptr %vddo_reg.5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vddo_reg.5, align 8
  %tobool.not.5 = icmp eq ptr %13, null
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  %call4.5 = tail call i32 @regulator_disable(ptr noundef nonnull %13) #9
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %vddo_reg.6 = getelementptr %struct.clk_si5341, ptr %1, i32 0, i32 4, i32 6, i32 2
  %14 = ptrtoint ptr %vddo_reg.6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vddo_reg.6, align 8
  %tobool.not.6 = icmp eq ptr %15, null
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  %call4.6 = tail call i32 @regulator_disable(ptr noundef nonnull %15) #9
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5.for.inc.6_crit_edge
  %vddo_reg.7 = getelementptr %struct.clk_si5341, ptr %1, i32 0, i32 4, i32 7, i32 2
  %16 = ptrtoint ptr %vddo_reg.7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vddo_reg.7, align 8
  %tobool.not.7 = icmp eq ptr %17, null
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  %call4.7 = tail call i32 @regulator_disable(ptr noundef nonnull %17) #9
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then.7, %for.inc.6.for.inc.7_crit_edge
  %vddo_reg.8 = getelementptr %struct.clk_si5341, ptr %1, i32 0, i32 4, i32 8, i32 2
  %18 = ptrtoint ptr %vddo_reg.8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vddo_reg.8, align 8
  %tobool.not.8 = icmp eq ptr %19, null
  br i1 %tobool.not.8, label %for.inc.7.for.inc.8_crit_edge, label %if.then.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.8

if.then.8:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #11
  %call4.8 = tail call i32 @regulator_disable(ptr noundef nonnull %19) #9
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then.8, %for.inc.7.for.inc.8_crit_edge
  %vddo_reg.9 = getelementptr %struct.clk_si5341, ptr %1, i32 0, i32 4, i32 9, i32 2
  %20 = ptrtoint ptr %vddo_reg.9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vddo_reg.9, align 8
  %tobool.not.9 = icmp eq ptr %21, null
  br i1 %tobool.not.9, label %for.inc.8.for.inc.9_crit_edge, label %if.then.9

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.9

if.then.9:                                        ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #11
  %call4.9 = tail call i32 @regulator_disable(ptr noundef nonnull %21) #9
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.then.9, %for.inc.8.for.inc.9_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si5341_probe_chip_id(ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  %reg = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #9
  %regmap = getelementptr inbounds %struct.clk_si5341, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_bulk_read(ptr noundef %2, i32 noundef 2, ptr noundef nonnull %reg, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_client = getelementptr inbounds %struct.clk_si5341, ptr %data, i32 0, i32 2
  %3 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i2c_client, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.69) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = getelementptr inbounds [4 x i8], ptr %reg, i32 0, i32 3
  %6 = getelementptr inbounds [4 x i8], ptr %reg, i32 0, i32 2
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %reg, align 4
  %9 = call i16 @llvm.bswap.i16(i16 %8) #9
  %i2c_client6 = getelementptr inbounds %struct.clk_si5341, ptr %data, i32 0, i32 2
  %10 = ptrtoint ptr %i2c_client6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_client6, align 8
  %dev7 = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  %conv = zext i16 %9 to i32
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %6, align 2
  %conv8 = zext i8 %13 to i32
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %5, align 1
  %conv10 = zext i8 %15 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev7, ptr noundef nonnull @.str.72, i32 noundef %conv, i32 noundef %conv8, i32 noundef %conv10) #12
  %switch.tableidx = add i16 %9, -21312
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %switch.tableidx)
  %16 = icmp ult i16 %switch.tableidx, 6
  br i1 %16, label %switch.hole_check, label %if.end.do.end34_crit_edge

if.end.do.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end34

do.end34:                                         ; preds = %switch.hole_check.do.end34_crit_edge, %if.end.do.end34_crit_edge
  %17 = ptrtoint ptr %i2c_client6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_client6, align 8
  %dev36 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev36, ptr noundef nonnull @.str.76, i32 noundef %conv) #12
  br label %cleanup

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i16 %switch.tableidx to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %19 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %switch.lobit.not = icmp eq i8 %19, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end34_crit_edge, label %switch.lookup

switch.hole_check.do.end34_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end34

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  %20 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [6 x i8], ptr @switch.table.si5341_probe_chip_id, i32 0, i32 %20
  %21 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %21)
  %switch.load = load i8, ptr %switch.gep, align 1
  %22 = sext i16 %switch.tableidx to i32
  %switch.gep69 = getelementptr inbounds [6 x i8], ptr @switch.table.si5341_probe_chip_id.117, i32 0, i32 %22
  %23 = ptrtoint ptr %switch.gep69 to i32
  call void @__asan_load1_noabort(i32 %23)
  %switch.load70 = load i8, ptr %switch.gep69, align 1
  %24 = sext i16 %switch.tableidx to i32
  %switch.gep71 = getelementptr inbounds [6 x ptr], ptr @switch.table.si5341_probe_chip_id.118, i32 0, i32 %24
  %25 = ptrtoint ptr %switch.gep71 to i32
  call void @__asan_load4_noabort(i32 %25)
  %switch.load72 = load ptr, ptr %switch.gep71, align 4
  %26 = sext i16 %switch.tableidx to i32
  %switch.gep73 = getelementptr inbounds [6 x ptr], ptr @switch.table.si5341_probe_chip_id.119, i32 0, i32 %26
  %27 = ptrtoint ptr %switch.gep73 to i32
  call void @__asan_load4_noabort(i32 %27)
  %switch.load74 = load ptr, ptr %switch.gep73, align 4
  %num_outputs28 = getelementptr inbounds %struct.clk_si5341, ptr %data, i32 0, i32 10
  %28 = ptrtoint ptr %num_outputs28 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %switch.load, ptr %num_outputs28, align 8
  %num_synth29 = getelementptr inbounds %struct.clk_si5341, ptr %data, i32 0, i32 11
  %29 = ptrtoint ptr %num_synth29 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %switch.load70, ptr %num_synth29, align 1
  %reg_output_offset30 = getelementptr inbounds %struct.clk_si5341, ptr %data, i32 0, i32 7
  %30 = ptrtoint ptr %reg_output_offset30 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %switch.load72, ptr %reg_output_offset30, align 8
  %reg_rdiv_offset31 = getelementptr inbounds %struct.clk_si5341, ptr %data, i32 0, i32 8
  %31 = ptrtoint ptr %reg_rdiv_offset31 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %switch.load74, ptr %reg_rdiv_offset31, align 4
  %chip_id = getelementptr inbounds %struct.clk_si5341, ptr %data, i32 0, i32 12
  %32 = ptrtoint ptr %chip_id to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %9, ptr %chip_id, align 2
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %do.end34, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ -22, %do.end34 ], [ 0, %switch.lookup ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si5341_is_programmed_already(ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  %r = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r) #9
  %regmap = getelementptr inbounds %struct.clk_si5341, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %r, align 4
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_bulk_read(ptr noundef %2, i32 noundef 571, ptr noundef nonnull %r, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %r, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool = icmp ne i32 %4, 0
  %lnot.ext = zext i1 %tobool to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %lnot.ext, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si5341_read_settings(ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  %r = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %r) #9
  %regmap = getelementptr inbounds %struct.clk_si5341, ptr %data, i32 0, i32 1
  %0 = call ptr @memset(ptr %r, i32 255, i32 10)
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_bulk_read(ptr noundef %2, i32 noundef 565, ptr noundef nonnull %r, i32 noundef 10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_bulk_read(ptr noundef %4, i32 noundef 2563, ptr noundef nonnull %r, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call9 = call i32 @regmap_bulk_read(ptr noundef %6, i32 noundef 2890, ptr noundef nonnull %r, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end6.cleanup_crit_edge, label %for.cond.preheader

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end6
  %num_synth = getelementptr inbounds %struct.clk_si5341, ptr %data, i32 0, i32 11
  %7 = ptrtoint ptr %num_synth to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num_synth, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp1480.not = icmp eq i8 %8, 0
  br i1 %cmp1480.not, label %for.cond.preheader.for.cond24.preheader_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.cond24.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond24.preheader

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %9 = ptrtoint ptr %num_synth to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %num_synth, align 1
  %11 = zext i8 %10 to i32
  %cmp14 = icmp ult i32 %indvars.iv.next, %11
  br i1 %cmp14, label %for.cond.for.body_crit_edge, label %for.cond.for.cond24.preheader_crit_edge

for.cond.for.cond24.preheader_crit_edge:          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond24.preheader

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond24.preheader:                             ; preds = %for.cond.for.cond24.preheader_crit_edge, %for.cond.preheader.for.cond24.preheader_crit_edge
  %num_outputs = getelementptr inbounds %struct.clk_si5341, ptr %data, i32 0, i32 10
  %12 = ptrtoint ptr %num_outputs to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_outputs, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp2782.not = icmp eq i8 %13, 0
  br i1 %cmp2782.not, label %for.cond24.preheader.cleanup_crit_edge, label %for.body29.lr.ph

for.cond24.preheader.cleanup_crit_edge:           ; preds = %for.cond24.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body29.lr.ph:                                 ; preds = %for.cond24.preheader
  %reg_output_offset = getelementptr inbounds %struct.clk_si5341, ptr %data, i32 0, i32 7
  %reg_rdiv_offset = getelementptr inbounds %struct.clk_si5341, ptr %data, i32 0, i32 8
  br label %for.body29

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %mul = mul nuw nsw i32 %indvars.iv, 11
  %add = add nuw nsw i32 %mul, 770
  %call19 = call i32 @regmap_bulk_read(ptr noundef %15, i32 noundef %add, ptr noundef nonnull %r, i32 noundef 10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond24:                                       ; preds = %if.end37
  %indvars.iv.next90 = add nuw nsw i32 %indvars.iv89, 1
  %16 = ptrtoint ptr %num_outputs to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num_outputs, align 8
  %18 = zext i8 %17 to i32
  %cmp27 = icmp ult i32 %indvars.iv.next90, %18
  br i1 %cmp27, label %for.cond24.for.body29_crit_edge, label %for.cond24.cleanup_crit_edge

for.cond24.cleanup_crit_edge:                     ; preds = %for.cond24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond24.for.body29_crit_edge:                  ; preds = %for.cond24
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body29

for.body29:                                       ; preds = %for.cond24.for.body29_crit_edge, %for.body29.lr.ph
  %indvars.iv89 = phi i32 [ 0, %for.body29.lr.ph ], [ %indvars.iv.next90, %for.cond24.for.body29_crit_edge ]
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %21 = ptrtoint ptr %reg_output_offset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_output_offset, align 8
  %arrayidx = getelementptr i16, ptr %22, i32 %indvars.iv89
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx, align 2
  %conv31 = zext i16 %24 to i32
  %call33 = call i32 @regmap_bulk_read(ptr noundef %20, i32 noundef %conv31, ptr noundef nonnull %r, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %for.body29.cleanup_crit_edge, label %if.end37

for.body29.cleanup_crit_edge:                     ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end37:                                         ; preds = %for.body29
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %27 = ptrtoint ptr %reg_rdiv_offset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_rdiv_offset, align 4
  %arrayidx40 = getelementptr i16, ptr %28, i32 %indvars.iv89
  %29 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx40, align 2
  %conv41 = zext i16 %30 to i32
  %call43 = call i32 @regmap_bulk_read(ptr noundef %26, i32 noundef %conv41, ptr noundef nonnull %r, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.end37.cleanup_crit_edge, label %for.cond24

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end37.cleanup_crit_edge, %for.body29.cleanup_crit_edge, %for.cond24.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond24.preheader.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call9, %if.end6.cleanup_crit_edge ], [ 0, %for.cond24.preheader.cleanup_crit_edge ], [ %call33, %for.body29.cleanup_crit_edge ], [ %call43, %if.end37.cleanup_crit_edge ], [ 0, %for.cond24.cleanup_crit_edge ], [ %call19, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %r) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si5341_send_preamble(ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  %revision = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %revision) #9
  %0 = ptrtoint ptr %revision to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %revision, align 4, !annotation !258
  %regmap = getelementptr inbounds %struct.clk_si5341, ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 5, ptr noundef nonnull %revision) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %5 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp2 = icmp ult i32 %6, 2
  %cond = select i1 %cmp2, i32 216, i32 192
  %call3 = call i32 @regmap_write(ptr noundef %4, i32 noundef 2852, i32 noundef %cond) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %chip_id = getelementptr inbounds %struct.clk_si5341, ptr %data, i32 0, i32 12
  %7 = ptrtoint ptr %chip_id to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %chip_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21313, i16 %8)
  %cmp7 = icmp ugt i16 %8, 21313
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_write(ptr noundef %10, i32 noundef 2853, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp7, label %for.body.i.preheader, label %for.body.i38.preheader

for.body.i38.preheader:                           ; preds = %if.end6
  br i1 %cmp3.i, label %for.body.i38.preheader.do.end.i43_crit_edge, label %for.cond.i30

for.body.i38.preheader.do.end.i43_crit_edge:      ; preds = %for.body.i38.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i43

for.body.i.preheader:                             ; preds = %if.end6
  br i1 %cmp3.i, label %for.body.i.preheader.do.end.i_crit_edge, label %for.cond.i

for.body.i.preheader.do.end.i_crit_edge:          ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

for.cond.i:                                       ; preds = %for.body.i.preheader
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call.i.1 = call i32 @regmap_write(ptr noundef %12, i32 noundef 1344, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp3.i.1 = icmp slt i32 %call.i.1, 0
  br i1 %cmp3.i.1, label %for.cond.i.do.end.i_crit_edge, label %for.cond.i.if.end16_crit_edge

for.cond.i.if.end16_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

for.cond.i.do.end.i_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %for.cond.i.do.end.i_crit_edge, %for.body.i.preheader.do.end.i_crit_edge
  %.lcssa61 = phi i32 [ 2853, %for.body.i.preheader.do.end.i_crit_edge ], [ 1344, %for.cond.i.do.end.i_crit_edge ]
  %.lcssa = phi i32 [ 0, %for.body.i.preheader.do.end.i_crit_edge ], [ 1, %for.cond.i.do.end.i_crit_edge ]
  %call.i.lcssa = phi i32 [ %call.i, %for.body.i.preheader.do.end.i_crit_edge ], [ %call.i.1, %for.cond.i.do.end.i_crit_edge ]
  %i2c_client.i = getelementptr inbounds %struct.clk_si5341, ptr %data, i32 0, i32 2
  %13 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c_client.i, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.78, i32 noundef %.lcssa61, i32 noundef %.lcssa) #12
  br label %cleanup

for.cond.i30:                                     ; preds = %for.body.i38.preheader
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call.i36.1 = call i32 @regmap_write(ptr noundef %16, i32 noundef 1282, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.1)
  %cmp3.i37.1 = icmp slt i32 %call.i36.1, 0
  br i1 %cmp3.i37.1, label %for.cond.i30.do.end.i43_crit_edge, label %for.cond.i30.1

for.cond.i30.do.end.i43_crit_edge:                ; preds = %for.cond.i30
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i43

for.cond.i30.1:                                   ; preds = %for.cond.i30
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call.i36.2 = call i32 @regmap_write(ptr noundef %18, i32 noundef 1285, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.2)
  %cmp3.i37.2 = icmp slt i32 %call.i36.2, 0
  br i1 %cmp3.i37.2, label %for.cond.i30.1.do.end.i43_crit_edge, label %for.cond.i30.2

for.cond.i30.1.do.end.i43_crit_edge:              ; preds = %for.cond.i30.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i43

for.cond.i30.2:                                   ; preds = %for.cond.i30.1
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call.i36.3 = call i32 @regmap_write(ptr noundef %20, i32 noundef 2391, i32 noundef 23) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.3)
  %cmp3.i37.3 = icmp slt i32 %call.i36.3, 0
  br i1 %cmp3.i37.3, label %for.cond.i30.2.do.end.i43_crit_edge, label %for.cond.i30.3

for.cond.i30.2.do.end.i43_crit_edge:              ; preds = %for.cond.i30.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i43

for.cond.i30.3:                                   ; preds = %for.cond.i30.2
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %call.i36.4 = call i32 @regmap_write(ptr noundef %22, i32 noundef 2894, i32 noundef 26) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.4)
  %cmp3.i37.4 = icmp slt i32 %call.i36.4, 0
  br i1 %cmp3.i37.4, label %for.cond.i30.3.do.end.i43_crit_edge, label %for.cond.i30.3.if.end16_crit_edge

for.cond.i30.3.if.end16_crit_edge:                ; preds = %for.cond.i30.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

for.cond.i30.3.do.end.i43_crit_edge:              ; preds = %for.cond.i30.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i43

do.end.i43:                                       ; preds = %for.cond.i30.3.do.end.i43_crit_edge, %for.cond.i30.2.do.end.i43_crit_edge, %for.cond.i30.1.do.end.i43_crit_edge, %for.cond.i30.do.end.i43_crit_edge, %for.body.i38.preheader.do.end.i43_crit_edge
  %.lcssa66 = phi i32 [ 2853, %for.body.i38.preheader.do.end.i43_crit_edge ], [ 1282, %for.cond.i30.do.end.i43_crit_edge ], [ 1285, %for.cond.i30.1.do.end.i43_crit_edge ], [ 2391, %for.cond.i30.2.do.end.i43_crit_edge ], [ 2894, %for.cond.i30.3.do.end.i43_crit_edge ]
  %.lcssa64 = phi i32 [ 0, %for.body.i38.preheader.do.end.i43_crit_edge ], [ 1, %for.cond.i30.do.end.i43_crit_edge ], [ 3, %for.cond.i30.1.do.end.i43_crit_edge ], [ 23, %for.cond.i30.2.do.end.i43_crit_edge ], [ 26, %for.cond.i30.3.do.end.i43_crit_edge ]
  %call.i36.lcssa = phi i32 [ %call.i, %for.body.i38.preheader.do.end.i43_crit_edge ], [ %call.i36.1, %for.cond.i30.do.end.i43_crit_edge ], [ %call.i36.2, %for.cond.i30.1.do.end.i43_crit_edge ], [ %call.i36.3, %for.cond.i30.2.do.end.i43_crit_edge ], [ %call.i36.4, %for.cond.i30.3.do.end.i43_crit_edge ]
  %i2c_client.i39 = getelementptr inbounds %struct.clk_si5341, ptr %data, i32 0, i32 2
  %23 = ptrtoint ptr %i2c_client.i39 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c_client.i39, align 8
  %dev.i40 = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i40, ptr noundef nonnull @.str.78, i32 noundef %.lcssa66, i32 noundef %.lcssa64) #12
  br label %cleanup

if.end16:                                         ; preds = %for.cond.i30.3.if.end16_crit_edge, %for.cond.i.if.end16_crit_edge
  call void @msleep(i32 noundef 300) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end.i43, %do.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call.i36.lcssa, %do.end.i43 ], [ %call.i.lcssa, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %revision) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si5341_write_multiple(ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %values, i32 noundef %num_values) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_values)
  %cmp22.not = icmp eq i32 %num_values, 0
  br i1 %cmp22.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %regmap = getelementptr inbounds %struct.clk_si5341, ptr %data, i32 0, i32 1
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, %num_values
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %arrayidx = getelementptr %struct.si5341_reg_default, ptr %values, i32 %i.023
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %3 to i32
  %value = getelementptr %struct.si5341_reg_default, ptr %values, i32 %i.023, i32 1
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %value, align 2
  %conv2 = zext i8 %5 to i32
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %conv, i32 noundef %conv2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %do.end, label %for.cond

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_client = getelementptr inbounds %struct.clk_si5341, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_client, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  %conv7 = zext i16 %9 to i32
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %value, align 2
  %conv10 = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.78, i32 noundef %conv7, i32 noundef %conv10) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si5341_clk_select_active_input(ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !258
  %regmap.i = getelementptr inbounds %struct.clk_si5341, ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 33, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %si5341_clk_get_selected_input.exit.thread, label %si5341_clk_get_selected_input.exit

si5341_clk_get_selected_input.exit.thread:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  br label %cleanup

si5341_clk_get_selected_input.exit:               ; preds = %entry
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  %and.i = lshr i32 %4, 1
  %shr.i = and i32 %and.i, 3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  %arrayidx = getelementptr %struct.clk_si5341, ptr %data, i32 0, i32 5, i32 %shr.i
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %do.body, label %si5341_clk_get_selected_input.exit.if.end22_crit_edge

si5341_clk_get_selected_input.exit.if.end22_crit_edge: ; preds = %si5341_clk_get_selected_input.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

do.body:                                          ; preds = %si5341_clk_get_selected_input.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si5341_clk_select_active_input.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si5341_clk_select_active_input, %if.then6)) #9
          to label %do.end [label %if.then6], !srcloc !260

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_client = getelementptr inbounds %struct.clk_si5341, ptr %data, i32 0, i32 2
  %7 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c_client, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si5341_clk_select_active_input.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.82, i32 noundef %shr.i) #9
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %arrayidx10 = getelementptr %struct.clk_si5341, ptr %data, i32 0, i32 5, i32 0
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx10, align 4
  %tobool11.not = icmp eq ptr %10, null
  br i1 %tobool11.not, label %for.inc, label %do.end.if.end22_crit_edge

do.end.if.end22_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

for.inc:                                          ; preds = %do.end
  %arrayidx10.1 = getelementptr %struct.clk_si5341, ptr %data, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx10.1, align 4
  %tobool11.not.1 = icmp eq ptr %12, null
  br i1 %tobool11.not.1, label %for.inc.1, label %for.inc.if.end22_crit_edge

for.inc.if.end22_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

for.inc.1:                                        ; preds = %for.inc
  %arrayidx10.2 = getelementptr %struct.clk_si5341, ptr %data, i32 0, i32 5, i32 2
  %13 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx10.2, align 4
  %tobool11.not.2 = icmp eq ptr %14, null
  br i1 %tobool11.not.2, label %for.inc.2, label %for.inc.1.if.end22_crit_edge

for.inc.1.if.end22_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx10.3 = getelementptr %struct.clk_si5341, ptr %data, i32 0, i32 5, i32 3
  %15 = ptrtoint ptr %arrayidx10.3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx10.3, align 4
  %tobool11.not.3 = icmp eq ptr %16, null
  br i1 %tobool11.not.3, label %for.inc.3, label %for.inc.2.if.end22_crit_edge

for.inc.2.if.end22_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_client19 = getelementptr inbounds %struct.clk_si5341, ptr %data, i32 0, i32 2
  %17 = ptrtoint ptr %i2c_client19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_client19, align 8
  %dev20 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.83) #12
  br label %cleanup

if.end22:                                         ; preds = %for.inc.2.if.end22_crit_edge, %for.inc.1.if.end22_crit_edge, %for.inc.if.end22_crit_edge, %do.end.if.end22_crit_edge, %si5341_clk_get_selected_input.exit.if.end22_crit_edge
  %res.1 = phi i32 [ %shr.i, %si5341_clk_get_selected_input.exit.if.end22_crit_edge ], [ 0, %do.end.if.end22_crit_edge ], [ 1, %for.inc.if.end22_crit_edge ], [ 2, %for.inc.1.if.end22_crit_edge ], [ 3, %for.inc.2.if.end22_crit_edge ]
  %conv = trunc i32 %res.1 to i8
  %call23 = call fastcc i32 @si5341_clk_reparent(ptr noundef %data, i8 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end22.cleanup_crit_edge, label %if.end27

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %arrayidx29 = getelementptr %struct.clk_si5341, ptr %data, i32 0, i32 5, i32 %res.1
  %19 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx29, align 4
  %call.i58 = call i32 @clk_prepare(ptr noundef %20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %tobool.not.i = icmp eq i32 %call.i58, 0
  br i1 %tobool.not.i, label %if.end.i59, label %if.end27.clk_prepare_enable.exit_crit_edge

if.end27.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.end.i59:                                       ; preds = %if.end27
  %call1.i = call i32 @clk_enable(ptr noundef %20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i59.cleanup_crit_edge, label %if.then3.i

if.end.i59.cleanup_crit_edge:                     ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #11
  call void @clk_unprepare(ptr noundef %20) #9
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end27.clk_prepare_enable.exit_crit_edge
  %retval.0.i60 = phi i32 [ %call.i58, %if.end27.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i60)
  %cmp31 = icmp slt i32 %retval.0.i60, 0
  %spec.select = select i1 %cmp31, i32 %retval.0.i60, i32 %res.1
  br label %cleanup

cleanup:                                          ; preds = %clk_prepare_enable.exit, %if.end.i59.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %for.inc.3, %si5341_clk_get_selected_input.exit.thread
  %retval.0 = phi i32 [ -19, %for.inc.3 ], [ %call23, %if.end22.cleanup_crit_edge ], [ %call.i, %si5341_clk_get_selected_input.exit.thread ], [ %res.1, %if.end.i59.cleanup_crit_edge ], [ %spec.select, %clk_prepare_enable.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si5341_initialize_pll(ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  %r.i = alloca [10 x i8], align 4
  %val.i = alloca i32, align 4
  %m_num = alloca i32, align 4
  %m_den = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_client = getelementptr inbounds %struct.clk_si5341, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c_client, align 8
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m_num) #9
  %4 = ptrtoint ptr %m_num to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %m_num, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m_den) #9
  %5 = ptrtoint ptr %m_den to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %m_den, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.84, ptr noundef nonnull %m_num, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_client, align 8
  %dev2 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.85) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call.i.i38 = call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.87, ptr noundef nonnull %m_den, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i38)
  %tobool4.not = icmp sgt i32 %call.i.i38, -1
  br i1 %tobool4.not, label %if.end.if.end11_crit_edge, label %do.end8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c_client, align 8
  %dev10 = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.89) #12
  br label %if.end11

if.end11:                                         ; preds = %do.end8, %if.end.if.end11_crit_edge
  %10 = ptrtoint ptr %m_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %m_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.not = icmp eq i32 %11, 0
  br i1 %tobool12.not, label %if.end11.do.end17_crit_edge, label %lor.lhs.false

if.end11.do.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17

lor.lhs.false:                                    ; preds = %if.end11
  %12 = ptrtoint ptr %m_den to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %m_den, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool13.not = icmp eq i32 %13, 0
  br i1 %tobool13.not, label %lor.lhs.false.do.end17_crit_edge, label %if.end24

lor.lhs.false.do.end17_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17

do.end17:                                         ; preds = %lor.lhs.false.do.end17_crit_edge, %if.end11.do.end17_crit_edge
  %14 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c_client, align 8
  %dev19 = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.92) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %val.i, align 4, !annotation !258
  %regmap.i = getelementptr inbounds %struct.clk_si5341, ptr %data, i32 0, i32 1
  %17 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %18, i32 noundef 33, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %si5341_clk_get_selected_input.exit.thread, label %if.end24.thread

si5341_clk_get_selected_input.exit.thread:        ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  br label %cleanup

if.end24.thread:                                  ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val.i, align 4
  %and.i = lshr i32 %20, 1
  %shr.i = and i32 %and.i, 3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  %arrayidx = getelementptr %struct.clk_si5341, ptr %data, i32 0, i32 5, i32 %shr.i
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %call23 = call i32 @clk_get_rate(ptr noundef %22) #9
  %div = udiv i32 %call23, 10
  %23 = ptrtoint ptr %m_den to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div, ptr %m_den, align 4
  %24 = ptrtoint ptr %m_num to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1400000000, ptr %m_num, align 4
  %regmap42 = getelementptr inbounds %struct.clk_si5341, ptr %data, i32 0, i32 1
  %25 = ptrtoint ptr %regmap42 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap42, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %r.i) #9
  br label %while.body.i.preheader

if.end24:                                         ; preds = %lor.lhs.false
  %regmap = getelementptr inbounds %struct.clk_si5341, ptr %data, i32 0, i32 1
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %29 = ptrtoint ptr %m_num to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %m_num, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %r.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %tobool2.not20.i = icmp sgt i32 %13, -1
  br i1 %tobool2.not20.i, label %if.end24.while.body.i.preheader_crit_edge, label %if.end24.si5341_encode_44_32.exit_crit_edge

if.end24.si5341_encode_44_32.exit_crit_edge:      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %si5341_encode_44_32.exit

if.end24.while.body.i.preheader_crit_edge:        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %if.end24.while.body.i.preheader_crit_edge, %if.end24.thread
  %31 = phi i32 [ 1400000000, %if.end24.thread ], [ %30, %if.end24.while.body.i.preheader_crit_edge ]
  %32 = phi ptr [ %26, %if.end24.thread ], [ %28, %if.end24.while.body.i.preheader_crit_edge ]
  %33 = phi i32 [ %div, %if.end24.thread ], [ %13, %if.end24.while.body.i.preheader_crit_edge ]
  %conv = zext i32 %31 to i64
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.i.preheader
  %n_den.addr.023.i = phi i32 [ %shl3.i, %while.body.i.while.body.i_crit_edge ], [ %33, %while.body.i.preheader ]
  %n_num.addr.022.i = phi i64 [ %shl.i, %while.body.i.while.body.i_crit_edge ], [ %conv, %while.body.i.preheader ]
  %shl.i = shl i64 %n_num.addr.022.i, 1
  %shl3.i = shl nuw i32 %n_den.addr.023.i, 1
  %34 = and i64 %n_num.addr.022.i, 4398046511104
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %34)
  %tobool.not.i = icmp eq i64 %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl3.i)
  %tobool2.not.i = icmp sgt i32 %shl3.i, -1
  %or.cond.i = select i1 %tobool.not.i, i1 %tobool2.not.i, i1 false
  br i1 %or.cond.i, label %while.body.i.while.body.i_crit_edge, label %while.end.loopexit.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.end.loopexit.i:                             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %extract31.i = lshr i64 %shl.i, 40
  %extract.t32.i = trunc i64 %extract31.i to i8
  %extract27.i = lshr i64 %shl.i, 32
  %extract.t28.i = trunc i64 %extract27.i to i8
  %extract.t25.i = trunc i64 %shl.i to i32
  %phi.bo = and i8 %extract.t32.i, 15
  br label %si5341_encode_44_32.exit

si5341_encode_44_32.exit:                         ; preds = %while.end.loopexit.i, %if.end24.si5341_encode_44_32.exit_crit_edge
  %35 = phi ptr [ %28, %if.end24.si5341_encode_44_32.exit_crit_edge ], [ %32, %while.end.loopexit.i ]
  %n_num.addr.0.lcssa.off0.i = phi i32 [ %30, %if.end24.si5341_encode_44_32.exit_crit_edge ], [ %extract.t25.i, %while.end.loopexit.i ]
  %n_num.addr.0.lcssa.off32.i = phi i8 [ 0, %if.end24.si5341_encode_44_32.exit_crit_edge ], [ %extract.t28.i, %while.end.loopexit.i ]
  %n_num.addr.0.lcssa.off40.i = phi i8 [ 0, %if.end24.si5341_encode_44_32.exit_crit_edge ], [ %phi.bo, %while.end.loopexit.i ]
  %n_den.addr.0.lcssa.i = phi i32 [ %13, %if.end24.si5341_encode_44_32.exit_crit_edge ], [ %shl3.i, %while.end.loopexit.i ]
  %36 = getelementptr inbounds [10 x i8], ptr %r.i, i32 0, i32 6
  %37 = getelementptr inbounds [10 x i8], ptr %r.i, i32 0, i32 5
  %38 = getelementptr inbounds [10 x i8], ptr %r.i, i32 0, i32 4
  %39 = call i32 @llvm.bswap.i32(i32 %n_num.addr.0.lcssa.off0.i) #9
  %40 = ptrtoint ptr %r.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %r.i, align 4
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %n_num.addr.0.lcssa.off32.i, ptr %38, align 4
  %42 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %n_num.addr.0.lcssa.off40.i, ptr %37, align 1
  %43 = call i32 @llvm.bswap.i32(i32 %n_den.addr.0.lcssa.i) #9
  %44 = ptrtoint ptr %36 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %43, ptr %36, align 2
  %call.i39 = call i32 @regmap_bulk_write(ptr noundef %35, i32 noundef 565, ptr noundef nonnull %r.i, i32 noundef 10) #9
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %r.i) #9
  br label %cleanup

cleanup:                                          ; preds = %si5341_encode_44_32.exit, %si5341_clk_get_selected_input.exit.thread
  %retval.0 = phi i32 [ %call.i39, %si5341_encode_44_32.exit ], [ %call.i, %si5341_clk_get_selected_input.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m_den) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m_num) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @of_clk_si5341_get(ptr nocapture noundef readonly %clkspec, ptr noundef readonly %_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2
  %arrayidx = getelementptr %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %3, label %do.end33 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.bb19
  ]

sw.bb:                                            ; preds = %entry
  %num_outputs = getelementptr inbounds %struct.clk_si5341, ptr %_data, i32 0, i32 10
  %5 = ptrtoint ptr %num_outputs to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %num_outputs, align 8
  %conv = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp.not = icmp ult i32 %1, %conv
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_client = getelementptr inbounds %struct.clk_si5341, ptr %_data, i32 0, i32 2
  %7 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c_client, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.98, i32 noundef %1) #12
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx4 = getelementptr %struct.clk_si5341, ptr %_data, i32 0, i32 4, i32 %1
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  %num_synth = getelementptr inbounds %struct.clk_si5341, ptr %_data, i32 0, i32 11
  %9 = ptrtoint ptr %num_synth to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %num_synth, align 1
  %conv6 = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv6)
  %cmp7.not = icmp ult i32 %1, %conv6
  br i1 %cmp7.not, label %if.end16, label %do.end12

do.end12:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_client13 = getelementptr inbounds %struct.clk_si5341, ptr %_data, i32 0, i32 2
  %11 = ptrtoint ptr %i2c_client13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c_client13, align 8
  %dev14 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.101, i32 noundef %1) #12
  br label %cleanup

if.end16:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx17 = getelementptr %struct.clk_si5341, ptr %_data, i32 0, i32 3, i32 %1
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp20.not = icmp eq i32 %1, 0
  br i1 %cmp20.not, label %sw.bb19.cleanup_crit_edge, label %do.end25

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end25:                                         ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_client26 = getelementptr inbounds %struct.clk_si5341, ptr %_data, i32 0, i32 2
  %13 = ptrtoint ptr %i2c_client26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c_client26, align 8
  %dev27 = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27, ptr noundef nonnull @.str.104, i32 noundef %1) #12
  br label %cleanup

do.end33:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_client34 = getelementptr inbounds %struct.clk_si5341, ptr %_data, i32 0, i32 2
  %15 = ptrtoint ptr %i2c_client34 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c_client34, align 8
  %dev35 = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev35, ptr noundef nonnull @.str.107, i32 noundef %3) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %do.end25, %sw.bb19.cleanup_crit_edge, %if.end16, %do.end12, %if.end, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end33 ], [ inttoptr (i32 -22 to ptr), %do.end25 ], [ inttoptr (i32 -22 to ptr), %do.end12 ], [ %arrayidx17, %if.end16 ], [ inttoptr (i32 -22 to ptr), %do.end ], [ %arrayidx4, %if.end ], [ %_data, %sw.bb19.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si5341_finalize_defaults(ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  %revision = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %revision) #9
  %0 = ptrtoint ptr %revision to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %revision, align 4, !annotation !258
  %regmap = getelementptr inbounds %struct.clk_si5341, ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %iovdd_33 = getelementptr inbounds %struct.clk_si5341, ptr %data, i32 0, i32 14
  %3 = ptrtoint ptr %iovdd_33 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %iovdd_33, align 1, !range !259
  %5 = zext i8 %4 to i32
  %call = tail call i32 @regmap_write(ptr noundef %2, i32 noundef 2371, i32 noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %7, i32 noundef 5, ptr noundef nonnull %revision) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si5341_finalize_defaults.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si5341_finalize_defaults, %if.then10)) #9
          to label %do.end [label %if.then10], !srcloc !260

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_client = getelementptr inbounds %struct.clk_si5341, ptr %data, i32 0, i32 2
  %8 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c_client, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %revision, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si5341_finalize_defaults.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.109, i32 noundef %11) #9
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call13 = call i32 @regmap_write(ptr noundef %13, i32 noundef 28, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %do.end.cleanup_crit_edge, label %if.end16

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %do.end
  %chip_id = getelementptr inbounds %struct.clk_si5341, ptr %data, i32 0, i32 12
  %14 = ptrtoint ptr %chip_id to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %chip_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21313, i16 %15)
  %cmp17 = icmp ugt i16 %15, 21313
  br i1 %cmp17, label %if.then19, label %if.end16.if.end26_crit_edge

if.end16.if.end26_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then19:                                        ; preds = %if.end16
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call21 = call i32 @regmap_write(ptr noundef %17, i32 noundef 1344, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then19.cleanup_crit_edge, label %if.then19.if.end26_crit_edge

if.then19.if.end26_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %if.then19.if.end26_crit_edge, %if.end16.if.end26_crit_edge
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %20 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp28 = icmp ult i32 %21, 2
  %cond30 = select i1 %cmp28, i32 219, i32 195
  %call31 = call i32 @regmap_write(ptr noundef %19, i32 noundef 2852, i32 noundef %cond30) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.end26.cleanup_crit_edge, label %if.end35

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end35:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call37 = call i32 @regmap_write(ptr noundef %23, i32 noundef 2853, i32 noundef 2) #9
  %24 = call i32 @llvm.smin.i32(i32 %call37, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end26.cleanup_crit_edge, %if.then19.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call13, %do.end.cleanup_crit_edge ], [ %call21, %if.then19.cleanup_crit_edge ], [ %call31, %if.end26.cleanup_crit_edge ], [ %24, %if.end35 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %revision) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_files(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si5341_clk_reparent(ptr nocapture noundef readonly %data, i8 noundef zeroext %index) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %index to i32
  %shl = shl i8 %index, 1
  %and = and i8 %shl, 6
  %0 = or i8 %and, 1
  %regmap = getelementptr inbounds %struct.clk_si5341, ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %conv4 = zext i8 %0 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef 33, i32 noundef 7, i32 noundef %conv4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %index)
  %cmp7 = icmp ult i8 %index, 3
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  %shl12 = shl nuw i32 1, %conv
  %call.i115 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 2377, i32 noundef 7, i32 noundef %shl12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115)
  %cmp14 = icmp slt i32 %call.i115, 0
  br i1 %cmp14, label %if.then9.cleanup_crit_edge, label %if.end17

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.then9
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %shl20 = shl i32 16, %conv
  %call.i116 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 2378, i32 noundef 112, i32 noundef %shl20, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116)
  %cmp22 = icmp slt i32 %call.i116, 0
  br i1 %cmp22, label %if.end17.cleanup_crit_edge, label %if.end25

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end25:                                         ; preds = %if.end17
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i117 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 2318, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117)
  %cmp28 = icmp slt i32 %call.i117, 0
  br i1 %cmp28, label %if.end25.cleanup_crit_edge, label %if.end31

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end31:                                         ; preds = %if.end25
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %mul = mul nuw nsw i32 %conv, 10
  %add34 = add nuw nsw i32 %mul, 520
  %call35 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef %add34, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.end31.cleanup_crit_edge, label %if.end39

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39:                                         ; preds = %if.end31
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %add43 = add nuw nsw i32 %mul, 526
  %call44 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef %add43, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.end39.cleanup_crit_edge, label %if.end48

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end48:                                         ; preds = %if.end39
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call52 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 560, i32 noundef %shl12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.end48.cleanup_crit_edge, label %if.end48.if.end77_crit_edge

if.end48.if.end77_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call.i118 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 2377, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118)
  %cmp59 = icmp slt i32 %call.i118, 0
  br i1 %cmp59, label %if.else.cleanup_crit_edge, label %if.end62

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end62:                                         ; preds = %if.else
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call.i119 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 2378, i32 noundef 112, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %cmp65 = icmp slt i32 %call.i119, 0
  br i1 %cmp65, label %if.end62.cleanup_crit_edge, label %if.end68

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end68:                                         ; preds = %if.end62
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %xaxb_ext_clk = getelementptr inbounds %struct.clk_si5341, ptr %data, i32 0, i32 13
  %19 = ptrtoint ptr %xaxb_ext_clk to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %xaxb_ext_clk, align 4, !range !259
  %21 = or i8 %20, 2
  %or71 = zext i8 %21 to i32
  %call.i120 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 2318, i32 noundef 3, i32 noundef %or71, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %cmp73 = icmp slt i32 %call.i120, 0
  br i1 %cmp73, label %if.end68.cleanup_crit_edge, label %if.end68.if.end77_crit_edge

if.end68.if.end77_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end77:                                         ; preds = %if.end68.if.end77_crit_edge, %if.end48.if.end77_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %if.end68.cleanup_crit_edge, %if.end62.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end77 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i115, %if.then9.cleanup_crit_edge ], [ %call.i116, %if.end17.cleanup_crit_edge ], [ %call.i117, %if.end25.cleanup_crit_edge ], [ %call35, %if.end31.cleanup_crit_edge ], [ %call44, %if.end39.cleanup_crit_edge ], [ %call52, %if.end48.cleanup_crit_edge ], [ %call.i118, %if.else.cleanup_crit_edge ], [ %call.i119, %if.end62.cleanup_crit_edge ], [ %call.i120, %if.end68.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si5341_clk_recalc_rate(ptr nocapture noundef %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  %r.i = alloca [10 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.clk_si5341, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %r.i) #9
  %2 = call ptr @memset(ptr %r.i, i32 255, i32 10)
  %call.i = call i32 @regmap_bulk_read(ptr noundef %1, i32 noundef 565, ptr noundef nonnull %r.i, i32 noundef 10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %si5341_decode_44_32.exit.thread, label %if.end

si5341_decode_44_32.exit.thread:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %r.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds [10 x i8], ptr %r.i, i32 0, i32 6
  %4 = getelementptr inbounds [10 x i8], ptr %r.i, i32 0, i32 5
  %5 = getelementptr inbounds [10 x i8], ptr %r.i, i32 0, i32 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %4, align 1
  %8 = and i8 %7, 15
  %and.i = zext i8 %8 to i32
  %shl.i = shl nuw nsw i32 %and.i, 8
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %5, align 4
  %conv2.i = zext i8 %10 to i32
  %or.i = or i32 %shl.i, %conv2.i
  %conv3.i = zext i32 %or.i to i64
  %shl4.i = shl nuw nsw i64 %conv3.i, 32
  %11 = ptrtoint ptr %r.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %r.i, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %12) #9
  %conv7.i = zext i32 %13 to i64
  %or8.i = or i64 %shl4.i, %conv7.i
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %3, align 2
  %16 = call i32 @llvm.bswap.i32(i32 %15) #9
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %r.i) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or8.i)
  %tobool.not = icmp eq i64 %or8.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool1.not = icmp eq i32 %15, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %while.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool4.not630 = icmp eq i32 %or.i, 0
  br i1 %tobool4.not630, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %shift.0632 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %storemerge631 = phi i64 [ %shr, %while.body.while.body_crit_edge ], [ %or8.i, %while.cond.preheader.while.body_crit_edge ]
  %inc = add i32 %shift.0632, 1
  %shr = lshr i64 %storemerge631, 1
  %17 = and i64 %storemerge631, 562941363486720
  %tobool4.not = icmp eq i64 %17, 0
  br i1 %tobool4.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %storemerge.lcssa = phi i64 [ %or8.i, %while.cond.preheader.while.end_crit_edge ], [ %shr, %while.body.while.end_crit_edge ]
  %shift.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %inc, %while.body.while.end_crit_edge ]
  %conv = zext i32 %parent_rate to i64
  %mul = mul i64 %storemerge.lcssa, %conv
  %shr5 = lshr i32 %16, %shift.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp180 = icmp ult i64 %mul, 4294967296
  br i1 %cmp180, label %if.then184, label %if.else190, !prof !261

if.then184:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv185 = trunc i64 %mul to i32
  %div188 = udiv i32 %conv185, %shr5
  %conv189 = zext i32 %div188 to i64
  br label %if.end415

if.else190:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %18 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shr5, i64 %mul) #13, !srcloc !262
  %asmresult1.i = extractvalue { i64, i64 } %18, 1
  br label %if.end415

if.end415:                                        ; preds = %if.else190, %if.then184
  %res.0 = phi i64 [ %conv189, %if.then184 ], [ %asmresult1.i, %if.else190 ]
  %freq_vco = getelementptr inbounds %struct.clk_si5341, ptr %hw, i32 0, i32 9
  %19 = ptrtoint ptr %freq_vco to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %res.0, ptr %freq_vco, align 8
  %20 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %res.0, i32 0) #13, !srcloc !263
  %asmresult.i591 = extractvalue { i64, i32 } %20, 0
  %asmresult4.i592 = extractvalue { i64, i32 } %20, 1
  %21 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %res.0, i64 %asmresult.i591, i32 %asmresult4.i592) #13, !srcloc !264
  %asmresult10.i596 = extractvalue { i64, i32 } %21, 0
  %storemerge584 = lshr i64 %asmresult10.i596, 9
  %conv417 = trunc i64 %storemerge584 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end415, %if.end.cleanup_crit_edge, %si5341_decode_44_32.exit.thread
  %retval.0 = phi i32 [ %conv417, %if.end415 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %si5341_decode_44_32.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si5341_clk_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @si5341_clk_reparent(ptr noundef %hw, i8 noundef zeroext %index)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @si5341_clk_get_parent(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !258
  %regmap.i = getelementptr inbounds %struct.clk_si5341, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 33, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.si5341_clk_get_selected_input.exit_crit_edge, label %if.end.i

entry.si5341_clk_get_selected_input.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %si5341_clk_get_selected_input.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  %and.i = lshr i32 %4, 1
  %shr.i = and i32 %and.i, 3
  br label %si5341_clk_get_selected_input.exit

si5341_clk_get_selected_input.exit:               ; preds = %if.end.i, %entry.si5341_clk_get_selected_input.exit_crit_edge
  %retval.0.i = phi i32 [ %shr.i, %if.end.i ], [ %call.i, %entry.si5341_clk_get_selected_input.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  %5 = call i32 @llvm.smax.i32(i32 %retval.0.i, i32 0)
  %6 = trunc i32 %5 to i8
  ret i8 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si5341_synth_clk_prepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index1 = getelementptr inbounds %struct.clk_si5341_synth, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %index1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index1, align 4
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv
  %data = getelementptr inbounds %struct.clk_si5341_synth, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %regmap = getelementptr inbounds %struct.clk_si5341, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %conv3 = and i32 %shl, 255
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 2565, i32 noundef %conv3, i32 noundef %conv3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %regmap7 = getelementptr inbounds %struct.clk_si5341, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap7, align 4
  %call.i32 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 2890, i32 noundef %conv3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %cmp10 = icmp slt i32 %call.i32, 0
  br i1 %cmp10, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %regmap15 = getelementptr inbounds %struct.clk_si5341, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %regmap15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap15, align 4
  %call.i33 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 2563, i32 noundef %conv3, i32 noundef %conv3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i33, %if.end13 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i32, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @si5341_synth_clk_unprepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index1 = getelementptr inbounds %struct.clk_si5341_synth, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %index1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index1, align 4
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv
  %data = getelementptr inbounds %struct.clk_si5341_synth, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %regmap = getelementptr inbounds %struct.clk_si5341, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %conv3 = and i32 %shl, 255
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 2563, i32 noundef %conv3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %regmap5 = getelementptr inbounds %struct.clk_si5341, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %regmap5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap5, align 4
  %call.i19 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 2565, i32 noundef %conv3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %regmap9 = getelementptr inbounds %struct.clk_si5341, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %regmap9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap9, align 4
  %call.i20 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 2890, i32 noundef %conv3, i32 noundef %conv3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si5341_synth_clk_is_on(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !258
  %index1 = getelementptr inbounds %struct.clk_si5341_synth, ptr %hw, i32 0, i32 2
  %1 = ptrtoint ptr %index1 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %index1, align 4
  %data = getelementptr inbounds %struct.clk_si5341_synth, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %regmap = getelementptr inbounds %struct.clk_si5341, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %6, i32 noundef 2563, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %conv = zext i8 %2 to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %8, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %regmap5 = getelementptr inbounds %struct.clk_si5341, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %regmap5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap5, align 4
  %call6 = call i32 @regmap_read(ptr noundef %12, i32 noundef 2565, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end3.cleanup_crit_edge, label %if.end10

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end3
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %and13 = and i32 %14, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end10.cleanup_crit_edge, label %if.end16

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %regmap18 = getelementptr inbounds %struct.clk_si5341, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %regmap18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap18, align 4
  %call19 = call i32 @regmap_read(ptr noundef %18, i32 noundef 2890, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end16.cleanup_crit_edge, label %if.end23

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val, align 4
  %21 = xor i32 %20, -1
  %22 = lshr i32 %21, %conv
  %23 = and i32 %22, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end16.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %23, %if.end23 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si5341_synth_clk_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  %r.i = alloca [10 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.clk_si5341_synth, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %regmap = getelementptr inbounds %struct.clk_si5341, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %index = getelementptr inbounds %struct.clk_si5341_synth, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 4
  %conv = zext i8 %5 to i32
  %mul = mul nuw nsw i32 %conv, 11
  %add = add nuw nsw i32 %mul, 770
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %r.i) #9
  %6 = call ptr @memset(ptr %r.i, i32 255, i32 10)
  %call.i = call i32 @regmap_bulk_read(ptr noundef %3, i32 noundef %add, ptr noundef nonnull %r.i, i32 noundef 10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %si5341_decode_44_32.exit.thread, label %if.end

si5341_decode_44_32.exit.thread:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %r.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = getelementptr inbounds [10 x i8], ptr %r.i, i32 0, i32 6
  %8 = getelementptr inbounds [10 x i8], ptr %r.i, i32 0, i32 5
  %9 = getelementptr inbounds [10 x i8], ptr %r.i, i32 0, i32 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %8, align 1
  %12 = and i8 %11, 15
  %and.i = zext i8 %12 to i32
  %shl.i = shl nuw nsw i32 %and.i, 8
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %9, align 4
  %conv2.i = zext i8 %14 to i32
  %or.i = or i32 %shl.i, %conv2.i
  %conv3.i = zext i32 %or.i to i64
  %shl4.i = shl nuw nsw i64 %conv3.i, 32
  %15 = ptrtoint ptr %r.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %r.i, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16) #9
  %conv7.i = zext i32 %17 to i64
  %or8.i = or i64 %shl4.i, %conv7.i
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %7, align 2
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %r.i) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or8.i)
  %tobool.not = icmp eq i64 %or8.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool2.not = icmp eq i32 %19, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %20 = call i32 @llvm.bswap.i32(i32 %19) #9
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %freq_vco = getelementptr inbounds %struct.clk_si5341, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %freq_vco to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %freq_vco, align 8
  %shr = lshr i32 %20, 4
  %conv6 = zext i32 %shr to i64
  %mul7 = mul i64 %24, %conv6
  %shr8 = lshr i64 %or8.i, 4
  %call9 = call i64 @div64_u64(i64 noundef %mul7, i64 noundef %shr8) #9
  %conv10 = trunc i64 %call9 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %si5341_decode_44_32.exit.thread
  %retval.0 = phi i32 [ %conv10, %if.end4 ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i, %si5341_decode_44_32.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @si5341_synth_clk_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readnone %parent_rate) #7 align 64 {
if.end179:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.clk_si5341_synth, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %freq_vco = getelementptr inbounds %struct.clk_si5341, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %freq_vco to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %freq_vco, align 8
  %4 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9221119687151026168, i64 %3, i32 0) #13, !srcloc !263
  %asmresult.i = extractvalue { i64, i32 } %4, 0
  %asmresult4.i = extractvalue { i64, i32 } %4, 1
  %5 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9221119687151026168, i64 %3, i64 %asmresult.i, i32 %asmresult4.i) #13, !srcloc !264
  %asmresult10.i = extractvalue { i64, i32 } %5, 0
  %f.0 = lshr i64 %asmresult10.i, 11
  %conv181 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %f.0, i64 %conv181)
  %cmp182 = icmp ugt i64 %f.0, %conv181
  br i1 %cmp182, label %if.then184, label %if.end408

if.then184:                                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #11
  %conv185 = trunc i64 %f.0 to i32
  br label %cleanup

if.end408:                                        ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #11
  %div299580 = lshr i64 %3, 1
  %6 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div299580, i64 3689348814741910323) #13, !srcloc !265
  %7 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div299580, i64 %6) #13, !srcloc !266
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %conv181)
  %cmp411 = icmp ult i64 %7, %conv181
  %conv414 = trunc i64 %7 to i32
  %spec.select = select i1 %cmp411, i32 %conv414, i32 %rate
  br label %cleanup

cleanup:                                          ; preds = %if.end408, %if.then184
  %retval.0 = phi i32 [ %conv185, %if.then184 ], [ %spec.select, %if.end408 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si5341_synth_clk_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  %r.i.i = alloca [10 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.clk_si5341_synth, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %freq_vco = getelementptr inbounds %struct.clk_si5341, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %freq_vco to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %freq_vco, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %3)
  %cmp165 = icmp ult i64 %3, 4294967296
  br i1 %cmp165, label %if.then169, label %if.else175, !prof !261

if.then169:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv170 = trunc i64 %3 to i32
  %conv170.frozen = freeze i32 %conv170
  %div173 = udiv i32 %conv170.frozen, %rate
  %4 = mul i32 %div173, %rate
  %rem171.decomposed = sub i32 %conv170.frozen, %4
  %conv174 = zext i32 %div173 to i64
  br label %if.end179

if.else175:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %rate, i64 %3) #13, !srcloc !262
  %asmresult.i306 = extractvalue { i64, i64 } %5, 0
  %asmresult1.i = extractvalue { i64, i64 } %5, 1
  %shr.i = lshr i64 %asmresult.i306, 32
  %conv.i = trunc i64 %shr.i to i32
  br label %if.end179

if.end179:                                        ; preds = %if.else175, %if.then169
  %n_num.0 = phi i64 [ %conv174, %if.then169 ], [ %asmresult1.i, %if.else175 ]
  %__rem.0 = phi i32 [ %rem171.decomposed, %if.then169 ], [ %conv.i, %if.else175 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem.0)
  %cmp181 = icmp eq i32 %__rem.0, 0
  br i1 %cmp181, label %if.end179.do.body_crit_edge, label %if.else185

if.end179.do.body_crit_edge:                      ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.else185:                                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #11
  %call186 = tail call i32 @gcd(i32 noundef %__rem.0, i32 noundef %rate) #14
  %div187 = udiv i32 %rate, %call186
  %conv188 = zext i32 %div187 to i64
  %mul189 = mul i64 %n_num.0, %conv188
  %div190 = udiv i32 %__rem.0, %call186
  %conv191 = zext i32 %div190 to i64
  %add192 = add i64 %mul189, %conv191
  br label %do.body

do.body:                                          ; preds = %if.else185, %if.end179.do.body_crit_edge
  %n_num.1 = phi i64 [ %n_num.0, %if.end179.do.body_crit_edge ], [ %add192, %if.else185 ]
  %n_den.0 = phi i32 [ 1, %if.end179.do.body_crit_edge ], [ %div187, %if.else185 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si5341_synth_clk_set_rate.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si5341_synth_clk_set_rate, %if.then204)) #9
          to label %do.end [label %if.then204], !srcloc !260

if.then204:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %i2c_client = getelementptr inbounds %struct.clk_si5341, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c_client, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  %index = getelementptr inbounds %struct.clk_si5341_synth, ptr %hw, i32 0, i32 2
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %index, align 4
  %conv206 = zext i8 %11 to i32
  %cond209 = select i1 %cmp181, ptr @.str.96, ptr @.str.97
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si5341_synth_clk_set_rate.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.94, i32 noundef %conv206, i64 noundef %n_num.1, i32 noundef %n_den.0, ptr noundef nonnull %cond209) #9
  br label %do.end

do.end:                                           ; preds = %if.then204, %do.body
  %index1.i = getelementptr inbounds %struct.clk_si5341_synth, ptr %hw, i32 0, i32 2
  %12 = ptrtoint ptr %index1.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %index1.i, align 4
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %regmap.i = getelementptr inbounds %struct.clk_si5341, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i, align 4
  %conv.i307 = zext i8 %13 to i32
  %mul.i = mul nuw nsw i32 %conv.i307, 11
  %add.i = add nuw nsw i32 %mul.i, 770
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %r.i.i) #9
  %and18.i.i = and i64 %n_num.1, 8796093022208
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and18.i.i)
  %tobool.not19.i.i = icmp eq i64 %and18.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %n_den.0)
  %tobool2.not20.i.i = icmp sgt i32 %n_den.0, -1
  %or.cond21.i.i = and i1 %tobool.not19.i.i, %tobool2.not20.i.i
  %extract.t.i.i = trunc i64 %n_num.1 to i32
  %extract.i.i = lshr i64 %n_num.1, 32
  %extract.t26.i.i = trunc i64 %extract.i.i to i8
  %extract29.i.i = lshr i64 %n_num.1, 40
  %extract.t30.i.i = trunc i64 %extract29.i.i to i8
  br i1 %or.cond21.i.i, label %do.end.while.body.i.i_crit_edge, label %do.end.si5341_encode_44_32.exit.i_crit_edge

do.end.si5341_encode_44_32.exit.i_crit_edge:      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %si5341_encode_44_32.exit.i

do.end.while.body.i.i_crit_edge:                  ; preds = %do.end
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %do.end.while.body.i.i_crit_edge
  %n_den.addr.023.i.i = phi i32 [ %shl3.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %n_den.0, %do.end.while.body.i.i_crit_edge ]
  %n_num.addr.022.i.i = phi i64 [ %shl.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %n_num.1, %do.end.while.body.i.i_crit_edge ]
  %shl.i.i = shl i64 %n_num.addr.022.i.i, 1
  %shl3.i.i = shl nuw i32 %n_den.addr.023.i.i, 1
  %18 = and i64 %n_num.addr.022.i.i, 4398046511104
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %tobool.not.i.i = icmp eq i64 %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl3.i.i)
  %tobool2.not.i.i = icmp sgt i32 %shl3.i.i, -1
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 %tobool2.not.i.i, i1 false
  br i1 %or.cond.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.end.loopexit.i.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

while.end.loopexit.i.i:                           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %extract31.i.i = lshr i64 %shl.i.i, 40
  %extract.t32.i.i = trunc i64 %extract31.i.i to i8
  %extract27.i.i = lshr i64 %shl.i.i, 32
  %extract.t28.i.i = trunc i64 %extract27.i.i to i8
  %extract.t25.i.i = trunc i64 %shl.i.i to i32
  br label %si5341_encode_44_32.exit.i

si5341_encode_44_32.exit.i:                       ; preds = %while.end.loopexit.i.i, %do.end.si5341_encode_44_32.exit.i_crit_edge
  %n_num.addr.0.lcssa.off0.i.i = phi i32 [ %extract.t.i.i, %do.end.si5341_encode_44_32.exit.i_crit_edge ], [ %extract.t25.i.i, %while.end.loopexit.i.i ]
  %n_num.addr.0.lcssa.off32.i.i = phi i8 [ %extract.t26.i.i, %do.end.si5341_encode_44_32.exit.i_crit_edge ], [ %extract.t28.i.i, %while.end.loopexit.i.i ]
  %n_num.addr.0.lcssa.off40.i.i = phi i8 [ %extract.t30.i.i, %do.end.si5341_encode_44_32.exit.i_crit_edge ], [ %extract.t32.i.i, %while.end.loopexit.i.i ]
  %n_den.addr.0.lcssa.i.i = phi i32 [ %n_den.0, %do.end.si5341_encode_44_32.exit.i_crit_edge ], [ %shl3.i.i, %while.end.loopexit.i.i ]
  %19 = getelementptr inbounds [10 x i8], ptr %r.i.i, i32 0, i32 6
  %20 = getelementptr inbounds [10 x i8], ptr %r.i.i, i32 0, i32 5
  %21 = getelementptr inbounds [10 x i8], ptr %r.i.i, i32 0, i32 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %n_num.addr.0.lcssa.off0.i.i) #9
  %23 = ptrtoint ptr %r.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %r.i.i, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %n_num.addr.0.lcssa.off32.i.i, ptr %21, align 4
  %conv8.i.i = and i8 %n_num.addr.0.lcssa.off40.i.i, 15
  %25 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv8.i.i, ptr %20, align 1
  %26 = tail call i32 @llvm.bswap.i32(i32 %n_den.addr.0.lcssa.i.i) #9
  %27 = ptrtoint ptr %19 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %19, align 2
  %call.i.i = call i32 @regmap_bulk_write(ptr noundef %17, i32 noundef %add.i, ptr noundef nonnull %r.i.i, i32 noundef 10) #9
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %r.i.i) #9
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %regmap3.i = getelementptr inbounds %struct.clk_si5341, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %regmap3.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap3.i, align 4
  %shl.i = shl nuw i32 1, %conv.i307
  %spec.select.i = select i1 %cmp181, i32 %shl.i, i32 0
  %call.i24.i = call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 2564, i32 noundef %shl.i, i32 noundef %spec.select.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24.i)
  %cmp.i = icmp slt i32 %call.i24.i, 0
  br i1 %cmp.i, label %si5341_encode_44_32.exit.i.si5341_synth_program.exit_crit_edge, label %if.end.i

si5341_encode_44_32.exit.i.si5341_synth_program.exit_crit_edge: ; preds = %si5341_encode_44_32.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %si5341_synth_program.exit

if.end.i:                                         ; preds = %si5341_encode_44_32.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data, align 4
  %regmap11.i = getelementptr inbounds %struct.clk_si5341, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %regmap11.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap11.i, align 4
  %add14.i = add nuw nsw i32 %mul.i, 780
  %call15.i = call i32 @regmap_write(ptr noundef %35, i32 noundef %add14.i, i32 noundef 1) #9
  br label %si5341_synth_program.exit

si5341_synth_program.exit:                        ; preds = %if.end.i, %si5341_encode_44_32.exit.i.si5341_synth_program.exit_crit_edge
  %retval.0.i308 = phi i32 [ %call15.i, %if.end.i ], [ %call.i24.i, %si5341_encode_44_32.exit.i.si5341_synth_program.exit_crit_edge ]
  ret i32 %retval.0.i308
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @gcd(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si5341_output_clk_prepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.clk_si5341_output, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %regmap = getelementptr inbounds %struct.clk_si5341, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %reg_output_offset = getelementptr inbounds %struct.clk_si5341, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %reg_output_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_output_offset, align 8
  %index = getelementptr inbounds %struct.clk_si5341_output, ptr %hw, i32 0, i32 3
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %index, align 4
  %idxprom = zext i8 %7 to i32
  %arrayidx = getelementptr i16, ptr %5, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %9 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %conv, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %regmap4 = getelementptr inbounds %struct.clk_si5341, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %regmap4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap4, align 4
  %reg_output_offset6 = getelementptr inbounds %struct.clk_si5341, ptr %11, i32 0, i32 7
  %14 = ptrtoint ptr %reg_output_offset6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_output_offset6, align 8
  %16 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %index, align 4
  %idxprom8 = zext i8 %17 to i32
  %arrayidx9 = getelementptr i16, ptr %15, i32 %idxprom8
  %18 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx9, align 2
  %conv10 = zext i16 %19 to i32
  %call.i19 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef %conv10, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i19, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @si5341_output_clk_unprepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.clk_si5341_output, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %regmap = getelementptr inbounds %struct.clk_si5341, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %reg_output_offset = getelementptr inbounds %struct.clk_si5341, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %reg_output_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_output_offset, align 8
  %index = getelementptr inbounds %struct.clk_si5341_output, ptr %hw, i32 0, i32 3
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %index, align 4
  %idxprom = zext i8 %7 to i32
  %arrayidx = getelementptr i16, ptr %5, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %9 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %conv, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %regmap3 = getelementptr inbounds %struct.clk_si5341, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap3, align 4
  %reg_output_offset5 = getelementptr inbounds %struct.clk_si5341, ptr %11, i32 0, i32 7
  %14 = ptrtoint ptr %reg_output_offset5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_output_offset5, align 8
  %16 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %index, align 4
  %idxprom7 = zext i8 %17 to i32
  %arrayidx8 = getelementptr i16, ptr %15, i32 %idxprom7
  %18 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx8, align 2
  %conv9 = zext i16 %19 to i32
  %call.i16 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef %conv9, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si5341_output_clk_is_on(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !258
  %data = getelementptr inbounds %struct.clk_si5341_output, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %regmap = getelementptr inbounds %struct.clk_si5341, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %reg_output_offset = getelementptr inbounds %struct.clk_si5341, ptr %2, i32 0, i32 7
  %5 = ptrtoint ptr %reg_output_offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_output_offset, align 8
  %index = getelementptr inbounds %struct.clk_si5341_output, ptr %hw, i32 0, i32 3
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %index, align 4
  %idxprom = zext i8 %8 to i32
  %arrayidx = getelementptr i16, ptr %6, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %10 to i32
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef %conv, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %and = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp3 = icmp eq i32 %and, 2
  %conv4 = zext i1 %cmp3 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv4, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si5341_output_clk_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  %val = alloca i32, align 4
  %r = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !258
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %r) #9
  %1 = ptrtoint ptr %r to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %r, align 1, !annotation !258
  %2 = getelementptr inbounds [3 x i8], ptr %r, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1, !annotation !258
  %4 = getelementptr inbounds [3 x i8], ptr %r, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %4, align 1, !annotation !258
  %data = getelementptr inbounds %struct.clk_si5341_output, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %regmap = getelementptr inbounds %struct.clk_si5341, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %reg_rdiv_offset = getelementptr inbounds %struct.clk_si5341, ptr %7, i32 0, i32 8
  %10 = ptrtoint ptr %reg_rdiv_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_rdiv_offset, align 4
  %index = getelementptr inbounds %struct.clk_si5341_output, ptr %hw, i32 0, i32 3
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %index, align 4
  %idxprom = zext i8 %13 to i32
  %arrayidx = getelementptr i16, ptr %11, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %15 to i32
  %call = call i32 @regmap_bulk_read(ptr noundef %9, i32 noundef %conv, ptr noundef nonnull %r, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %4, align 1
  %conv4 = zext i8 %17 to i32
  %shl = shl nuw nsw i32 %conv4, 16
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %2, align 1
  %conv6 = zext i8 %19 to i32
  %shl7 = shl nuw nsw i32 %conv6, 8
  %or = or i32 %shl7, %shl
  %20 = ptrtoint ptr %r to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %r, align 1
  %conv9 = zext i8 %21 to i32
  %or10 = or i32 %or, %conv9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or10)
  %tobool.not = icmp eq i32 %or10, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %regmap15 = getelementptr inbounds %struct.clk_si5341, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %regmap15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap15, align 4
  %reg_output_offset = getelementptr inbounds %struct.clk_si5341, ptr %23, i32 0, i32 7
  %26 = ptrtoint ptr %reg_output_offset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_output_offset, align 8
  %28 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %index, align 4
  %idxprom18 = zext i8 %29 to i32
  %arrayidx19 = getelementptr i16, ptr %27, i32 %idxprom18
  %30 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx19, align 2
  %conv20 = zext i16 %31 to i32
  %call21 = call i32 @regmap_read(ptr noundef %25, i32 noundef %conv20, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end12.cleanup_crit_edge, label %if.end25

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end25:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %add = shl nuw nsw i32 %or10, 1
  %shl13 = add nuw nsw i32 %add, 2
  %32 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val, align 4
  %and = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool26.not, i32 %shl13, i32 2
  %div = udiv i32 %parent_rate, %spec.select
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div, %if.end25 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call21, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %r) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si5341_output_clk_round_rate(ptr noundef %hw, i32 noundef %rate, ptr nocapture noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool.not = icmp eq i32 %rate, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  %shr = lshr i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %tobool1.not = icmp ult i32 %1, 2
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %land.lhs.true

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %rem = urem i32 %shr, %rate
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool2.not = icmp eq i32 %rem, 0
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end4_crit_edge

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %call = tail call i32 @clk_hw_get_flags(ptr noundef %hw) #9
  %and = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.else10, label %if.then6

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000000, i32 %rate)
  %cmp = icmp ugt i32 %rate, 200000000
  br i1 %cmp, label %if.then6.if.end9_crit_edge, label %if.else

if.then6.if.end9_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.else:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %div = udiv i32 400000000, %rate
  %and8 = and i32 %div, 536870910
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6.if.end9_crit_edge
  %r.0 = phi i32 [ %and8, %if.else ], [ 2, %if.then6.if.end9_crit_edge ]
  %mul = mul i32 %r.0, %rate
  %2 = ptrtoint ptr %parent_rate to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %mul, ptr %parent_rate, align 4
  br label %cleanup

if.else10:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %div11 = udiv i32 %shr, %rate
  %3 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %parent_rate, align 4
  %shl = shl nuw i32 %div11, 1
  %div12 = udiv i32 %4, %shl
  br label %cleanup

cleanup:                                          ; preds = %if.else10, %if.end9, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %rate, %land.lhs.true.cleanup_crit_edge ], [ %rate, %if.end9 ], [ %div12, %if.else10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si5341_output_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.clk_si5341_output, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %num_synth = getelementptr inbounds %struct.clk_si5341, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %num_synth to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_synth, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %index)
  %cmp.not = icmp ugt i8 %3, %index
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %regmap.i = getelementptr inbounds %struct.clk_si5341, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %reg_output_offset.i = getelementptr inbounds %struct.clk_si5341, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %reg_output_offset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_output_offset.i, align 8
  %index2.i = getelementptr inbounds %struct.clk_si5341_output, ptr %hw, i32 0, i32 3
  %8 = ptrtoint ptr %index2.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %index2.i, align 4
  %idxprom.i = zext i8 %9 to i32
  %arrayidx.i = getelementptr i16, ptr %7, i32 %idxprom.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %11 to i32
  %add.i = add nuw nsw i32 %conv.i, 3
  %conv3.i = zext i8 %index to i32
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add.i, i32 noundef 7, i32 noundef %conv3.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @si5341_output_get_parent(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !258
  %data = getelementptr inbounds %struct.clk_si5341_output, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %regmap = getelementptr inbounds %struct.clk_si5341, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %reg_output_offset = getelementptr inbounds %struct.clk_si5341, ptr %2, i32 0, i32 7
  %5 = ptrtoint ptr %reg_output_offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_output_offset, align 8
  %index = getelementptr inbounds %struct.clk_si5341_output, ptr %hw, i32 0, i32 3
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %index, align 4
  %idxprom = zext i8 %8 to i32
  %arrayidx = getelementptr i16, ptr %6, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %10 to i32
  %add = add nuw nsw i32 %conv, 3
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef %add, ptr noundef nonnull %val) #9
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %13 = trunc i32 %12 to i8
  %conv2 = and i8 %13, 7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i8 %conv2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si5341_output_clk_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  %r = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %r) #9
  %0 = getelementptr inbounds [3 x i8], ptr %r, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %r, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool.not = icmp eq i32 %rate, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %div = udiv i32 %parent_rate, %rate
  %shr = lshr i32 %div, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %div)
  %cmp = icmp ult i32 %div, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554431, i32 %div)
  %cmp2 = icmp ugt i32 %div, 33554431
  %dec = add nsw i32 %shr, -1
  %spec.select51 = select i1 %cmp2, i32 16777215, i32 %dec
  %r_div.0 = select i1 %cmp, i32 0, i32 %spec.select51
  %data = getelementptr inbounds %struct.clk_si5341_output, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %regmap = getelementptr inbounds %struct.clk_si5341, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %reg_output_offset = getelementptr inbounds %struct.clk_si5341, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %reg_output_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_output_offset, align 8
  %index = getelementptr inbounds %struct.clk_si5341_output, ptr %hw, i32 0, i32 3
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %index, align 4
  %idxprom = zext i8 %9 to i32
  %arrayidx = getelementptr i16, ptr %7, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r_div.0)
  %cmp8 = icmp eq i32 %r_div.0, 0
  %cond = select i1 %cmp8, i32 4, i32 0
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %conv, i32 noundef 4, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp10 = icmp slt i32 %call.i, 0
  br i1 %cmp10, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast = trunc i32 %r_div.0 to i8
  %spec.select = select i1 %cmp8, i8 1, i8 %phi.cast
  %12 = ptrtoint ptr %r to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %spec.select, ptr %r, align 1
  %shr18 = lshr i32 %r_div.0, 8
  %conv20 = trunc i32 %shr18 to i8
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv20, ptr %0, align 1
  %shr22 = lshr i32 %r_div.0, 16
  %conv24 = trunc i32 %shr22 to i8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv24, ptr %1, align 1
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %regmap27 = getelementptr inbounds %struct.clk_si5341, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %regmap27 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap27, align 4
  %reg_rdiv_offset = getelementptr inbounds %struct.clk_si5341, ptr %16, i32 0, i32 8
  %19 = ptrtoint ptr %reg_rdiv_offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_rdiv_offset, align 4
  %21 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %index, align 4
  %idxprom30 = zext i8 %22 to i32
  %arrayidx31 = getelementptr i16, ptr %20, i32 %idxprom30
  %23 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx31, align 2
  %conv32 = zext i16 %24 to i32
  %call33 = call i32 @regmap_bulk_write(ptr noundef %18, i32 noundef %conv32, ptr noundef nonnull %r, i32 noundef 3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %r) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_flags(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @input_present_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #9
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status, align 4, !annotation !258
  %regmap = getelementptr inbounds %struct.clk_si5341, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 12, ptr noundef nonnull %status) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %and = lshr i32 %6, 2
  %and.lobit = and i32 %and, 1
  %7 = xor i32 %and.lobit, 1
  %call2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.112, i32 noundef %7)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @input_present_sticky_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #9
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status, align 4, !annotation !258
  %regmap = getelementptr inbounds %struct.clk_si5341, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 17, ptr noundef nonnull %status) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %and = lshr i32 %6, 2
  %and.lobit = and i32 %and, 1
  %7 = xor i32 %and.lobit, 1
  %call2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.112, i32 noundef %7)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pll_locked_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #9
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status, align 4, !annotation !258
  %regmap = getelementptr inbounds %struct.clk_si5341, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 12, ptr noundef nonnull %status) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %and = lshr i32 %6, 3
  %and.lobit = and i32 %and, 1
  %7 = xor i32 %and.lobit, 1
  %call2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.112, i32 noundef %7)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pll_locked_sticky_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #9
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status, align 4, !annotation !258
  %regmap = getelementptr inbounds %struct.clk_si5341, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 17, ptr noundef nonnull %status) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %and = lshr i32 %6, 3
  %and.lobit = and i32 %and, 1
  %7 = xor i32 %and.lobit, 1
  %call2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.112, i32 noundef %7)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clear_sticky_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !258
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup8_crit_edge

entry.cleanup8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup8

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then3:                                         ; preds = %if.end
  %regmap = getelementptr inbounds %struct.clk_si5341, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call4 = call i32 @regmap_write(ptr noundef %6, i32 noundef 17, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then3.cleanup8_crit_edge, label %if.then3.if.end7_crit_edge

if.then3.if.end7_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then3.cleanup8_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup8

if.end7:                                          ; preds = %if.then3.if.end7_crit_edge, %if.end.if.end7_crit_edge
  br label %cleanup8

cleanup8:                                         ; preds = %if.end7, %if.then3.cleanup8_crit_edge, %entry.cleanup8_crit_edge
  %retval.1 = phi i32 [ %count, %if.end7 ], [ %call4, %if.then3.cleanup8_crit_edge ], [ -22, %entry.cleanup8_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_files(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 131)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 131)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !31, !33, !35, !37, !38, !39, !41, !43, !44, !45, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !76, !78, !80, !82, !84, !86, !87, !88, !89, !91, !92, !93, !95, !97, !98, !99, !101, !103, !104, !105, !107, !109, !110, !111, !113, !115, !117, !119, !120, !121, !123, !124, !125, !126, !128, !130, !132, !134, !136, !137, !138, !139, !141, !142, !143, !144, !146, !147, !148, !150, !152, !154, !156, !158, !160, !162, !163, !164, !165, !167, !169, !170, !171, !172, !174, !175, !176, !178, !180, !181, !182, !183, !185, !187, !188, !189, !191, !192, !193, !195, !197, !199, !200, !201, !202, !203, !205, !207, !208, !209, !210, !212, !213, !214, !216, !217, !218, !220, !221, !222, !224, !225, !226, !228, !230, !231, !233, !235, !236, !238, !239, !241, !242, !244, !245, !247}
!llvm.module.flags = !{!249, !250, !251, !252, !253, !254, !255, !256}
!llvm.ident = !{!257}

!0 = !{ptr @__initcall__kmod_clk_si5341__291_1842_si5341_driver_init6, !1, !"__initcall__kmod_clk_si5341__291_1842_si5341_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/clk-si5341.c", i32 1842, i32 1}
!2 = !{ptr @__exitcall_si5341_driver_exit, !1, !"__exitcall_si5341_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author292, !4, !"__UNIQUE_ID_author292", i1 false, i1 false}
!4 = !{!"../drivers/clk/clk-si5341.c", i32 1844, i32 1}
!5 = !{ptr @__UNIQUE_ID_description293, !6, !"__UNIQUE_ID_description293", i1 false, i1 false}
!6 = !{!"../drivers/clk/clk-si5341.c", i32 1845, i32 1}
!7 = !{ptr @__UNIQUE_ID_file294, !8, !"__UNIQUE_ID_file294", i1 false, i1 false}
!8 = !{!"../drivers/clk/clk-si5341.c", i32 1846, i32 1}
!9 = !{ptr @__UNIQUE_ID_license295, !8, !"__UNIQUE_ID_license295", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/clk-si5341.c", i32 1835, i32 11}
!12 = !{ptr @si5341_driver, !13, !"si5341_driver", i1 false, i1 false}
!13 = !{!"../drivers/clk/clk-si5341.c", i32 1833, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/clk-si5341.c", i32 1588, i32 40}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/clk-si5341.c", i32 1600, i32 5}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @si5341_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @si5341_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/clk-si5341.c", i32 1613, i32 51}
!26 = !{ptr @si5341_probe._key, !27, !"_key", i1 false, i1 false}
!27 = !{!"../drivers/clk/clk-si5341.c", i32 1618, i32 17}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/clk-si5341.c", i32 1630, i32 49}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/clk-si5341.c", i32 1640, i32 10}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/clk-si5341.c", i32 1642, i32 13}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/clk-si5341.c", i32 1689, i32 3}
!37 = !{ptr @si5341_probe._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @si5341_probe._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/clk-si5341.c", i32 1698, i32 5}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/clk-si5341.c", i32 1705, i32 4}
!43 = !{ptr @si5341_probe._entry.16, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @si5341_probe._entry_ptr.18, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/clk-si5341.c", i32 1714, i32 37}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/clk-si5341.c", i32 1735, i32 4}
!49 = !{ptr @si5341_probe._entry.20, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @si5341_probe._entry_ptr.22, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clk/clk-si5341.c", i32 1746, i32 3}
!53 = !{ptr @si5341_probe._entry.23, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @si5341_probe._entry_ptr.25, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/clk-si5341.c", i32 1767, i32 3}
!57 = !{ptr @si5341_probe._entry.26, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @si5341_probe._entry_ptr.28, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/clk/clk-si5341.c", i32 1774, i32 3}
!61 = !{ptr @si5341_probe._entry.29, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @si5341_probe._entry_ptr.31, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clk/clk-si5341.c", i32 1780, i32 3}
!65 = !{ptr @si5341_probe._entry.32, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @si5341_probe._entry_ptr.34, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/clk/clk-si5341.c", i32 1251, i32 2}
!69 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @si5341_wait_device_ready._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @si5341_wait_device_ready._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/clk-si5341.c", i32 172, i32 2}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/clk-si5341.c", i32 172, i32 9}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/clk-si5341.c", i32 172, i32 16}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/clk-si5341.c", i32 172, i32 23}
!80 = distinct !{null, !81, !"si5341_input_clock_names", i1 false, i1 false}
!81 = !{!"../drivers/clk/clk-si5341.c", i32 171, i32 27}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/clk-si5341.c", i32 1277, i32 35}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/clk-si5341.c", i32 1278, i32 4}
!86 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @si5341_dt_parse_dt._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @si5341_dt_parse_dt._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/clk/clk-si5341.c", i32 1284, i32 4}
!91 = !{ptr @si5341_dt_parse_dt._entry.44, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @si5341_dt_parse_dt._entry_ptr.46, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/clk/clk-si5341.c", i32 1288, i32 36}
!95 = !{ptr @.str.49, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/clk/clk-si5341.c", i32 1303, i32 5}
!97 = !{ptr @si5341_dt_parse_dt._entry.48, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @si5341_dt_parse_dt._entry_ptr.50, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.51, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/clk/clk-si5341.c", i32 1314, i32 36}
!101 = !{ptr @.str.53, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/clk/clk-si5341.c", i32 1316, i32 5}
!103 = !{ptr @si5341_dt_parse_dt._entry.52, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @si5341_dt_parse_dt._entry_ptr.54, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.55, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/clk/clk-si5341.c", i32 1325, i32 36}
!107 = !{ptr @.str.57, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/clk/clk-si5341.c", i32 1327, i32 5}
!109 = !{ptr @si5341_dt_parse_dt._entry.56, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @si5341_dt_parse_dt._entry_ptr.58, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.59, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/clk/clk-si5341.c", i32 1336, i32 36}
!113 = !{ptr @.str.60, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/clk/clk-si5341.c", i32 1340, i32 33}
!115 = !{ptr @.str.61, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/clk/clk-si5341.c", i32 1343, i32 33}
!117 = !{ptr @.str.63, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/clk/clk-si5341.c", i32 1360, i32 5}
!119 = !{ptr @si5341_dt_parse_dt._entry.62, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @si5341_dt_parse_dt._entry_ptr.64, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.66, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/clk/clk-si5341.c", i32 1367, i32 4}
!123 = !{ptr @.str.67, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @si5341_dt_parse_dt._entry.65, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @si5341_dt_parse_dt._entry_ptr.68, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @si5341_regmap_config, !127, !"si5341_regmap_config", i1 false, i1 false}
!127 = !{!"../drivers/clk/clk-si5341.c", i32 1255, i32 35}
!128 = !{ptr @si5341_regmap_volatile, !129, !"si5341_regmap_volatile", i1 false, i1 false}
!129 = !{!"../drivers/clk/clk-si5341.c", i32 1211, i32 41}
!130 = !{ptr @si5341_regmap_volatile_range, !131, !"si5341_regmap_volatile_range", i1 false, i1 false}
!131 = !{!"../drivers/clk/clk-si5341.c", i32 1198, i32 34}
!132 = !{ptr @si5341_regmap_ranges, !133, !"si5341_regmap_ranges", i1 false, i1 false}
!133 = !{!"../drivers/clk/clk-si5341.c", i32 1217, i32 38}
!134 = !{ptr @.str.69, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/clk/clk-si5341.c", i32 1000, i32 3}
!136 = !{ptr @.str.70, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @si5341_probe_chip_id._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @si5341_probe_chip_id._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.72, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/clk/clk-si5341.c", i32 1006, i32 2}
!141 = !{ptr @.str.73, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @si5341_probe_chip_id._entry.71, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @si5341_probe_chip_id._entry_ptr.74, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.76, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/clk/clk-si5341.c", i32 1041, i32 3}
!146 = !{ptr @si5341_probe_chip_id._entry.75, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @si5341_probe_chip_id._entry_ptr.77, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @si5340_reg_output_offset, !149, !"si5340_reg_output_offset", i1 false, i1 false}
!149 = !{!"../drivers/clk/clk-si5341.c", i32 191, i32 18}
!150 = !{ptr @si5340_reg_rdiv_offset, !151, !"si5340_reg_rdiv_offset", i1 false, i1 false}
!151 = !{!"../drivers/clk/clk-si5341.c", i32 211, i32 18}
!152 = !{ptr @si5341_reg_output_offset, !153, !"si5341_reg_output_offset", i1 false, i1 false}
!153 = !{!"../drivers/clk/clk-si5341.c", i32 177, i32 18}
!154 = !{ptr @si5341_reg_rdiv_offset, !155, !"si5341_reg_rdiv_offset", i1 false, i1 false}
!155 = !{!"../drivers/clk/clk-si5341.c", i32 199, i32 18}
!156 = distinct !{null, !157, !"si5345_preamble", i1 false, i1 false}
!157 = !{!"../drivers/clk/clk-si5341.c", i32 1122, i32 40}
!158 = distinct !{null, !159, !"si5341_preamble", i1 false, i1 false}
!159 = !{!"../drivers/clk/clk-si5341.c", i32 1114, i32 40}
!160 = !{ptr @.str.78, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/clk/clk-si5341.c", i32 1104, i32 4}
!162 = !{ptr @.str.79, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @si5341_write_multiple._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @si5341_write_multiple._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @si5341_reg_defaults, !166, !"si5341_reg_defaults", i1 false, i1 false}
!166 = !{!"../drivers/clk/clk-si5341.c", i32 224, i32 40}
!167 = !{ptr @.str.80, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/clk/clk-si5341.c", i32 1432, i32 3}
!169 = !{ptr @.str.81, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.82, !168, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @si5341_clk_select_active_input.__UNIQUE_ID_ddebug290, !168, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!172 = !{ptr @.str.83, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/clk/clk-si5341.c", i32 1442, i32 4}
!174 = !{ptr @si5341_clk_select_active_input._entry, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @si5341_clk_select_active_input._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.84, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/clk/clk-si5341.c", i32 1396, i32 31}
!178 = !{ptr @.str.85, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/clk/clk-si5341.c", i32 1397, i32 3}
!180 = !{ptr @.str.86, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @si5341_initialize_pll._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @si5341_initialize_pll._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.87, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/clk/clk-si5341.c", i32 1400, i32 31}
!185 = !{ptr @.str.89, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/clk/clk-si5341.c", i32 1401, i32 3}
!187 = !{ptr @si5341_initialize_pll._entry.88, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @si5341_initialize_pll._entry_ptr.90, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.92, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/clk/clk-si5341.c", i32 1406, i32 3}
!191 = !{ptr @si5341_initialize_pll._entry.91, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @si5341_initialize_pll._entry_ptr.93, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @si5341_clk_ops, !194, !"si5341_clk_ops", i1 false, i1 false}
!194 = !{!"../drivers/clk/clk-si5341.c", i32 553, i32 29}
!195 = !{ptr @si5341_synth_clk_ops, !196, !"si5341_synth_clk_ops", i1 false, i1 false}
!196 = !{!"../drivers/clk/clk-si5341.c", i32 738, i32 29}
!197 = !{ptr @.str.94, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/clk/clk-si5341.c", i32 730, i32 2}
!199 = !{ptr @.str.95, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @si5341_synth_clk_set_rate.__UNIQUE_ID_ddebug288, !198, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!201 = !{ptr @.str.96, !198, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @.str.97, !198, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @si5341_output_clk_ops, !204, !"si5341_output_clk_ops", i1 false, i1 false}
!204 = !{!"../drivers/clk/clk-si5341.c", i32 925, i32 29}
!205 = !{ptr @.str.98, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/clk/clk-si5341.c", i32 966, i32 4}
!207 = !{ptr @.str.99, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @of_clk_si5341_get._entry, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @of_clk_si5341_get._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.101, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/clk/clk-si5341.c", i32 973, i32 4}
!212 = !{ptr @of_clk_si5341_get._entry.100, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @of_clk_si5341_get._entry_ptr.102, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.104, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/clk/clk-si5341.c", i32 980, i32 4}
!216 = !{ptr @of_clk_si5341_get._entry.103, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @of_clk_si5341_get._entry_ptr.105, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.107, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/clk/clk-si5341.c", i32 986, i32 3}
!220 = !{ptr @of_clk_si5341_get._entry.106, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @of_clk_si5341_get._entry_ptr.108, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.109, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/clk/clk-si5341.c", i32 1173, i32 2}
!224 = !{ptr @.str.110, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @si5341_finalize_defaults.__UNIQUE_ID_ddebug289, !223, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!226 = !{ptr @si5341_attributes, !227, !"si5341_attributes", i1 false, i1 false}
!227 = !{!"../drivers/clk/clk-si5341.c", i32 1539, i32 32}
!228 = !{ptr @.str.111, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/clk/clk-si5341.c", i32 1473, i32 8}
!230 = !{ptr @dev_attr_input_present, !229, !"dev_attr_input_present", i1 false, i1 false}
!231 = !{ptr @.str.112, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/clk/clk-si5341.c", i32 1471, i32 34}
!233 = !{ptr @.str.113, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/clk/clk-si5341.c", i32 1488, i32 8}
!235 = !{ptr @dev_attr_input_present_sticky, !234, !"dev_attr_input_present_sticky", i1 false, i1 false}
!236 = !{ptr @.str.114, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/clk/clk-si5341.c", i32 1503, i32 8}
!238 = !{ptr @dev_attr_pll_locked, !237, !"dev_attr_pll_locked", i1 false, i1 false}
!239 = !{ptr @.str.115, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/clk/clk-si5341.c", i32 1518, i32 8}
!241 = !{ptr @dev_attr_pll_locked_sticky, !240, !"dev_attr_pll_locked_sticky", i1 false, i1 false}
!242 = !{ptr @.str.116, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/clk/clk-si5341.c", i32 1537, i32 8}
!244 = !{ptr @dev_attr_clear_sticky, !243, !"dev_attr_clear_sticky", i1 false, i1 false}
!245 = !{ptr @clk_si5341_of_match, !246, !"clk_si5341_of_match", i1 false, i1 false}
!246 = !{!"../drivers/clk/clk-si5341.c", i32 1823, i32 34}
!247 = !{ptr @si5341_id, !248, !"si5341_id", i1 false, i1 false}
!248 = !{!"../drivers/clk/clk-si5341.c", i32 1813, i32 35}
!249 = !{i32 1, !"wchar_size", i32 2}
!250 = !{i32 1, !"min_enum_size", i32 4}
!251 = !{i32 8, !"branch-target-enforcement", i32 0}
!252 = !{i32 8, !"sign-return-address", i32 0}
!253 = !{i32 8, !"sign-return-address-all", i32 0}
!254 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!255 = !{i32 7, !"uwtable", i32 1}
!256 = !{i32 7, !"frame-pointer", i32 2}
!257 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!258 = !{!"auto-init"}
!259 = !{i8 0, i8 2}
!260 = !{i64 2148767507, i64 2148767512, i64 2148767525, i64 2148767569, i64 2148767603, i64 2148767624}
!261 = !{!"branch_weights", i32 2000, i32 1}
!262 = !{i64 2148676226, i64 2148676506, i64 2148676840, i64 2148677174}
!263 = !{i64 1190682, i64 1190709, i64 1190731, i64 1190759}
!264 = !{i64 1191090, i64 1191117, i64 1191150, i64 1191171, i64 1191198, i64 1191224}
!265 = !{i64 1190565, i64 1190592}
!266 = !{i64 1190905, i64 1190932, i64 1190966, i64 1190987}
