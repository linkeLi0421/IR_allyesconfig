; ModuleID = '/llk/IR_all_yes/drivers/mfd/lm3533-core.c_pt.bc'
source_filename = "../drivers/mfd/lm3533-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+lm3533_read\22, \22a\22\09"
module asm "\09.weak\09__crc_lm3533_read\09\09\09\09"
module asm "\09.long\09__crc_lm3533_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lm3533_read:\09\09\09\09\09"
module asm "\09.asciz \09\22lm3533_read\22\09\09\09\09\09"
module asm "__kstrtabns_lm3533_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+lm3533_write\22, \22a\22\09"
module asm "\09.weak\09__crc_lm3533_write\09\09\09\09"
module asm "\09.long\09__crc_lm3533_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lm3533_write:\09\09\09\09\09"
module asm "\09.asciz \09\22lm3533_write\22\09\09\09\09\09"
module asm "__kstrtabns_lm3533_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+lm3533_update\22, \22a\22\09"
module asm "\09.weak\09__crc_lm3533_update\09\09\09\09"
module asm "\09.long\09__crc_lm3533_update\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lm3533_update:\09\09\09\09\09"
module asm "\09.asciz \09\22lm3533_update\22\09\09\09\09\09"
module asm "__kstrtabns_lm3533_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.lm3533_device_attribute = type { %struct.device_attribute, i32, %union.anon.87 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i8 }
%struct.lm3533 = type { ptr, ptr, i32, i32, i8 }
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
%struct.lm3533_platform_data = type { i32, i32, i32, ptr, ptr, i32, ptr, i32 }
%struct.lm3533_bl_platform_data = type { ptr, i16, i8, i8 }
%struct.lm3533_led_platform_data = type { ptr, ptr, i16, i8 }

@lm3533_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 91, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to read register %02x: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lm3533_read\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/mfd/lm3533-core.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lm3533_read._entry_ptr = internal global ptr @lm3533_read._entry, section ".printk_index", align 4
@lm3533_read.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lm3533_core\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"read [%02x]: %02x\0A\00", [45 x i8] zeroinitializer }, align 32
@__kstrtab_lm3533_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_lm3533_read = external dso_local constant [0 x i8], align 1
@__ksymtab_lm3533_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lm3533_read to i32), ptr @__kstrtab_lm3533_read, ptr @__kstrtabns_lm3533_read }, section "___ksymtab_gpl+lm3533_read", align 4
@lm3533_write.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lm3533_write\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"write [%02x]: %02x\0A\00", [44 x i8] zeroinitializer }, align 32
@lm3533_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 112, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to write register %02x: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@lm3533_write._entry_ptr = internal global ptr @lm3533_write._entry, section ".printk_index", align 4
@__kstrtab_lm3533_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_lm3533_write = external dso_local constant [0 x i8], align 1
@__ksymtab_lm3533_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lm3533_write to i32), ptr @__kstrtab_lm3533_write, ptr @__kstrtabns_lm3533_write }, section "___ksymtab_gpl+lm3533_write", align 4
@lm3533_update.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lm3533_update\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"update [%02x]: %02x/%02x\0A\00", [38 x i8] zeroinitializer }, align 32
@lm3533_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 128, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to update register %02x: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@lm3533_update._entry_ptr = internal global ptr @lm3533_update._entry, section ".printk_index", align 4
@__kstrtab_lm3533_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_lm3533_update = external dso_local constant [0 x i8], align 1
@__ksymtab_lm3533_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lm3533_update to i32), ptr @__kstrtab_lm3533_update, ptr @__kstrtabns_lm3533_update }, section "___ksymtab_gpl+lm3533_update", align 4
@__initcall__kmod_lm3533_core__295_640_lm3533_i2c_init4 = internal global ptr @lm3533_i2c_init, section ".initcall4.init", align 4
@lm3533_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @lm3533_i2c_probe, ptr @lm3533_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.13, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lm3533_i2c_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lm3533_i2c_exit = internal global ptr @lm3533_i2c_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author296 = internal constant [52 x i8] c"lm3533_core.author=Johan Hovold <jhovold@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description297 = internal constant [36 x i8] c"lm3533_core.description=LM3533 Core\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [41 x i8] c"lm3533_core.file=drivers/mfd/lm3533-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [24 x i8] c"lm3533_core.license=GPL\00", section ".modinfo", align 1
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lm3533\00", [25 x i8] zeroinitializer }, align 32
@lm3533_i2c_ids = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lm3533\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@lm3533_i2c_probe.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 -108, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lm3533_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@lm3533_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr @lm3533_readable_register, ptr @lm3533_volatile_register, ptr @lm3533_precious_register, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 178, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"lm3533_core:600:(&regmap_config)->lock\00", [57 x i8] zeroinitializer }, align 32
@lm3533_device_init.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.17, ptr @.str.2, ptr @.str.15, i8 0, i8 119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lm3533_device_init\00", [45 x i8] zeroinitializer }, align 32
@lm3533_device_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.17, ptr @.str.2, i32 482, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no platform data\0A\00", [46 x i8] zeroinitializer }, align 32
@lm3533_device_init._entry_ptr = internal global ptr @lm3533_device_init._entry, section ".printk_index", align 4
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lm3533-hwen\00", [20 x i8] zeroinitializer }, align 32
@lm3533_device_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.17, ptr @.str.2, i32 496, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to request HWEN GPIO %d\0A\00", [32 x i8] zeroinitializer }, align 32
@lm3533_device_init._entry_ptr.22 = internal global ptr @lm3533_device_init._entry.20, section ".printk_index", align 4
@lm3533_attribute_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @lm3533_attr_is_visible, ptr null, ptr @lm3533_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@lm3533_device_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.17, ptr @.str.2, i32 513, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to create sysfs attributes\0A\00", [61 x i8] zeroinitializer }, align 32
@lm3533_device_init._entry_ptr.25 = internal global ptr @lm3533_device_init._entry.23, section ".printk_index", align 4
@lm3533_set_boost_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 144, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to set boost frequency\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lm3533_set_boost_freq\00", [42 x i8] zeroinitializer }, align 32
@lm3533_set_boost_freq._entry_ptr = internal global ptr @lm3533_set_boost_freq._entry, section ".printk_index", align 4
@lm3533_set_boost_ovp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 159, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to set boost ovp\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lm3533_set_boost_ovp\00", [43 x i8] zeroinitializer }, align 32
@lm3533_set_boost_ovp._entry_ptr = internal global ptr @lm3533_set_boost_ovp._entry, section ".printk_index", align 4
@lm3533_als_devs = internal global { [1 x %struct.mfd_cell], [40 x i8] } { [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.32, i32 -1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [40 x i8] zeroinitializer }, align 32
@lm3533_device_als_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 395, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to add ALS device\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lm3533_device_als_init\00", [41 x i8] zeroinitializer }, align 32
@lm3533_device_als_init._entry_ptr = internal global ptr @lm3533_device_als_init._entry, section ".printk_index", align 4
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lm3533-als\00", [21 x i8] zeroinitializer }, align 32
@lm3533_bl_devs = internal global { [2 x %struct.mfd_cell], [48 x i8] } { [2 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.35, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.35, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [48 x i8] zeroinitializer }, align 32
@lm3533_device_bl_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 424, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to add backlight devices\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lm3533_device_bl_init\00", [42 x i8] zeroinitializer }, align 32
@lm3533_device_bl_init._entry_ptr = internal global ptr @lm3533_device_bl_init._entry, section ".printk_index", align 4
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lm3533-backlight\00", [47 x i8] zeroinitializer }, align 32
@lm3533_led_devs = internal global { [4 x %struct.mfd_cell], [64 x i8] } { [4 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.38, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.38, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.38, i32 2, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.38, i32 3, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [64 x i8] zeroinitializer }, align 32
@lm3533_device_led_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 453, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to add LED devices\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lm3533_device_led_init\00", [41 x i8] zeroinitializer }, align 32
@lm3533_device_led_init._entry_ptr = internal global ptr @lm3533_device_led_init._entry, section ".printk_index", align 4
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lm3533-leds\00", [20 x i8] zeroinitializer }, align 32
@lm3533_attributes = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @lm3533_dev_attr_output_hvled1, ptr @lm3533_dev_attr_output_hvled2, ptr @lm3533_dev_attr_output_lvled1, ptr @lm3533_dev_attr_output_lvled2, ptr @lm3533_dev_attr_output_lvled3, ptr @lm3533_dev_attr_output_lvled4, ptr @lm3533_dev_attr_output_lvled5, ptr null], [32 x i8] zeroinitializer }, align 32
@lm3533_dev_attr_output_hvled1 = internal global { %struct.lm3533_device_attribute, [60 x i8] } { %struct.lm3533_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_output, ptr @store_output }, i32 0, %union.anon.87 { %struct.anon.88 { i8 1 } } }, [60 x i8] zeroinitializer }, align 32
@lm3533_dev_attr_output_hvled2 = internal global { %struct.lm3533_device_attribute, [60 x i8] } { %struct.lm3533_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_output, ptr @store_output }, i32 0, %union.anon.87 { %struct.anon.88 { i8 2 } } }, [60 x i8] zeroinitializer }, align 32
@lm3533_dev_attr_output_lvled1 = internal global { %struct.lm3533_device_attribute, [60 x i8] } { %struct.lm3533_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_output, ptr @store_output }, i32 1, %union.anon.87 { %struct.anon.88 { i8 1 } } }, [60 x i8] zeroinitializer }, align 32
@lm3533_dev_attr_output_lvled2 = internal global { %struct.lm3533_device_attribute, [60 x i8] } { %struct.lm3533_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_output, ptr @store_output }, i32 1, %union.anon.87 { %struct.anon.88 { i8 2 } } }, [60 x i8] zeroinitializer }, align 32
@lm3533_dev_attr_output_lvled3 = internal global { %struct.lm3533_device_attribute, [60 x i8] } { %struct.lm3533_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_output, ptr @store_output }, i32 1, %union.anon.87 { %struct.anon.88 { i8 3 } } }, [60 x i8] zeroinitializer }, align 32
@lm3533_dev_attr_output_lvled4 = internal global { %struct.lm3533_device_attribute, [60 x i8] } { %struct.lm3533_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_output, ptr @store_output }, i32 1, %union.anon.87 { %struct.anon.88 { i8 4 } } }, [60 x i8] zeroinitializer }, align 32
@lm3533_dev_attr_output_lvled5 = internal global { %struct.lm3533_device_attribute, [60 x i8] } { %struct.lm3533_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_output, ptr @store_output }, i32 1, %union.anon.87 { %struct.anon.88 { i8 5 } } }, [60 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"output_hvled1\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@lm3533_set_hvled_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 186, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to set hvled config\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lm3533_set_hvled_config\00", [40 x i8] zeroinitializer }, align 32
@lm3533_set_hvled_config._entry_ptr = internal global ptr @lm3533_set_hvled_config._entry, section ".printk_index", align 4
@lm3533_set_lvled_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 221, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to set lvled config\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lm3533_set_lvled_config\00", [40 x i8] zeroinitializer }, align 32
@lm3533_set_lvled_config._entry_ptr = internal global ptr @lm3533_set_lvled_config._entry, section ".printk_index", align 4
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"output_hvled2\00", [18 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"output_lvled1\00", [18 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"output_lvled2\00", [18 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"output_lvled3\00", [18 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"output_lvled4\00", [18 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"output_lvled5\00", [18 x i8] zeroinitializer }, align 32
@lm3533_i2c_remove.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.51, ptr @.str.2, ptr @.str.15, i8 0, i8 -103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lm3533_i2c_remove\00", [46 x i8] zeroinitializer }, align 32
@lm3533_device_exit.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.52, ptr @.str.2, ptr @.str.15, i8 0, i8 -124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lm3533_device_exit\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [96 x i64] [i64 94, i64 32, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 96, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 103, i64 104, i64 105, i64 106, i64 107, i64 108, i64 109, i64 110, i64 112, i64 113, i64 114, i64 115, i64 116, i64 117, i64 128, i64 129, i64 130, i64 131, i64 132, i64 133, i64 144, i64 145, i64 146, i64 147, i64 148, i64 149, i64 160, i64 161, i64 162, i64 163, i64 164, i64 165, i64 176, i64 177, i64 178]
@__sancov_gen_cov_switch_values.53 = internal global [9 x i64] [i64 7, i64 32, i64 52, i64 53, i64 54, i64 55, i64 56, i64 176, i64 177]
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 90, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 97, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 107, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 111, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 123, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 127, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [18 x i8] c"lm3533_i2c_driver\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 627, i32 26 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 629, i32 14 }
@___asan_gen_.108 = private unnamed_addr constant [15 x i8] c"lm3533_i2c_ids\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 621, i32 35 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 592, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [14 x i8] c"regmap_config\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 578, i32 35 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 600, i32 19 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 479, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 482, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 492, i32 26 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 494, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant [23 x i8] c"lm3533_attribute_group\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 376, i32 31 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 513, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 144, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 159, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [16 x i8] c"lm3533_als_devs\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 46, i32 24 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 395, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 48, i32 11 }
@___asan_gen_.186 = private unnamed_addr constant [15 x i8] c"lm3533_bl_devs\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 53, i32 24 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 424, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 55, i32 11 }
@___asan_gen_.201 = private unnamed_addr constant [16 x i8] c"lm3533_led_devs\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 64, i32 24 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 453, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 66, i32 11 }
@___asan_gen_.216 = private unnamed_addr constant [18 x i8] c"lm3533_attributes\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 344, i32 26 }
@___asan_gen_.219 = private unnamed_addr constant [30 x i8] c"lm3533_dev_attr_output_hvled1\00", align 1
@___asan_gen_.222 = private unnamed_addr constant [30 x i8] c"lm3533_dev_attr_output_hvled2\00", align 1
@___asan_gen_.225 = private unnamed_addr constant [30 x i8] c"lm3533_dev_attr_output_lvled1\00", align 1
@___asan_gen_.228 = private unnamed_addr constant [30 x i8] c"lm3533_dev_attr_output_lvled2\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [30 x i8] c"lm3533_dev_attr_output_lvled3\00", align 1
@___asan_gen_.234 = private unnamed_addr constant [30 x i8] c"lm3533_dev_attr_output_lvled4\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [30 x i8] c"lm3533_dev_attr_output_lvled5\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 336, i32 8 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 289, i32 35 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 186, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 221, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 337, i32 8 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 338, i32 8 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 339, i32 8 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 340, i32 8 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 341, i32 8 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 342, i32 8 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 614, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.286 = private constant [29 x i8] c"../drivers/mfd/lm3533-core.c\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 529, i32 2 }
@llvm.compiler.used = appending global [101 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__exitcall_lm3533_i2c_exit, ptr @__initcall__kmod_lm3533_core__295_640_lm3533_i2c_init4, ptr @__ksymtab_lm3533_read, ptr @__ksymtab_lm3533_update, ptr @__ksymtab_lm3533_write, ptr @lm3533_device_als_init._entry, ptr @lm3533_device_als_init._entry_ptr, ptr @lm3533_device_bl_init._entry, ptr @lm3533_device_bl_init._entry_ptr, ptr @lm3533_device_init._entry, ptr @lm3533_device_init._entry.20, ptr @lm3533_device_init._entry.23, ptr @lm3533_device_init._entry_ptr, ptr @lm3533_device_init._entry_ptr.22, ptr @lm3533_device_init._entry_ptr.25, ptr @lm3533_device_led_init._entry, ptr @lm3533_device_led_init._entry_ptr, ptr @lm3533_i2c_exit, ptr @lm3533_read._entry, ptr @lm3533_read._entry_ptr, ptr @lm3533_set_boost_freq._entry, ptr @lm3533_set_boost_freq._entry_ptr, ptr @lm3533_set_boost_ovp._entry, ptr @lm3533_set_boost_ovp._entry_ptr, ptr @lm3533_set_hvled_config._entry, ptr @lm3533_set_hvled_config._entry_ptr, ptr @lm3533_set_lvled_config._entry, ptr @lm3533_set_lvled_config._entry_ptr, ptr @lm3533_update._entry, ptr @lm3533_update._entry_ptr, ptr @lm3533_write._entry, ptr @lm3533_write._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @lm3533_i2c_driver, ptr @.str.13, ptr @lm3533_i2c_ids, ptr @.str.14, ptr @.str.15, ptr @lm3533_i2c_probe._key, ptr @regmap_config, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @lm3533_attribute_group, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @lm3533_als_devs, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @lm3533_bl_devs, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @lm3533_led_devs, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @lm3533_attributes, ptr @lm3533_dev_attr_output_hvled1, ptr @lm3533_dev_attr_output_hvled2, ptr @lm3533_dev_attr_output_lvled1, ptr @lm3533_dev_attr_output_lvled2, ptr @lm3533_dev_attr_output_lvled3, ptr @lm3533_dev_attr_output_lvled4, ptr @lm3533_dev_attr_output_lvled5, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], section "llvm.metadata"
@0 = internal global [78 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_i2c_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_device_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_device_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_device_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_set_boost_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_set_boost_ovp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_devs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_device_als_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_bl_devs to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_device_bl_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_led_devs to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_device_led_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_attributes to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_dev_attr_output_hvled1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_dev_attr_output_hvled2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_dev_attr_output_lvled1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_dev_attr_output_lvled2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_dev_attr_output_lvled3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_dev_attr_output_lvled4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_dev_attr_output_lvled5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_set_hvled_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_set_lvled_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lm3533_read(ptr nocapture noundef readonly %lm3533, i8 noundef zeroext %reg, ptr nocapture noundef %val) #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #7
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !166
  %regmap = getelementptr inbounds %struct.lm3533, ptr %lm3533, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %conv = zext i8 %reg to i32
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %conv, ptr noundef nonnull %tmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %lm3533 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lm3533, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str, i32 noundef %conv, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tmp, align 4
  %conv3 = trunc i32 %6 to i8
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv3, ptr %val, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm3533_read.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lm3533_read, %if.then9)) #7
          to label %cleanup [label %if.then9], !srcloc !167

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %lm3533 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lm3533, align 4
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %val, align 1
  %conv12 = zext i8 %11 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm3533_read.__UNIQUE_ID_ddebug288, ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef %conv, i32 noundef %conv12) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #7
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lm3533_write(ptr nocapture noundef readonly %lm3533, i8 noundef zeroext %reg, i8 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm3533_write.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lm3533_write, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !167

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %lm3533 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lm3533, align 4
  %conv = zext i8 %reg to i32
  %conv3 = zext i8 %val to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm3533_write.__UNIQUE_ID_ddebug289, ptr noundef %1, ptr noundef nonnull @.str.8, i32 noundef %conv, i32 noundef %conv3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap = getelementptr inbounds %struct.lm3533, ptr %lm3533, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %conv4 = zext i8 %reg to i32
  %conv5 = zext i8 %val to i32
  %call6 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %conv4, i32 noundef %conv5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end11, label %do.end.if.end14_crit_edge

do.end.if.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

do.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %lm3533 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lm3533, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef %conv4, i32 noundef %call6) #10
  br label %if.end14

if.end14:                                         ; preds = %do.end11, %do.end.if.end14_crit_edge
  ret i32 %call6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lm3533_update(ptr nocapture noundef readonly %lm3533, i8 noundef zeroext %reg, i8 noundef zeroext %val, i8 noundef zeroext %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm3533_update.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lm3533_update, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !167

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %lm3533 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lm3533, align 4
  %conv = zext i8 %reg to i32
  %conv3 = zext i8 %val to i32
  %conv4 = zext i8 %mask to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm3533_update.__UNIQUE_ID_ddebug290, ptr noundef %1, ptr noundef nonnull @.str.11, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv4) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap = getelementptr inbounds %struct.lm3533, ptr %lm3533, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %conv5 = zext i8 %reg to i32
  %conv6 = zext i8 %mask to i32
  %conv7 = zext i8 %val to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %conv5, i32 noundef %conv6, i32 noundef %conv7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end13, label %do.end.if.end16_crit_edge

do.end.if.end16_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

do.end13:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %lm3533 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lm3533, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.12, i32 noundef %conv5, i32 noundef %call.i) #10
  br label %if.end16

if.end16:                                         ; preds = %do.end13, %do.end.if.end16_crit_edge
  ret i32 %call.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3533_i2c_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lm3533_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lm3533_i2c_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @lm3533_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3533_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm3533_i2c_probe.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lm3533_i2c_probe, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !167

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm3533_i2c_probe.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev3 = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev3, i32 noundef 20, i32 noundef 3520) #7
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call9 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @regmap_config, ptr noundef nonnull @lm3533_i2c_probe._key, ptr noundef nonnull @.str.16) #7
  %regmap = getelementptr inbounds %struct.lm3533, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call9, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev3, ptr %call.i, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %irq18 = getelementptr inbounds %struct.lm3533, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %irq18 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %irq18, align 4
  %call19 = tail call fastcc i32 @lm3533_device_init(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then12, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then12 ], [ %call19, %if.end15 ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3533_i2c_remove(ptr noundef %i2c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm3533_i2c_remove.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lm3533_i2c_remove, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !167

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm3533_i2c_remove.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.51) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm3533_device_exit.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lm3533_i2c_remove, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !167

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm3533_device_exit.__UNIQUE_ID_ddebug292, ptr noundef %3, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.52) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @sysfs_remove_group(ptr noundef %5, ptr noundef nonnull @lm3533_attribute_group) #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void @mfd_remove_devices(ptr noundef %7) #7
  %gpio_hwen.i.i = getelementptr inbounds %struct.lm3533, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %gpio_hwen.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gpio_hwen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %9)
  %10 = icmp ult i32 %9, 2048
  br i1 %10, label %if.then.i.i, label %do.end.i.lm3533_device_exit.exit_crit_edge

do.end.i.lm3533_device_exit.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm3533_device_exit.exit

if.then.i.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call ptr @gpio_to_desc(i32 noundef %9) #7
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i.i, i32 noundef 0) #7
  br label %lm3533_device_exit.exit

lm3533_device_exit.exit:                          ; preds = %if.then.i.i, %do.end.i.lm3533_device_exit.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lm3533_device_init(ptr noundef %lm3533) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lm3533 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lm3533, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm3533_device_init.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lm3533_device_init, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !167

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %lm3533 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lm3533, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm3533_device_init.__UNIQUE_ID_ddebug291, ptr noundef %5, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.17) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %do.end9, label %if.end11

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %lm3533 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lm3533, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.18) #10
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 4
  %gpio_hwen12 = getelementptr inbounds %struct.lm3533, ptr %lm3533, i32 0, i32 2
  %10 = ptrtoint ptr %gpio_hwen12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %gpio_hwen12, align 4
  %11 = ptrtoint ptr %lm3533 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lm3533, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %lm3533, ptr %driver_data.i, align 4
  %14 = load i32, ptr %gpio_hwen12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %14)
  %15 = icmp ult i32 %14, 2048
  br i1 %15, label %if.then16, label %if.end11.lm3533_enable.exit_crit_edge

if.end11.lm3533_enable.exit_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm3533_enable.exit

if.then16:                                        ; preds = %if.end11
  %16 = ptrtoint ptr %lm3533 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lm3533, align 4
  %call19 = tail call i32 @devm_gpio_request_one(ptr noundef %17, i32 noundef %14, i32 noundef 0, ptr noundef nonnull @.str.19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %do.end23, label %if.end27

do.end23:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %lm3533 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lm3533, align 4
  %20 = ptrtoint ptr %gpio_hwen12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %gpio_hwen12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.21, i32 noundef %21) #10
  br label %cleanup

if.end27:                                         ; preds = %if.then16
  %22 = ptrtoint ptr %gpio_hwen12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr = load i32, ptr %gpio_hwen12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %.pr)
  %23 = icmp ult i32 %.pr, 2048
  br i1 %23, label %if.then.i, label %if.end27.lm3533_enable.exit_crit_edge

if.end27.lm3533_enable.exit_crit_edge:            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm3533_enable.exit

if.then.i:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %.pr) #7
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i, i32 noundef 1) #7
  br label %lm3533_enable.exit

lm3533_enable.exit:                               ; preds = %if.then.i, %if.end27.lm3533_enable.exit_crit_edge, %if.end11.lm3533_enable.exit_crit_edge
  %boost_freq.i = getelementptr inbounds %struct.lm3533_platform_data, ptr %3, i32 0, i32 2
  %24 = ptrtoint ptr %boost_freq.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %boost_freq.i, align 4
  %call.i = tail call fastcc i32 @lm3533_set_boost_freq(ptr noundef %lm3533, i32 noundef %25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lm3533_device_setup.exit, label %lm3533_enable.exit.err_disable_crit_edge

lm3533_enable.exit.err_disable_crit_edge:         ; preds = %lm3533_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable

lm3533_device_setup.exit:                         ; preds = %lm3533_enable.exit
  %boost_ovp.i = getelementptr inbounds %struct.lm3533_platform_data, ptr %3, i32 0, i32 1
  %26 = ptrtoint ptr %boost_ovp.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %boost_ovp.i, align 4
  %call1.i = tail call fastcc i32 @lm3533_set_boost_ovp(ptr noundef %lm3533, i32 noundef %27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool29.not = icmp eq i32 %call1.i, 0
  br i1 %tobool29.not, label %if.end31, label %lm3533_device_setup.exit.err_disable_crit_edge

lm3533_device_setup.exit.err_disable_crit_edge:   ; preds = %lm3533_device_setup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable

if.end31:                                         ; preds = %lm3533_device_setup.exit
  %28 = ptrtoint ptr %lm3533 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lm3533, align 4
  %platform_data.i.i = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %platform_data.i.i, align 8
  %als.i = getelementptr inbounds %struct.lm3533_platform_data, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %als.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %als.i, align 4
  %tobool.not.i72 = icmp eq ptr %33, null
  br i1 %tobool.not.i72, label %if.end31.lm3533_device_als_init.exit_crit_edge, label %if.end.i73

if.end31.lm3533_device_als_init.exit_crit_edge:   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm3533_device_als_init.exit

if.end.i73:                                       ; preds = %if.end31
  store ptr %33, ptr getelementptr inbounds ([1 x %struct.mfd_cell], ptr @lm3533_als_devs, i32 0, i32 0, i32 7), align 4
  store i32 4, ptr getelementptr inbounds ([1 x %struct.mfd_cell], ptr @lm3533_als_devs, i32 0, i32 0, i32 8), align 8
  %34 = ptrtoint ptr %lm3533 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lm3533, align 4
  %call3.i = tail call i32 @mfd_add_devices(ptr noundef %35, i32 noundef 0, ptr noundef nonnull @lm3533_als_devs, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end7.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %lm3533 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lm3533, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.30) #10
  br label %lm3533_device_als_init.exit

if.end7.i:                                        ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #9
  %have_als.i = getelementptr inbounds %struct.lm3533, ptr %lm3533, i32 0, i32 4
  %38 = ptrtoint ptr %have_als.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load.i = load i8, ptr %have_als.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %have_als.i, align 4
  br label %lm3533_device_als_init.exit

lm3533_device_als_init.exit:                      ; preds = %if.end7.i, %do.end.i, %if.end31.lm3533_device_als_init.exit_crit_edge
  %39 = ptrtoint ptr %lm3533 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lm3533, align 4
  %platform_data.i.i74 = getelementptr inbounds %struct.device, ptr %40, i32 0, i32 7
  %41 = ptrtoint ptr %platform_data.i.i74 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %platform_data.i.i74, align 8
  %backlights.i = getelementptr inbounds %struct.lm3533_platform_data, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %backlights.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %backlights.i, align 4
  %tobool.not.i75 = icmp eq ptr %44, null
  br i1 %tobool.not.i75, label %lm3533_device_als_init.exit.lm3533_device_bl_init.exit_crit_edge, label %lor.lhs.false.i

lm3533_device_als_init.exit.lm3533_device_bl_init.exit_crit_edge: ; preds = %lm3533_device_als_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm3533_device_bl_init.exit

lor.lhs.false.i:                                  ; preds = %lm3533_device_als_init.exit
  %num_backlights.i = getelementptr inbounds %struct.lm3533_platform_data, ptr %42, i32 0, i32 5
  %45 = ptrtoint ptr %num_backlights.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_backlights.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp.i = icmp eq i32 %46, 0
  br i1 %cmp.i, label %lor.lhs.false.i.lm3533_device_bl_init.exit_crit_edge, label %if.end.i76

lor.lhs.false.i.lm3533_device_bl_init.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm3533_device_bl_init.exit

if.end.i76:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %cmp2.i = icmp ugt i32 %46, 2
  br i1 %cmp2.i, label %if.then3.i, label %if.end.i76.for.body.i.preheader_crit_edge

if.end.i76.for.body.i.preheader_crit_edge:        ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.preheader

if.then3.i:                                       ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %num_backlights.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 2, ptr %num_backlights.i, align 4
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.then3.i, %if.end.i76.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.02.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %48 = ptrtoint ptr %backlights.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %backlights.i, align 4
  %arrayidx.i = getelementptr %struct.lm3533_bl_platform_data, ptr %49, i32 %i.02.i
  %platform_data.i77 = getelementptr [2 x %struct.mfd_cell], ptr @lm3533_bl_devs, i32 0, i32 %i.02.i, i32 7
  %50 = ptrtoint ptr %platform_data.i77 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %arrayidx.i, ptr %platform_data.i77, align 4
  %pdata_size.i = getelementptr [2 x %struct.mfd_cell], ptr @lm3533_bl_devs, i32 0, i32 %i.02.i, i32 8
  %51 = ptrtoint ptr %pdata_size.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 8, ptr %pdata_size.i, align 8
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %52 = ptrtoint ptr %num_backlights.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_backlights.i, align 4
  %cmp7.i = icmp slt i32 %inc.i, %53
  br i1 %cmp7.i, label %for.body.i.for.body.i_crit_edge, label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %54 = ptrtoint ptr %lm3533 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %lm3533, align 4
  %call13.i = tail call i32 @mfd_add_devices(ptr noundef %55, i32 noundef 0, ptr noundef nonnull @lm3533_bl_devs, i32 noundef %53, ptr noundef null, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end17.i, label %do.end.i78

do.end.i78:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %lm3533 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %lm3533, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.33) #10
  br label %lm3533_device_bl_init.exit

if.end17.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %have_backlights.i = getelementptr inbounds %struct.lm3533, ptr %lm3533, i32 0, i32 4
  %58 = ptrtoint ptr %have_backlights.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load.i79 = load i8, ptr %have_backlights.i, align 4
  %bf.set.i80 = or i8 %bf.load.i79, 64
  store i8 %bf.set.i80, ptr %have_backlights.i, align 4
  br label %lm3533_device_bl_init.exit

lm3533_device_bl_init.exit:                       ; preds = %if.end17.i, %do.end.i78, %lor.lhs.false.i.lm3533_device_bl_init.exit_crit_edge, %lm3533_device_als_init.exit.lm3533_device_bl_init.exit_crit_edge
  %59 = ptrtoint ptr %lm3533 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %lm3533, align 4
  %platform_data.i.i81 = getelementptr inbounds %struct.device, ptr %60, i32 0, i32 7
  %61 = ptrtoint ptr %platform_data.i.i81 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %platform_data.i.i81, align 8
  %leds.i = getelementptr inbounds %struct.lm3533_platform_data, ptr %62, i32 0, i32 6
  %63 = ptrtoint ptr %leds.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %leds.i, align 4
  %tobool.not.i82 = icmp eq ptr %64, null
  br i1 %tobool.not.i82, label %lm3533_device_bl_init.exit.lm3533_device_led_init.exit_crit_edge, label %lor.lhs.false.i84

lm3533_device_bl_init.exit.lm3533_device_led_init.exit_crit_edge: ; preds = %lm3533_device_bl_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm3533_device_led_init.exit

lor.lhs.false.i84:                                ; preds = %lm3533_device_bl_init.exit
  %num_leds.i = getelementptr inbounds %struct.lm3533_platform_data, ptr %62, i32 0, i32 7
  %65 = ptrtoint ptr %num_leds.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %num_leds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp.i83 = icmp eq i32 %66, 0
  br i1 %cmp.i83, label %lor.lhs.false.i84.lm3533_device_led_init.exit_crit_edge, label %if.end.i86

lor.lhs.false.i84.lm3533_device_led_init.exit_crit_edge: ; preds = %lor.lhs.false.i84
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm3533_device_led_init.exit

if.end.i86:                                       ; preds = %lor.lhs.false.i84
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %66)
  %cmp2.i85 = icmp ugt i32 %66, 4
  br i1 %cmp2.i85, label %if.then3.i87, label %if.end.i86.for.body.i95.preheader_crit_edge

if.end.i86.for.body.i95.preheader_crit_edge:      ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i95.preheader

if.then3.i87:                                     ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %num_leds.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 4, ptr %num_leds.i, align 4
  br label %for.body.i95.preheader

for.body.i95.preheader:                           ; preds = %if.then3.i87, %if.end.i86.for.body.i95.preheader_crit_edge
  br label %for.body.i95

for.body.i95:                                     ; preds = %for.body.i95.for.body.i95_crit_edge, %for.body.i95.preheader
  %i.02.i89 = phi i32 [ %inc.i93, %for.body.i95.for.body.i95_crit_edge ], [ 0, %for.body.i95.preheader ]
  %68 = ptrtoint ptr %leds.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %leds.i, align 4
  %arrayidx.i90 = getelementptr %struct.lm3533_led_platform_data, ptr %69, i32 %i.02.i89
  %platform_data.i91 = getelementptr [4 x %struct.mfd_cell], ptr @lm3533_led_devs, i32 0, i32 %i.02.i89, i32 7
  %70 = ptrtoint ptr %platform_data.i91 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %arrayidx.i90, ptr %platform_data.i91, align 4
  %pdata_size.i92 = getelementptr [4 x %struct.mfd_cell], ptr @lm3533_led_devs, i32 0, i32 %i.02.i89, i32 8
  %71 = ptrtoint ptr %pdata_size.i92 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 12, ptr %pdata_size.i92, align 8
  %inc.i93 = add nuw nsw i32 %i.02.i89, 1
  %72 = ptrtoint ptr %num_leds.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %num_leds.i, align 4
  %cmp7.i94 = icmp slt i32 %inc.i93, %73
  br i1 %cmp7.i94, label %for.body.i95.for.body.i95_crit_edge, label %for.end.i98

for.body.i95.for.body.i95_crit_edge:              ; preds = %for.body.i95
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i95

for.end.i98:                                      ; preds = %for.body.i95
  %74 = ptrtoint ptr %lm3533 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %lm3533, align 4
  %call13.i96 = tail call i32 @mfd_add_devices(ptr noundef %75, i32 noundef 0, ptr noundef nonnull @lm3533_led_devs, i32 noundef %73, ptr noundef null, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i96)
  %tobool14.not.i97 = icmp eq i32 %call13.i96, 0
  br i1 %tobool14.not.i97, label %if.end17.i102, label %do.end.i99

do.end.i99:                                       ; preds = %for.end.i98
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %lm3533 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %lm3533, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.36) #10
  br label %lm3533_device_led_init.exit

if.end17.i102:                                    ; preds = %for.end.i98
  call void @__sanitizer_cov_trace_pc() #9
  %have_leds.i = getelementptr inbounds %struct.lm3533, ptr %lm3533, i32 0, i32 4
  %78 = ptrtoint ptr %have_leds.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load.i100 = load i8, ptr %have_leds.i, align 4
  %bf.set.i101 = or i8 %bf.load.i100, 32
  store i8 %bf.set.i101, ptr %have_leds.i, align 4
  br label %lm3533_device_led_init.exit

lm3533_device_led_init.exit:                      ; preds = %if.end17.i102, %do.end.i99, %lor.lhs.false.i84.lm3533_device_led_init.exit_crit_edge, %lm3533_device_bl_init.exit.lm3533_device_led_init.exit_crit_edge
  %79 = ptrtoint ptr %lm3533 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %lm3533, align 4
  %call36 = tail call i32 @sysfs_create_group(ptr noundef %80, ptr noundef nonnull @lm3533_attribute_group) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %do.end41, label %lm3533_device_led_init.exit.cleanup_crit_edge

lm3533_device_led_init.exit.cleanup_crit_edge:    ; preds = %lm3533_device_led_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end41:                                         ; preds = %lm3533_device_led_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %lm3533 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %lm3533, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.24) #10
  %83 = ptrtoint ptr %lm3533 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %lm3533, align 4
  tail call void @mfd_remove_devices(ptr noundef %84) #7
  br label %err_disable

err_disable:                                      ; preds = %do.end41, %lm3533_device_setup.exit.err_disable_crit_edge, %lm3533_enable.exit.err_disable_crit_edge
  %ret.0 = phi i32 [ %call1.i, %lm3533_device_setup.exit.err_disable_crit_edge ], [ %call36, %do.end41 ], [ %call.i, %lm3533_enable.exit.err_disable_crit_edge ]
  %85 = ptrtoint ptr %gpio_hwen12 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %gpio_hwen12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %86)
  %87 = icmp ult i32 %86, 2048
  br i1 %87, label %if.then.i105, label %err_disable.cleanup_crit_edge

err_disable.cleanup_crit_edge:                    ; preds = %err_disable
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i105:                                     ; preds = %err_disable
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i104 = tail call ptr @gpio_to_desc(i32 noundef %86) #7
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i104, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i105, %err_disable.cleanup_crit_edge, %lm3533_device_led_init.exit.cleanup_crit_edge, %do.end23, %do.end9
  %retval.0 = phi i32 [ %call19, %do.end23 ], [ -22, %do.end9 ], [ 0, %lm3533_device_led_init.exit.cleanup_crit_edge ], [ %ret.0, %err_disable.cleanup_crit_edge ], [ %ret.0, %if.then.i105 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @lm3533_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 176, label %entry.return_crit_edge
    i32 177, label %entry.return_crit_edge10
    i32 178, label %entry.return_crit_edge11
    i32 160, label %entry.return_crit_edge12
    i32 161, label %entry.return_crit_edge13
    i32 162, label %entry.return_crit_edge14
    i32 163, label %entry.return_crit_edge15
    i32 164, label %entry.return_crit_edge16
    i32 165, label %entry.return_crit_edge17
    i32 144, label %entry.return_crit_edge18
    i32 145, label %entry.return_crit_edge19
    i32 146, label %entry.return_crit_edge20
    i32 147, label %entry.return_crit_edge21
    i32 148, label %entry.return_crit_edge22
    i32 149, label %entry.return_crit_edge23
    i32 128, label %entry.return_crit_edge24
    i32 129, label %entry.return_crit_edge25
    i32 130, label %entry.return_crit_edge26
    i32 131, label %entry.return_crit_edge27
    i32 132, label %entry.return_crit_edge28
    i32 133, label %entry.return_crit_edge29
    i32 112, label %entry.return_crit_edge30
    i32 113, label %entry.return_crit_edge31
    i32 114, label %entry.return_crit_edge32
    i32 115, label %entry.return_crit_edge33
    i32 116, label %entry.return_crit_edge34
    i32 117, label %entry.return_crit_edge35
    i32 96, label %entry.return_crit_edge36
    i32 97, label %entry.return_crit_edge37
    i32 98, label %entry.return_crit_edge38
    i32 99, label %entry.return_crit_edge39
    i32 100, label %entry.return_crit_edge40
    i32 101, label %entry.return_crit_edge41
    i32 102, label %entry.return_crit_edge42
    i32 103, label %entry.return_crit_edge43
    i32 104, label %entry.return_crit_edge44
    i32 105, label %entry.return_crit_edge45
    i32 106, label %entry.return_crit_edge46
    i32 107, label %entry.return_crit_edge47
    i32 108, label %entry.return_crit_edge48
    i32 109, label %entry.return_crit_edge49
    i32 110, label %entry.return_crit_edge50
    i32 80, label %entry.return_crit_edge51
    i32 81, label %entry.return_crit_edge52
    i32 82, label %entry.return_crit_edge53
    i32 83, label %entry.return_crit_edge54
    i32 84, label %entry.return_crit_edge55
    i32 85, label %entry.return_crit_edge56
    i32 86, label %entry.return_crit_edge57
    i32 87, label %entry.return_crit_edge58
    i32 64, label %entry.return_crit_edge59
    i32 65, label %entry.return_crit_edge60
    i32 66, label %entry.return_crit_edge61
    i32 67, label %entry.return_crit_edge62
    i32 68, label %entry.return_crit_edge63
    i32 69, label %entry.return_crit_edge64
    i32 48, label %entry.return_crit_edge65
    i32 49, label %entry.return_crit_edge66
    i32 50, label %entry.return_crit_edge67
    i32 51, label %entry.return_crit_edge68
    i32 52, label %entry.return_crit_edge69
    i32 53, label %entry.return_crit_edge70
    i32 54, label %entry.return_crit_edge71
    i32 55, label %entry.return_crit_edge72
    i32 56, label %entry.return_crit_edge73
    i32 16, label %entry.return_crit_edge74
    i32 17, label %entry.return_crit_edge75
    i32 18, label %entry.return_crit_edge76
    i32 19, label %entry.return_crit_edge77
    i32 20, label %entry.return_crit_edge78
    i32 21, label %entry.return_crit_edge79
    i32 22, label %entry.return_crit_edge80
    i32 23, label %entry.return_crit_edge81
    i32 24, label %entry.return_crit_edge82
    i32 25, label %entry.return_crit_edge83
    i32 26, label %entry.return_crit_edge84
    i32 27, label %entry.return_crit_edge85
    i32 28, label %entry.return_crit_edge86
    i32 29, label %entry.return_crit_edge87
    i32 30, label %entry.return_crit_edge88
    i32 31, label %entry.return_crit_edge89
    i32 32, label %entry.return_crit_edge90
    i32 33, label %entry.return_crit_edge91
    i32 34, label %entry.return_crit_edge92
    i32 35, label %entry.return_crit_edge93
    i32 36, label %entry.return_crit_edge94
    i32 37, label %entry.return_crit_edge95
    i32 38, label %entry.return_crit_edge96
    i32 39, label %entry.return_crit_edge97
    i32 40, label %entry.return_crit_edge98
    i32 41, label %entry.return_crit_edge99
    i32 42, label %entry.return_crit_edge100
    i32 43, label %entry.return_crit_edge101
    i32 44, label %entry.return_crit_edge102
  ]

entry.return_crit_edge102:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge101:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge100:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge99:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge98:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge97:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge96:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge95:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge94:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge93:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge92:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge91:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge90:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge89:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge88:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge87:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge86:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge85:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge84:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge83:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge82:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge81:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge80:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge79:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge78:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge77:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88, %entry.return_crit_edge89, %entry.return_crit_edge90, %entry.return_crit_edge91, %entry.return_crit_edge92, %entry.return_crit_edge93, %entry.return_crit_edge94, %entry.return_crit_edge95, %entry.return_crit_edge96, %entry.return_crit_edge97, %entry.return_crit_edge98, %entry.return_crit_edge99, %entry.return_crit_edge100, %entry.return_crit_edge101, %entry.return_crit_edge102
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ true, %entry.return_crit_edge89 ], [ true, %entry.return_crit_edge90 ], [ true, %entry.return_crit_edge91 ], [ true, %entry.return_crit_edge92 ], [ true, %entry.return_crit_edge93 ], [ true, %entry.return_crit_edge94 ], [ true, %entry.return_crit_edge95 ], [ true, %entry.return_crit_edge96 ], [ true, %entry.return_crit_edge97 ], [ true, %entry.return_crit_edge98 ], [ true, %entry.return_crit_edge99 ], [ true, %entry.return_crit_edge100 ], [ true, %entry.return_crit_edge101 ], [ true, %entry.return_crit_edge102 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @lm3533_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %reg, label %sw.default [
    i32 176, label %entry.return_crit_edge
    i32 177, label %entry.return_crit_edge3
    i32 55, label %entry.return_crit_edge4
    i32 56, label %entry.return_crit_edge5
    i32 52, label %entry.return_crit_edge6
    i32 53, label %entry.return_crit_edge7
    i32 54, label %entry.return_crit_edge8
  ]

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @lm3533_precious_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %reg)
  %cond = icmp eq i32 %reg, 52
  ret i1 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lm3533_set_boost_freq(ptr nocapture noundef readonly %lm3533, i32 noundef %freq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm3533_update.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lm3533_set_boost_freq, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !167

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %lm3533 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lm3533, align 4
  %conv3.i = and i32 %freq, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm3533_update.__UNIQUE_ID_ddebug290, ptr noundef %1, ptr noundef nonnull @.str.11, i32 noundef 44, i32 noundef %conv3.i, i32 noundef 1) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %regmap.i = getelementptr inbounds %struct.lm3533, ptr %lm3533, i32 0, i32 1
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %conv7.i = and i32 %freq, 255
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 44, i32 noundef 1, i32 noundef %conv7.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %lm3533_update.exit.thread, label %lm3533_update.exit

lm3533_update.exit.thread:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %lm3533 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lm3533, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.12, i32 noundef 44, i32 noundef %call.i.i) #10
  br label %do.end

lm3533_update.exit:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %lm3533_update.exit.if.end_crit_edge, label %lm3533_update.exit.do.end_crit_edge

lm3533_update.exit.do.end_crit_edge:              ; preds = %lm3533_update.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lm3533_update.exit.if.end_crit_edge:              ; preds = %lm3533_update.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %lm3533_update.exit.do.end_crit_edge, %lm3533_update.exit.thread
  %6 = ptrtoint ptr %lm3533 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lm3533, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.26) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %lm3533_update.exit.if.end_crit_edge
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lm3533_set_boost_ovp(ptr nocapture noundef readonly %lm3533, i32 noundef %ovp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ovp.tr = trunc i32 %ovp to i8
  %conv = shl i8 %ovp.tr, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm3533_update.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lm3533_set_boost_ovp, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !167

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %lm3533 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lm3533, align 4
  %conv3.i = zext i8 %conv to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm3533_update.__UNIQUE_ID_ddebug290, ptr noundef %1, ptr noundef nonnull @.str.11, i32 noundef 44, i32 noundef %conv3.i, i32 noundef 6) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %regmap.i = getelementptr inbounds %struct.lm3533, ptr %lm3533, i32 0, i32 1
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %conv7.i = zext i8 %conv to i32
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 44, i32 noundef 6, i32 noundef %conv7.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %lm3533_update.exit.thread, label %lm3533_update.exit

lm3533_update.exit.thread:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %lm3533 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lm3533, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.12, i32 noundef 44, i32 noundef %call.i.i) #10
  br label %do.end

lm3533_update.exit:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %lm3533_update.exit.if.end_crit_edge, label %lm3533_update.exit.do.end_crit_edge

lm3533_update.exit.do.end_crit_edge:              ; preds = %lm3533_update.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lm3533_update.exit.if.end_crit_edge:              ; preds = %lm3533_update.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %lm3533_update.exit.do.end_crit_edge, %lm3533_update.exit.thread
  %6 = ptrtoint ptr %lm3533 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lm3533, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.28) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %lm3533_update.exit.if.end_crit_edge
  ret i32 %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @lm3533_attr_is_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, i32 noundef %n) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %type5 = getelementptr inbounds %struct.lm3533_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %type5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type5, align 4
  %have_backlights = getelementptr inbounds %struct.lm3533, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %have_backlights to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %have_backlights, align 4
  %5 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %entry.if.end15_crit_edge, label %if.else

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mode6 = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %6 = ptrtoint ptr %mode6 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mode6, align 4
  %8 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool11.not = icmp eq i8 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp13 = icmp eq i32 %3, 1
  %or.cond19 = select i1 %tobool11.not, i1 %cmp13, i1 false
  %spec.select = select i1 %or.cond19, i16 0, i16 %7
  br label %if.end15

if.end15:                                         ; preds = %if.else, %entry.if.end15_crit_edge
  %mode.0 = phi i16 [ 0, %entry.if.end15_crit_edge ], [ %spec.select, %if.else ]
  ret i16 %mode.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_output(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %u = getelementptr inbounds %struct.lm3533_device_attribute, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %u, align 4
  %conv = zext i8 %3 to i32
  %type = getelementptr inbounds %struct.lm3533_device_attribute, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub = add nsw i32 %conv, -1
  %shl = shl nuw i32 1, %sub
  br label %if.end12

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp4 = icmp ult i8 %3, 4
  %mul = shl nuw nsw i32 %conv, 1
  %mul9 = add nsw i32 %mul, -8
  %reg.0 = select i1 %cmp4, i32 16, i32 17
  %shift.0 = select i1 %cmp4, i32 %mul, i32 %mul9
  %shl10 = shl i32 3, %shift.0
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then
  %reg.1 = phi i32 [ 16, %if.then ], [ %reg.0, %if.else ]
  %mask.0.in = phi i32 [ %shl, %if.then ], [ %shl10, %if.else ]
  %shift.1 = phi i32 [ %sub, %if.then ], [ %shift.0, %if.else ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #7
  %6 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %tmp.i, align 4, !annotation !166
  %regmap.i = getelementptr inbounds %struct.lm3533, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %8, i32 noundef %reg.1, ptr noundef nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %lm3533_read.exit.thread, label %if.end.i

lm3533_read.exit.thread:                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str, i32 noundef %reg.1, i32 noundef %call.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end12
  %11 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tmp.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm3533_read.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@show_output, %if.then9.i)) #7
          to label %lm3533_read.exit [label %if.then9.i], !srcloc !167

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %conv12.i = and i32 %12, 255
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm3533_read.__UNIQUE_ID_ddebug288, ptr noundef %14, ptr noundef nonnull @.str.6, i32 noundef %reg.1, i32 noundef %conv12.i) #7
  br label %lm3533_read.exit

lm3533_read.exit:                                 ; preds = %if.then9.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end15, label %lm3533_read.exit.cleanup_crit_edge

lm3533_read.exit.cleanup_crit_edge:               ; preds = %lm3533_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %lm3533_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv16 = and i32 %12, 255
  %and = and i32 %conv16, %mask.0.in
  %shr = lshr i32 %and, %shift.1
  %call20 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.40, i32 noundef %shr) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %lm3533_read.exit.cleanup_crit_edge, %lm3533_read.exit.thread
  %retval.0 = phi i32 [ %call20, %if.end15 ], [ %call.i, %lm3533_read.exit.cleanup_crit_edge ], [ %call.i, %lm3533_read.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_output(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %u = getelementptr inbounds %struct.lm3533_device_attribute, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %u, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #7
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %val, align 1, !annotation !166
  %call2 = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.lm3533_device_attribute, ptr %attr, i32 0, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %val, align 1
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = call fastcc i32 @lm3533_set_hvled_config(ptr noundef %1, i8 noundef zeroext %3, i8 noundef zeroext %8)
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = call fastcc i32 @lm3533_set_lvled_config(ptr noundef %1, i8 noundef zeroext %3, i8 noundef zeroext %8)
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then4
  %ret.0 = phi i32 [ %call6, %if.then4 ], [ %call8, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool10.not = icmp eq i32 %ret.0, 0
  %len.ret.0 = select i1 %tobool10.not, i32 %len, i32 %ret.0
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %len.ret.0, %if.end9 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lm3533_set_hvled_config(ptr nocapture noundef readonly %lm3533, i8 noundef zeroext %hvled, i8 noundef zeroext %bl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i8 %hvled, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %0)
  %1 = icmp ult i8 %0, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bl)
  %cmp6 = icmp ugt i8 %bl, 1
  %or.cond26 = or i1 %1, %cmp6
  br i1 %or.cond26, label %entry.cleanup_crit_edge, label %if.end9

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %entry
  %conv = zext i8 %hvled to i32
  %conv5 = zext i8 %bl to i32
  %sub = add nsw i32 %conv, -1
  %shl = shl nuw nsw i32 1, %sub
  %shl13 = shl nuw nsw i32 %conv5, %sub
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm3533_update.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lm3533_set_hvled_config, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !167

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %lm3533 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lm3533, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm3533_update.__UNIQUE_ID_ddebug290, ptr noundef %3, ptr noundef nonnull @.str.11, i32 noundef 16, i32 noundef %shl13, i32 noundef %shl) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end9
  %regmap.i = getelementptr inbounds %struct.lm3533, ptr %lm3533, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 16, i32 noundef %shl, i32 noundef %shl13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %lm3533_update.exit.thread, label %lm3533_update.exit

lm3533_update.exit.thread:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %lm3533 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lm3533, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.12, i32 noundef 16, i32 noundef %call.i.i) #10
  br label %do.end

lm3533_update.exit:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %lm3533_update.exit.cleanup_crit_edge, label %lm3533_update.exit.do.end_crit_edge

lm3533_update.exit.do.end_crit_edge:              ; preds = %lm3533_update.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lm3533_update.exit.cleanup_crit_edge:             ; preds = %lm3533_update.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %lm3533_update.exit.do.end_crit_edge, %lm3533_update.exit.thread
  %8 = ptrtoint ptr %lm3533 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lm3533, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.41) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lm3533_update.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %do.end ], [ 0, %lm3533_update.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lm3533_set_lvled_config(ptr nocapture noundef readonly %lm3533, i8 noundef zeroext %lvled, i8 noundef zeroext %led) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i8 %lvled, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %0)
  %1 = icmp ult i8 %0, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %led)
  %cmp6 = icmp ugt i8 %led, 3
  %or.cond = or i1 %1, %cmp6
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end9

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %entry
  %conv = zext i8 %lvled to i32
  %conv5 = zext i8 %led to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %lvled)
  %cmp11 = icmp ult i8 %lvled, 4
  %mul = shl nuw nsw i32 %conv, 1
  %mul16 = add nsw i32 %mul, -8
  %reg.0 = select i1 %cmp11, i8 16, i8 17
  %shift.0 = select i1 %cmp11, i32 %mul, i32 %mul16
  %shl = shl nuw nsw i32 3, %shift.0
  %shl20 = shl nuw nsw i32 %conv5, %shift.0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm3533_update.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lm3533_set_lvled_config, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !167

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %lm3533 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lm3533, align 4
  %conv.i = zext i8 %reg.0 to i32
  %conv3.i = and i32 %shl20, 255
  %conv4.i = and i32 %shl, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm3533_update.__UNIQUE_ID_ddebug290, ptr noundef %3, ptr noundef nonnull @.str.11, i32 noundef %conv.i, i32 noundef %conv3.i, i32 noundef %conv4.i) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end9
  %regmap.i = getelementptr inbounds %struct.lm3533, ptr %lm3533, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %conv5.i = zext i8 %reg.0 to i32
  %conv6.i = and i32 %shl, 255
  %conv7.i = and i32 %shl20, 255
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %conv5.i, i32 noundef %conv6.i, i32 noundef %conv7.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %lm3533_update.exit.thread, label %lm3533_update.exit

lm3533_update.exit.thread:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %lm3533 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lm3533, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.12, i32 noundef %conv5.i, i32 noundef %call.i.i) #10
  br label %do.end

lm3533_update.exit:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %lm3533_update.exit.cleanup_crit_edge, label %lm3533_update.exit.do.end_crit_edge

lm3533_update.exit.do.end_crit_edge:              ; preds = %lm3533_update.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lm3533_update.exit.cleanup_crit_edge:             ; preds = %lm3533_update.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %lm3533_update.exit.do.end_crit_edge, %lm3533_update.exit.thread
  %8 = ptrtoint ptr %lm3533 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lm3533, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.43) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lm3533_update.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %do.end ], [ 0, %lm3533_update.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !17, !18, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !34, !36, !38, !40, !42, !44, !45, !47, !49, !51, !52, !53, !55, !56, !58, !60, !61, !63, !64, !65, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !90, !92, !94, !96, !97, !98, !99, !101, !103, !105, !106, !107, !108, !110, !112, !114, !116, !118, !119, !121, !123, !124, !125, !126, !128, !129, !130, !131, !133, !134, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !152, !154, !155}
!llvm.module.flags = !{!157, !158, !159, !160, !161, !162, !163, !164}
!llvm.ident = !{!165}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mfd/lm3533-core.c", i32 90, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @lm3533_read._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @lm3533_read._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mfd/lm3533-core.c", i32 97, i32 2}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @lm3533_read.__UNIQUE_ID_ddebug288, !9, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!12 = !{ptr @__ksymtab_lm3533_read, !13, !"__ksymtab_lm3533_read", i1 false, i1 false}
!13 = !{!"../drivers/mfd/lm3533-core.c", i32 101, i32 1}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mfd/lm3533-core.c", i32 107, i32 2}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @lm3533_write.__UNIQUE_ID_ddebug289, !15, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mfd/lm3533-core.c", i32 111, i32 3}
!20 = !{ptr @lm3533_write._entry, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @lm3533_write._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @__ksymtab_lm3533_write, !23, !"__ksymtab_lm3533_write", i1 false, i1 false}
!23 = !{!"../drivers/mfd/lm3533-core.c", i32 117, i32 1}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mfd/lm3533-core.c", i32 123, i32 2}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @lm3533_update.__UNIQUE_ID_ddebug290, !25, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mfd/lm3533-core.c", i32 127, i32 3}
!30 = !{ptr @lm3533_update._entry, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @lm3533_update._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @__ksymtab_lm3533_update, !33, !"__ksymtab_lm3533_update", i1 false, i1 false}
!33 = !{!"../drivers/mfd/lm3533-core.c", i32 133, i32 1}
!34 = !{ptr @__initcall__kmod_lm3533_core__295_640_lm3533_i2c_init4, !35, !"__initcall__kmod_lm3533_core__295_640_lm3533_i2c_init4", i1 false, i1 false}
!35 = !{!"../drivers/mfd/lm3533-core.c", i32 640, i32 1}
!36 = !{ptr @__exitcall_lm3533_i2c_exit, !37, !"__exitcall_lm3533_i2c_exit", i1 false, i1 false}
!37 = !{!"../drivers/mfd/lm3533-core.c", i32 646, i32 1}
!38 = !{ptr @__UNIQUE_ID_author296, !39, !"__UNIQUE_ID_author296", i1 false, i1 false}
!39 = !{!"../drivers/mfd/lm3533-core.c", i32 648, i32 1}
!40 = !{ptr @__UNIQUE_ID_description297, !41, !"__UNIQUE_ID_description297", i1 false, i1 false}
!41 = !{!"../drivers/mfd/lm3533-core.c", i32 649, i32 1}
!42 = !{ptr @__UNIQUE_ID_file298, !43, !"__UNIQUE_ID_file298", i1 false, i1 false}
!43 = !{!"../drivers/mfd/lm3533-core.c", i32 650, i32 1}
!44 = !{ptr @__UNIQUE_ID_license299, !43, !"__UNIQUE_ID_license299", i1 false, i1 false}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mfd/lm3533-core.c", i32 629, i32 14}
!47 = !{ptr @lm3533_i2c_driver, !48, !"lm3533_i2c_driver", i1 false, i1 false}
!48 = !{!"../drivers/mfd/lm3533-core.c", i32 627, i32 26}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mfd/lm3533-core.c", i32 592, i32 2}
!51 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @lm3533_i2c_probe.__UNIQUE_ID_ddebug293, !50, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!53 = !{ptr @lm3533_i2c_probe._key, !54, !"_key", i1 false, i1 false}
!54 = !{!"../drivers/mfd/lm3533-core.c", i32 600, i32 19}
!55 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @regmap_config, !57, !"regmap_config", i1 false, i1 false}
!57 = !{!"../drivers/mfd/lm3533-core.c", i32 578, i32 35}
!58 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mfd/lm3533-core.c", i32 479, i32 2}
!60 = !{ptr @lm3533_device_init.__UNIQUE_ID_ddebug291, !59, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!61 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mfd/lm3533-core.c", i32 482, i32 3}
!63 = !{ptr @lm3533_device_init._entry, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @lm3533_device_init._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mfd/lm3533-core.c", i32 492, i32 26}
!67 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mfd/lm3533-core.c", i32 494, i32 4}
!69 = !{ptr @lm3533_device_init._entry.20, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @lm3533_device_init._entry_ptr.22, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mfd/lm3533-core.c", i32 513, i32 3}
!73 = !{ptr @lm3533_device_init._entry.23, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @lm3533_device_init._entry_ptr.25, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mfd/lm3533-core.c", i32 144, i32 3}
!77 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @lm3533_set_boost_freq._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @lm3533_set_boost_freq._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mfd/lm3533-core.c", i32 159, i32 3}
!82 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @lm3533_set_boost_ovp._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @lm3533_set_boost_ovp._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.30, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/mfd/lm3533-core.c", i32 395, i32 3}
!87 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @lm3533_device_als_init._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @lm3533_device_als_init._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.32, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mfd/lm3533-core.c", i32 48, i32 11}
!92 = !{ptr @lm3533_als_devs, !93, !"lm3533_als_devs", i1 false, i1 false}
!93 = !{!"../drivers/mfd/lm3533-core.c", i32 46, i32 24}
!94 = !{ptr @.str.33, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mfd/lm3533-core.c", i32 424, i32 3}
!96 = !{ptr @.str.34, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @lm3533_device_bl_init._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @lm3533_device_bl_init._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.35, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/mfd/lm3533-core.c", i32 55, i32 11}
!101 = !{ptr @lm3533_bl_devs, !102, !"lm3533_bl_devs", i1 false, i1 false}
!102 = !{!"../drivers/mfd/lm3533-core.c", i32 53, i32 24}
!103 = !{ptr @.str.36, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/mfd/lm3533-core.c", i32 453, i32 3}
!105 = !{ptr @.str.37, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @lm3533_device_led_init._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @lm3533_device_led_init._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.38, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/mfd/lm3533-core.c", i32 66, i32 11}
!110 = !{ptr @lm3533_led_devs, !111, !"lm3533_led_devs", i1 false, i1 false}
!111 = !{!"../drivers/mfd/lm3533-core.c", i32 64, i32 24}
!112 = !{ptr @lm3533_attribute_group, !113, !"lm3533_attribute_group", i1 false, i1 false}
!113 = !{!"../drivers/mfd/lm3533-core.c", i32 376, i32 31}
!114 = !{ptr @lm3533_attributes, !115, !"lm3533_attributes", i1 false, i1 false}
!115 = !{!"../drivers/mfd/lm3533-core.c", i32 344, i32 26}
!116 = !{ptr @.str.39, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/mfd/lm3533-core.c", i32 336, i32 8}
!118 = !{ptr @lm3533_dev_attr_output_hvled1, !117, !"lm3533_dev_attr_output_hvled1", i1 false, i1 false}
!119 = !{ptr @.str.40, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/mfd/lm3533-core.c", i32 289, i32 35}
!121 = !{ptr @.str.41, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/mfd/lm3533-core.c", i32 186, i32 3}
!123 = !{ptr @.str.42, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @lm3533_set_hvled_config._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @lm3533_set_hvled_config._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.43, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/mfd/lm3533-core.c", i32 221, i32 3}
!128 = !{ptr @.str.44, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @lm3533_set_lvled_config._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @lm3533_set_lvled_config._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.45, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/mfd/lm3533-core.c", i32 337, i32 8}
!133 = !{ptr @lm3533_dev_attr_output_hvled2, !132, !"lm3533_dev_attr_output_hvled2", i1 false, i1 false}
!134 = !{ptr @.str.46, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/mfd/lm3533-core.c", i32 338, i32 8}
!136 = !{ptr @lm3533_dev_attr_output_lvled1, !135, !"lm3533_dev_attr_output_lvled1", i1 false, i1 false}
!137 = !{ptr @.str.47, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/mfd/lm3533-core.c", i32 339, i32 8}
!139 = !{ptr @lm3533_dev_attr_output_lvled2, !138, !"lm3533_dev_attr_output_lvled2", i1 false, i1 false}
!140 = !{ptr @.str.48, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/mfd/lm3533-core.c", i32 340, i32 8}
!142 = !{ptr @lm3533_dev_attr_output_lvled3, !141, !"lm3533_dev_attr_output_lvled3", i1 false, i1 false}
!143 = !{ptr @.str.49, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/mfd/lm3533-core.c", i32 341, i32 8}
!145 = !{ptr @lm3533_dev_attr_output_lvled4, !144, !"lm3533_dev_attr_output_lvled4", i1 false, i1 false}
!146 = !{ptr @.str.50, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/mfd/lm3533-core.c", i32 342, i32 8}
!148 = !{ptr @lm3533_dev_attr_output_lvled5, !147, !"lm3533_dev_attr_output_lvled5", i1 false, i1 false}
!149 = !{ptr @.str.51, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/mfd/lm3533-core.c", i32 614, i32 2}
!151 = !{ptr @lm3533_i2c_remove.__UNIQUE_ID_ddebug294, !150, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!152 = !{ptr @.str.52, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/mfd/lm3533-core.c", i32 529, i32 2}
!154 = !{ptr @lm3533_device_exit.__UNIQUE_ID_ddebug292, !153, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!155 = !{ptr @lm3533_i2c_ids, !156, !"lm3533_i2c_ids", i1 false, i1 false}
!156 = !{!"../drivers/mfd/lm3533-core.c", i32 621, i32 35}
!157 = !{i32 1, !"wchar_size", i32 2}
!158 = !{i32 1, !"min_enum_size", i32 4}
!159 = !{i32 8, !"branch-target-enforcement", i32 0}
!160 = !{i32 8, !"sign-return-address", i32 0}
!161 = !{i32 8, !"sign-return-address-all", i32 0}
!162 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!163 = !{i32 7, !"uwtable", i32 1}
!164 = !{i32 7, !"frame-pointer", i32 2}
!165 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!166 = !{!"auto-init"}
!167 = !{i64 2148965571, i64 2148965576, i64 2148965589, i64 2148965633, i64 2148965667, i64 2148965688}
