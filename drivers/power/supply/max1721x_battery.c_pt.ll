; ModuleID = '/llk/IR_all_yes/drivers/power/supply/max1721x_battery.c_pt.bc'
source_filename = "../drivers/power/supply/max1721x_battery.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.w1_family = type { %struct.list_head, i8, ptr, ptr, %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.w1_family_ops = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.w1_slave = type { ptr, [32 x i8], %struct.list_head, %struct.w1_reg_num, %struct.atomic_t, i32, i32, ptr, ptr, ptr, %struct.device, ptr }
%struct.w1_reg_num = type { i64 }
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
%struct.max17211_device_info = type { [32 x i8], ptr, %struct.power_supply_desc, ptr, ptr, i32, [11 x i8], [7 x i8], [13 x i8] }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }

@__initcall__kmod_max1721x_battery__183_443_w1_max1721x_family_init6 = internal global ptr @w1_max1721x_family_init, section ".initcall6.init", align 4
@w1_max1721x_family = internal global { %struct.w1_family, [40 x i8] } { %struct.w1_family { %struct.list_head zeroinitializer, i8 38, ptr @w1_max1721x_fops, ptr null, %struct.atomic_t zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@__exitcall_w1_max1721x_family_exit = internal global ptr @w1_max1721x_family_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file184 = internal constant [60 x i8] c"max1721x_battery.file=drivers/power/supply/max1721x_battery\00", section ".modinfo", align 1
@__UNIQUE_ID_license185 = internal constant [29 x i8] c"max1721x_battery.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author186 = internal constant [65 x i8] c"max1721x_battery.author=Alex A. Mihaylov <minimumlaw@rambler.ru>\00", section ".modinfo", align 1
@__UNIQUE_ID_description187 = internal constant [75 x i8] c"max1721x_battery.description=Maxim MAX17211/MAX17215 Fuel Gauage IC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias188 = internal constant [38 x i8] c"max1721x_battery.alias=w1-family-0x26\00", section ".modinfo", align 1
@w1_max1721x_fops = internal constant { %struct.w1_family_ops, [16 x i8] } { %struct.w1_family_ops { ptr @devm_w1_max1721x_add_device, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max1721x-%012X\00", [17 x i8] zeroinitializer }, align 32
@max1721x_battery_props = internal global { [13 x i32], [44 x i8] } { [13 x i32] [i32 3, i32 47, i32 12, i32 22, i32 27, i32 61, i32 63, i32 52, i32 17, i32 18, i32 73, i32 74, i32 75], [44 x i8] zeroinitializer }, align 32
@devm_w1_max1721x_add_device._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@max1721x_regmap_w1_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 495, ptr null, ptr @max1721x_regs, ptr @max1721x_volatile_regs, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"max1721x_battery:358:(&max1721x_regmap_w1_config)->lock\00", [40 x i8] zeroinitializer }, align 32
@devm_w1_max1721x_add_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 363, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"devm_w1_max1721x_add_device\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/power/supply/max1721x_battery.c\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@devm_w1_max1721x_add_device._entry_ptr = internal global ptr @devm_w1_max1721x_add_device._entry, section ".printk_index", align 4
@devm_w1_max1721x_add_device._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 370, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Can't read RSense. Hardware error.\0A\00", [60 x i8] zeroinitializer }, align 32
@devm_w1_max1721x_add_device._entry_ptr.9 = internal global ptr @devm_w1_max1721x_add_device._entry.7, section ".printk_index", align 4
@devm_w1_max1721x_add_device._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 375, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"RSense not calibrated, set 10 mOhms!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@devm_w1_max1721x_add_device._entry_ptr.13 = internal global ptr @devm_w1_max1721x_add_device._entry.10, section ".printk_index", align 4
@devm_w1_max1721x_add_device._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 378, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RSense: %d mOhms.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@devm_w1_max1721x_add_device._entry_ptr.17 = internal global ptr @devm_w1_max1721x_add_device._entry.14, section ".printk_index", align 4
@devm_w1_max1721x_add_device._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 382, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Can't read manufacturer. Hardware error.\0A\00", [54 x i8] zeroinitializer }, align 32
@devm_w1_max1721x_add_device._entry_ptr.20 = internal global ptr @devm_w1_max1721x_add_device._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MAXIM\00", [26 x i8] zeroinitializer }, align 32
@devm_w1_max1721x_add_device._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 392, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Can't read device. Hardware error.\0A\00", [60 x i8] zeroinitializer }, align 32
@devm_w1_max1721x_add_device._entry_ptr.24 = internal global ptr @devm_w1_max1721x_add_device._entry.22, section ".printk_index", align 4
@devm_w1_max1721x_add_device._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 400, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Can't read device name reg.\0A\00", [35 x i8] zeroinitializer }, align 32
@devm_w1_max1721x_add_device._entry_ptr.27 = internal global ptr @devm_w1_max1721x_add_device._entry.25, section ".printk_index", align 4
@devm_w1_max1721x_add_device._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.3, ptr @.str.4, i32 420, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Can't read serial. Hardware error.\0A\00", [60 x i8] zeroinitializer }, align 32
@devm_w1_max1721x_add_device._entry_ptr.33 = internal global ptr @devm_w1_max1721x_add_device._entry.31, section ".printk_index", align 4
@devm_w1_max1721x_add_device._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.3, ptr @.str.4, i32 427, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to register battery\0A\00", [36 x i8] zeroinitializer }, align 32
@devm_w1_max1721x_add_device._entry_ptr.36 = internal global ptr @devm_w1_max1721x_add_device._entry.34, section ".printk_index", align 4
@max1721x_regs = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @max1721x_allow_range, i32 3, ptr @max1721x_deny_range, i32 15 }, [16 x i8] zeroinitializer }, align 32
@max1721x_volatile_regs = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @max1721x_volatile_allow, i32 1, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@max1721x_allow_range = internal constant { [3 x %struct.regmap_range], [40 x i8] } { [3 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 223 }, %struct.regmap_range { i32 384, i32 479 }, %struct.regmap_range { i32 480, i32 495 }], [40 x i8] zeroinitializer }, align 32
@max1721x_deny_range = internal constant { [15 x %struct.regmap_range], [40 x i8] } { [15 x %struct.regmap_range] [%struct.regmap_range { i32 36, i32 38 }, %struct.regmap_range { i32 48, i32 49 }, %struct.regmap_range { i32 51, i32 52 }, %struct.regmap_range { i32 55, i32 55 }, %struct.regmap_range { i32 59, i32 60 }, %struct.regmap_range { i32 64, i32 65 }, %struct.regmap_range { i32 67, i32 68 }, %struct.regmap_range { i32 71, i32 73 }, %struct.regmap_range { i32 75, i32 76 }, %struct.regmap_range { i32 78, i32 175 }, %struct.regmap_range { i32 177, i32 179 }, %struct.regmap_range { i32 181, i32 183 }, %struct.regmap_range { i32 191, i32 208 }, %struct.regmap_range { i32 219, i32 219 }, %struct.regmap_range { i32 224, i32 383 }], [40 x i8] zeroinitializer }, align 32
@max1721x_volatile_allow = internal constant { [1 x %struct.regmap_range], [24 x i8] } { [1 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 223 }], [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%04X%04X%04X\00", [19 x i8] zeroinitializer }, align 32
@str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MAX17215\00\00\00", [21 x i8] zeroinitializer }, align 32
@str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MAX17211\00\00\00", [21 x i8] zeroinitializer }, align 32
@str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"UNKNOWN\00\00\00\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@__sancov_gen_cov_switch_values.40 = internal global [15 x i64] [i64 13, i64 32, i64 3, i64 12, i64 17, i64 18, i64 22, i64 27, i64 47, i64 52, i64 61, i64 63, i64 73, i64 74, i64 75]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 16, i64 460, i64 475]
@___asan_gen_.42 = private unnamed_addr constant [19 x i8] c"w1_max1721x_family\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 438, i32 25 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"w1_max1721x_fops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 434, i32 35 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 342, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [23 x i8] c"max1721x_battery_props\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 208, i32 35 }
@___asan_gen_.54 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [26 x i8] c"max1721x_regmap_w1_config\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 315, i32 35 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 357, i32 17 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 362, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 370, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 375, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 378, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 382, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 387, i32 35 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 392, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 400, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 420, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 427, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [14 x i8] c"max1721x_regs\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 292, i32 41 }
@___asan_gen_.141 = private unnamed_addr constant [23 x i8] c"max1721x_volatile_regs\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 307, i32 41 }
@___asan_gen_.144 = private unnamed_addr constant [21 x i8] c"max1721x_allow_range\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 266, i32 34 }
@___asan_gen_.147 = private unnamed_addr constant [20 x i8] c"max1721x_deny_range\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 272, i32 34 }
@___asan_gen_.150 = private unnamed_addr constant [24 x i8] c"max1721x_volatile_allow\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 303, i32 34 }
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.154 = private constant [43 x i8] c"../drivers/power/supply/max1721x_battery.c\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 259, i32 20 }
@___asan_gen_.156 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [7 x i8] c"str.38\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [7 x i8] c"str.39\00", align 1
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_alias188, ptr @__UNIQUE_ID_author186, ptr @__UNIQUE_ID_description187, ptr @__UNIQUE_ID_file184, ptr @__UNIQUE_ID_license185, ptr @__exitcall_w1_max1721x_family_exit, ptr @__initcall__kmod_max1721x_battery__183_443_w1_max1721x_family_init6, ptr @devm_w1_max1721x_add_device._entry, ptr @devm_w1_max1721x_add_device._entry.10, ptr @devm_w1_max1721x_add_device._entry.14, ptr @devm_w1_max1721x_add_device._entry.18, ptr @devm_w1_max1721x_add_device._entry.22, ptr @devm_w1_max1721x_add_device._entry.25, ptr @devm_w1_max1721x_add_device._entry.31, ptr @devm_w1_max1721x_add_device._entry.34, ptr @devm_w1_max1721x_add_device._entry.7, ptr @devm_w1_max1721x_add_device._entry_ptr, ptr @devm_w1_max1721x_add_device._entry_ptr.13, ptr @devm_w1_max1721x_add_device._entry_ptr.17, ptr @devm_w1_max1721x_add_device._entry_ptr.20, ptr @devm_w1_max1721x_add_device._entry_ptr.24, ptr @devm_w1_max1721x_add_device._entry_ptr.27, ptr @devm_w1_max1721x_add_device._entry_ptr.33, ptr @devm_w1_max1721x_add_device._entry_ptr.36, ptr @devm_w1_max1721x_add_device._entry_ptr.9, ptr @w1_max1721x_family_exit, ptr @w1_max1721x_family, ptr @w1_max1721x_fops, ptr @.str, ptr @max1721x_battery_props, ptr @devm_w1_max1721x_add_device._key, ptr @max1721x_regmap_w1_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.32, ptr @.str.35, ptr @max1721x_regs, ptr @max1721x_volatile_regs, ptr @max1721x_allow_range, ptr @max1721x_deny_range, ptr @max1721x_volatile_allow, ptr @.str.37, ptr @str, ptr @str.38, ptr @str.39], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_max1721x_family to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_max1721x_fops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1721x_battery_props to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devm_w1_max1721x_add_device._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1721x_regmap_w1_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devm_w1_max1721x_add_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devm_w1_max1721x_add_device._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devm_w1_max1721x_add_device._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devm_w1_max1721x_add_device._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devm_w1_max1721x_add_device._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devm_w1_max1721x_add_device._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devm_w1_max1721x_add_device._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devm_w1_max1721x_add_device._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devm_w1_max1721x_add_device._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1721x_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1721x_volatile_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1721x_allow_range to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1721x_deny_range to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1721x_volatile_allow to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_max1721x_family_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @w1_register_family(ptr noundef nonnull @w1_max1721x_family) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @w1_max1721x_family_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @w1_unregister_family(ptr noundef nonnull @w1_max1721x_family) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_unregister_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_register_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devm_w1_max1721x_add_device(ptr noundef %sl) #2 align 64 {
entry:
  %psy_cfg = alloca %struct.power_supply_config, align 4
  %dev_name = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #6
  %0 = call ptr @memset(ptr %psy_cfg, i32 0, i32 24)
  %dev = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 132, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup115_crit_edge, label %if.end

entry.cleanup115_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup115

if.end:                                           ; preds = %entry
  %family_data = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 9
  %1 = ptrtoint ptr %family_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %family_data, align 4
  %w1_dev = getelementptr inbounds %struct.max17211_device_info, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %w1_dev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %w1_dev, align 4
  %reg_num = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 3
  %3 = ptrtoint ptr %reg_num to i32
  call void @__asan_load8_noabort(i32 %3)
  %bf.load = load i64, ptr %reg_num, align 8
  %bf.lshr = lshr i64 %bf.load, 8
  %conv = trunc i64 %bf.lshr to i32
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call.i, i32 noundef 32, ptr noundef nonnull @.str, i32 noundef %conv)
  %bat_desc = getelementptr inbounds %struct.max17211_device_info, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %bat_desc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %bat_desc, align 4
  %no_thermal = getelementptr inbounds %struct.max17211_device_info, ptr %call.i, i32 0, i32 2, i32 11
  %5 = ptrtoint ptr %no_thermal to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %no_thermal, align 4
  %type = getelementptr inbounds %struct.max17211_device_info, ptr %call.i, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %type, align 4
  %properties = getelementptr inbounds %struct.max17211_device_info, ptr %call.i, i32 0, i32 2, i32 4
  %7 = ptrtoint ptr %properties to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @max1721x_battery_props, ptr %properties, align 4
  %num_properties = getelementptr inbounds %struct.max17211_device_info, ptr %call.i, i32 0, i32 2, i32 5
  %8 = ptrtoint ptr %num_properties to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 13, ptr %num_properties, align 4
  %get_property = getelementptr inbounds %struct.max17211_device_info, ptr %call.i, i32 0, i32 2, i32 6
  %9 = ptrtoint ptr %get_property to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @max1721x_battery_get_property, ptr %get_property, align 4
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %10 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %drv_data, align 4
  %11 = ptrtoint ptr %w1_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %w1_dev, align 4
  %call12 = tail call ptr @__devm_regmap_init_w1(ptr noundef %12, ptr noundef nonnull @max1721x_regmap_w1_config, ptr noundef nonnull @devm_w1_max1721x_add_device._key, ptr noundef nonnull @.str.1) #6
  %regmap = getelementptr inbounds %struct.max17211_device_info, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call12, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %call12 to i32
  %15 = ptrtoint ptr %w1_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %w1_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.2, i32 noundef %14) #9
  br label %cleanup115

if.end19:                                         ; preds = %if.end
  %rsense = getelementptr inbounds %struct.max17211_device_info, ptr %call.i, i32 0, i32 5
  %17 = ptrtoint ptr %rsense to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %rsense, align 4
  %call22 = tail call i32 @regmap_read(ptr noundef %call12, i32 noundef 463, ptr noundef %rsense) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end29, label %do.end27

do.end27:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %w1_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %w1_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.8) #9
  br label %cleanup115

if.end29:                                         ; preds = %if.end19
  %20 = ptrtoint ptr %rsense to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rsense, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool31.not = icmp eq i32 %21, 0
  br i1 %tobool31.not, label %do.end35, label %if.end29.do.end41_crit_edge

if.end29.do.end41_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end41

do.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %w1_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %w1_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.11) #9
  %24 = ptrtoint ptr %rsense to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1000, ptr %rsense, align 4
  br label %do.end41

do.end41:                                         ; preds = %do.end35, %if.end29.do.end41_crit_edge
  %25 = ptrtoint ptr %w1_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %w1_dev, align 4
  %27 = ptrtoint ptr %rsense to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rsense, align 4
  %div = udiv i32 %28, 100
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.15, i32 noundef %div) #9
  %ManufacturerName = getelementptr inbounds %struct.max17211_device_info, ptr %call.i, i32 0, i32 7
  %call45 = tail call fastcc i32 @get_string(ptr noundef nonnull %call.i, i16 noundef zeroext 460, i8 noundef zeroext 3, ptr noundef %ManufacturerName)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end52, label %do.end50

do.end50:                                         ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %w1_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %w1_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.19) #9
  br label %cleanup115

if.end52:                                         ; preds = %do.end41
  %31 = ptrtoint ptr %ManufacturerName to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ManufacturerName, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool54.not = icmp eq i8 %32, 0
  br i1 %tobool54.not, label %if.then55, label %if.end52.if.end59_crit_edge

if.end52.if.end59_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %33 = call ptr @memcpy(ptr %ManufacturerName, ptr @.str.21, i32 6)
  br label %if.end59

if.end59:                                         ; preds = %if.then55, %if.end52.if.end59_crit_edge
  %DeviceName = getelementptr inbounds %struct.max17211_device_info, ptr %call.i, i32 0, i32 6
  %call61 = tail call fastcc i32 @get_string(ptr noundef nonnull %call.i, i16 noundef zeroext 475, i8 noundef zeroext 5, ptr noundef %DeviceName)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end68, label %do.end66

do.end66:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %w1_dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %w1_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.23) #9
  br label %cleanup115

if.end68:                                         ; preds = %if.end59
  %36 = ptrtoint ptr %DeviceName to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %DeviceName, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool71.not = icmp eq i8 %37, 0
  br i1 %tobool71.not, label %if.then72, label %if.end68.if.end92_crit_edge

if.end68.if.end92_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

if.then72:                                        ; preds = %if.end68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev_name) #6
  %38 = ptrtoint ptr %dev_name to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %dev_name, align 4, !annotation !96
  %39 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap, align 4
  %call74 = call i32 @regmap_read(ptr noundef %40, i32 noundef 33, ptr noundef nonnull %dev_name) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end81, label %do.end79

do.end79:                                         ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %w1_dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %w1_dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.26) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev_name) #6
  br label %cleanup115

if.end81:                                         ; preds = %if.then72
  %43 = ptrtoint ptr %dev_name to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dev_name, align 4
  %and = and i32 %44, 15
  %45 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %sw.default [
    i32 1, label %sw.bb
    i32 5, label %sw.bb85
  ]

sw.bb:                                            ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  %46 = call ptr @memcpy(ptr %DeviceName, ptr @str.38, i32 10)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev_name) #6
  br label %if.end92

sw.bb85:                                          ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  %47 = call ptr @memcpy(ptr %DeviceName, ptr @str, i32 10)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev_name) #6
  br label %if.end92

sw.default:                                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  %48 = call ptr @memcpy(ptr %DeviceName, ptr @str.39, i32 10)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev_name) #6
  br label %if.end92

if.end92:                                         ; preds = %sw.default, %sw.bb85, %sw.bb, %if.end68.if.end92_crit_edge
  %SerialNumber = getelementptr inbounds %struct.max17211_device_info, ptr %call.i, i32 0, i32 8
  %call94 = call fastcc i32 @get_sn_string(ptr noundef nonnull %call.i, ptr noundef %SerialNumber)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end101, label %do.end99

do.end99:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %w1_dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %w1_dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.32) #9
  br label %cleanup115

if.end101:                                        ; preds = %if.end92
  %call104 = call ptr @devm_power_supply_register(ptr noundef %dev, ptr noundef %bat_desc, ptr noundef nonnull %psy_cfg) #6
  %bat = getelementptr inbounds %struct.max17211_device_info, ptr %call.i, i32 0, i32 1
  %51 = ptrtoint ptr %bat to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call104, ptr %bat, align 4
  %cmp.i171 = icmp ugt ptr %call104, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i171, label %do.end110, label %if.end101.cleanup115_crit_edge

if.end101.cleanup115_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup115

do.end110:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %w1_dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %w1_dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.35) #9
  %54 = ptrtoint ptr %bat to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bat, align 4
  %56 = ptrtoint ptr %55 to i32
  br label %cleanup115

cleanup115:                                       ; preds = %do.end110, %if.end101.cleanup115_crit_edge, %do.end99, %do.end79, %do.end66, %do.end50, %do.end27, %if.then15, %entry.cleanup115_crit_edge
  %retval.1 = phi i32 [ %14, %if.then15 ], [ -19, %do.end27 ], [ -19, %do.end50 ], [ -19, %do.end66 ], [ -19, %do.end99 ], [ %56, %do.end110 ], [ -12, %entry.cleanup115_crit_edge ], [ -19, %do.end79 ], [ 0, %if.end101.cleanup115_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #6
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max1721x_battery_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reg, align 4
  %1 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %psp, label %entry.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 47, label %sw.bb3
    i32 12, label %sw.bb7
    i32 22, label %sw.bb11
    i32 27, label %sw.bb15
    i32 61, label %sw.bb19
    i32 63, label %sw.bb23
    i32 52, label %sw.bb27
    i32 17, label %sw.bb31
    i32 18, label %sw.bb35
    i32 73, label %sw.bb41
    i32 74, label %sw.bb44
    i32 75, label %sw.bb48
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %regmap = getelementptr inbounds %struct.max17211_device_info, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cond.false, label %sw.bb.cond.end_crit_edge

sw.bb.cond.end_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg, align 4
  %and = lshr i32 %5, 4
  %and.lobit = and i32 %and, 1
  %6 = xor i32 %and.lobit, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %sw.bb.cond.end_crit_edge
  %cond = phi i32 [ %6, %cond.false ], [ 0, %sw.bb.cond.end_crit_edge ]
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond, ptr %val, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regmap4 = getelementptr inbounds %struct.max17211_device_info, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %regmap4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap4, align 4
  %call5 = call i32 @regmap_read(ptr noundef %9, i32 noundef 6, ptr noundef nonnull %reg) #6
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg, align 4
  %div1.i = lshr i32 %11, 8
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div1.i, ptr %val, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regmap8 = getelementptr inbounds %struct.max17211_device_info, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %regmap8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap8, align 4
  %call9 = call i32 @regmap_read(ptr noundef %14, i32 noundef 218, ptr noundef nonnull %reg) #6
  %15 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg, align 4
  %mul.i = mul i32 %16, 1250
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul.i, ptr %val, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regmap12 = getelementptr inbounds %struct.max17211_device_info, ptr %call.i, i32 0, i32 4
  %18 = ptrtoint ptr %regmap12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap12, align 4
  %call13 = call i32 @regmap_read(ptr noundef %19, i32 noundef 24, ptr noundef nonnull %reg) #6
  %20 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reg, align 4
  %mul.i81 = mul i32 %21, 500
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul.i81, ptr %val, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regmap16 = getelementptr inbounds %struct.max17211_device_info, ptr %call.i, i32 0, i32 4
  %23 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap16, align 4
  %call17 = call i32 @regmap_read(ptr noundef %24, i32 noundef 5, ptr noundef nonnull %reg) #6
  %25 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %reg, align 4
  %mul.i82 = mul i32 %26, 500
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul.i82, ptr %val, align 4
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regmap20 = getelementptr inbounds %struct.max17211_device_info, ptr %call.i, i32 0, i32 4
  %28 = ptrtoint ptr %regmap20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap20, align 4
  %call21 = call i32 @regmap_read(ptr noundef %29, i32 noundef 17, ptr noundef nonnull %reg) #6
  %30 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %reg, align 4
  %mul.i83 = mul i32 %31, 5625
  %div.i = udiv i32 %mul.i83, 1000
  %32 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %div.i, ptr %val, align 4
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regmap24 = getelementptr inbounds %struct.max17211_device_info, ptr %call.i, i32 0, i32 4
  %33 = ptrtoint ptr %regmap24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap24, align 4
  %call25 = call i32 @regmap_read(ptr noundef %34, i32 noundef 32, ptr noundef nonnull %reg) #6
  %35 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %reg, align 4
  %mul.i84 = mul i32 %36, 5625
  %div.i85 = udiv i32 %mul.i84, 1000
  %37 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %div.i85, ptr %val, align 4
  br label %sw.epilog

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regmap28 = getelementptr inbounds %struct.max17211_device_info, ptr %call.i, i32 0, i32 4
  %38 = ptrtoint ptr %regmap28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap28, align 4
  %call29 = call i32 @regmap_read(ptr noundef %39, i32 noundef 8, ptr noundef nonnull %reg) #6
  %40 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %reg, align 4
  %sext.i = shl i32 %41, 16
  %conv1.i = ashr exact i32 %sext.i, 16
  %mul.i86 = mul nsw i32 %conv1.i, 10
  %div.i87 = sdiv i32 %mul.i86, 256
  %42 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %div.i87, ptr %val, align 4
  br label %sw.epilog

sw.bb31:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regmap32 = getelementptr inbounds %struct.max17211_device_info, ptr %call.i, i32 0, i32 4
  %43 = ptrtoint ptr %regmap32 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap32, align 4
  %call33 = call i32 @regmap_read(ptr noundef %44, i32 noundef 10, ptr noundef nonnull %reg) #6
  %45 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %reg, align 4
  %sext.i88 = shl i32 %46, 16
  %conv1.i89 = ashr exact i32 %sext.i88, 16
  %mul.i90 = mul i32 %conv1.i89, 156252
  %rsense = getelementptr inbounds %struct.max17211_device_info, ptr %call.i, i32 0, i32 5
  %47 = ptrtoint ptr %rsense to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rsense, align 4
  %div = sdiv i32 %mul.i90, %48
  %49 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %div, ptr %val, align 4
  br label %sw.epilog

sw.bb35:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regmap36 = getelementptr inbounds %struct.max17211_device_info, ptr %call.i, i32 0, i32 4
  %50 = ptrtoint ptr %regmap36 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap36, align 4
  %call37 = call i32 @regmap_read(ptr noundef %51, i32 noundef 11, ptr noundef nonnull %reg) #6
  %52 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %reg, align 4
  %sext.i91 = shl i32 %53, 16
  %conv1.i92 = ashr exact i32 %sext.i91, 16
  %mul.i93 = mul i32 %conv1.i92, 156252
  %rsense39 = getelementptr inbounds %struct.max17211_device_info, ptr %call.i, i32 0, i32 5
  %54 = ptrtoint ptr %rsense39 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rsense39, align 4
  %div40 = sdiv i32 %mul.i93, %55
  %56 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %div40, ptr %val, align 4
  br label %sw.epilog

sw.bb41:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regmap42 = getelementptr inbounds %struct.max17211_device_info, ptr %call.i, i32 0, i32 4
  %57 = ptrtoint ptr %regmap42 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap42, align 4
  %call43 = call i32 @regmap_read(ptr noundef %58, i32 noundef 475, ptr noundef nonnull %reg) #6
  %DeviceName = getelementptr inbounds %struct.max17211_device_info, ptr %call.i, i32 0, i32 6
  %59 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %DeviceName, ptr %val, align 4
  br label %sw.epilog

sw.bb44:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regmap45 = getelementptr inbounds %struct.max17211_device_info, ptr %call.i, i32 0, i32 4
  %60 = ptrtoint ptr %regmap45 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap45, align 4
  %call46 = call i32 @regmap_read(ptr noundef %61, i32 noundef 460, ptr noundef nonnull %reg) #6
  %ManufacturerName = getelementptr inbounds %struct.max17211_device_info, ptr %call.i, i32 0, i32 7
  %62 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %ManufacturerName, ptr %val, align 4
  br label %sw.epilog

sw.bb48:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regmap49 = getelementptr inbounds %struct.max17211_device_info, ptr %call.i, i32 0, i32 4
  %63 = ptrtoint ptr %regmap49 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap49, align 4
  %call50 = call i32 @regmap_read(ptr noundef %64, i32 noundef 472, ptr noundef nonnull %reg) #6
  %SerialNumber = getelementptr inbounds %struct.max17211_device_info, ptr %call.i, i32 0, i32 8
  %65 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %SerialNumber, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb48, %sw.bb44, %sw.bb41, %sw.bb35, %sw.bb31, %sw.bb27, %sw.bb23, %sw.bb19, %sw.bb15, %sw.bb11, %sw.bb7, %sw.bb3, %cond.end, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call50, %sw.bb48 ], [ %call46, %sw.bb44 ], [ %call43, %sw.bb41 ], [ %call37, %sw.bb35 ], [ %call33, %sw.bb31 ], [ %call29, %sw.bb27 ], [ %call25, %sw.bb23 ], [ %call21, %sw.bb19 ], [ %call17, %sw.bb15 ], [ %call13, %sw.bb11 ], [ %call9, %sw.bb7 ], [ %call5, %sw.bb3 ], [ 0, %cond.end ], [ -22, %entry.sw.epilog_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_w1(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_string(ptr nocapture noundef readonly %info, i16 noundef zeroext %reg, i8 noundef zeroext %nr, ptr noundef writeonly %str) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !96
  %tobool.not = icmp eq ptr %str, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = zext i16 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.41)
  switch i16 %reg, label %lor.lhs.false.cleanup_crit_edge [
    i16 460, label %lor.lhs.false.if.end_crit_edge
    i16 475, label %lor.lhs.false.if.end_crit_edge25
  ]

lor.lhs.false.if.end_crit_edge25:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge25
  %regmap = getelementptr inbounds %struct.max17211_device_info, ptr %info, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %nr)
  %tobool6.not20 = icmp eq i8 %nr, 0
  br i1 %tobool6.not20, label %if.end.cleanup_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body:                                       ; preds = %if.end10.while.body_crit_edge, %if.end.while.body_crit_edge
  %dec23.in = phi i8 [ %dec23, %if.end10.while.body_crit_edge ], [ %nr, %if.end.while.body_crit_edge ]
  %str.addr.022 = phi ptr [ %incdec.ptr14, %if.end10.while.body_crit_edge ], [ %str, %if.end.while.body_crit_edge ]
  %reg.addr.021 = phi i16 [ %inc, %if.end10.while.body_crit_edge ], [ %reg, %if.end.while.body_crit_edge ]
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %conv7 = zext i16 %reg.addr.021 to i32
  %call = call i32 @regmap_read(ptr noundef %3, i32 noundef %conv7, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.end10, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %while.body
  %dec23 = add i8 %dec23.in, -1
  %inc = add i16 %reg.addr.021, 1
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  %shr = lshr i32 %5, 8
  %conv11 = trunc i32 %shr to i8
  %incdec.ptr = getelementptr i8, ptr %str.addr.022, i32 1
  %6 = ptrtoint ptr %str.addr.022 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv11, ptr %str.addr.022, align 1
  %conv13 = trunc i32 %5 to i8
  %incdec.ptr14 = getelementptr i8, ptr %str.addr.022, i32 2
  %7 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv13, ptr %incdec.ptr, align 1
  %tobool6.not = icmp eq i8 %dec23, 0
  br i1 %tobool6.not, label %if.end10.cleanup_crit_edge, label %if.end10.while.body_crit_edge

if.end10.while.body_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end10.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %lor.lhs.false.cleanup_crit_edge ], [ -14, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -14, %while.body.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_sn_string(ptr nocapture noundef readonly %info, ptr noundef writeonly %str) unnamed_addr #2 align 64 {
entry:
  %val = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !96
  %1 = getelementptr inbounds [3 x i32], ptr %val, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !96
  %3 = getelementptr inbounds [3 x i32], ptr %val, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !96
  %tobool.not = icmp eq ptr %str, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.max17211_device_info, ptr %info, i32 0, i32 4
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %6, i32 noundef 472, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call6 = call i32 @regmap_read(ptr noundef %8, i32 noundef 473, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call12 = call i32 @regmap_read(ptr noundef %10, i32 noundef 474, ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %3, align 4
  %call19 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %str, i32 noundef 13, ptr noundef nonnull @.str.37, i32 noundef %12, i32 noundef %14, i32 noundef %16)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end9.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -14, %entry.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -14, %if.end3.cleanup_crit_edge ], [ -14, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !51, !52, !53, !55, !56, !57, !59, !61, !63, !65, !66, !67, !69, !70, !71, !73, !75, !77, !79, !81, !83, !85}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @__initcall__kmod_max1721x_battery__183_443_w1_max1721x_family_init6, !1, !"__initcall__kmod_max1721x_battery__183_443_w1_max1721x_family_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/max1721x_battery.c", i32 443, i32 1}
!2 = !{ptr @__exitcall_w1_max1721x_family_exit, !1, !"__exitcall_w1_max1721x_family_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file184, !4, !"__UNIQUE_ID_file184", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/max1721x_battery.c", i32 445, i32 1}
!5 = !{ptr @__UNIQUE_ID_license185, !4, !"__UNIQUE_ID_license185", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author186, !7, !"__UNIQUE_ID_author186", i1 false, i1 false}
!7 = !{!"../drivers/power/supply/max1721x_battery.c", i32 446, i32 1}
!8 = !{ptr @__UNIQUE_ID_description187, !9, !"__UNIQUE_ID_description187", i1 false, i1 false}
!9 = !{!"../drivers/power/supply/max1721x_battery.c", i32 447, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias188, !11, !"__UNIQUE_ID_alias188", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/max1721x_battery.c", i32 448, i32 1}
!12 = !{ptr @w1_max1721x_family, !13, !"w1_max1721x_family", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/max1721x_battery.c", i32 438, i32 25}
!14 = !{ptr @w1_max1721x_fops, !15, !"w1_max1721x_fops", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/max1721x_battery.c", i32 434, i32 35}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/power/supply/max1721x_battery.c", i32 342, i32 3}
!18 = !{ptr @devm_w1_max1721x_add_device._key, !19, !"_key", i1 false, i1 false}
!19 = !{!"../drivers/power/supply/max1721x_battery.c", i32 357, i32 17}
!20 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/power/supply/max1721x_battery.c", i32 362, i32 3}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @devm_w1_max1721x_add_device._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @devm_w1_max1721x_add_device._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/power/supply/max1721x_battery.c", i32 370, i32 3}
!31 = !{ptr @devm_w1_max1721x_add_device._entry.7, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @devm_w1_max1721x_add_device._entry_ptr.9, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/power/supply/max1721x_battery.c", i32 375, i32 3}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @devm_w1_max1721x_add_device._entry.10, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @devm_w1_max1721x_add_device._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/power/supply/max1721x_battery.c", i32 378, i32 2}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @devm_w1_max1721x_add_device._entry.14, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @devm_w1_max1721x_add_device._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/power/supply/max1721x_battery.c", i32 382, i32 3}
!45 = !{ptr @devm_w1_max1721x_add_device._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @devm_w1_max1721x_add_device._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/power/supply/max1721x_battery.c", i32 387, i32 35}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/power/supply/max1721x_battery.c", i32 392, i32 3}
!51 = !{ptr @devm_w1_max1721x_add_device._entry.22, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @devm_w1_max1721x_add_device._entry_ptr.24, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/power/supply/max1721x_battery.c", i32 400, i32 4}
!55 = !{ptr @devm_w1_max1721x_add_device._entry.25, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @devm_w1_max1721x_add_device._entry_ptr.27, !54, !"_entry_ptr", i1 false, i1 false}
!57 = distinct !{null, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/power/supply/max1721x_battery.c", i32 406, i32 30}
!59 = distinct !{null, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/power/supply/max1721x_battery.c", i32 410, i32 30}
!61 = distinct !{null, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/power/supply/max1721x_battery.c", i32 414, i32 30}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/power/supply/max1721x_battery.c", i32 420, i32 3}
!65 = !{ptr @devm_w1_max1721x_add_device._entry.31, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @devm_w1_max1721x_add_device._entry_ptr.33, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/power/supply/max1721x_battery.c", i32 427, i32 3}
!69 = !{ptr @devm_w1_max1721x_add_device._entry.34, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @devm_w1_max1721x_add_device._entry_ptr.36, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @max1721x_battery_props, !72, !"max1721x_battery_props", i1 false, i1 false}
!72 = !{!"../drivers/power/supply/max1721x_battery.c", i32 208, i32 35}
!73 = !{ptr @max1721x_regmap_w1_config, !74, !"max1721x_regmap_w1_config", i1 false, i1 false}
!74 = !{!"../drivers/power/supply/max1721x_battery.c", i32 315, i32 35}
!75 = !{ptr @max1721x_regs, !76, !"max1721x_regs", i1 false, i1 false}
!76 = !{!"../drivers/power/supply/max1721x_battery.c", i32 292, i32 41}
!77 = !{ptr @max1721x_allow_range, !78, !"max1721x_allow_range", i1 false, i1 false}
!78 = !{!"../drivers/power/supply/max1721x_battery.c", i32 266, i32 34}
!79 = !{ptr @max1721x_deny_range, !80, !"max1721x_deny_range", i1 false, i1 false}
!80 = !{!"../drivers/power/supply/max1721x_battery.c", i32 272, i32 34}
!81 = !{ptr @max1721x_volatile_regs, !82, !"max1721x_volatile_regs", i1 false, i1 false}
!82 = !{!"../drivers/power/supply/max1721x_battery.c", i32 307, i32 41}
!83 = !{ptr @max1721x_volatile_allow, !84, !"max1721x_volatile_allow", i1 false, i1 false}
!84 = !{!"../drivers/power/supply/max1721x_battery.c", i32 303, i32 34}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/power/supply/max1721x_battery.c", i32 259, i32 20}
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
