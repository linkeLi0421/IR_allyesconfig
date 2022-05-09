; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpiolib-sysfs.c_pt.bc'
source_filename = "../drivers/gpio/gpiolib-sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+gpiod_export\22, \22a\22\09"
module asm "\09.weak\09__crc_gpiod_export\09\09\09\09"
module asm "\09.long\09__crc_gpiod_export\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_export:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_export\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_export:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gpiod_export_link\22, \22a\22\09"
module asm "\09.weak\09__crc_gpiod_export_link\09\09\09\09"
module asm "\09.long\09__crc_gpiod_export_link\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_export_link:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_export_link\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_export_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gpiod_unexport\22, \22a\22\09"
module asm "\09.weak\09__crc_gpiod_unexport\09\09\09\09"
module asm "\09.long\09__crc_gpiod_unexport\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_unexport:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_unexport\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_unexport:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.class_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.anon.70 = type { ptr, i8 }
%struct.gpio_device = type { i32, %struct.device, %struct.cdev, ptr, ptr, ptr, ptr, i32, i16, ptr, ptr, %struct.list_head, %struct.blocking_notifier_head, %struct.list_head }
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
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.gpio_desc = type { ptr, i32, ptr, ptr, ptr, i32 }
%struct.gpiod_data = type { ptr, %struct.mutex, ptr, i32, i8, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.64, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.64 = type { ptr }

@gpio_class = internal global { %struct.class, [36 x i8] } { %struct.class { ptr @.str.14, ptr null, ptr @gpio_class_groups, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@gpiod_export.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -112, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gpiolib_sysfs\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpiod_export\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/gpio/gpiolib-sysfs.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: called too early!\0A\00", [41 x i8] zeroinitializer }, align 32
@gpiod_export.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 -111, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: invalid gpio descriptor\0A\00", [35 x i8] zeroinitializer }, align 32
@sysfs_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.25, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @sysfs_lock, i64 52), ptr getelementptr (i8, ptr @sysfs_lock, i64 52) }, ptr @sysfs_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.26, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@gpio_lock = external dso_local global %struct.spinlock, align 4
@gpiod_export.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 -105, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"gpio-%d (%s): %s: unavailable (requested=%d, exported=%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"?\00", [30 x i8] zeroinitializer }, align 32
@gpiod_export.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&data->mutex\00", [19 x i8] zeroinitializer }, align 32
@gpio_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @gpio_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio%u\00", [25 x i8] zeroinitializer }, align 32
@gpiod_export.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 0, i8 -95, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"gpio-%d (%s): %s: status %d\0A\00", [35 x i8] zeroinitializer }, align 32
@__kstrtab_gpiod_export = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_export = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_export = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_export to i32), ptr @__kstrtab_gpiod_export, ptr @__kstrtabns_gpiod_export }, section "___ksymtab_gpl+gpiod_export", align 4
@gpiod_export_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\014%s: invalid GPIO\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gpiod_export_link\00", [46 x i8] zeroinitializer }, align 32
@gpiod_export_link._entry_ptr = internal global ptr @gpiod_export_link._entry, section ".printk_index", align 4
@__kstrtab_gpiod_export_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_export_link = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_export_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_export_link to i32), ptr @__kstrtab_gpiod_export_link, ptr @__kstrtabns_gpiod_export_link }, section "___ksymtab_gpl+gpiod_export_link", align 4
@gpiod_unexport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.12, ptr @.str.2, i32 701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpiod_unexport\00", [17 x i8] zeroinitializer }, align 32
@gpiod_unexport._entry_ptr = internal global ptr @gpiod_unexport._entry, section ".printk_index", align 4
@__kstrtab_gpiod_unexport = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_unexport = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_unexport = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_unexport to i32), ptr @__kstrtab_gpiod_unexport, ptr @__kstrtabns_gpiod_unexport }, section "___ksymtab_gpl+gpiod_unexport", align 4
@gpiochip_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @gpiochip_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpiochip%d\00", [21 x i8] zeroinitializer }, align 32
@__initcall__kmod_gpiolib_sysfs__233_838_gpiolib_sysfs_init2 = internal global ptr @gpiolib_sysfs_init, section ".initcall2.init", align 4
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@gpio_class_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @gpio_class_group, ptr null], [24 x i8] zeroinitializer }, align 32
@gpio_class_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @gpio_class_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@gpio_class_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @class_attr_export, ptr @class_attr_unexport, ptr null], [20 x i8] zeroinitializer }, align 32
@class_attr_export = internal global { %struct.class_attribute, [36 x i8] } { %struct.class_attribute { %struct.attribute { ptr @.str.15, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @export_store }, [36 x i8] zeroinitializer }, align 32
@class_attr_unexport = internal global { %struct.class_attribute, [36 x i8] } { %struct.class_attribute { %struct.attribute { ptr @.str.23, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @unexport_store }, [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"export\00", [25 x i8] zeroinitializer }, align 32
@export_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\014%s: invalid GPIO %ld\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"export_store\00", [19 x i8] zeroinitializer }, align 32
@export_store._entry_ptr = internal global ptr @export_store._entry, section ".printk_index", align 4
@export_store._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\014%s: GPIO %ld masked\0A\00", [41 x i8] zeroinitializer }, align 32
@export_store._entry_ptr.20 = internal global ptr @export_store._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sysfs\00", [26 x i8] zeroinitializer }, align 32
@export_store.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.22, i8 0, i8 123, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: status %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"unexport\00", [23 x i8] zeroinitializer }, align 32
@unexport_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.24, ptr @.str.2, i32 513, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"unexport_store\00", [17 x i8] zeroinitializer }, align 32
@unexport_store._entry_ptr = internal global ptr @unexport_store._entry, section ".printk_index", align 4
@unexport_store.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.22, i8 0, i8 -124, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sysfs_lock.wait_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sysfs_lock\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gpio_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @gpio_is_visible, ptr null, ptr @gpio_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@gpio_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_direction, ptr @dev_attr_edge, ptr @dev_attr_value, ptr @dev_attr_active_low, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_direction = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @direction_show, ptr @direction_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_edge = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @edge_show, ptr @edge_store }, [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"direction\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"high\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"low\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"edge\00", [27 x i8] zeroinitializer }, align 32
@trigger_types = internal constant { [4 x %struct.anon.70], [32 x i8] } { [4 x %struct.anon.70] [%struct.anon.70 { ptr @.str.34, i8 0 }, %struct.anon.70 { ptr @.str.35, i8 1 }, %struct.anon.70 { ptr @.str.36, i8 2 }, %struct.anon.70 { ptr @.str.37, i8 3 }], [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"falling\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rising\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"both\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"value\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gpiolib\00", [24 x i8] zeroinitializer }, align 32
@dev_attr_value = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 4516, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @value_show, ptr @value_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_low = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_low_show, ptr @active_low_store }, [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%zd\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"active_low\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@gpiochip_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @gpiochip_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@gpiochip_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_base, ptr @dev_attr_label, ptr @dev_attr_ngpio, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_base = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @base_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_label = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @label_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ngpio = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ngpio_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"base\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ngpio\00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@gpiolib_sysfs_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@gpio_devices = external dso_local global %struct.list_head, align 4
@___asan_gen_.48 = private unnamed_addr constant [11 x i8] c"gpio_class\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 541, i32 21 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 577, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 582, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [11 x i8] c"sysfs_lock\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 601, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 617, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [12 x i8] c"gpio_groups\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 393, i32 38 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 629, i32 24 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 644, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 674, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 701, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [16 x i8] c"gpiochip_groups\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 764, i32 23 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 542, i32 11 }
@___asan_gen_.114 = private unnamed_addr constant [18 x i8] c"gpio_class_groups\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"gpio_class_group\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 539, i32 1 }
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"gpio_class_attrs\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 534, i32 26 }
@___asan_gen_.123 = private unnamed_addr constant [18 x i8] c"class_attr_export\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [20 x i8] c"class_attr_unexport\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 496, i32 8 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 463, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 469, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 478, i32 36 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 493, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 532, i32 8 }
@___asan_gen_.156 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 513, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 36, i32 8 }
@___asan_gen_.168 = private unnamed_addr constant [11 x i8] c"gpio_group\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 388, i32 37 }
@___asan_gen_.171 = private unnamed_addr constant [11 x i8] c"gpio_attrs\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 380, i32 26 }
@___asan_gen_.174 = private unnamed_addr constant [19 x i8] c"dev_attr_direction\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [14 x i8] c"dev_attr_edge\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 99, i32 8 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 69, i32 27 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 70, i32 46 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 70, i32 54 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 86, i32 23 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 88, i32 55 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 297, i32 8 }
@___asan_gen_.201 = private unnamed_addr constant [14 x i8] c"trigger_types\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 230, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 231, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 232, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 233, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 234, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 171, i32 50 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 196, i32 5 }
@___asan_gen_.222 = private unnamed_addr constant [15 x i8] c"dev_attr_value\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 148, i32 8 }
@___asan_gen_.225 = private unnamed_addr constant [20 x i8] c"dev_attr_active_low\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 112, i32 28 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 356, i32 8 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 331, i32 27 }
@___asan_gen_.237 = private unnamed_addr constant [15 x i8] c"gpiochip_group\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 438, i32 1 }
@___asan_gen_.240 = private unnamed_addr constant [15 x i8] c"gpiochip_attrs\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 432, i32 26 }
@___asan_gen_.243 = private unnamed_addr constant [14 x i8] c"dev_attr_base\00", align 1
@___asan_gen_.246 = private unnamed_addr constant [15 x i8] c"dev_attr_label\00", align 1
@___asan_gen_.249 = private unnamed_addr constant [15 x i8] c"dev_attr_ngpio\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 412, i32 8 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 421, i32 8 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 419, i32 48 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 430, i32 8 }
@___asan_gen_.264 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 428, i32 25 }
@___asan_gen_.267 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.268 = private constant [32 x i8] c"../drivers/gpio/gpiolib-sysfs.c\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 806, i32 11 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @__initcall__kmod_gpiolib_sysfs__233_838_gpiolib_sysfs_init2, ptr @__ksymtab_gpiod_export, ptr @__ksymtab_gpiod_export_link, ptr @__ksymtab_gpiod_unexport, ptr @export_store._entry, ptr @export_store._entry.18, ptr @export_store._entry_ptr, ptr @export_store._entry_ptr.20, ptr @gpiod_export_link._entry, ptr @gpiod_export_link._entry_ptr, ptr @gpiod_unexport._entry, ptr @gpiod_unexport._entry_ptr, ptr @unexport_store._entry, ptr @unexport_store._entry_ptr, ptr @gpio_class, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @sysfs_lock, ptr @.str.5, ptr @.str.6, ptr @gpiod_export.__key, ptr @.str.7, ptr @gpio_groups, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @gpiochip_groups, ptr @.str.13, ptr @.str.14, ptr @gpio_class_groups, ptr @gpio_class_group, ptr @gpio_class_attrs, ptr @class_attr_export, ptr @class_attr_unexport, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @gpio_group, ptr @gpio_attrs, ptr @dev_attr_direction, ptr @dev_attr_edge, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @trigger_types, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @dev_attr_value, ptr @dev_attr_active_low, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @gpiochip_group, ptr @gpiochip_attrs, ptr @dev_attr_base, ptr @dev_attr_label, ptr @dev_attr_ngpio, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @gpiolib_sysfs_init.__key], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_class to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpiod_export.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpiod_export_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpiod_unexport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpiochip_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_class_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_class_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_class_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @class_attr_export to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @class_attr_unexport to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @export_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @export_store._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unexport_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_direction to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_edge to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trigger_types to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_value to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_low to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpiochip_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpiochip_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_base to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_label to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ngpio to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpiolib_sysfs_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gpiod_export(ptr noundef %desc, i1 noundef zeroext %direction_may_change) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %direction_may_change to i8
  %0 = load ptr, ptr getelementptr inbounds (%struct.class, ptr @gpio_class, i32 0, i32 14), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpiod_export.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gpiod_export, %cleanup)) #7
          to label %if.then6 [label %cleanup], !srcloc !153

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gpiod_export.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #7
  br label %cleanup

if.end7:                                          ; preds = %entry
  %tobool8.not = icmp eq ptr %desc, null
  br i1 %tobool8.not, label %do.body10, label %if.end28

do.body10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpiod_export.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gpiod_export, %cleanup)) #7
          to label %if.then24 [label %cleanup], !srcloc !153

if.then24:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gpiod_export.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #7
  br label %cleanup

if.end28:                                         ; preds = %if.end7
  %1 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %desc, align 4
  %chip30 = getelementptr inbounds %struct.gpio_device, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %chip30 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip30, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @sysfs_lock, i32 noundef 0) #7
  %tobool31.not = icmp eq ptr %4, null
  br i1 %tobool31.not, label %if.end28.err_unlock_crit_edge, label %lor.lhs.false

if.end28.err_unlock_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unlock

lor.lhs.false:                                    ; preds = %if.end28
  %mockdev = getelementptr inbounds %struct.gpio_device, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %mockdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mockdev, align 8
  %tobool32.not = icmp eq ptr %6, null
  br i1 %tobool32.not, label %lor.lhs.false.err_unlock_crit_edge, label %do.body36

lor.lhs.false.err_unlock_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unlock

do.body36:                                        ; preds = %lor.lhs.false
  %call39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @gpio_lock) #7
  %flags44 = getelementptr inbounds %struct.gpio_desc, ptr %desc, i32 0, i32 1
  %7 = ptrtoint ptr %flags44 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags44, align 4
  %and1.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool46.not = icmp eq i32 %and1.i, 0
  br i1 %tobool46.not, label %do.body36.if.then51_crit_edge, label %lor.lhs.false47

do.body36.if.then51_crit_edge:                    ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then51

lor.lhs.false47:                                  ; preds = %do.body36
  %9 = ptrtoint ptr %flags44 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags44, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool50.not = icmp eq i32 %11, 0
  br i1 %tobool50.not, label %if.end76, label %lor.lhs.false47.if.then51_crit_edge

lor.lhs.false47.if.then51_crit_edge:              ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then51

if.then51:                                        ; preds = %lor.lhs.false47.if.then51_crit_edge, %do.body36.if.then51_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gpio_lock, i32 noundef %call39) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpiod_export.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gpiod_export, %err_unlock)) #7
          to label %if.then66 [label %err_unlock], !srcloc !153

if.then66:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  %call67 = tail call i32 @desc_to_gpio(ptr noundef nonnull %desc) #7
  %label = getelementptr inbounds %struct.gpio_desc, ptr %desc, i32 0, i32 2
  %12 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %label, align 4
  %tobool68.not = icmp eq ptr %13, null
  %..str.6 = select i1 %tobool68.not, ptr @.str.6, ptr %13
  %14 = ptrtoint ptr %flags44 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags44, align 4
  %and1.i188 = and i32 %15, 1
  %16 = load volatile i32, ptr %flags44, align 4
  %shr.i189 = lshr i32 %16, 2
  %and1.i190 = and i32 %shr.i189, 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gpiod_export.__UNIQUE_ID_ddebug231, ptr noundef nonnull @.str.5, i32 noundef %call67, ptr noundef %..str.6, ptr noundef nonnull @.str.1, i32 noundef %and1.i188, i32 noundef %and1.i190) #7
  br label %err_unlock

if.end76:                                         ; preds = %lor.lhs.false47
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gpio_lock, i32 noundef %call39) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 108) #10
  %tobool78.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool78.not, label %if.end76.err_unlock_crit_edge, label %if.end80

if.end76.err_unlock_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unlock

if.end80:                                         ; preds = %if.end76
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %desc, ptr %call7.i.i, align 8
  %mutex = getelementptr inbounds %struct.gpiod_data, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.7, ptr noundef nonnull @gpiod_export.__key) #7
  %direction_input = getelementptr inbounds %struct.gpio_chip, ptr %4, i32 0, i32 8
  %19 = ptrtoint ptr %direction_input to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %direction_input, align 4
  %tobool85.not = icmp eq ptr %20, null
  br i1 %tobool85.not, label %if.end80.if.else_crit_edge, label %land.lhs.true

if.end80.if.else_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %if.end80
  %direction_output = getelementptr inbounds %struct.gpio_chip, ptr %4, i32 0, i32 9
  %21 = ptrtoint ptr %direction_output to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %direction_output, align 4
  %tobool86.not = icmp eq ptr %22, null
  br i1 %tobool86.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end91_crit_edge

land.lhs.true.if.end91_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end80.if.else_crit_edge
  br label %if.end91

if.end91:                                         ; preds = %if.else, %land.lhs.true.if.end91_crit_edge
  %.sink = phi i8 [ 0, %if.else ], [ %frombool, %land.lhs.true.if.end91_crit_edge ]
  %direction_can_change90 = getelementptr inbounds %struct.gpiod_data, ptr %call7.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %direction_can_change90 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %.sink, ptr %direction_can_change90, align 1
  %names = getelementptr inbounds %struct.gpio_chip, ptr %4, i32 0, i32 22
  %24 = ptrtoint ptr %names to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %names, align 4
  %tobool93.not = icmp eq ptr %25, null
  br i1 %tobool93.not, label %if.end91.if.end100_crit_edge, label %land.lhs.true94

if.end91.if.end100_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

land.lhs.true94:                                  ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  %sub.ptr.lhs.cast.i = ptrtoint ptr %desc to i32
  %26 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %desc, align 4
  %descs.i = getelementptr inbounds %struct.gpio_device, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %descs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %descs.i, align 4
  %sub.ptr.rhs.cast.i = ptrtoint ptr %29 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 24
  %arrayidx = getelementptr ptr, ptr %25, i32 %sub.ptr.div.i
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 4
  br label %if.end100

if.end100:                                        ; preds = %land.lhs.true94, %if.end91.if.end100_crit_edge
  %ioname.0 = phi ptr [ null, %if.end91.if.end100_crit_edge ], [ %31, %land.lhs.true94 ]
  %dev101 = getelementptr inbounds %struct.gpio_device, ptr %2, i32 0, i32 1
  %tobool102.not = icmp eq ptr %ioname.0, null
  %spec.select180 = select i1 %tobool102.not, ptr @.str.8, ptr %ioname.0
  %call107 = tail call i32 @desc_to_gpio(ptr noundef nonnull %desc) #7
  %call108 = tail call ptr (ptr, ptr, i32, ptr, ptr, ptr, ...) @device_create_with_groups(ptr noundef nonnull @gpio_class, ptr noundef %dev101, i32 noundef 0, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @gpio_groups, ptr noundef nonnull %spec.select180, i32 noundef %call107) #7
  %cmp.i = icmp ugt ptr %call108, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then110, label %if.end112

if.then110:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %call108 to i32
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %err_unlock

if.end112:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags44) #7
  tail call void @mutex_unlock(ptr noundef nonnull @sysfs_lock) #7
  br label %cleanup

err_unlock:                                       ; preds = %if.then110, %if.end76.err_unlock_crit_edge, %if.then66, %if.then51, %lor.lhs.false.err_unlock_crit_edge, %if.end28.err_unlock_crit_edge
  %status.0 = phi i32 [ %32, %if.then110 ], [ -19, %lor.lhs.false.err_unlock_crit_edge ], [ -19, %if.end28.err_unlock_crit_edge ], [ -1, %if.then66 ], [ -12, %if.end76.err_unlock_crit_edge ], [ -1, %if.then51 ]
  tail call void @mutex_unlock(ptr noundef nonnull @sysfs_lock) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpiod_export.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gpiod_export, %cleanup)) #7
          to label %if.then128 [label %cleanup], !srcloc !153

if.then128:                                       ; preds = %err_unlock
  call void @__sanitizer_cov_trace_pc() #9
  %call129 = tail call i32 @desc_to_gpio(ptr noundef nonnull %desc) #7
  %label130 = getelementptr inbounds %struct.gpio_desc, ptr %desc, i32 0, i32 2
  %33 = ptrtoint ptr %label130 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %label130, align 4
  %tobool131.not = icmp eq ptr %34, null
  %..str.6146 = select i1 %tobool131.not, ptr @.str.6, ptr %34
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gpiod_export.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.9, i32 noundef %call129, ptr noundef %..str.6146, ptr noundef nonnull @.str.1, i32 noundef %status.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then128, %err_unlock, %if.end112, %if.then24, %do.body10, %if.then6, %do.body
  %retval.0 = phi i32 [ 0, %if.end112 ], [ -2, %if.then6 ], [ -22, %if.then24 ], [ %status.0, %if.then128 ], [ -2, %do.body ], [ -22, %do.body10 ], [ %status.0, %err_unlock ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @desc_to_gpio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create_with_groups(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gpiod_export_link(ptr noundef %dev, ptr noundef %name, ptr noundef %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %desc, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @class_find_device(ptr noundef nonnull @gpio_class, ptr noundef null, ptr noundef nonnull %desc, ptr noundef nonnull @match_export) #7
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 @sysfs_create_link(ptr noundef %dev, ptr noundef nonnull %call1, ptr noundef %name) #7
  tail call void @put_device(ptr noundef nonnull %call1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call6, %if.end4 ], [ -22, %do.end ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @class_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @match_export(ptr nocapture noundef readonly %dev, ptr noundef readnone %desc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmp = icmp eq ptr %3, %desc
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gpiod_unexport(ptr noundef %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %desc, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @sysfs_lock, i32 noundef 0) #7
  %flags = getelementptr inbounds %struct.gpio_desc, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool2.not = icmp eq i32 %2, 0
  br i1 %tobool2.not, label %if.end.err_unlock_crit_edge, label %if.end4

if.end.err_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unlock

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @class_find_device(ptr noundef nonnull @gpio_class, ptr noundef null, ptr noundef nonnull %desc, ptr noundef nonnull @match_export) #7
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.err_unlock_crit_edge, label %if.end8

if.end4.err_unlock_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unlock

if.end8:                                          ; preds = %if.end4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %call5, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #7
  tail call void @device_unregister(ptr noundef nonnull %call5) #7
  %irq_flags = getelementptr inbounds %struct.gpiod_data, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %irq_flags to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %irq_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool11.not = icmp eq i8 %6, 0
  br i1 %tobool11.not, label %if.end8.if.end13_crit_edge, label %if.then12

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %irq_flags.i = getelementptr inbounds %struct.gpiod_data, ptr %8, i32 0, i32 4
  %11 = ptrtoint ptr %irq_flags.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %irq_flags.i, align 4
  %irq.i = getelementptr inbounds %struct.gpiod_data, ptr %8, i32 0, i32 3
  %12 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq.i, align 4
  %call2.i = tail call ptr @free_irq(i32 noundef %13, ptr noundef %8) #7
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %10, align 4
  %chip.i = getelementptr inbounds %struct.gpio_device, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip.i, align 8
  %descs.i.i = getelementptr inbounds %struct.gpio_device, ptr %15, i32 0, i32 6
  %18 = ptrtoint ptr %descs.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %descs.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 24
  tail call void @gpiochip_unlock_as_irq(ptr noundef %17, i32 noundef %sub.ptr.div.i.i) #7
  %value_kn.i = getelementptr inbounds %struct.gpiod_data, ptr %8, i32 0, i32 2
  %20 = ptrtoint ptr %value_kn.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %value_kn.i, align 4
  tail call void @kernfs_put(ptr noundef %21) #7
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end8.if.end13_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @sysfs_lock) #7
  tail call void @put_device(ptr noundef nonnull %call5) #7
  tail call void @kfree(ptr noundef %4) #7
  br label %cleanup

err_unlock:                                       ; preds = %if.end4.err_unlock_crit_edge, %if.end.err_unlock_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @sysfs_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %err_unlock, %if.end13, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gpiochip_sysfs_register(ptr noundef %gdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.class, ptr @gpio_class, i32 0, i32 14), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %chip1 = getelementptr inbounds %struct.gpio_device, ptr %gdev, i32 0, i32 5
  %1 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip1, align 8
  %parent2 = getelementptr inbounds %struct.gpio_chip, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %parent2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent2, align 4
  %tobool3.not = icmp eq ptr %4, null
  %dev6 = getelementptr inbounds %struct.gpio_device, ptr %gdev, i32 0, i32 1
  %parent.0 = select i1 %tobool3.not, ptr %dev6, ptr %4
  %base = getelementptr inbounds %struct.gpio_chip, ptr %2, i32 0, i32 19
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base, align 4
  %call = tail call ptr (ptr, ptr, i32, ptr, ptr, ptr, ...) @device_create_with_groups(ptr noundef nonnull @gpio_class, ptr noundef %parent.0, i32 noundef 0, ptr noundef %2, ptr noundef nonnull @gpiochip_groups, ptr noundef nonnull @.str.13, i32 noundef %6) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_lock_nested(ptr noundef nonnull @sysfs_lock, i32 noundef 0) #7
  %mockdev = getelementptr inbounds %struct.gpio_device, ptr %gdev, i32 0, i32 3
  %8 = ptrtoint ptr %mockdev to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %mockdev, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @sysfs_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then9 ], [ 0, %if.end11 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gpiochip_sysfs_unregister(ptr nocapture noundef %gdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mockdev = getelementptr inbounds %struct.gpio_device, ptr %gdev, i32 0, i32 3
  %0 = ptrtoint ptr %mockdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mockdev, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %chip1 = getelementptr inbounds %struct.gpio_device, ptr %gdev, i32 0, i32 5
  %2 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1, align 8
  tail call void @device_unregister(ptr noundef nonnull %1) #7
  tail call void @mutex_lock_nested(ptr noundef nonnull @sysfs_lock, i32 noundef 0) #7
  %4 = ptrtoint ptr %mockdev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %mockdev, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @sysfs_lock) #7
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 20
  %5 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ngpio, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp18.not = icmp eq i16 %6, 0
  br i1 %cmp18.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %descs = getelementptr inbounds %struct.gpio_device, ptr %gdev, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.019 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %7 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %descs, align 4
  %flags = getelementptr %struct.gpio_desc, ptr %8, i32 %i.019, i32 1
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %flags) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %for.body.for.inc_crit_edge, label %if.then6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.gpio_desc, ptr %8, i32 %i.019
  tail call void @gpiod_free(ptr noundef %arrayidx) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.019, 1
  %9 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %10 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gpiolib_sysfs_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__class_register(ptr noundef nonnull @gpio_class, ptr noundef nonnull @gpiolib_sysfs_init.__key) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body1:                                         ; preds = %entry
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @gpio_lock) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gpio_devices to i32))
  %.pn39 = load ptr, ptr @gpio_devices, align 4
  %cmp9.not41 = icmp eq ptr %.pn39, @gpio_devices
  br i1 %cmp9.not41, label %do.body1.for.end_crit_edge, label %do.body1.for.body_crit_edge

do.body1.for.body_crit_edge:                      ; preds = %do.body1
  br label %for.body

do.body1.for.end_crit_edge:                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body1.for.body_crit_edge
  %.pn44 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn39, %do.body1.for.body_crit_edge ]
  %status.043 = phi i32 [ %status.1, %for.inc.for.body_crit_edge ], [ %call, %do.body1.for.body_crit_edge ]
  %flags.042 = phi i32 [ %flags.1, %for.inc.for.body_crit_edge ], [ %call5, %do.body1.for.body_crit_edge ]
  %mockdev = getelementptr i8, ptr %.pn44, i32 -32
  %0 = ptrtoint ptr %mockdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mockdev, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end12, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end12:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %gdev.045 = getelementptr i8, ptr %.pn44, i32 -1128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gpio_lock, i32 noundef %flags.042) #7
  %call13 = tail call i32 @gpiochip_sysfs_register(ptr noundef %gdev.045)
  %call22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @gpio_lock) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end12, %for.body.for.inc_crit_edge
  %flags.1 = phi i32 [ %flags.042, %for.body.for.inc_crit_edge ], [ %call22, %if.end12 ]
  %status.1 = phi i32 [ %status.043, %for.body.for.inc_crit_edge ], [ %call13, %if.end12 ]
  %2 = ptrtoint ptr %.pn44 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn44, align 4
  %cmp9.not = icmp eq ptr %.pn, @gpio_devices
  br i1 %cmp9.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.body1.for.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call5, %do.body1.for.end_crit_edge ], [ %flags.1, %for.inc.for.end_crit_edge ]
  %status.0.lcssa = phi i32 [ %call, %do.body1.for.end_crit_edge ], [ %status.1, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gpio_lock, i32 noundef %flags.0.lcssa) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0.lcssa, %for.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @export_store(ptr nocapture noundef readnone %class, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %gpio = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio) #7
  %0 = ptrtoint ptr %gpio to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %gpio, align 4, !annotation !154
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %gpio) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.do.body28_crit_edge, label %if.end

entry.do.body28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body28

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %gpio, align 4
  %call1 = call ptr @gpio_to_desc(i32 noundef %2) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %gpio, align 4
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef %4) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call1, align 4
  %chip = getelementptr inbounds %struct.gpio_device, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip, align 8
  %descs.i = getelementptr inbounds %struct.gpio_device, ptr %6, i32 0, i32 6
  %9 = ptrtoint ptr %descs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %descs.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 24
  %call6 = call zeroext i1 @gpiochip_line_is_valid(ptr noundef %8, i32 noundef %sub.ptr.div.i) #7
  br i1 %call6, label %if.end13, label %do.end10

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %gpio, align 4
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %12) #11
  br label %cleanup

if.end13:                                         ; preds = %if.end4
  %call.i58 = call i32 @gpiod_request(ptr noundef nonnull %call1, ptr noundef nonnull @.str.21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call.i58)
  %cmp.i = icmp eq i32 %call.i58, -517
  %spec.store.select.i = select i1 %cmp.i, i32 -19, i32 %call.i58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i)
  %tobool15.not = icmp eq i32 %spec.store.select.i, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.done_crit_edge

if.end13.done_crit_edge:                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end17:                                         ; preds = %if.end13
  %call18 = call i32 @gpiod_set_transitory(ptr noundef nonnull %call1, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then20, label %if.end17.do.body28_crit_edge

if.end17.do.body28_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body28

if.then20:                                        ; preds = %if.end17
  %call21 = call i32 @gpiod_export(ptr noundef nonnull %call1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  call void @gpiod_free(ptr noundef nonnull %call1) #7
  br label %do.body28

if.else:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.gpio_desc, ptr %call1, i32 0, i32 1
  call void @_set_bit(i32 noundef 3, ptr noundef %flags) #7
  br label %done

done:                                             ; preds = %if.else, %if.end13.done_crit_edge
  %status.0 = phi i32 [ %spec.store.select.i, %if.end13.done_crit_edge ], [ %call21, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0)
  %tobool26.not = icmp eq i32 %status.0, 0
  br i1 %tobool26.not, label %done.cleanup_crit_edge, label %done.do.body28_crit_edge

done.do.body28_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body28

done.cleanup_crit_edge:                           ; preds = %done
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body28:                                        ; preds = %done.do.body28_crit_edge, %if.then23, %if.end17.do.body28_crit_edge, %entry.do.body28_crit_edge
  %status.061 = phi i32 [ %status.0, %done.do.body28_crit_edge ], [ %call21, %if.then23 ], [ %call18, %if.end17.do.body28_crit_edge ], [ %call.i, %entry.do.body28_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @export_store.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@export_store, %cleanup)) #7
          to label %if.then35 [label %cleanup], !srcloc !153

if.then35:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @export_store.__UNIQUE_ID_ddebug227, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.17, i32 noundef %status.061) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %do.body28, %done.cleanup_crit_edge, %do.end10, %do.end
  %retval.0 = phi i32 [ -22, %do.end10 ], [ -22, %do.end ], [ %status.061, %if.then35 ], [ %len, %done.cleanup_crit_edge ], [ %status.061, %do.body28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gpiochip_line_is_valid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_transitory(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unexport_store(ptr nocapture noundef readnone %class, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %gpio = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio) #7
  %0 = ptrtoint ptr %gpio to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %gpio, align 4, !annotation !154
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %gpio) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.do.body11_crit_edge, label %if.end

entry.do.body11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body11

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %gpio, align 4
  %call1 = call ptr @gpio_to_desc(i32 noundef %2) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %gpio, align 4
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.24, i32 noundef %4) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.gpio_desc, ptr %call1, i32 0, i32 1
  %call5 = call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %flags) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.do.body11_crit_edge, label %5

if.end4.do.body11_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body11

do.body11:                                        ; preds = %if.end4.do.body11_crit_edge, %entry.do.body11_crit_edge
  %status.0.ph = phi i32 [ -22, %if.end4.do.body11_crit_edge ], [ %call.i, %entry.do.body11_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @unexport_store.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@unexport_store, %cleanup)) #7
          to label %if.then18 [label %cleanup], !srcloc !153

if.then18:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @unexport_store.__UNIQUE_ID_ddebug228, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.24, i32 noundef %status.0.ph) #7
  br label %cleanup

5:                                                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  call void @gpiod_free(ptr noundef nonnull %call1) #7
  br label %cleanup

cleanup:                                          ; preds = %5, %if.then18, %do.body11, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %len, %5 ], [ %status.0.ph, %if.then18 ], [ %status.0.ph, %do.body11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @gpio_is_visible(ptr nocapture noundef readonly %kobj, ptr noundef readonly %attr, i32 noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %mode3 = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %mode3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mode3, align 4
  %direction_can_change = getelementptr inbounds %struct.gpiod_data, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %direction_can_change to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %direction_can_change, align 1, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %cmp = icmp eq ptr %attr, @dev_attr_direction
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %spec.select = select i1 %tobool.not, i16 0, i16 %5
  br label %if.end18

if.else:                                          ; preds = %entry
  %cmp6 = icmp eq ptr %attr, @dev_attr_edge
  br i1 %cmp6, label %if.then7, label %if.else.if.end18_crit_edge

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then7:                                         ; preds = %if.else
  %call8 = tail call i32 @gpiod_to_irq(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  %spec.select24 = select i1 %cmp9, i16 0, i16 %5
  br i1 %tobool.not, label %land.lhs.true, label %if.then7.if.end18_crit_edge

if.then7.if.end18_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

land.lhs.true:                                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.gpio_desc, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool14.not = icmp eq i32 %10, 0
  %spec.select25 = select i1 %tobool14.not, i16 %spec.select24, i16 0
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true, %if.then7.if.end18_crit_edge, %if.else.if.end18_crit_edge, %if.then
  %mode.1 = phi i16 [ %spec.select24, %if.then7.if.end18_crit_edge ], [ %5, %if.else.if.end18_crit_edge ], [ %spec.select, %if.then ], [ %spec.select25, %land.lhs.true ]
  ret i16 %mode.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @direction_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %mutex = getelementptr inbounds %struct.gpiod_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %call2 = tail call i32 @gpiod_get_direction(ptr noundef %3) #7
  %flags = getelementptr inbounds %struct.gpio_desc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %cond = select i1 %tobool.not, ptr @.str.30, ptr @.str.29
  %call4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.28, ptr noundef nonnull %cond) #7
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @direction_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %mutex = getelementptr inbounds %struct.gpiod_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %call2 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.31) #7
  br i1 %call2, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 @gpiod_direction_output_raw(ptr noundef %3, i32 noundef 1) #7
  br label %if.end14

if.else:                                          ; preds = %entry
  %call4 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.29) #7
  br i1 %call4, label %if.else.if.then6_crit_edge, label %lor.lhs.false

if.else.if.then6_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.else
  %call5 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.32) #7
  br i1 %call5, label %lor.lhs.false.if.then6_crit_edge, label %if.else8

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %if.else.if.then6_crit_edge
  %call7 = tail call i32 @gpiod_direction_output_raw(ptr noundef %3, i32 noundef 0) #7
  br label %if.end14

if.else8:                                         ; preds = %lor.lhs.false
  %call9 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.30) #7
  br i1 %call9, label %if.then10, label %if.end14.thread

if.end14.thread:                                  ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %4

if.then10:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 @gpiod_direction_input(ptr noundef %3) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.then6, %if.then
  %status.0 = phi i32 [ %call3, %if.then ], [ %call7, %if.then6 ], [ %call11, %if.then10 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0)
  %tobool.not = icmp eq i32 %status.0, 0
  %spec.select = select i1 %tobool.not, i32 %size, i32 %status.0
  br label %4

4:                                                ; preds = %if.end14, %if.end14.thread
  %5 = phi i32 [ -22, %if.end14.thread ], [ %spec.select, %if.end14 ]
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_direction(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_input(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edge_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mutex = getelementptr inbounds %struct.gpiod_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %irq_flags = getelementptr inbounds %struct.gpiod_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %irq_flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %irq_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %4 = icmp ult i8 %3, 4
  br i1 %4, label %switch.lookup, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.idx.cast = zext i8 %3 to i32
  %arrayidx7 = getelementptr [4 x %struct.anon.70], ptr @trigger_types, i32 0, i32 %switch.idx.cast
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx7, align 4
  %call8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.28, ptr noundef %6) #7
  br label %if.end9

if.end9:                                          ; preds = %switch.lookup, %entry.if.end9_crit_edge
  %status.0 = phi i32 [ %call8, %switch.lookup ], [ 0, %entry.if.end9_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edge_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call zeroext i1 @sysfs_streq(ptr noundef nonnull @.str.34, ptr noundef %buf) #7
  br i1 %call1, label %entry.if.end4_crit_edge, label %for.inc

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

for.inc:                                          ; preds = %entry
  %call1.1 = tail call zeroext i1 @sysfs_streq(ptr noundef nonnull @.str.35, ptr noundef %buf) #7
  br i1 %call1.1, label %for.inc.if.end4_crit_edge, label %for.inc.1

for.inc.if.end4_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

for.inc.1:                                        ; preds = %for.inc
  %call1.2 = tail call zeroext i1 @sysfs_streq(ptr noundef nonnull @.str.36, ptr noundef %buf) #7
  br i1 %call1.2, label %for.inc.1.if.end4_crit_edge, label %for.inc.2

for.inc.1.if.end4_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

for.inc.2:                                        ; preds = %for.inc.1
  %call1.3 = tail call zeroext i1 @sysfs_streq(ptr noundef nonnull @.str.37, ptr noundef %buf) #7
  br i1 %call1.3, label %for.inc.2.if.end4_crit_edge, label %for.inc.2.cleanup_crit_edge

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.2.if.end4_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end4:                                          ; preds = %for.inc.2.if.end4_crit_edge, %for.inc.1.if.end4_crit_edge, %for.inc.if.end4_crit_edge, %entry.if.end4_crit_edge
  %i.043.lcssa = phi i32 [ 0, %entry.if.end4_crit_edge ], [ 1, %for.inc.if.end4_crit_edge ], [ 2, %for.inc.1.if.end4_crit_edge ], [ 3, %for.inc.2.if.end4_crit_edge ]
  %flags6 = getelementptr [4 x %struct.anon.70], ptr @trigger_types, i32 0, i32 %i.043.lcssa, i32 1
  %2 = ptrtoint ptr %flags6 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags6, align 4
  %mutex = getelementptr inbounds %struct.gpiod_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %irq_flags = getelementptr inbounds %struct.gpiod_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %irq_flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %irq_flags, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %5)
  %cmp8 = icmp eq i8 %3, %5
  br i1 %cmp8, label %if.end4.out_unlock_crit_edge, label %if.end11

if.end4.out_unlock_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end11:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end11.if.end14_crit_edge, label %if.then13

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %irq_flags.i = getelementptr inbounds %struct.gpiod_data, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %irq_flags.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %irq_flags.i, align 4
  %irq.i = getelementptr inbounds %struct.gpiod_data, ptr %7, i32 0, i32 3
  %11 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq.i, align 4
  %call2.i = tail call ptr @free_irq(i32 noundef %12, ptr noundef %7) #7
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %9, align 4
  %chip.i = getelementptr inbounds %struct.gpio_device, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip.i, align 8
  %descs.i.i = getelementptr inbounds %struct.gpio_device, ptr %14, i32 0, i32 6
  %17 = ptrtoint ptr %descs.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %descs.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 24
  tail call void @gpiochip_unlock_as_irq(ptr noundef %16, i32 noundef %sub.ptr.div.i.i) #7
  %value_kn.i = getelementptr inbounds %struct.gpiod_data, ptr %7, i32 0, i32 2
  %19 = ptrtoint ptr %value_kn.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %value_kn.i, align 4
  tail call void @kernfs_put(ptr noundef %20) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end11.if.end14_crit_edge
  br i1 %call1, label %if.end14.out_unlock_crit_edge, label %if.then16

if.end14.out_unlock_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = tail call fastcc i32 @gpio_sysfs_request_irq(ptr noundef %dev, i8 noundef zeroext %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  %spec.select = select i1 %tobool18.not, i32 %size, i32 %call17
  br label %out_unlock

out_unlock:                                       ; preds = %if.then16, %if.end14.out_unlock_crit_edge, %if.end4.out_unlock_crit_edge
  %status.0 = phi i32 [ %size, %if.end14.out_unlock_crit_edge ], [ %size, %if.end4.out_unlock_crit_edge ], [ %spec.select, %if.then16 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %for.inc.2.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %out_unlock ], [ -22, %for.inc.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gpio_sysfs_request_irq(ptr nocapture noundef readonly %dev, i8 noundef zeroext %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call2 = tail call i32 @gpiod_to_irq(ptr noundef %3) #7
  %irq = getelementptr inbounds %struct.gpiod_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call2, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %sd = getelementptr inbounds %struct.kobject, ptr %dev, i32 0, i32 5
  %5 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sd, align 8
  %call.i.i = tail call ptr @kernfs_find_and_get_ns(ptr noundef %6, ptr noundef nonnull @.str.38, ptr noundef null) #7
  %value_kn = getelementptr inbounds %struct.gpiod_data, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %value_kn to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i.i, ptr %value_kn, align 4
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %conv = zext i8 %flags to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end7.if.end13_crit_edge, label %if.then9

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %flags10 = getelementptr inbounds %struct.gpio_desc, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags10, align 4
  %10 = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool12.not = icmp eq i32 %10, 0
  %or = select i1 %tobool12.not, i32 130, i32 129
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end7.if.end13_crit_edge
  %irq_flags.0 = phi i32 [ %or, %if.then9 ], [ 128, %if.end7.if.end13_crit_edge ]
  %and15 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end13.if.end23_crit_edge, label %if.then17

if.end13.if.end23_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %flags18 = getelementptr inbounds %struct.gpio_desc, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags18, align 4
  %13 = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not = icmp eq i32 %13, 0
  %cond21 = select i1 %tobool20.not, i32 1, i32 2
  %or22 = or i32 %cond21, %irq_flags.0
  br label %if.end23

if.end23:                                         ; preds = %if.then17, %if.end13.if.end23_crit_edge
  %irq_flags.1 = phi i32 [ %or22, %if.then17 ], [ %irq_flags.0, %if.end13.if.end23_crit_edge ]
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %chip = getelementptr inbounds %struct.gpio_device, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip, align 8
  %descs.i = getelementptr inbounds %struct.gpio_device, ptr %15, i32 0, i32 6
  %18 = ptrtoint ptr %descs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %descs.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 24
  %call25 = tail call i32 @gpiochip_lock_as_irq(ptr noundef %17, i32 noundef %sub.ptr.div.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end23.err_put_kn_crit_edge, label %if.end29

if.end23.err_put_kn_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_put_kn

if.end29:                                         ; preds = %if.end23
  %20 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq, align 4
  %call31 = tail call i32 @request_any_context_irq(i32 noundef %21, ptr noundef nonnull @gpio_sysfs_irq, i32 noundef %irq_flags.1, ptr noundef nonnull @.str.39, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %err_unlock, label %if.end35

if.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %irq_flags36 = getelementptr inbounds %struct.gpiod_data, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %irq_flags36 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %flags, ptr %irq_flags36, align 4
  br label %cleanup

err_unlock:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  %chip38 = getelementptr inbounds %struct.gpio_device, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %chip38 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chip38, align 8
  %descs.i67 = getelementptr inbounds %struct.gpio_device, ptr %24, i32 0, i32 6
  %27 = ptrtoint ptr %descs.i67 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %descs.i67, align 4
  %sub.ptr.rhs.cast.i69 = ptrtoint ptr %28 to i32
  %sub.ptr.sub.i70 = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i69
  %sub.ptr.div.i71 = sdiv exact i32 %sub.ptr.sub.i70, 24
  tail call void @gpiochip_unlock_as_irq(ptr noundef %26, i32 noundef %sub.ptr.div.i71) #7
  br label %err_put_kn

err_put_kn:                                       ; preds = %err_unlock, %if.end23.err_put_kn_crit_edge
  %ret.0 = phi i32 [ %call25, %if.end23.err_put_kn_crit_edge ], [ %call31, %err_unlock ]
  %29 = ptrtoint ptr %value_kn to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %value_kn, align 4
  tail call void @kernfs_put(ptr noundef %30) #7
  br label %cleanup

cleanup:                                          ; preds = %err_put_kn, %if.end35, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_put_kn ], [ 0, %if.end35 ], [ -5, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_lock_as_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_any_context_irq(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_sysfs_irq(i32 noundef %irq, ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %value_kn = getelementptr inbounds %struct.gpiod_data, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %value_kn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %value_kn, align 4
  tail call void @kernfs_notify(ptr noundef %1) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_unlock_as_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kernfs_find_and_get_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_notify(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @value_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %mutex = getelementptr inbounds %struct.gpiod_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %call2 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2)
  %cmp = icmp sgt i32 %call2, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.40, i32 noundef %call2) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %status.0 = phi i32 [ %call3, %if.then ], [ %call2, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @value_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %mutex = getelementptr inbounds %struct.gpiod_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %flags = getelementptr inbounds %struct.gpio_desc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end21_crit_edge, label %if.else

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #7
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %value, align 4, !annotation !154
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %size)
  %cmp = icmp ult i32 %size, 3
  br i1 %cmp, label %land.lhs.true, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %if.else
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %buf, align 1
  %conv = zext i8 %9 to i32
  %10 = add nsw i32 %conv, -48
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %10)
  %11 = icmp ugt i32 %10, 9
  br i1 %11, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true5

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %size)
  %cmp6 = icmp eq i32 %size, 1
  br i1 %cmp6, label %land.lhs.true5.if.end.thread_crit_edge, label %lor.lhs.false

land.lhs.true5.if.end.thread_crit_edge:           ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.thread

lor.lhs.false:                                    ; preds = %land.lhs.true5
  %arrayidx8 = getelementptr i8, ptr %buf, i32 1
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %13)
  %cmp10 = icmp eq i8 %13, 10
  br i1 %cmp10, label %lor.lhs.false.if.end.thread_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false.if.end.thread_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.thread

if.end.thread:                                    ; preds = %lor.lhs.false.if.end.thread_crit_edge, %land.lhs.true5.if.end.thread_crit_edge
  %14 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %10, ptr %value, align 4
  br label %if.then19

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %if.else.if.end_crit_edge
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp17 = icmp eq i32 %call.i, 0
  br i1 %cmp17, label %if.end.if.then19_crit_edge, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.end.if.then19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

if.then19:                                        ; preds = %if.end.if.then19_crit_edge, %if.end.thread
  %15 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %value, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef %16) #7
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end.if.end20_crit_edge
  %status.1 = phi i32 [ %size, %if.then19 ], [ %call.i, %if.end.if.end20_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #7
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %entry.if.end21_crit_edge
  %status.2 = phi i32 [ %status.1, %if.end20 ], [ -1, %entry.if.end21_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 %status.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_low_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %mutex = getelementptr inbounds %struct.gpiod_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %flags = getelementptr inbounds %struct.gpio_desc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = lshr i32 %5, 6
  %.lobit = and i32 %6, 1
  %call4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.42, i32 noundef %.lobit) #7
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_low_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #7
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !154
  %mutex = getelementptr inbounds %struct.gpiod_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end.thread9

if.end.thread9:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef %mutex) #7
  br label %30

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %irq_flags.i = getelementptr inbounds %struct.gpiod_data, ptr %6, i32 0, i32 4
  %9 = ptrtoint ptr %irq_flags.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %irq_flags.i, align 4
  %flags2.i = getelementptr inbounds %struct.gpio_desc, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags2.i, align 4
  %13 = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i = icmp eq i32 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool5.i = icmp ne i32 %4, 0
  %cmp.i = xor i1 %tobool5.i, %tobool.i
  br i1 %cmp.i, label %if.then.if.end.thread_crit_edge, label %if.end.i

if.then.if.end.thread_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.thread

if.end.i:                                         ; preds = %if.then
  br i1 %tobool5.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @_set_bit(i32 noundef 6, ptr noundef %flags2.i) #7
  br label %assign_bit.exit.i

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @_clear_bit(i32 noundef 6, ptr noundef %flags2.i) #7
  br label %assign_bit.exit.i

assign_bit.exit.i:                                ; preds = %if.else.i.i, %if.then.i.i
  %.off.i = add i8 %10, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %if.end, label %assign_bit.exit.i.if.end.thread_crit_edge

assign_bit.exit.i.if.end.thread_crit_edge:        ; preds = %assign_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.thread

if.end.thread:                                    ; preds = %assign_bit.exit.i.if.end.thread_crit_edge, %if.then.if.end.thread_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #7
  br label %29

if.end:                                           ; preds = %assign_bit.exit.i
  %14 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %irq_flags.i.i = getelementptr inbounds %struct.gpiod_data, ptr %15, i32 0, i32 4
  %18 = ptrtoint ptr %irq_flags.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %irq_flags.i.i, align 4
  %irq.i.i = getelementptr inbounds %struct.gpiod_data, ptr %15, i32 0, i32 3
  %19 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq.i.i, align 4
  %call2.i.i = call ptr @free_irq(i32 noundef %20, ptr noundef %15) #7
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %17, align 4
  %chip.i.i = getelementptr inbounds %struct.gpio_device, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chip.i.i, align 8
  %descs.i.i.i = getelementptr inbounds %struct.gpio_device, ptr %22, i32 0, i32 6
  %25 = ptrtoint ptr %descs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %descs.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %26 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %sub.ptr.div.i.i.i = sdiv exact i32 %sub.ptr.sub.i.i.i, 24
  call void @gpiochip_unlock_as_irq(ptr noundef %24, i32 noundef %sub.ptr.div.i.i.i) #7
  %value_kn.i.i = getelementptr inbounds %struct.gpiod_data, ptr %15, i32 0, i32 2
  %27 = ptrtoint ptr %value_kn.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %value_kn.i.i, align 4
  call void @kernfs_put(ptr noundef %28) #7
  %call19.i = call fastcc i32 @gpio_sysfs_request_irq(ptr noundef %dev, i8 noundef zeroext %10) #7
  call void @mutex_unlock(ptr noundef %mutex) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool.not = icmp eq i32 %call19.i, 0
  br i1 %tobool.not, label %if.end._crit_edge, label %if.end._crit_edge12

if.end._crit_edge12:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %30

if.end._crit_edge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %29

29:                                               ; preds = %if.end._crit_edge, %if.end.thread
  br label %30

30:                                               ; preds = %29, %if.end._crit_edge12, %if.end.thread9
  %31 = phi i32 [ %size, %29 ], [ %call19.i, %if.end._crit_edge12 ], [ %call.i, %if.end.thread9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #7
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @base_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %base = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.42, i32 noundef %3) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @label_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  %..str.45 = select i1 %tobool.not, ptr @.str.45, ptr %3
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.28, ptr noundef %..str.45) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ngpio_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.47, i32 noundef %conv) #7
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !15, !16, !18, !20, !21, !23, !25, !26, !27, !28, !30, !32, !33, !34, !36, !38, !40, !42, !44, !46, !47, !49, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !65, !66, !68, !69, !71, !72, !73, !75, !77, !78, !79, !81, !83, !85, !86, !88, !90, !92, !94, !96, !98, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !122, !124, !126, !127, !129, !131, !132, !134, !135, !137, !139, !140, !142}
!llvm.module.flags = !{!144, !145, !146, !147, !148, !149, !150, !151}
!llvm.ident = !{!152}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 577, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @gpiod_export.__UNIQUE_ID_ddebug229, !1, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 582, i32 3}
!8 = !{ptr @gpiod_export.__UNIQUE_ID_ddebug230, !7, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 601, i32 3}
!11 = !{ptr @gpiod_export.__UNIQUE_ID_ddebug231, !10, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!12 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @gpiod_export.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 617, i32 2}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 629, i32 24}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 644, i32 2}
!20 = !{ptr @gpiod_export.__UNIQUE_ID_ddebug232, !19, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!21 = !{ptr @__ksymtab_gpiod_export, !22, !"__ksymtab_gpiod_export", i1 false, i1 false}
!22 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 647, i32 1}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 674, i32 3}
!25 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @gpiod_export_link._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @gpiod_export_link._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @__ksymtab_gpiod_export_link, !29, !"__ksymtab_gpiod_export_link", i1 false, i1 false}
!29 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 687, i32 1}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 701, i32 3}
!32 = !{ptr @gpiod_unexport._entry, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @gpiod_unexport._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @__ksymtab_gpiod_unexport, !35, !"__ksymtab_gpiod_unexport", i1 false, i1 false}
!35 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 736, i32 1}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 764, i32 23}
!38 = !{ptr @__initcall__kmod_gpiolib_sysfs__233_838_gpiolib_sysfs_init2, !39, !"__initcall__kmod_gpiolib_sysfs__233_838_gpiolib_sysfs_init2", i1 false, i1 false}
!39 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 838, i32 1}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 542, i32 11}
!42 = !{ptr @gpio_class, !43, !"gpio_class", i1 false, i1 false}
!43 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 541, i32 21}
!44 = !{ptr @gpio_class_groups, !45, !"gpio_class_groups", i1 false, i1 false}
!45 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 539, i32 1}
!46 = !{ptr @gpio_class_group, !45, !"gpio_class_group", i1 false, i1 false}
!47 = !{ptr @gpio_class_attrs, !48, !"gpio_class_attrs", i1 false, i1 false}
!48 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 534, i32 26}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 496, i32 8}
!51 = !{ptr @class_attr_export, !50, !"class_attr_export", i1 false, i1 false}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 463, i32 3}
!54 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @export_store._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @export_store._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 469, i32 3}
!59 = !{ptr @export_store._entry.18, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @export_store._entry_ptr.20, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 478, i32 36}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 493, i32 3}
!65 = !{ptr @export_store.__UNIQUE_ID_ddebug227, !64, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 532, i32 8}
!68 = !{ptr @class_attr_unexport, !67, !"class_attr_unexport", i1 false, i1 false}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 513, i32 3}
!71 = !{ptr @unexport_store._entry, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @unexport_store._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @unexport_store.__UNIQUE_ID_ddebug228, !74, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!74 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 529, i32 3}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 36, i32 8}
!77 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @sysfs_lock, !76, !"sysfs_lock", i1 false, i1 false}
!79 = !{ptr @gpio_groups, !80, !"gpio_groups", i1 false, i1 false}
!80 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 393, i32 38}
!81 = !{ptr @gpio_group, !82, !"gpio_group", i1 false, i1 false}
!82 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 388, i32 37}
!83 = !{ptr @.str.27, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 99, i32 8}
!85 = !{ptr @dev_attr_direction, !84, !"dev_attr_direction", i1 false, i1 false}
!86 = !{ptr @.str.28, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 69, i32 27}
!88 = !{ptr @.str.29, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 70, i32 46}
!90 = !{ptr @.str.30, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 70, i32 54}
!92 = !{ptr @.str.31, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 86, i32 23}
!94 = !{ptr @.str.32, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 88, i32 55}
!96 = !{ptr @.str.33, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 297, i32 8}
!98 = !{ptr @dev_attr_edge, !97, !"dev_attr_edge", i1 false, i1 false}
!99 = !{ptr @.str.34, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 231, i32 4}
!101 = !{ptr @.str.35, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 232, i32 4}
!103 = !{ptr @.str.36, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 233, i32 4}
!105 = !{ptr @.str.37, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 234, i32 4}
!107 = !{ptr @trigger_types, !108, !"trigger_types", i1 false, i1 false}
!108 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 230, i32 3}
!109 = !{ptr @.str.38, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 171, i32 50}
!111 = !{ptr @.str.39, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 196, i32 5}
!113 = !{ptr @gpio_attrs, !114, !"gpio_attrs", i1 false, i1 false}
!114 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 380, i32 26}
!115 = !{ptr @dev_attr_value, !116, !"dev_attr_value", i1 false, i1 false}
!116 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 148, i32 8}
!117 = !{ptr @.str.40, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 112, i32 28}
!119 = !{ptr @.str.41, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 356, i32 8}
!121 = !{ptr @dev_attr_active_low, !120, !"dev_attr_active_low", i1 false, i1 false}
!122 = !{ptr @.str.42, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 331, i32 27}
!124 = !{ptr @gpiochip_groups, !125, !"gpiochip_groups", i1 false, i1 false}
!125 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 438, i32 1}
!126 = !{ptr @gpiochip_group, !125, !"gpiochip_group", i1 false, i1 false}
!127 = !{ptr @gpiochip_attrs, !128, !"gpiochip_attrs", i1 false, i1 false}
!128 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 432, i32 26}
!129 = !{ptr @.str.43, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 412, i32 8}
!131 = !{ptr @dev_attr_base, !130, !"dev_attr_base", i1 false, i1 false}
!132 = !{ptr @.str.44, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 421, i32 8}
!134 = !{ptr @dev_attr_label, !133, !"dev_attr_label", i1 false, i1 false}
!135 = !{ptr @.str.45, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 419, i32 48}
!137 = !{ptr @.str.46, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 430, i32 8}
!139 = !{ptr @dev_attr_ngpio, !138, !"dev_attr_ngpio", i1 false, i1 false}
!140 = !{ptr @.str.47, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 428, i32 25}
!142 = !{ptr @gpiolib_sysfs_init.__key, !143, !"__key", i1 false, i1 false}
!143 = !{!"../drivers/gpio/gpiolib-sysfs.c", i32 806, i32 11}
!144 = !{i32 1, !"wchar_size", i32 2}
!145 = !{i32 1, !"min_enum_size", i32 4}
!146 = !{i32 8, !"branch-target-enforcement", i32 0}
!147 = !{i32 8, !"sign-return-address", i32 0}
!148 = !{i32 8, !"sign-return-address-all", i32 0}
!149 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!150 = !{i32 7, !"uwtable", i32 1}
!151 = !{i32 7, !"frame-pointer", i32 2}
!152 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!153 = !{i64 2148716800, i64 2148716805, i64 2148716818, i64 2148716862, i64 2148716896, i64 2148716917}
!154 = !{!"auto-init"}
!155 = !{i8 0, i8 2}
