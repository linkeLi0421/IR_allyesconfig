; ModuleID = '/llk/IR_all_yes/drivers/video/backlight/lcd.c_pt.bc'
source_filename = "../drivers/video/backlight/lcd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+lcd_device_register\22, \22a\22\09"
module asm "\09.weak\09__crc_lcd_device_register\09\09\09\09"
module asm "\09.long\09__crc_lcd_device_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lcd_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22lcd_device_register\22\09\09\09\09\09"
module asm "__kstrtabns_lcd_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+lcd_device_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_lcd_device_unregister\09\09\09\09"
module asm "\09.long\09__crc_lcd_device_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lcd_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22lcd_device_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_lcd_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+devm_lcd_device_register\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_lcd_device_register\09\09\09\09"
module asm "\09.long\09__crc_devm_lcd_device_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_lcd_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_lcd_device_register\22\09\09\09\09\09"
module asm "__kstrtabns_devm_lcd_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+devm_lcd_device_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_lcd_device_unregister\09\09\09\09"
module asm "\09.long\09__crc_devm_lcd_device_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_lcd_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_lcd_device_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_devm_lcd_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lcd_device = type { %struct.lcd_properties, %struct.mutex, ptr, %struct.mutex, %struct.notifier_block, %struct.device }
%struct.lcd_properties = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lcd_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_event = type { ptr, ptr }

@lcd_device_register.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lcd\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lcd_device_register\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/video/backlight/lcd.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"lcd_device_register: name=%s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"lcd: lcd_device_register: name=%s\0A\00", [61 x i8] zeroinitializer }, align 32
@lcd_device_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&new_ld->ops_lock\00", [46 x i8] zeroinitializer }, align 32
@lcd_device_register.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&new_ld->update_lock\00", [43 x i8] zeroinitializer }, align 32
@lcd_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@__kstrtab_lcd_device_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_lcd_device_register = external dso_local constant [0 x i8], align 1
@__ksymtab_lcd_device_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lcd_device_register to i32), ptr @__kstrtab_lcd_device_register, ptr @__kstrtabns_lcd_device_register }, section "___ksymtab+lcd_device_register", align 4
@__kstrtab_lcd_device_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_lcd_device_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_lcd_device_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lcd_device_unregister to i32), ptr @__kstrtab_lcd_device_unregister, ptr @__kstrtabns_lcd_device_unregister }, section "___ksymtab+lcd_device_unregister", align 4
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"devm_lcd_device_release\00", [40 x i8] zeroinitializer }, align 32
@__kstrtab_devm_lcd_device_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_lcd_device_register = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_lcd_device_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_lcd_device_register to i32), ptr @__kstrtab_devm_lcd_device_register, ptr @__kstrtabns_devm_lcd_device_register }, section "___ksymtab+devm_lcd_device_register", align 4
@__kstrtab_devm_lcd_device_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_lcd_device_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_lcd_device_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_lcd_device_unregister to i32), ptr @__kstrtab_devm_lcd_device_unregister, ptr @__kstrtabns_devm_lcd_device_unregister }, section "___ksymtab+devm_lcd_device_unregister", align 4
@__initcall__kmod_lcd__304_341_lcd_class_init2 = internal global ptr @lcd_class_init, section ".initcall2.init", align 4
@__exitcall_lcd_class_exit = internal global ptr @lcd_class_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file305 = internal constant [37 x i8] c"lcd.file=drivers/video/backlight/lcd\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [16 x i8] c"lcd.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author307 = internal constant [80 x i8] c"lcd.author=Jamey Hicks <jamey.hicks@hp.com>, Andrew Zabolotny <zap@homelink.ru>\00", section ".modinfo", align 1
@__UNIQUE_ID_description308 = internal constant [49 x i8] c"lcd.description=LCD Lowlevel Control Abstraction\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@lcd_class_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@lcd_class_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014lcd: Unable to create backlight class; errno = %ld\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lcd_class_init\00", [17 x i8] zeroinitializer }, align 32
@lcd_class_init._entry_ptr = internal global ptr @lcd_class_init._entry, section ".printk_index", align 4
@lcd_device_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @lcd_device_group, ptr null], [24 x i8] zeroinitializer }, align 32
@lcd_device_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @lcd_device_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@lcd_device_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_lcd_power, ptr @dev_attr_contrast, ptr @dev_attr_max_contrast, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_lcd_power = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @lcd_power_show, ptr @lcd_power_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_contrast = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @contrast_show, ptr @contrast_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_max_contrast = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_contrast_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lcd_power\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@lcd_power_store.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 26, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lcd_power_store\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"set power to %lu\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lcd: set power to %lu\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"contrast\00", [23 x i8] zeroinitializer }, align 32
@contrast_store.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"contrast_store\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"set contrast to %lu\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lcd: set contrast to %lu\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max_contrast\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 196, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 202, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 203, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [10 x i8] c"lcd_class\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 162, i32 22 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 208, i32 29 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 283, i32 8 }
@___asan_gen_.58 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 326, i32 14 }
@___asan_gen_.61 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 328, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [18 x i8] c"lcd_device_groups\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"lcd_device_group\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 176, i32 1 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"lcd_device_attrs\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 170, i32 26 }
@___asan_gen_.79 = private unnamed_addr constant [19 x i8] c"dev_attr_lcd_power\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [18 x i8] c"dev_attr_contrast\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [22 x i8] c"dev_attr_max_contrast\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 112, i32 8 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 81, i32 21 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 104, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 151, i32 8 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 143, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private constant [33 x i8] c"../drivers/video/backlight/lcd.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 160, i32 8 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_author307, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_lcd_class_exit, ptr @__initcall__kmod_lcd__304_341_lcd_class_init2, ptr @__ksymtab_devm_lcd_device_register, ptr @__ksymtab_devm_lcd_device_unregister, ptr @__ksymtab_lcd_device_register, ptr @__ksymtab_lcd_device_unregister, ptr @lcd_class_exit, ptr @lcd_class_init._entry, ptr @lcd_class_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @lcd_device_register.__key, ptr @.str.5, ptr @lcd_device_register.__key.6, ptr @.str.7, ptr @lcd_class, ptr @.str.8, ptr @.str.9, ptr @lcd_class_init.__key, ptr @.str.10, ptr @.str.11, ptr @lcd_device_groups, ptr @lcd_device_group, ptr @lcd_device_attrs, ptr @dev_attr_lcd_power, ptr @dev_attr_contrast, ptr @dev_attr_max_contrast, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_device_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_device_register.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_class_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_class_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_device_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_device_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_device_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_lcd_power to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_contrast to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_max_contrast to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @lcd_device_register(ptr noundef %name, ptr noundef %parent, ptr noundef %devdata, ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lcd_device_register.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lcd_device_register, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !80

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lcd_device_register.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.4, ptr noundef %name) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1136) #12
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %do.body8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body8:                                         ; preds = %do.end
  %ops_lock = getelementptr inbounds %struct.lcd_device, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %ops_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @lcd_device_register.__key) #9
  %update_lock = getelementptr inbounds %struct.lcd_device, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @lcd_device_register.__key.6) #9
  %1 = load ptr, ptr @lcd_class, align 4
  %dev = getelementptr inbounds %struct.lcd_device, ptr %call7.i.i, i32 0, i32 5
  %class = getelementptr inbounds %struct.lcd_device, ptr %call7.i.i, i32 0, i32 5, i32 33
  %2 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %class, align 4
  %parent15 = getelementptr inbounds %struct.lcd_device, ptr %call7.i.i, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %parent15 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %parent, ptr %parent15, align 8
  %release = getelementptr inbounds %struct.lcd_device, ptr %call7.i.i, i32 0, i32 5, i32 35
  %4 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @lcd_device_release, ptr %release, align 4
  %call18 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef %name) #9
  %driver_data.i = getelementptr inbounds %struct.lcd_device, ptr %call7.i.i, i32 0, i32 5, i32 8
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %devdata, ptr %driver_data.i, align 4
  %ops20 = getelementptr inbounds %struct.lcd_device, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %ops20 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ops, ptr %ops20, align 8
  %call22 = tail call i32 @device_register(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end27, label %if.then24

if.then24:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @put_device(ptr noundef %dev) #9
  %7 = inttoptr i32 %call22 to ptr
  br label %cleanup

if.end27:                                         ; preds = %do.body8
  %fb_notif.i = getelementptr inbounds %struct.lcd_device, ptr %call7.i.i, i32 0, i32 4
  %8 = call ptr @memset(ptr %fb_notif.i, i32 0, i32 12)
  %9 = ptrtoint ptr %fb_notif.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @fb_notifier_callback, ptr %fb_notif.i, align 8
  %call.i = tail call i32 @fb_register_client(ptr noundef %fb_notif.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool29.not = icmp eq i32 %call.i, 0
  br i1 %tobool29.not, label %if.end27.cleanup_crit_edge, label %if.then30

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @device_unregister(ptr noundef %dev) #9
  %10 = inttoptr i32 %call.i to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.end27.cleanup_crit_edge, %if.then24, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %7, %if.then24 ], [ %10, %if.then30 ], [ %call7.i.i, %if.end27.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %do.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lcd_device_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -208
  tail call void @kfree(ptr noundef %add.ptr) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lcd_device_unregister(ptr noundef %ld) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ld, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ops_lock = getelementptr inbounds %struct.lcd_device, ptr %ld, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #9
  %ops = getelementptr inbounds %struct.lcd_device, ptr %ld, i32 0, i32 2
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %ops, align 8
  tail call void @mutex_unlock(ptr noundef %ops_lock) #9
  %fb_notif.i = getelementptr inbounds %struct.lcd_device, ptr %ld, i32 0, i32 4
  %call.i = tail call i32 @fb_unregister_client(ptr noundef %fb_notif.i) #9
  %dev = getelementptr inbounds %struct.lcd_device, ptr %ld, i32 0, i32 5
  tail call void @device_unregister(ptr noundef %dev) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @devm_lcd_device_register(ptr noundef %dev, ptr noundef %name, ptr noundef %parent, ptr noundef %devdata, ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_lcd_device_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.9) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @lcd_device_register(ptr noundef %name, ptr noundef %parent, ptr noundef %devdata, ptr noundef %ops)
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %call, align 4
  tail call void @devres_add(ptr noundef %dev, ptr noundef nonnull %call) #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @devres_free(ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call2, %if.else ], [ %call2, %if.then4 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_lcd_device_release(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.lcd_device_unregister.exit_crit_edge, label %if.end.i

entry.lcd_device_unregister.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %lcd_device_unregister.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ops_lock.i = getelementptr inbounds %struct.lcd_device, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %ops_lock.i, i32 noundef 0) #9
  %ops.i = getelementptr inbounds %struct.lcd_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ops.i, align 8
  tail call void @mutex_unlock(ptr noundef %ops_lock.i) #9
  %fb_notif.i.i = getelementptr inbounds %struct.lcd_device, ptr %1, i32 0, i32 4
  %call.i.i = tail call i32 @fb_unregister_client(ptr noundef %fb_notif.i.i) #9
  %dev.i = getelementptr inbounds %struct.lcd_device, ptr %1, i32 0, i32 5
  tail call void @device_unregister(ptr noundef %dev.i) #9
  br label %lcd_device_unregister.exit

lcd_device_unregister.exit:                       ; preds = %if.end.i, %entry.lcd_device_unregister.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @devm_lcd_device_unregister(ptr noundef %dev, ptr noundef %ld) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @devres_release(ptr noundef %dev, ptr noundef nonnull @devm_lcd_device_release, ptr noundef nonnull @devm_lcd_device_match, ptr noundef %ld) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !81

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 314, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @devm_lcd_device_match(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %res, ptr noundef readnone %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  %cmp = icmp eq ptr %1, %data
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lcd_class_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = load ptr, ptr @lcd_class, align 4
  tail call void @class_destroy(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lcd_class_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @lcd_class_init.__key) #9
  store ptr %call, ptr @lcd_class, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %0) #13
  %1 = load ptr, ptr @lcd_class, align 4
  %2 = ptrtoint ptr %1 to i32
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev_groups = getelementptr inbounds %struct.class, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %dev_groups to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @lcd_device_groups, ptr %dev_groups, align 4
  br label %return

return:                                           ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %2, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fb_notifier_callback(ptr noundef %self, i32 noundef %event, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %self, i32 -192
  %ops = getelementptr i8, ptr %self, i32 -96
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops_lock = getelementptr i8, ptr %self, i32 -188
  tail call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #9
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 8
  %check_fb = getelementptr inbounds %struct.lcd_ops, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %check_fb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %check_fb, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.if.then6_crit_edge, label %lor.lhs.false

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.end
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %call = tail call i32 %5(ptr noundef %add.ptr, ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %lor.lhs.false.if.end25_crit_edge, label %lor.lhs.false.if.then6_crit_edge

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

lor.lhs.false.if.end25_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %if.end.if.then6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %event)
  %cmp = icmp eq i32 %event, 9
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 8
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then6
  %set_power = getelementptr inbounds %struct.lcd_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %set_power to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_power, align 4
  %tobool9.not = icmp eq ptr %11, null
  br i1 %tobool9.not, label %if.then7.if.end25_crit_edge, label %if.then10

if.then7.if.end25_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %data13 = getelementptr inbounds %struct.fb_event, ptr %data, i32 0, i32 1
  %12 = ptrtoint ptr %data13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data13, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %call14 = tail call i32 %11(ptr noundef %add.ptr, i32 noundef %15) #9
  br label %if.end25

if.else:                                          ; preds = %if.then6
  %set_mode = getelementptr inbounds %struct.lcd_ops, ptr %9, i32 0, i32 4
  %16 = ptrtoint ptr %set_mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_mode, align 4
  %tobool17.not = icmp eq ptr %17, null
  br i1 %tobool17.not, label %if.else.if.end25_crit_edge, label %if.then18

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %data21 = getelementptr inbounds %struct.fb_event, ptr %data, i32 0, i32 1
  %18 = ptrtoint ptr %data21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data21, align 4
  %call22 = tail call i32 %17(ptr noundef %add.ptr, ptr noundef %19) #9
  br label %if.end25

if.end25:                                         ; preds = %if.then18, %if.else.if.end25_crit_edge, %if.then10, %if.then7.if.end25_crit_edge, %lor.lhs.false.if.end25_crit_edge
  tail call void @mutex_unlock(ptr noundef %ops_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_register_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_unregister_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lcd_power_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -208
  %ops_lock = getelementptr i8, ptr %dev, i32 -204
  tail call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #9
  %ops = getelementptr i8, ptr %dev, i32 -112
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 %3(ptr noundef %add.ptr) #9
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.13, i32 noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %rc.0 = phi i32 [ %call5, %if.then ], [ -6, %land.lhs.true.if.end_crit_edge ], [ -6, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ops_lock) #9
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lcd_power_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %power = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -208
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %power) #9
  %0 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %power, align 4, !annotation !82
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %power) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops_lock = getelementptr i8, ptr %dev, i32 -204
  call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #9
  %ops = getelementptr i8, ptr %dev, i32 -112
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 8
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.end.if.end15_crit_edge, label %land.lhs.true

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %set_power = getelementptr inbounds %struct.lcd_ops, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %set_power to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %set_power, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %land.lhs.true.if.end15_crit_edge, label %do.body

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

do.body:                                          ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lcd_power_store.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lcd_power_store, %if.then10)) #9
          to label %do.end [label %if.then10], !srcloc !80

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %power, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lcd_power_store.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.16, i32 noundef %6) #9
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 8
  %set_power13 = getelementptr inbounds %struct.lcd_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %set_power13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_power13, align 4
  %11 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %power, align 4
  %call14 = call i32 %10(ptr noundef %add.ptr, i32 noundef %12) #9
  br label %if.end15

if.end15:                                         ; preds = %do.end, %land.lhs.true.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %rc.0 = phi i32 [ %count, %do.end ], [ -6, %land.lhs.true.if.end15_crit_edge ], [ -6, %if.end.if.end15_crit_edge ]
  call void @mutex_unlock(ptr noundef %ops_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %if.end15 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %power) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @contrast_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -208
  %ops_lock = getelementptr i8, ptr %dev, i32 -204
  tail call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #9
  %ops = getelementptr i8, ptr %dev, i32 -112
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %get_contrast = getelementptr inbounds %struct.lcd_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %get_contrast to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_contrast, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 %3(ptr noundef %add.ptr) #9
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.13, i32 noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %rc.0 = phi i32 [ %call5, %if.then ], [ -6, %land.lhs.true.if.end_crit_edge ], [ -6, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ops_lock) #9
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @contrast_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %contrast = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -208
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %contrast) #9
  %0 = ptrtoint ptr %contrast to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %contrast, align 4, !annotation !82
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %contrast) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops_lock = getelementptr i8, ptr %dev, i32 -204
  call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #9
  %ops = getelementptr i8, ptr %dev, i32 -112
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 8
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.end.if.end15_crit_edge, label %land.lhs.true

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %set_contrast = getelementptr inbounds %struct.lcd_ops, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %set_contrast to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %set_contrast, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %land.lhs.true.if.end15_crit_edge, label %do.body

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

do.body:                                          ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @contrast_store.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@contrast_store, %if.then10)) #9
          to label %do.end [label %if.then10], !srcloc !80

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %contrast to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %contrast, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @contrast_store.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.20, i32 noundef %6) #9
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 8
  %set_contrast13 = getelementptr inbounds %struct.lcd_ops, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %set_contrast13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_contrast13, align 4
  %11 = ptrtoint ptr %contrast to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %contrast, align 4
  %call14 = call i32 %10(ptr noundef %add.ptr, i32 noundef %12) #9
  br label %if.end15

if.end15:                                         ; preds = %do.end, %land.lhs.true.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %rc.0 = phi i32 [ %count, %do.end ], [ -6, %land.lhs.true.if.end15_crit_edge ], [ -6, %if.end.if.end15_crit_edge ]
  call void @mutex_unlock(ptr noundef %ops_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %if.end15 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %contrast) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_contrast_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -208
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.13, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !32, !34, !36, !38, !40, !42, !43, !44, !45, !47, !48, !50, !52, !53, !55, !57, !58, !59, !60, !62, !63, !65, !66, !67, !68, !70}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/video/backlight/lcd.c", i32 196, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @lcd_device_register.__UNIQUE_ID_ddebug303, !1, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @lcd_device_register.__key, !8, !"__key", i1 false, i1 false}
!8 = !{!"../drivers/video/backlight/lcd.c", i32 202, i32 2}
!9 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @lcd_device_register.__key.6, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/video/backlight/lcd.c", i32 203, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/video/backlight/lcd.c", i32 208, i32 29}
!15 = !{ptr @__ksymtab_lcd_device_register, !16, !"__ksymtab_lcd_device_register", i1 false, i1 false}
!16 = !{!"../drivers/video/backlight/lcd.c", i32 227, i32 1}
!17 = !{ptr @__ksymtab_lcd_device_unregister, !18, !"__ksymtab_lcd_device_unregister", i1 false, i1 false}
!18 = !{!"../drivers/video/backlight/lcd.c", i32 247, i32 1}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/video/backlight/lcd.c", i32 283, i32 8}
!21 = !{ptr @__ksymtab_devm_lcd_device_register, !22, !"__ksymtab_devm_lcd_device_register", i1 false, i1 false}
!22 = !{!"../drivers/video/backlight/lcd.c", i32 297, i32 1}
!23 = !{ptr @__ksymtab_devm_lcd_device_unregister, !24, !"__ksymtab_devm_lcd_device_unregister", i1 false, i1 false}
!24 = !{!"../drivers/video/backlight/lcd.c", i32 316, i32 1}
!25 = !{ptr @__initcall__kmod_lcd__304_341_lcd_class_init2, !26, !"__initcall__kmod_lcd__304_341_lcd_class_init2", i1 false, i1 false}
!26 = !{!"../drivers/video/backlight/lcd.c", i32 341, i32 1}
!27 = !{ptr @__exitcall_lcd_class_exit, !28, !"__exitcall_lcd_class_exit", i1 false, i1 false}
!28 = !{!"../drivers/video/backlight/lcd.c", i32 342, i32 1}
!29 = !{ptr @__UNIQUE_ID_file305, !30, !"__UNIQUE_ID_file305", i1 false, i1 false}
!30 = !{!"../drivers/video/backlight/lcd.c", i32 344, i32 1}
!31 = !{ptr @__UNIQUE_ID_license306, !30, !"__UNIQUE_ID_license306", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_author307, !33, !"__UNIQUE_ID_author307", i1 false, i1 false}
!33 = !{!"../drivers/video/backlight/lcd.c", i32 345, i32 1}
!34 = !{ptr @__UNIQUE_ID_description308, !35, !"__UNIQUE_ID_description308", i1 false, i1 false}
!35 = !{!"../drivers/video/backlight/lcd.c", i32 346, i32 1}
!36 = !{ptr @lcd_class, !37, !"lcd_class", i1 false, i1 false}
!37 = !{!"../drivers/video/backlight/lcd.c", i32 162, i32 22}
!38 = !{ptr @lcd_class_init.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/video/backlight/lcd.c", i32 326, i32 14}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/video/backlight/lcd.c", i32 328, i32 3}
!42 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @lcd_class_init._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @lcd_class_init._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @lcd_device_groups, !46, !"lcd_device_groups", i1 false, i1 false}
!46 = !{!"../drivers/video/backlight/lcd.c", i32 176, i32 1}
!47 = !{ptr @lcd_device_group, !46, !"lcd_device_group", i1 false, i1 false}
!48 = !{ptr @lcd_device_attrs, !49, !"lcd_device_attrs", i1 false, i1 false}
!49 = !{!"../drivers/video/backlight/lcd.c", i32 170, i32 26}
!50 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/video/backlight/lcd.c", i32 112, i32 8}
!52 = !{ptr @dev_attr_lcd_power, !51, !"dev_attr_lcd_power", i1 false, i1 false}
!53 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/video/backlight/lcd.c", i32 81, i32 21}
!55 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/video/backlight/lcd.c", i32 104, i32 3}
!57 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @lcd_power_store.__UNIQUE_ID_ddebug301, !56, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!59 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.17, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/video/backlight/lcd.c", i32 151, i32 8}
!62 = !{ptr @dev_attr_contrast, !61, !"dev_attr_contrast", i1 false, i1 false}
!63 = !{ptr @.str.18, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/video/backlight/lcd.c", i32 143, i32 3}
!65 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @contrast_store.__UNIQUE_ID_ddebug302, !64, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!67 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/video/backlight/lcd.c", i32 160, i32 8}
!70 = !{ptr @dev_attr_max_contrast, !69, !"dev_attr_max_contrast", i1 false, i1 false}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{i64 2148959893, i64 2148959898, i64 2148959911, i64 2148959955, i64 2148959989, i64 2148960010}
!81 = !{!"branch_weights", i32 2000, i32 1}
!82 = !{!"auto-init"}
